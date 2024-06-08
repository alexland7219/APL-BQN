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

# Explanation

# ⌽⎊⋈    Reverses a list, or it creates a list if a non-array element was given
# ≠∘⊢↑⍷  Is a 3-train to convert BQN's ⍷ to APL's
# Over ○ will apply ⌽⎊⋈ to both arguments and then do the find on top of that
# Apply a final reverse ⌽