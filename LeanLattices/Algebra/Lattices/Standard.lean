import LeanLattices.Algebra.BilinearForm.Discriminant
import LeanLattices.StandardLattices

/-!
# Standard Lattice Hierarchy

Named root and unimodular lattices.
-/

namespace IntegralLattice

/-- Root lattice `E₈` with its standard even unimodular form. -/
axiom E8Lattice : IntegralLattice (Fin 8 → ℤ)

/-- The standard `E₈` form is even. -/
axiom E8Lattice_isEven : E8Lattice.IsEven

end IntegralLattice
