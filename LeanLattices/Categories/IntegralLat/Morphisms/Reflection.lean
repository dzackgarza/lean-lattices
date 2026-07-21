import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

/-- Reflection linear map s_r(x) = x - (2 B(x,r) / B(r,r)) r for root vectors. -/
def reflectionMap (L : IntegralLattice) (r : L.carrier) (hr : L.form r r = -2 ∨ L.form r r = 2) :
    L.carrier →ₗ[ℤ] L.carrier where
  toFun x := if L.form r r = -2 then x + (L.form x r) • r else x - (L.form x r) • r
  map_add' x y := by
    split_ifs with h
    · simp only [L.form.map_add, LinearMap.add_apply, add_smul]
      abel
    · simp only [L.form.map_add, LinearMap.add_apply, add_smul]
      abel
  map_smul' c x := by
    split_ifs with h
    · simp only [map_smul, LinearMap.smul_apply, smul_add, mul_smul, RingHom.id_apply]
    · simp only [map_smul, LinearMap.smul_apply, smul_sub, mul_smul, RingHom.id_apply]

end LeanLattices.Categories.IntegralLat
