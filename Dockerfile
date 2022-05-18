FROM rustembedded/cross:x86_64-pc-windows-gnu-0.2.1
ENV HOME=/root
SHELL ["/bin/sh", "-c", "curl -sSf https://sh.rustup.rs | sh -s -- -y && . $HOME/.cargo/env"]
SHELL ["/bin/sh", "-c", "rustup target add x86_64-pc-windows-gnu"]
SHELL ["/bin/sh", "-c", "curl -LO https://github.com/tcnksm/ghr/releases/download/v0.14.0/ghr_v0.14.0_linux_amd64.tar.gz && tar -xvf ghr_v0.14.0_linux_amd64.tar.gz && mv ./ghr_v0.14.0_linux_amd64/ghr /usr/local/bin/"]
CMD ["/bin/sh"]