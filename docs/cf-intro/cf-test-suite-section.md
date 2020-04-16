# Test suites

```yaml
test_suite:
  env:
    FOO: test suite bar
    BAZ: quux

  command: sh

  files:
    - test_17_mins/a_17_minute_test.sh
    - test_34_mins/*_test.sh
```

This section specifies the information needed to run your tests. It contains the following subsections:

* `env` - environment variables (other than global ones specified outside this test suite) that need to be available while executing this test suite
* `command` - a (possibly multiline) string specifying the command(s) required to execute the tests
* `files` - an array of filespecs on which the command will execute

Filespecs can be specified:

* as absolute or relative filespecs (relative will be relative to the project root directory)
* with wildcards; these wildcards will be expanded by the shell and not the command; therefore, assume OS glob format, and not your command language's (e.g. Ruby's) glob format)

