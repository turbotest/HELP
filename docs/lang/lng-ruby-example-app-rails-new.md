As an example application, let's start a bare new Rails application with just the skeleton created by `rails new`. We pass some flags to make the generated code base leaner and faster-running:

```shell script
rails new turbotest-ruby-sandbox   \
  --skip-sprockets      \
  --skip-javascript     \
  --skip-turbolinks     \
  --skip-action-mailer  \
  --skip-action-mailbox \
  --skip-webpack-install \
  --skip-test

```