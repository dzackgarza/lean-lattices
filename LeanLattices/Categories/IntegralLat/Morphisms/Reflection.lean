import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

/-- Reflection linear map s_r(x) = x - (2 B(x,r) / B(r,r)) r for root vectors. -/
def reflectionMap (L : IntegralLattice) (r : L.carrier) (hr : L.form r r = -2 ∨ L.form r r = 2) :
    L.carrier →ₗ[ℤ] L.carrier where
  toFun x := if L.form r r = -2 then x + (L.form x r) • r else x - (L.form x r) • r
  map_add' _ _ := sorry
  map_smul' _ _ := sorry

end LeanLattices.Categories.IntegralLat
