mod windows;

#[cfg(target_os = "windows")]
pub use windows::*;
