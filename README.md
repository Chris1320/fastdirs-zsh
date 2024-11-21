# fastdirs-zsh

This plugin for [zsh](https://www.zsh.org) adds just one shortcut, but unfolds
the magic of [wd](https://github.com/mfaerevaag/wd), [Zoxide](https://github.com/ajeetdsouza/zoxide),
and [yazi](https://github.com/sxyazi/yazi/) 🧙

Without arguments, `y` just opens yazi. If you supply an argument that is a
directory, yazi is opened in that directory. If you supply a warp point,
yazi is opened in the location of that warp point. And if you supply
anything else as an argument, `zoxide` is called with the argument and
`yazi` is opened there.

_This is the efficiency you always wanted_.

## Requirements

This plugin is tested on the following software:

- [zsh](https://www.zsh.org) v*5.9*: The Z shell.
- [yazi](https://github.com/sxyazi/yazi) v*0.3.3*: Blazing fast terminal file manager.
- [Zoxide](https://github.com/ajeetdsouza/zoxide) v*0.9.6*: A smarter `cd` command.
- [wd](https://github.com/mfaerevaag/wd) v*0.9.1*: Jump to custom directories in zsh,
  without using `cd`.

## Installation

Install the zsh plugin manually or using your favorite plugin manager.

### Manual Installation

Just clone the repository to your desired location and source the plugin in
your `.zshrc`:

```bash
git clone --depth=1 -- https://github.com/Chris1320/fastdirs-zsh.git <path>
echo "source <path>/fastdirs.plugin.zsh" >> ~/.zshrc

exec zsh  # Restart your shell
```

### Using Oh-My-Zsh

> [!NOTE]
> You should have [Oh-My-Zsh](https://ohmyz.sh) installed before proceeding.

First, clone the repository to `$ZSH/custom/plugins/fastdirs`.

```bash
git clone --depth=1 -- https://github.com/Chris1320/fastdirs-zsh.git $ZSH_CUSTOM/plugins/fastdirs
```

Next, add `fastdirs` to the list of plugins in your `.zshrc`.

```bash
plugins=(... fastdirs)
```

## History

This is shamelessly/efficiently copied from
[ranger-zoxide](https://github.com/fdw/ranger-zoxide), which was also just an
interation of [ranger-autojump](https://github.com/fdw/ranger-autojump).
