
# Valk package manager

Used for installing valk packages, compiler version control and managing toolchains for cross-compiling.

## Install

```
SOON
```

## Usage

```
📦 Package commands

 vpkg install         Install pacakages defined in the valk.json config
 vpkg install {pkg}   Install pacakage globally
 vpkg remove {pkg}    Remove pacakage

💿 Valk version control

 vpkg use 0.0.1       Install valk version 0.0.1
 vpkg use latest      Install latest version
 vpkg use             Install valk version defined in project valk.json
                      Expected config: { "valk": "0.0.5" }

🔗 Toolchain commands

 vpkg toolchain get {target}

⚙️ Other

 vpkg self-update     Update vpkg itself
 vpkg version         Show vpkg version
 vpkg {command} -h    Show help for a command
 ```
