# Creating the YAML Configuration File

The `.turbo_test.yml` file is where you specify everything Turbo Test needs to know to run your test suite.

It consists of the following sections (example configurations provided):

### env

```
env:
     FOO: bar
   ```

### install

```
install: |
     sudo apt-get update -y
     sudo apt-get install make upstart gcc g++ make -y --no-install-recommends
```

### setup

```
setup: |
     echo $FOO
   ```


### test_suite

#### env

```
test_suite:
  env:
    FOO: test suite bar
    BAZ: quux
  ...
```


#### command

```
test_suite:
    ...
    command: sh
    ...
```

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
```