import LeanLattices.Categories.FiniteFreeZModule.Objects.Basic

namespace LeanLattices.Categories.FiniteFreeZModule

/-- Morphisms in FiniteFreeZModule: Z-linear maps. -/
structure Morphism (M N : FiniteFreeZModule) where
  toLinearMap : M.carrier →ₗ[ℤ] N.carrier

/-- Saturation condition for submodules in FiniteFreeZModule. -/
def IsSaturated (M : FiniteFreeZModule) (S : Submodule ℤ M.carrier) : Prop :=
  Module.IsTorsionFree ℤ (M.carrier ⧸ S)

end LeanLattices.Categories.FiniteFreeZModule
