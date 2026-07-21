import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

/-- Gram matrix of a lattice relative to a basis. -/
def gramMatrix {n : ℕ} (L : IntegralLattice) (b : Fin n → L.carrier) : Matrix (Fin n) (Fin n) ℤ :=
  fun i j => L.form (b i) (b j)

/-- Determinant of a lattice relative to a basis. -/
def determinant {n : ℕ} (L : IntegralLattice) (b : Fin n → L.carrier) : ℤ :=
  (gramMatrix L b).det

/-- Orthogonal direct sum L1 ⊕ L2 of two integral lattices. -/
def OrthogonalSum (L1 L2 : IntegralLattice) : IntegralLattice where
  carrier := L1.carrier × L2.carrier
  form := {
    toFun := fun v => {
      toFun := fun w => L1.form v.1 w.1 + L2.form v.2 w.2
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
    rw [L1.isSymm.eq x.1 y.1, L2.isSymm.eq x.2 y.2]
  nondegenerate := by
    intro x hx
    ext
    · apply L1.nondegenerate x.1
      intro y1
      have h := hx (y1, 0)
      dsimp at h
      rw [map_zero, add_zero] at h
      exact h
    · apply L2.nondegenerate x.2
      intro y2
      have h := hx (0, y2)
      dsimp at h
      rw [map_zero, zero_add] at h
      exact h

end LeanLattices.Categories.IntegralLat
