defmodule User do
  @moduledoc """
  Defines the user struct and functions to handle user names
  """
  import String, only: [split: 1]
  import List, only: [first: 1, last: 1]

  defstruct name: nil, email: nil

  @doc """
  Get the first name of the user.

  ## Parameters
  - `user` - a user struct.

  ## Examples

  user = %User{name: "Nate Luzod"}
  User.first_name(user)
  "Nate"
  """
  def first_name(user) do
    user
    |> get_names
    |> first
  end

  @doc """
  Get the last name of the user.

  ## Parameters
  - `user` - a user struct.

  ## Examples

  user = %User{name: "Nate Luzod"}
  User.last_name(user)
  "Luzod"
  """
  def last_name(user) do
    user
    |> get_names
    |> last
  end

  defp get_names(user) do
    split(user.name)
  end
end
