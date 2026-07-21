import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.ReflectionGroup

/-- Involution folding functor C^J = C ∩ V^J. -/
def FoldingFunctor (L : IntegralLat.IntegralLattice) (J : IntegralLat.Involution L) : Submodule ℤ L.carrier :=
  IntegralLat.FixedSublattice L J

end LeanLattices.Categories.ReflectionGroup
