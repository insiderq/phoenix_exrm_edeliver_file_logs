# PhoenixExrmEdeliverFileLogs

That is an extended version of phoenix.new project with some additions

  * logging to files with `logger_file_backend`
  * exrm releases
  * edeliver releases and deployment with `npm install` and `phoenix.digest` and copying of `prod.secret.exs` to remote host included

To start your Phoenix app:

  * Rename base project from `phoenix_exrm_edeliver_file_logs` and `PhoenixExrmEdeliverFileLogs` to what you need. That is currently can be done only with your IDE search and replace.
  * Configure edeliver with `cp .deliver/config.example .deliver/config` and make changes
  * Configure production secrets with `cp config/prod.secret.exs.example config/prod.secret.exs`. To generate `secret_key_base` use `mix phoenix.gen.secret`
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Misc:

  * Adjust settings of file logging in `config/dev.exs` and `config/prod.exs` logger section.
