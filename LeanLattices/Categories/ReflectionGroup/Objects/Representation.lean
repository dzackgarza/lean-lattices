import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.ReflectionGroup

open IntegralLat

/-- Subdiagram classifications: Elliptic, Parabolic, MaximalParabolic. -/
inductive SubdiagramType
  | Elliptic
  | Parabolic
  | MaximalParabolic

/-- Reflection representation W -> O(V) in signature (1,n). -/
structure Representation (L : IntegralLattice) where
  group_action : L.carrier →ₗ[ℤ] L.carrier

/-- Chamber-preserving homomorphism. -/
structure ChamberHom (L : IntegralLattice) where
  hom : L.carrier →ₗ[ℤ] L.carrier

end LeanLattices.Categories.ReflectionGroup
