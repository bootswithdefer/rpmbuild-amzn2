FROM amazonlinux:2
MAINTAINER Jesse DeFer <rpmbuild-amzn2@dotd.com>

RUN yum update -y 
RUN yum groupinstall -y "Development Tools"
RUN amazon-linux-extras install kernel-5.10
RUN yum install -y rpm-build wget curl pcre-devel openssl-devel zlib-devel systemd-devel rpmdevtools kernel-devel pam-devel ncurses-devel perl-devel perl-ExtUtils-Embed cmake3 gcc gcc-c++ git make autoconf automake pkg-config patch ncurses-devel libtool glibc-static libstdc++-static elfutils-libelf-devel
RUN yum update -y

RUN groupadd -g 1000 jenkins && useradd -u 1000 -g 1000 -m jenkins && mkdir /home/jenkins/rpmbuild && chown 1000:1000 /home/jenkins/rpmbuild
