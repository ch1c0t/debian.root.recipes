## Introduction

It is a set of [mitamae](https://github.com/itamae-kitchen/mitamae) recipes to set up a development environment on Debian.

To get started, make sure you are root and have `git` and `wget` installed(with `apt-get install git wget`, for example).

Then, run

```
cd /root && git clone https://github.com/ch1c0t/debian.root.recipes recipes && cd recipes && ./bootstrap
```

which should set up everything else for root and change its login shell to `zsh`.

The next time you log in as root, it should look visibly different and `echo $SHELL` should output "/bin/zsh"(if the installation were successful).

## Usage

### Running recipes

To run a recipe, press `Alt-m`, start typing its name, and press `Enter`.

### Making new users

To set up a new user, use `mu USERNAME`. For example, to set up the user "om", run `mu om`.

By default, it will create the home directory at `/home/om`. You can change that by passing the path where the home directory should be as the second parameter:

```
mu om /mnt/sda1/home/om
```

### Using user recipes

By default, every new user made with `mu` gets its copy of root recipes at `/home/USERNAME/recipes`.

These are basic recipes suitable for root and for getting started within a new user. For more, clone [user recipes](https://github.com/ch1c0t/debian.user.recipes) to `~/user.recipes` as a user.
