defmodule CloudflareAccess.Certs do
  @moduledoc false

  use JokenJwks.DefaultStrategyTemplate

  alias CloudflareAccess.Config

  def init_opts(opts) do
    Keyword.merge(opts,
      should_start: Config.fetch_certs?(),
      jwks_url: Config.cert_url()
    )
  end
end
