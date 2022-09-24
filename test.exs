puzzle1 = {[1, 1, 0, 3, 0], [1, 0, 2, 0, 2], [{1, 2}, {3, 3}, {3, 5}, {5, 1}, {5, 5}]}
puzzle2 = {[1, 1, -1, 3, 0], [1, 0, -2, 0, 2], [{1, 2}, {3, 3}, {3, 5}, {5, 1}, {5, 5}]}
puzzle = {[0, -1], [0, 1, 2], [{1, 2}, {2, 1}, {2, 3}]}

Khf2.to_external(puzzle1, [], "khf2_r1.txt") |> IO.inspect()
IO.puts("---")

Khf2.to_external(puzzle1, [:e, :s, :n, :n, :n], "khf2_r2.txt") |> IO.inspect()
IO.puts("---")

Khf2.to_external(puzzle2, [:e, :s, :n, :n, :w], "khf2_r3.txt") |> IO.inspect()
IO.puts("---")

Khf2.to_external(puzzle, [:e, :n, :w], "output.txt") |> IO.inspect()

#    1  0  2  0  2         1  0  2  0  2         1  0 -2  0  2
# 1  -  *  -  -  -      1  -  *  E  -  -      1  -  *  E  -  -
# 1  -  -  -  -  -      1  -  -  -  -  N      1  -  -  -  -  N
# 0  -  -  *  -  *      0  -  -  *  -  *     -1  -  -  *  -  *
# 3  -  -  -  -  -      3  N  -  S  -  N      3  N  -  S  -  -
# 0  *  -  -  -  *      0  *  -  -  -  *      0  *  -  -  W  *
