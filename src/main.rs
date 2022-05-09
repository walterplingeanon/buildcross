#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(clippy::module_inception)]

mod windows;
mod linux;
mod ios;
mod features;

use windows::*;
use linux::*;
use ios::*;
use features::*;

use std::io;

fn main() -> io::Result<()> {
    print();
    
    #[cfg(feature = "test")]
    print_feature();
    
    Ok(())
}