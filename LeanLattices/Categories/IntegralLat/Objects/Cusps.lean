import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

/-- Primitive isotropic line P ⊂ L (rank 1, P ⊂ P^perp). -/
structure PrimitiveIsotropicLine (L : IntegralLattice) where
  carrier : Submodule ℤ L.carrier
  primitive : Module.IsTorsionFree ℤ (L.carrier ⧸ carrier)
  rank_one : Module.finrank ℤ carrier = 1
  isotropic : ∀ x ∈ carrier, ∀ y ∈ carrier, L.form x y = 0

/-- Primitive isotropic plane P ⊂ L (rank 2, P ⊂ P^perp). -/
structure PrimitiveIsotropicPlane (L : IntegralLattice) where
  carrier : Submodule ℤ L.carrier
  primitive : Module.IsTorsionFree ℤ (L.carrier ⧸ carrier)
  rank_two : Module.finrank ℤ carrier = 2
  isotropic : ∀ x ∈ carrier, ∀ y ∈ carrier, L.form x y = 0

/-- Orthogonal complement P^perp. -/
def OrthogonalComplement (L : IntegralLattice) (S : Submodule ℤ L.carrier) : Submodule ℤ L.carrier :=
  { carrier := {x | ∀ y ∈ S, L.form x y = 0}
    add_mem' := by intros x y hx hy z hz; dsimp at hx hy ⊢; rw [L.form.map_add, LinearMap.add_apply, hx z hz, hy z hz, add_zero]
    zero_mem' := by intros y _; dsimp; rw [map_zero, LinearMap.zero_apply]
    smul_mem' := by intros c x hx y hy; dsimp at hx ⊢; rw [map_smul, LinearMap.smul_apply, hx y hy, mul_zero] }

end LeanLattices.Categories.IntegralLat
