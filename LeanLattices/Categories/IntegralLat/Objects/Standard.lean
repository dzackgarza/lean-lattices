import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

/-- Hyperbolic plane U = [[0, 1], [1, 0]] on Z x Z. -/
def HyperbolicPlane : IntegralLattice where
  carrier := ℤ × ℤ
  form := {
    toFun := fun v => {
      toFun := fun w => v.1 * w.2 + v.2 * w.1
      map_add' := by intros; dsimp; ring
      map_smul' := by intros; dsimp; ring
    }
    map_add' := by intros; ext; dsimp; ring
    map_smul' := by intros; ext; dsimp; ring
  }
  isSymm := by
    rw [LinearMap.BilinForm.isSymm_def]
    intro x y
    dsimp
    ring
  nondegenerate := by
    intro x hx
    have h1 := hx (1, 0)
    have h2 := hx (0, 1)
    dsimp at h1 h2
    ext
    · exact h2
    · exact h1

/-- Scale lattice L(n) with form n * B_L. -/
def scale (L : IntegralLattice) (n : ℤ) (hn : n ≠ 0) : IntegralLattice where
  carrier := L.carrier
  form := n • L.form
  isSymm := by
    rw [LinearMap.BilinForm.isSymm_def]
    intro x y
    dsimp [LinearMap.smul_apply]
    rw [L.isSymm.eq x y]
  nondegenerate := by
    intro x hx
    apply L.nondegenerate x
    intro y
    have h := hx y
    dsimp [LinearMap.smul_apply] at h
    cases mul_eq_zero.mp h with
    | inl h_n => contradiction
    | inr h_form => exact h_form

end LeanLattices.Categories.IntegralLat
