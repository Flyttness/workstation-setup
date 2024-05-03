# Workstation Setup

This project automates the process of setting up a new Mac OS X software development machine using simple [Bash](https://www.gnu.org/software/bash/) scripting. It heavily relies on [homebrew](https://brew.sh/).

## Goals

The primary goal of this project is to give people a simple script they can run to make their Mac OS X machine prepared and standardized for working on software development projects, especially those common at Flyttness.

## Why did we do it this way?

 * A bash script is easy for users to edit locally on-the-fly for small temporary tweaks
 * Everything is in one repository
 * The project name is informative
 * It is easy to fork and customize
 * It has limited requirements: `git` and `bash` available on macOS by default

## Anti-goals

This project does not aim to do everything. Some examples:

 * We don't install everything that your project needs. These scripts should only install generally useful things, and prefer running quickly over being complete.
 * We avoid setting up and maintaining overly-custom configurations. When there is already a tool that will get us something in a conventional manner, such as [Oh My Zsh](https://ohmyz.sh/), we prefer to use it instead of doing things ourselves.

## Preparation

- Run the latest version of macOS unless you have a specific reason not to
- These scripts might work on previous versions, but are maintained with only the latest macOS in mind

## Getting this tool
Open up `Terminal.app` and run the following command:

```sh
mkdir -p ~/Code/github.com/flyttness &&
  cd ~/Code/github.com/flyttness &&
  git clone https://github.com/flyttness/workstation-setup.git &&
  cd workstation-setup
``` 

## Using this tool
Within `~/Code/github.com/flyttness/workstation-setup`, run the following:

```shell
./setup.sh
```

**Warning: this tool might overwrite existing configurations.**

### Items installed by default
We recommend that you look at `setup.sh` to see what is automatically installed. You'll see it calls other scripts within `scripts/common`, so feel free to take a look at those, too. Note that you can edit any of those files to add or remove items specific for your needs, but the goal of this project is to have sane defaults for our target audience.

## Having problems?

If you're having problems using the setup script, please let us know by [opening an issue](https://github.com/flyttness/workstation-setup/issues/new).

If you see errors from `brew`, try running `brew doctor` and include the diagnostic output in your issue submission.

## Customizing

If you'd like to customize this project for a project's use:

- Fork the project
- Edit the shells scripts to your liking
- Profit

## Frequently Asked Questions and Troubleshooting
_Q: Can I rerun `setup.sh`?_

A: Yes, but with a _but_. While this script is not entirely [idempotent](https://en.wikipedia.org/wiki/Idempotence), it does use homebrew's cache to skip reinstalling items, and is pretty lenient about ignoring errors when non-homebrew items get mad that they are already installed. There is no guarantee that some configurations won't be overwritten or duplicated. 

_Q: Should I run this with `sudo`?_

A: No. `setup.sh` will ask you for your password take care of that for you.

_Q: How to I get my change into this tool?_

A: Submit a PR, especially for things that are outdated or broken. But, we are being vigilant about keeping this tool lean after a history of letting many idiosyncratic changes creep in over the past few years. As stated above, you can edit the files yourself after downloading them and/or fork.