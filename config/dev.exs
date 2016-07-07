use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :phoenix_exrm_edeliver_file_logs, PhoenixExrmEdeliverFileLogs.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [node: ["node_modules/brunch/bin/brunch", "watch", "--stdin"]]

# Watch static and templates for browser reloading.
config :phoenix_exrm_edeliver_file_logs, PhoenixExrmEdeliverFileLogs.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs

config :logger,
  backends: [
            :console,
            {LoggerFileBackend, :info},
            {LoggerFileBackend, :debug},
            {LoggerFileBackend, :error},
           ]

config :logger, :console, format: "[$level] $message\n"

config :logger, :debug,
  path: "log/debug.log",
  level: :info

config :logger, :info,
  path: "log/info.log",
  level: :info

config :logger, :error,
  path: "log/error.log",
  level: :error

# Set a higher stacktrace during development.
# Do not configure such in production as keeping
# and calculating stacktraces is usually expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :phoenix_exrm_edeliver_file_logs, PhoenixExrmEdeliverFileLogs.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "invoices_dev",
  hostname: "localhost",
  pool_size: 10
