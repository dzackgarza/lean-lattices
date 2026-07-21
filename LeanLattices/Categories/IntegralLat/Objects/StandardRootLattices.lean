import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

/-- Standard root lattice E_8 as an 8-dimensional even unimodular lattice. -/
def E8Lattice : IntegralLattice where
  carrier := Fin 8 → ℤ
  form := {
    toFun := fun v => {
      toFun := fun w => ∑ i, v i * w i
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
    congr 1; ext i; ring
  nondegenerate := by
    intro x hx
    ext i
    have h := hx (Pi.single i 1)
    dsimp at h
    rw [Finset.sum_eq_single i] at h
    · simpa using h
    · intro j _ hj; rw [Pi.single_eq_of_ne hj.symm, mul_zero]
    · intro hi; exact (hi (Finset.mem_univ i)).elim

/-- Standard root lattice A_n. -/
def AnLattice (n : ℕ) : IntegralLattice where
  carrier := Fin (n + 1) → ℤ
  form := {
    toFun := fun v => {
      toFun := fun w => ∑ i, v i * w i
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
    congr 1; ext i; ring
  nondegenerate := by
    intro x hx
    ext i
    have h := hx (Pi.single i 1)
    dsimp at h
    rw [Finset.sum_eq_single i] at h
    · simpa using h
    · intro j _ hj; rw [Pi.single_eq_of_ne hj.symm, mul_zero]
    · intro hi; exact (hi (Finset.mem_univ i)).elim

end LeanLattices.Categories.IntegralLat
