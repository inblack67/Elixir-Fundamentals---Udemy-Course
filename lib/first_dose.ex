defmodule FirstDose do
  @moduledoc """
  Documentation for `FirstDose`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> FirstDose.hello()
      :world

  """
  def hello do
    :world
  end

  # conditionals and stuff

  def play do
    str = "hello"

    # if String.valid?(str) do
    #   "valid string bro"
    # else
    #   "nah try again"
    # end

    # unless is_integer(str) do
    #   "Not an int"
    # end

    # case

    # ok, error
    data = {:f, "boom"}

    # case data do
    #   {:error, _msg} ->
    #     "something went wrong"

    #   {:ok, text} ->
    #     text

    #   _ ->
    #     "idont know"
    # end

    value = 1.23

    case "ok" do
      ^value -> "yeah"
      value -> "oh no #{value}"
      _ -> "i dont know"
    end
  end

  def test_cond() do
    cond do
      2 + 2 == 5 -> "Correct result"
      2 - 2 == 0 -> "False result"
      true -> "Did not match any of our previous conditions"
    end
  end

  # with - nested case statements

  # 3 calls - 1. db select. 2. validation of regex (nw call). 3. db write
  # case res do, : {:ok, data} -> validate nwt code case {:ok, }  end

  def test_with do
    user = %{first: "Code", last: "Dexterity"}

    # db select query
    full_name =
      with {:ok, first} <- Map.fetch(user, :first), {:ok, last} <- Map.fetch(user, :last) do
        "#{first} #{last}"
      else
        _ -> IO.puts("we dont know what happened")
      end

    full_name
  end

  def test_without_with do
    user = %{first: "Code", last: "Dexterity"}

    first_call = Map.fetch(user, :first)

    case first_call do
      {:ok, first} ->
        second_call = Map.fetch(user, :last)

        case second_call do
          {:ok, last} -> first <> " " <> last
        end
    end
  end

  def fn1, do: "one "
  def fn2(prev, num), do: "#{prev} #{num} two "
  def fn3(prev, num), do: "#{prev} #{num} three"

  # pipe operator
  def test_pipe do
    fn1()
    |> fn2(1)
    |> fn3(2)
  end

  # functions
  def hello25(msg \\ "hello"), do: IO.puts("#{msg} dfcjxhcd")

  def greetings, do: "hello "

  def greetings(%{name: name}) do
    IO.puts("i ran")
    name
  end

  def greetings2(name) when is_atom(name), do: "#{name} yo"

  def greetings2(name) when is_list(name) do
    IO.puts("last run")
    List.last(name)
  end

  # Strings

end
