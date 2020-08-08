question =
  IO.gets("What's your question?\n> ")
  |> String.replace("\n", "")

answer = StupidCoaching.coach_answer(question)

IO.puts(answer)
