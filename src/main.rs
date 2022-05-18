#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(clippy::module_inception)]

mod features;
mod ios;
mod linux;
mod windows;

use features::*;
use ios::*;
use linux::*;
use windows::*;

use std::io;

fn main() -> io::Result<()> {
    print();

    #[cfg(feature = "test")]
    print_feature();

    Ok(())
}

#[test]
fn test() {
    assert_eq!(1, 2);
}