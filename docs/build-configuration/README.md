# 🛠 Build Configuration

The `.turbo-test.yml` file is where almost all of your configuration is specified. \(The exception to this is secret keys required by your tests, which you can store on the Turbo Test web site if you like.\)

The sample sandbox configuration file [is on Github here](https://github.com/turbotest/sandbox/blob/master/.turbo_test.yml). At the time of this writing, it contains the following:

```yaml
env:
  FOO: bar

install: |
  sudo apt-get update -y
  sudo apt-get install make upstart gcc g++ make -y --no-install-recommends

setup: |
  echo $FOO

test_suite:
  env:
    FOO: test suite bar
    BAZ: quux

  command: sh

  files:
    # - test_17_mins/012a9abb_3687_4b7b_b263_141f930a737a_test.sh
    # - test_17_mins/014a0146_ebbe_41e0_a078_9ae7690e35c4_test.sh
    # - test_17_mins/0214e37a_38aa_4262_9cc3_13d8e664ae2a_test.sh
    # - test_17_mins/030c2b23_6aa5_44bd_b2a3_efee9ff9af49_test.sh
    # - test_17_mins/03f507de_9c43_46dc_b335_f759b0f351f1_test.sh

    - test_17_mins/*_test.sh
    # - test_34_mins/*_test.sh
    # - test_68_mins/*_test.sh
    # - test_136_mins/*_test.sh
    # - test_272_mins/*_test.sh
```

The sections of this YAML file are as follows...

