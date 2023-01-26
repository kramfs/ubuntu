FROM ghcr.io/ublue-os/base:latest
# See https://pagure.io/releng/issue/11047 for final location

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with rpm-ostree-based system i.e. Fedora Silverblue" \
      summary="A cloud-native desktop experience" \
      maintainer="rudelsaldivar@gmail.com>"

COPY etc /etc
COPY usr /usr
#COPY --from=ghcr.io/ublue-os/udev-rules etc/udev/rules.d/* /etc/udev/rules.d

#RUN wget https://copr.fedorainfracloud.org/coprs/lyessaadi/blackbox/repo/fedora-37/lyessaadi-blackbox-fedora-37.repo -O /etc/yum.repos.d/lyessaadi-blackbox.repo
#RUN wget https://copr.fedorainfracloud.org/coprs/kylegospo/gnome-vrr/repo/fedora-$(rpm -E %fedora)/kylegospo-gnome-vrr-fedora-$(rpm -E %fedora).repo -O /etc/yum.repos.d/_copr_kylegospo-gnome-vrr.repo
#RUN rpm-ostree override replace --experimental --from repo=copr:copr.fedorainfracloud.org:kylegospo:gnome-vrr mutter gnome-control-center gnome-control-center-filesystem

RUN rpm-ostree install gnome-shell-extension-appindicator gnome-shell-extension-dash-to-dock gnome-shell-extension-gsconnect nautilus-gsconnect openssl just podman-docker zsh && \
    systemctl unmask dconf-update.service && \
    systemctl enable dconf-update.service && \
    systemctl enable rpm-ostree-countme.service && \
#    systemctl enable tailscaled.service && \
    fc-cache -f /usr/share/fonts/ubuntu && \
#    rm -f /etc/yum.repos.d/lyessaadi-blackbox.repo && \
#    rm -f /etc/yum.repos.d/_copr_kylegospo-gnome-vrr.repo && \
#    rm -f /etc/yum.repos.d/tailscale.repo &&  \
    sed -i 's/#DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=15s/' /etc/systemd/user.conf && \
    sed -i 's/#DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=15s/' /etc/systemd/system.conf && \
    ostree container commit

# Install OMZ
#RUN curl -LO https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
#RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#RUN echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc

# K8s tools
COPY --from=cgr.dev/chainguard/kubectl:latest /usr/bin/kubectl /usr/bin/kubectl

RUN curl -Lo ./kind "https://kind.sigs.k8s.io/dl/v0.17.0/kind-$(uname)-amd64"
RUN chmod +x ./kind
RUN mv ./kind /usr/bin/kind