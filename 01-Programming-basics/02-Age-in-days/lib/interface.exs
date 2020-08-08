birth_year =
  IO.gets("What's your year of birth?\n")
  |> String.replace("\n", "")
  |> String.to_integer()

birth_month =
  IO.gets("What's your month of birth?\n")
  |> String.replace("\n", "")
  |> String.to_integer()

birth_day =
  IO.gets("What's your day of birth?\n")
  |> String.replace("\n", "")
  |> String.to_integer()

calculated_age = AgeInDays.calculate(birth_day, birth_month, birth_year)

IO.puts("You are #{calculated_age} days old.")
