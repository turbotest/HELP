# Ruby

## Working with Ruby

If your tests require Ruby, then you will need to explicitly install it on the VM.

Start up your Vagrant vm:

```bash
vagrant destroy  # enable this command to start with a fresh VM
vagrant up vagrant ssh
```

You should now be in an ssh session on the Vagrant VM.

You need to execute the code in the `install` section of the sample configuration file:

```bash
sudo apt-get update -y
sudo apt-get install make upstart gcc g++ make -y --no-install-recommends
```

Now you can install rvm. For the most up to date instructions, go to [https://rvm.io/rvm/install](https://rvm.io/rvm/install). At the time of this writing those instructions are to run the following commands:

```bash
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
 \curl -sSL [https://get.rvm.io](https://get.rvm.io) \| bash . ~/.bashrc \# to load rvm into this shell instance
```

You can see the versions of Ruby available for installing by running:

```bash
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


```bash
rvm install 2.7
```
To put this all together, this could go in the `install` section of your configuration file:

```bash
sudo apt-get update -y
sudo apt-get install make upstart gcc g++ make -y --no-install-recommends
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash
. ~/.bashrc  # to load rvm into this shell instance
rvm install 2.7
```
