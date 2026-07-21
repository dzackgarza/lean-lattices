import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.ReflectionGroup

/-- Signature (1,n) hyperbolic lattice. -/
structure OrientedHyperbolicLattice extends IntegralLat.IntegralLattice where
  isHyperbolic : Prop

/-- Simple roots and reflection representation W -> O(V). -/
structure CoxeterDatum (L : OrientedHyperbolicLattice) where
  simpleRoots : List L.carrier

end LeanLattices.Categories.ReflectionGroup
