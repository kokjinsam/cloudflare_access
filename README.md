# CloudflareAccess

A simple Cloudflare Access client.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `cloudflare_access` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cloudflare_access, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/cloudflare_access>.

## Usage

1. Load Cloudflare Access public key cert cache.

```elixir
  defmodule YourApplication do
    def start(_type, _args) do
      children = [
        CloudflareAccess.Certs
      ]

      opts = [strategy: :one_for_one, name: YourApplication.Supervisor]
      Supervisor.start_link(children, opts)
    end
  end
```

2. Configure your Cloudflare Access.
3. Start using. Thank you.

## Notes

1. `cert_url`: `https://<team-name>.cloudflareaccess.com/cdn-cgi/access/certs`
2. `jwt_iss`: `https://<team-name>.cloudflareaccess.com`
3. `jwt_aud`: Application audience (AUD) tag of the Access application.
