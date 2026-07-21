import LeanLattices.Categories.FiniteFreeZModule.Objects.Basic

namespace LeanLattices.Categories.FiniteFreeZModule

/-- Rationalization: M ⊗_Z ℚ. -/
def Rationalization (M : ZLat) : Type _ :=
  M.carrier ⊗[ℤ] ℚ

instance (M : ZLat) : AddCommGroup (Rationalization M) :=
  TensorProduct.addCommGroup

instance (M : ZLat) : Module ℚ (Rationalization M) :=
  TensorProduct.instModule

/-- Realification: M ⊗_Z ℝ. -/
def Realification (M : ZLat) : Type _ :=
  M.carrier ⊗[ℤ] ℝ

instance (M : ZLat) : AddCommGroup (Realification M) :=
  TensorProduct.addCommGroup

instance (M : ZLat) : Module ℝ (Realification M) :=
  TensorProduct.instModule

/-- Canonical map M → M ⊗_Z ℚ sending m ↦ m ⊗ 1. -/
def rationalizationMap (M : ZLat) : M.carrier →ₗ[ℤ] Rationalization M :=
  TensorProduct.mk ℤ M.carrier ℚ 1 |>.flip

/-- Canonical map M → M ⊗_Z ℝ sending m ↦ m ⊗ 1. -/
def realificationMap (M : ZLat) : M.carrier →ₗ[ℤ] Realification M :=
  TensorProduct.mk ℤ M.carrier ℝ 1 |>.flip

/-- The rationalization of a free Z-module is a ℚ-vector space of the same dimension. -/
noncomputable def rationalizationFinrank (M : ZLat) :
    Module.finrank ℚ (Rationalization M) = Module.finrank ℤ M.carrier := by
  rfl

end LeanLattices.Categories.FiniteFreeZModule
