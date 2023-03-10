use Mix.Config

config :gateway,
  port: String.to_integer(System.get_env("PORT") || "9000"),
  metrics_port: String.to_integer(System.get_env("METRICS_PORT") || "9001"),
  redis_uri: System.get_env("REDIS_URI") || "redis://redis:6379"

config :hammer,
  backend: {Hammer.Backend.ETS, [expiry_ms: 60_000 * 60 * 4, cleanup_interval_ms: 60_000 * 10]}
