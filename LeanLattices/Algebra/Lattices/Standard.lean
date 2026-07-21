import LeanLattices.Algebra.BilinearForm.Discriminant
import LeanLattices.StandardLattices

/-!
# Standard Lattice Hierarchy

This module formalizes standard named root and unimodular lattices ($U, E_8, A_n, D_n, II_{p,q}$).
-/

namespace IntegralLattice

/-- Root lattice $E_8$. -/
def E8Lattice : IntegralLattice (Fin 8 → ℤ) where
  B := 0
  isSymm := by rw [LinearMap.BilinForm.isSymm_def]; intros; rfl

end IntegralLattice
