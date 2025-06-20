utils ← •Import "lib/utils.bqn"
input ← "../AoC 2024/01-historian-hysteria/inpbasic.txt"

inp ← utils.ParseNums input

# Solution to Part I
+´|-˝∧˘⍉ inp

# Solution to Part II
