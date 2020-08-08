first_name =
  IO.gets("What's your first name?\n")
  |> String.replace("\n", "")

middle_name =
  IO.gets("What's your middle name?\n")
  |> String.replace("\n", "")

last_name =
  IO.gets("What's your last name?\n")
  |> String.replace("\n", "")

full_name = Name.compute(first_name, middle_name, last_name)

IO.puts("Hello, #{full_name}.")
