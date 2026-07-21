import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

/-- Primitive embedding property of a lattice morphism. -/
def IsPrimitive (L M : IntegralLattice) (f : SymmBilinModuleCat.Hom ⟨L.carrier, L.form, L.isSymm⟩ ⟨M.carrier, M.form, M.isSymm⟩) : Prop :=
  Module.IsTorsionFree ℤ (M.carrier ⧸ LinearMap.range f.toLinearMap)

end LeanLattices.Categories.IntegralLat
