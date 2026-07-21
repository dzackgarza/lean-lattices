import LeanLattices.Categories.IntegralLat.Objects.Standard
import LeanLattices.Categories.IntegralLat.Objects.Dual

namespace LeanLattices.Categories.IntegralLat

/-- The positive-definite even unimodular root lattice of type `E₈`. -/
axiom E8Lattice : IntegralLattice

/-- The root lattice of type `Aₙ`. -/
axiom AnLattice (n : ℕ) : IntegralLattice

/-- `E₈` is even and unimodular. -/
axiom E8Lattice_even_unimodular : IsEven E8Lattice ∧ IsUnimodular E8Lattice

end LeanLattices.Categories.IntegralLat
