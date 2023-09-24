FROM gitpod/workspace-full
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -yqq update \
    && apt-get install --no-install-recommends -yqq repo bc bison build-essential curl ccache coreutils flex g++-multilib gcc-multilib git gnupg gperf libxml2 lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libwxgtk3.0-gtk3-dev imagemagick lunzip lzop schedtool squashfs-tools xsltproc zip zlib1g-dev perl xmlstarlet virtualenv xz-utils rr jq libncurses5 pngcrush lib32ncurses5-dev git-lfs libxml2 openjdk-11-jdk wget lib32readline-dev libssl-dev libxml2-utils android-sdk-libsparse-utils lld zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig ca-certificates bc cpio imagemagick bsdmainutils lz4 aria2 rclone ssh-client libncurses5 libssl-dev rsync schedtool python-is-python3 libarchive-tools python3 zstd \
    && echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen \
    && TZ=Europe/Istanbul\
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install gh
RUN set -x \
    && curl -LO https://github.com/cli/cli/releases/download/v2.22.1/gh_2.22.1_linux_amd64.deb \
    && dpkg -i gh* \
    && rm gh*

# Install Git-Lfs
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash \
    && apt-get install git-lfs
