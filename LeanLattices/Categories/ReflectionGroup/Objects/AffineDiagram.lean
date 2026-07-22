import LeanLattices.Categories.ReflectionGroup.Objects.Representation

namespace LeanLattices.Categories.ReflectionGroup

open IntegralLat

/-- Subdiagram Coxeter labels for affine ADE diagrams. -/
structure AffineCoxeterLabels (L : IntegralLattice) where
  labels : List ℕ

/-- Unique positive affine null root for parabolic subdiagrams. -/
def AffineNullRoot (L : IntegralLattice) : L.carrier →ₗ[ℤ] ℤ :=
  0

end LeanLattices.Categories.ReflectionGroup
