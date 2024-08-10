defmodule CloudflareAccess.Config do
  @moduledoc false

  @default_adapter CloudflareAccess.DefaultValidator

  def adapter do
    Application.get_env(:cloudflare_access, :adapter) ||
      @default_adapter
  end

  def fetch_certs? do
    case Application.get_env(:cloudflare_access, :fetch_certs?) do
      reply when is_boolean(reply) -> reply
      _other -> true
    end
  end

  def cert_url do
    Application.fetch_env!(:cloudflare_access, :cert_url)
  end

  def jwt_iss do
    Application.fetch_env!(:cloudflare_access, :jwt_iss)
  end

  def jwt_aud do
    Application.fetch_env!(:cloudflare_access, :jwt_aud)
  end
end
