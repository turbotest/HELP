# Creating the YAML Configuration File

The `.turbo_test.yml` file is where you specify everything Turbo Test needs to know to run your test suite.

It consists of the following sections (example configurations provided):

### env

```
env:
     FOO: bar
   ```
These are the environment variables that will need to be available during _any_ stage in the TurboTest lifecycle (i.e. not only running the tests, but also for installation and setup). (Also see test_suite/env below.)


### install

```
install: |
     sudo apt-get update -y
     sudo apt-get install make upstart gcc g++ make -y --no-install-recommends
```

This section contains the commands that will be needed to create the virtual machine template that will be used to create VM instances.


### setup

```
setup: |
     echo $FOO
   ```

These are commands needed to set up each virtual machine individually (in addition to those already included in the 
`install` section to create the VM template).


### test_suite

This section specifies the information needed to run your tests. It contains the following subsections:

#### env

```
test_suite:
  env:
    FOO: test suite bar
    BAZ: quux
  ...
```

These are environment variables needed only to run your test suites (i.e. not needed by installation or setup).


#### command

```
test_suite:
    ...
    command: sh
    ...
```

This is the operating system command that you want to use to run the tests. This can be a single word (e.g. `bash`) or multiple words (e.g. `bundle exec rake test`).


#### files

```
test_suite:
    ...
  files:
    - test_17_mins/012a9abb_3687_4b7b_b263_141f930a737a_test.sh
    - test_17_mins/014a0146_ebbe_41e0_a078_9ae7690e35c4_test.sh
    - test_17_mins/0214e37a_38aa_4262_9cc3_13d8e664ae2a_test.sh
    - test_34_mins/*_test.sh
    ...
  ...
```

Here is where you specify the tests you want to be run by the command you specified above. You can use:

* absolute or relative filespecs (relative will be relative to the project root directory)
* wildcards are supported (OS glob format, _not_ Ruby glob format)
* multiple filespecs can be specified
