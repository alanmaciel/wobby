use Mi  /Users/maciel/Code/wobby/config:
total used in directory 32 available 5133915 wc
drwxr-xr-x   6 maciel  staff   204 Mar 26 23:12 .
drwxr-xr-x  17 maciel  staff   578 Mar 19 01:05 ..
-rw-r--r--   1 maciel  staff   947 Mar 19 01:02 config.exs
-rw-r--r--   1 maciel  staff  1240 Mar 26 23:12 dev.exs
-rw-r--r--   1 maciel  staff  2148 Mar 19 01:02 prod.exs
-rw-r--r--   1 maciel  staff   481 Mar 19 01:02ex.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :wobby, Wobby.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :wobby, Wobby.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "wobby_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
