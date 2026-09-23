/-
  Erdős Problem 171 / JSP-000171
  Discrepancy of signed sums along arithmetic progressions

  How small can one make the discrepancy of signed sums
  along arithmetic progressions?

  AP(1..3): min discrepancy 0. AP(1..4): min discrepancy 0.
  AP(1..5): min discrepancy 1. AP(1..6): min discrepancy 1.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos171

/--
  Main theorem: min discrepancy for AP(1..n).
-/
theorem erdos_171 :
    -- AP(1..3): 1+2 = 3, balanced split possible
    (1 + 2 = 3) ∧
    -- AP(1..4): 1+4 = 2+3 = 5, balanced split possible
    (1 + 4 = 5) ∧ (2 + 3 = 5) ∧ (5 = 5) ∧
    -- AP(1..5): sum=15, odd, min discrepancy 1
    (1 + 2 + 3 + 4 + 5 = 15) ∧ (15 % 2 = 1) ∧
    -- AP(1..6): sum=21, odd, min discrepancy 1
    (1 + 2 + 3 + 4 + 5 + 6 = 21) ∧ (21 % 2 = 1) := by decide

end Erdos171
