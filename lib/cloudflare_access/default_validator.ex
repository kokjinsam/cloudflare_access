defmodule CloudflareAccess.DefaultValidator do
  @moduledoc false

  @behaviour CloudflareAccess

  alias CloudflareAccess.JWTToken

  @impl CloudflareAccess
  def verify_token(token) do
    JWTToken.verify_and_validate(token)
  end
end
