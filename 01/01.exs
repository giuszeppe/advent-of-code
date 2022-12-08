IO.inspect(File.cwd)
{:ok,file} = File.read("01/input/01.txt")
file
  |> String.split("\n\n")
  |> Enum.map(&(String.split(&1,"\n", trim: true)))
  |> Enum.map(fn a ->
    list = Enum.map(a,&(String.to_integer/1))
    list |> Enum.sum
     end)
  |> Enum.sort(&(&1 >= &2))
  |> Enum.slice(0..2)
  |> Enum.sum
  |> IO.inspect
