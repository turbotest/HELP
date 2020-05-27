# 🚠 Overview

[Turbo Test](https://turbo-test.com/) runs your software tests in parallel on the cloud, drastically reducing testing time and increasing developer productivity.

Turbo Test is designed to be simple to configure and use. Once you've configured it, whenever you push your changes to Github, Turbo Test will automatically run your tests for you.

Here is all you need to do to start using it:

* sign up for the service
* install the application onto your Github account...
* ...including specifying which repos on which you want to run TurboTest
* for each repo, configure a .turbo\_test.yml file.

You do not need to sign up for the cloud resources used to perform the tests -- we do that for you, and the costs are included in your subscription.

We recommend familiarizing yourself with Turbo Test at first with a repo whose tests are not too time consuming. This will give you faster feedback while you are learning.

We provide the [sample sandbox repo](https://github.com/turbotest/HELP/tree/0780d8836376fd9fe9b775a5f53f6abf73642215/sandbox/README.md) as an even easier starting point, as it already has a working configuration file.

Here are the sections of this documentation and how they will help you:

* [Architecture](../architecture.md) - how Turbo Test does what it does to make your tests run faster
* [Installing Turbo Test as a Github Application](https://github.com/turbotest/HELP/tree/c1f9aa8986e495d230feb67739976e8b692e560e/docs/overview/github-app/README.md) - in order to use Turbo Test, you must first create an account and attach it to your Github account and desired repos
* [The .turbo-test.yml configuration file](https://github.com/turbotest/HELP/tree/c1f9aa8986e495d230feb67739976e8b692e560e/docs/overview/config-file/README.md) - this file contains all or almost all of your repo's Turbo Test configuration
* [Testing configuration locally with Vagrant](https://github.com/turbotest/HELP/tree/c1f9aa8986e495d230feb67739976e8b692e560e/docs/overview/vg-testing-configuration-locally.md) - how you can test the virtual machine configuration and test execution locally without needing to push a commit to Github
* [Using the sandbox repository](https://github.com/turbotest/HELP/tree/c1f9aa8986e495d230feb67739976e8b692e560e/docs/overview/sandbox/README.md) - we provide a minimal sample repo for you to easily test your Turbo Test account
* [Language-specific reference](https://github.com/turbotest/HELP/tree/c1f9aa8986e495d230feb67739976e8b692e560e/docs/overview/language-specific-reference/README.md) - information you may find helpful relating to your specific programming language
* [Environment variables](https://github.com/turbotest/HELP/tree/c1f9aa8986e495d230feb67739976e8b692e560e/docs/overview/env-vars/README.md) - how Turbo Test handles environment variables
* [Pricing](https://github.com/turbotest/HELP/tree/c1f9aa8986e495d230feb67739976e8b692e560e/docs/overview/pricing/README.md) - how to find the plan that's best for you

