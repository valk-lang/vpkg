
# Valk package manager

Used for installing valk packages, compiler version control and managing toolchains for cross-compiling.

## Install

```
curl -s https://valk-lang.dev/install.sh | bash
```

## Usage

```
📦 Package commands

 vp install         Install pacakages defined in the valk.json config
 vp install {pkg}   Install pacakage globally
 vp remove {pkg}    Remove pacakage

💿 Valk version control

 vp use 0.0.1       Install valk version 0.0.1
 vp use latest      Install latest version
 vp use             Install valk version defined in project valk.json
                    Expected config: { "valk": "0.0.5" }

🔗 Toolchain commands

 vp toolchain get {target}

⚙️ Other

 vp self-update     Update vp itself
 vp version         Show vp version
 vp {command} -h    Show help for a command
 ```
