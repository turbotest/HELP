# Overview

# Table of contents

* [What is Turbo Test?](intro/intr-what-is-turbo-test.md)

* [Architecture -- how it works](architecture/README.md)
  * [Massively parallel](architecture/massively-parallel.md)
  * [No queueing](architecture/no-queueing.md)

* [Overview](overview/README.md)

* [Installing Turbo Test as a Github Application](github-app/README.md)

* [The .turbo-test.yml configuration file](config-file/README.md)
  * [Environment variables](config-file/cf-env-vars-section.md)
  * [Installation](config-file/cf-install-section.md)
  * [Setup](config-file/cf-setup-section.md)
  * [Test suites](config-file/cf-test-suite-section.md)

* [Testing configuration locally with Vagrant](testing-locally/README.md)

* [Using the sandbox repository](sandbox/README.md)
  * [git clone ...](sandbox/sb-fork-or-clone-it.md)
  * [Install the application](sandbox/sb-install-application.md)
  * [Edit the configuration file](sandbox/sb-edit-config-file.md)
  * [Pushing your commit](sandbox/sb-pushing-your-commit.md)

* [Language-specific reference](language-specific-reference/README.md)
  * [Ruby](language-specific-reference/lng-ruby/README.md)
    * [Example application](language-specific-reference/lng-ruby/lng-ruby-example-app.md)
    * [Rails template](language-specific-reference/lng-ruby/lng-ruby-rails-template.md)
    * [Rails DB templates](language-specific-reference/lng-ruby/lng-ruby-rails-db-templates.md)

* [Environment variables](env-vars/README.md)
  * [Global key/value pairs in the configuration file](env-vars/kv-pairs.md)
  * [Test suite environment variables override globals](env-vars/global-ovverrides.md)
  * [Add encrypted variables in the web UI](env-vars/encrypted-variables.md)

* [Pricing](pricing/README.md)
  * [Metered](pricing/pr-metered.md)
  * [Billed monthly](pricing/pr-billed-monthly.md)
  * [Safety cap](pricing/pr-safety-cap.md)

* [Documentation Metadata](documentation-metadata.md)


Here are the sections of this documentation and how they will help you:

* [Architecture](../architecture) - how Turbo Test does what it does to make your tests run faster

* [Installing Turbo Test as a Github Application](github-app/README.md) - in order to use Turbo Test,
 you must first create an account and attach it to your Github account and desired repos

* [The .turbo-test.yml configuration file](config-file/README.md) - this file contains all or almost all of your repo's
 Turbo Test configuration

* [Testing configuration locally with Vagrant](vg-testing-configuration-locally.md) - how you can test the
virtual machine configuration and test execution locally without needing to push a commit to Github

* [Using the sandbox repository](sandbox/README.md) - we provide a minimal sample repo for you to easily test
your Turbo Test account

* [Language-specific reference](language-specific-reference/README.md) - information you may find helpful
relating to your specific programming language

* [Environment variables](env-vars/README.md) - how Turbo Test handles environment variables

* [Pricing](pricing/README.md) - how to find the plan that's best for you
