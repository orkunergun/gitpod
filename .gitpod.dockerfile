FROM gitpod/workspace-full
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -yqq update \
    && apt-get install --no-install-recommends -yqq repo bc bison build-essential curl ccache coreutils flex g++-multilib gcc-multilib git gnupg gperf libxml2 lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libwxgtk3.0-gtk3-dev imagemagick lunzip lzop schedtool squashfs-tools xsltproc zip zlib1g-dev perl xmlstarlet virtualenv xz-utils rr jq libncurses5 pngcrush lib32ncurses5-dev git-lfs libxml2 openjdk-11-jdk wget lib32readline-dev libssl-dev libxml2-utils android-sdk-libsparse-utils lld zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig ca-certificates bc cpio imagemagick bsdmainutils lz4 aria2 rclone ssh-client libncurses5 libssl-dev rsync schedtool python-is-python3 libarchive-tools python3 zstd \
