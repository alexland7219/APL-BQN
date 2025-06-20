⟨ digits, 
  IsDigit, 
  IsNat,
  Split,
  Words,
  Parse,
  ParseNums ⟩ ⇐ 

digits  ← '0'+↕10
IsDigit ← ∨´ · ⍷⟜digits ⊑
IsNat   ← ∧´ IsDigit¨

Split ← {
  aux ← (+` (𝕨 ⍷ 𝕩)) ⊔ 𝕩
  res ← (⋈ ⊑ aux) ∾ 1⊸↓¨ (1 ↓ aux)
  (0⊸< ≠¨ res) / res
}

Words ← ' '⊸Split

Parse     ← >· Words¨ •file.Lines
ParseNums ← (•ParseFloat¨˘) Parse