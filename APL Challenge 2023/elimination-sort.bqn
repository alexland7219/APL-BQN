# Elimination Sort

ElimSort ← ⊢/˜⊢=⌈`

•Show ElimSort ↕10  
    # ⟨ 0 1 2 3 4 5 6 7 8 9 ⟩

•Show ElimSort 2‿1‿4‿3‿6‿5‿8‿7‿10‿9 
    # ⟨ 2 4 6 8 10 ⟩

•Show ElimSort 1000‿2500‿1333‿1969‿3141‿2345‿3141‿4291.9‿4291.8‿4292
    # ⟨ 1000 2500 3141 3141 4291.9 4292 ⟩

ElimSort 1‿3‿7‿3‿5‿8‿5‿8‿1‿6‿1‿8‿1‿10‿8‿4‿3‿4‿1‿4
    # ⟨ 1 3 7 8 8 8 10 ⟩

# Explanation

# Use a max scan ⌈`
# Test equality with original 𝕩 to get a bitmask
# Use Replicate (/), with original 𝕩 as right argument (swap needed)