FROM rustembedded/cross:x86_64-pc-windows-gnu-0.2.1
SHELL ["/bin/sh", "-c", "curl -sSf https://sh.rustup.rs | sh -s -- -y && . .cargo/env"]
# SHELL ["/bin/sh", "-c", "cargo install cross"]
COPY . .
# RUN cargo build --release 
ENTRYPOINT ["/bin/sh"]