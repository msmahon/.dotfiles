# .dotfiles

Repo for managing dotfiles. This is a common solution for organizing and sharing dotfiles between machines. Most linux machines include [stow](https://www.gnu.org/software/stow) which is the primary tool used here.

To update your machines .dotfiles, from within this repo and run `stow <package-name>`. This will generate symbolic links matching the directory structure from within the package file. A more detailed explanation can be found here: http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html

`.zshrc` and `.bashrc` source a specific machine file at the end of their configuration. This is for configurations specific to the machine you are using. These are not tracked. This is useful for things like aliases that only make sense for the given environment.
