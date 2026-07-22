import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.ReflectionGroup

/-- Signature (1,n) hyperbolic lattice. -/
structure OrientedHyperbolicLattice extends IntegralLat.IntegralLattice where
  negativeIndex : ℕ
  positiveIndex : ℕ
  signature_positive : positiveIndex = 1
  orientation : carrier →ₗ[ℤ] ℤ

/-- The chosen component of the positive cone. -/
def PositiveCone (L : OrientedHyperbolicLattice) : Set L.carrier :=
  {x | 0 < L.form x x ∧ 0 < L.orientation x}

/-- The isotropic boundary of the positive cone. -/
def LightCone (L : OrientedHyperbolicLattice) : Set L.carrier :=
  {x | L.form x x = 0 ∧ 0 ≤ L.orientation x}

end LeanLattices.Categories.ReflectionGroup
