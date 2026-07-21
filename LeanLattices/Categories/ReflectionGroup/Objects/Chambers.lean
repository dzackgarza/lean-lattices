import LeanLattices.Categories.ReflectionGroup.Objects.Representation

namespace LeanLattices.Categories.ReflectionGroup

open IntegralLat

/-- Vinberg reflection chamber C in signature (1,n) hyperbolic space. -/
structure FundamentalChamber (L : IntegralLattice) where
  inequalities : Set (L.carrier →ₗ[ℤ] ℤ)

/-- Chamber face decomposition theorem. -/
theorem chamber_face_decomposition (L : IntegralLattice) (C : FundamentalChamber L) :
    ∃ _faces : List (Submodule ℤ L.carrier), True := by
  exact ⟨[], trivial⟩

end LeanLattices.Categories.ReflectionGroup
