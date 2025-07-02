RawInp ← &rs ∞ &fo "inp.txt"
Inp    ← ⊜(⊜⋕≠@ .)≠@\n. RawInp

Part₁ ← /+⌵/-≡⍆⍉
Part₂ ← /+×⟜≡⌟(/+⌕)°⊟⍉

⍤⤙≍ 1388114 Part₁ Inp
⍤⤙≍ 23529853 Part₂ Inp
