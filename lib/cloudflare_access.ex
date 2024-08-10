defmodule CloudflareAccess do
  @moduledoc """
  Documentation for `CloudflareAccess`.
  """

  alias CloudflareAccess.Config

  @callback verify_token(binary()) :: {:ok, Joken.claims()} | {:error, Joken.error_reason()}

  def verify_token(token) do
    Config.adapter().verify_and_validate(token)
  end
end
