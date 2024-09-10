[package]
name = "module-b"
edition = "v0.10.0"
version = "0.0.1"

[dependencies]
modulea = { path = "../module-a" }


[profile]
entries = ["main.k", "${modulea:KCL_MOD}/render.k"]