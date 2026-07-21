import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

/-- Subcategory TwoElemLat: 2x = 0 on A_L. -/
def IsTwoElementary (L : IntegralLattice) : Prop :=
  ∀ x : Module.Dual ℤ L.carrier ⧸ LinearMap.range (L.form : L.carrier →ₗ[ℤ] (L.carrier →ₗ[ℤ] ℤ)), 2 • x = 0

end LeanLattices.Categories.IntegralLat
