# Working with Ruby

If your tests require Ruby, then you will need to explicitly install it on the VM.

Start up your Vagrant vm:

```shell script
# vagrant destroy  # enable this command to start with a fresh VM
vagrant up
vagrant ssh
```

You should now be in an ssh session on the Vagrant VM.

You need to execute the code in the `install` section of the sample configuration file:

```shell script
sudo apt-get update -y
sudo apt-get install make upstart gcc g++ make -y --no-install-recommends
```

Now you can install rvm. For the most up to date instructions, go to [https://rvm.io/rvm/install](https://rvm.io/rvm/install). At the time of this writing those instructions are to run the following commands:

```shell script
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash
```

Exit the Vagrant shell (ctrl-D) and re-enter it (`vagrant ssh`), to load rvm.

You can see the versions of Ruby available for installing by running:

```shell script
vagrant@ubuntu-xenial:~$ rvm list known

# MRI Rubies
# ...
[ruby-]2.5[.7]
[ruby-]2.6[.5]
[ruby-]2.7[.0]
ruby-head
# ...
```

Install the one you want, e.g.

```shell script
rvm install 2.7
```