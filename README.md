# dotfiles
These are my dotfiles. There are many like them, but these are mine.

### Quickstart
1. Download the repo to a temporary directory
    ```sh
    git clone --bare https://github.com/jbellsh/dotfiles /tmp/dotfiles
    ```
2. Checkout the files to your chosen directory (here I've chosen the $HOME directory):
    ```sh
    git --git-dir=/tmp/dotfiles --work-tree=$HOME/ checkout
    ```
    By default, git doesn't want to overwrite existing files. Either back them up, or just force an overwrite with:
    ```sh
    git --git-dir=/tmp/dotfiles --work-tree=$HOME/ checkout --force
    ```
3. (Optional) Initialize and install included vim plugins with:
    ```sh
    git --git-dir=/tmp/dotfiles --work-tree=$HOME/ submodule update --init
    ```

## Overview
A repo containing my personal config files (naturally). Best to download as a bare git repo; storing the git files to one directory
while installing the files themselves wherever you point to as the working tree (most obviously $HOME).
This allows us use our home folder as the working tree, so checkout will download files right into the correct folder hierarchy.

This repo also includes the following vim plugins as submodules (for easy installation):
* [ale](https://github.com/dense-analysis/ale)
* [indentLine](https://github.com/Yggdroot/indentLine)
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [vim-easy-align](https://github.com/junegunn/vim-easy-align)
* [vim-fish](https://github.com/dag/vim-fish)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
