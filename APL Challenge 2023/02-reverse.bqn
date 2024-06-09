# Put it in Reverse

# Note: ⍷ in BQN, unlike in APL, does not return same length as 𝕩.

FindReverse ← ⌽(≠∘⊢↑⍷)○(⌽⎊⋈)

•Show "abra" FindReverse "abracadabra"
    # ⟨ 0 0 0 1 0 0 0 0 0 0 1 ⟩
•Show "issi" FindReverse "Mississippi"
    # ⟨ 0 0 0 0 1 0 0 1 0 0 0 ⟩
•Show "bb" FindReverse "bbb bbb"
    # ⟨ 0 1 1 0 0 1 1 ⟩
•Show ⟨42⟩ FindReverse 42
    # ⟨ 1 ⟩
•Show ⟨42⟩ FindReverse ⟨42⟩
    # ⟨ 1 ⟩
"are"‿"aquatic" FindReverse "ducks"‿"are"‿"aquatic"‿"avians"
    # ⟨ 0 0 1 0 ⟩