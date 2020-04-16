# Testing configuration locally with Vagrant

Whenever you push changes to Github, Turbo Test will:

* ensure that the VM's used to test your software will have had your `install` and `setup` sections run
* make the specified environment variables available to the test command
* run the test command on all files included in your test suite's configuration's `files` section

However, if you make changes in your configuration, it would be nice to be able to test those changes locally _before_ pushing them. This is easily accomplished using [Vagrant](https://www.vagrantup.com/docs/installation/). See the troubleshooting note below regarding a Vagrant issue and its solution if you need it.

In order to test changes in your `install` and `setup` sections, you will need to start with a fresh Vagrant VM. Run `vagrant destroy` to remove the existing VM so that the next time you do a `vagrant up` it will be with a new VM.

A `Vagrantfile` is provided that will create a virtual machine identical to the one Turbo Test will use on the cloud. Using this local VM, you can test your configuration file locally.

There are of course a multitude of ways you could do this, but here are some suggestions.

## yq

[`yq`](https://github.com/mikefarah/yq) is a command line utility written in the Go language that performs various operations on YAML files. This can help in your experimentation and debugging. It can be downloaded [here](https://github.com/mikefarah/yq#download-the-latest-binary).

You can extract pieces of your YAML configuration file using `yq`. For example, to extract the install section, you can run:

```bash
$ yq r .turbo_test.yml install

sudo apt-get update -y
sudo apt-get install make upstart gcc g++ make -y --no-install-recommends
```

...or nested elements such as:

```bash
$ yq r .turbo_test.yml test_suite.files

- test_17_mins/*_test.sh
...
```

If you copy the output of these commands to your clipboard (for example, by appending to the command `| pbcopy` on Mac OS or `| xclip -selection c` on Linux), then after running `vagrant ssh` you can simply paste them into your ssh session to try them out.

In this way, you can verify that your installation and setup commands succeed, without needing to push any changes to Github.

### Vagrant Troubleshooting Note

If you have installed vagrant using a package manager, and are having this problem running it:

```text
zsh: /usr/bin/vagrant: bad interpreter: /usr/bin/ruby: no such file or directory
```

...then removing the package and installing Vagrant from a package downloaded from [the Vagrant web site](https://www.vagrantup.com/downloads.html) will probably solve the problem. (See [this StackOverflow question](https://stackoverflow.com/questions/43813735/cannot-start-vagrant-ubuntu-16-04) for more detail.)

