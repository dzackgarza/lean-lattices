import LeanLattices.Categories.FiniteFreeZModule.Objects.Basic

namespace LeanLattices.Categories.FiniteFreeZModule

open CategoryTheory

/-- A submodule M of a free Z-module L is saturated if L/M is torsion-free. -/
def IsSaturated (L : ZLat) (M : Submodule ℤ L.carrier) : Prop :=
  Module.IsTorsionFree ℤ (L.carrier ⧸ M)

/-- Saturation of a submodule: the smallest saturated submodule containing M.
    Equivalently, M_sat = { x ∈ L | ∃ n > 0, n • x ∈ M }. -/
def Saturation (L : ZLat) (M : Submodule ℤ L.carrier) : Submodule ℤ L.carrier where
  carrier := { x | ∃ (n : ℤ), n ≠ 0 ∧ n • x ∈ M }
  add_mem' := by
    intro a b ⟨n, hn, hna⟩ ⟨m, hm, hmb⟩
    exact ⟨n * m, mul_ne_zero hn hm, by
      rw [mul_smul, mul_comm, mul_smul]
      exact M.add_mem (M.smul_mem m hna) (M.smul_mem n hmb)⟩
  zero_mem' := ⟨1, one_ne_zero, by rw [one_smul]; exact M.zero_mem⟩
  smul_mem' := by
    intro c x ⟨n, hn, hnx⟩
    exact ⟨n, hn, by rw [smul_comm]; exact M.smul_mem c hnx⟩

/-- The saturation contains the original submodule. -/
theorem le_saturation (L : ZLat) (M : Submodule ℤ L.carrier) : M ≤ Saturation L M := by
  intro x hx
  exact ⟨1, one_ne_zero, by rwa [one_smul]⟩

/-- Index of a sublattice M in L, when finite. -/
noncomputable def sublatticeIndex (L : ZLat) (M : Submodule ℤ L.carrier) [Fintype (L.carrier ⧸ M)] : ℕ :=
  Fintype.card (L.carrier ⧸ M)

/-- Rank of a ZLat. -/
noncomputable def rank (L : ZLat) : ℕ :=
  Module.finrank ℤ L.carrier

end LeanLattices.Categories.FiniteFreeZModule
