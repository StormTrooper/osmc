#!/bin/bash

# (c) 2014-2015 Sam Nazarko
# email@samnazarko.co.uk

pushd ../ && . ../common.sh && popd

. VERSIONS

if [ -z "$1" ]; then echo -e "No target defined" && exit 1; fi
if [ "$1" == "cpio" ]
then
ischroot
chroot_result=$?
if [ "$chroot_result" -eq 0 ] || [ "$chroot_result" -eq 1 ]
then
	echo -e "Initramfs must be built within an OSMC chroot toolchain" && exit 1
fi
fi
echo "Building initramfs for target ${1}"
make clean
handle_dep "autoconf"

if [ "$1" == "cpio" ]
then
	rm -f *.tar.*
	#rm -rf busybox >/dev/null 2>&1
        #rm -rf e2fsprogs >/dev/null 2>&1
	handle_dep "cpio"
	handle_dep "wget" # Hack for poor man's pull_source
	# Use wget to get resources, as pull_source not compatible in chroot. Do not use in production
	wget "http://busybox.net/downloads/busybox-${BUSYBOX_VERSION}.tar.bz2"
	mkdir -p $(pwd)/busybox
	tar -xvf busybox-${BUSYBOX_VERSION}.tar.bz2 -C "$(pwd)/busybox"
	wget "http://www.kernel.org/pub/linux/kernel/people/tytso/e2fsprogs/v${E2FSPROGS_VERSION}/e2fsprogs-${E2FSPROGS_VERSION}.tar.gz" 
	mkdir -p $(pwd)/e2fsprogs
	tar -xvf e2fsprogs-${E2FSPROGS_VERSION}.tar.gz -C "$(pwd)/e2fsprogs"
fi
echo "Compiling busybox"
pushd busybox/busybox-${BUSYBOX_VERSION}
cp ../../busybox.config .config
$BUILD
if [ $? != 0 ]; then echo "Error occured during build" && exit 1; fi
popd
echo "Compiling e2fsprogs"
pushd e2fsprogs/e2fsprogs-${E2FSPROGS_VERSION}
# NB: can't build static because of pthread, which is part of glibc.
./configure --prefix=/usr
$BUILD
if [ $? != 0 ]; then echo "Error occured during build" && exit 1; fi
popd
mkdir -p target/
mkdir -p target/lib
mkdir -p target/sbin
mkdir -p target/bin
mkdir -p target/proc
mkdir -p target/sys
mkdir -p target/tmp
mkdir -p target/var
mkdir -p target/etc
mkdir -p target/dev
install -m 0755 e2fsprogs/e2fsprogs-${E2FSPROGS_VERSION}/e2fsck/e2fsck target/bin/e2fsck
install -m 0755 busybox/busybox-${BUSYBOX_VERSION}/busybox target/bin/busybox
install -m 0755 init.sh target/sbin/init
ln -s target/bin/e2fsck target/bin/fsck.ext4
ln -s target/bin/e2fsck target/bin/fsck.ext3
ln -s target/bin/e2fsck target/bin/fsck.ext2
mknod target/dev/console c 5 1
mknod target/dev/ttyS0 c 204 64
mknod target/dev/null c 1 3
mknod target/dev/tty c 5 0
for line in $(ldd target/bin/e2fsck); do if (echo $line | grep -q /lib); then cp $line target/lib; fi; done
for line in $(ldd target/bin/busybox); do if (echo $line | grep -q /lib); then cp $line target/lib; fi; done
if [ "$1" == "cpio" ]
then
pushd target
# cpio
find . | cpio -H newc -o > initramfs.cpio
cat initramfs.cpio | gzip > initramfs.gz
mv initramfs.gz ../
fi
echo "Initramfs built successfully"
