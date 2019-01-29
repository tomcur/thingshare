# Thingshare
Thingshare can share screenshots and your clipboard with others by uploading the
files to sharing services and placing the share URL in your clipboard.

For example, you can set a keyboard shortcut in your desktop environment to tell
Thingshare to select a region on your screen to screenshot. The screenshot will
be uploaded automatically and a share URL placed in your clipboard.

## Features
- Interactively create and upload region screenshots (using Flameshot).
- Create and upload screenshots of the active window, active display, or full desktop (using scrot).
- Upload files or data directly from the clipboard.
- Supported file share services:
    - Seafile

# Installing
## With Nix
Run:

```bash
$ git clone https://github.com/beskhue/thingshare.git
$ cd thingshare
$ nix-env --file default.nix -i
```
This installs the required dependencies and places Thingshare's executables in
your path.

## Without Nix

Install `flameshot` and `scrot` with your favorite package manager.

Other dependencies will be included by default on most Linux distributions.
For completeness, these are generally packaged as:

- `libnotify`
- `coreutils`
- `grep`
- `curl`
- `jq`
- `file`
- `gawk`
- `xxd`

Grab Thingshare:

```bash
$ git clone https://github.com/beskhue/thingshare.git
```

If you want to, place the files in `thingshare/bin` in your path.

# Usage
Configure Thingshare through `~/.config/thingshare`.
Create the file if it does not exist.
See `thingshare/config/thingshare.example` for a template.

It is recommended to run `thingshare_init` on user login using your desktop
environment.
Starting `thingshare_init` is required to be able to make region screenshots.

Create and upload region or active window screenshots using:

```bash
$ thingshare_screenshot region
$ thingshare_screenshot window
$ thingshare_screenshot display
$ thingshare_screenshot full
```

Upload your current clipboard using:

```bash
$ thingshare_clipboard
```

It's recommended to create shortcuts for these commands.
