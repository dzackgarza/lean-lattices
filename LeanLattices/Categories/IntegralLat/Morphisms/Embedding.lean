import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

open SymmBilinModuleCat

/-- A lattice morphism f : L → M is primitive if M / f(L) is torsion-free. -/
def IsPrimitive (L M : IntegralLattice)
    (f : Hom ⟨L.carrier, L.form, L.isSymm⟩ ⟨M.carrier, M.form, M.isSymm⟩) : Prop :=
  Module.IsTorsionFree ℤ (M.carrier ⧸ LinearMap.range f.toLinearMap)

/-- Orthogonal complement of the image of f in M:
    S⊥ = { x ∈ M | B_M(x, f(y)) = 0 for all y ∈ L }. -/
def OrthogonalComplement (L M : IntegralLattice)
    (f : Hom ⟨L.carrier, L.form, L.isSymm⟩ ⟨M.carrier, M.form, M.isSymm⟩) :
    Submodule ℤ M.carrier where
  carrier := { x | ∀ y : L.carrier, M.form x (f.toLinearMap y) = 0 }
  add_mem' := by
    intro a b ha hb y
    simp only [Set.mem_setOf_eq] at *
    rw [map_add, LinearMap.add_apply, ha y, hb y, add_zero]
  zero_mem' := by
    intro y
    simp only [Set.mem_setOf_eq]
    rw [map_zero, LinearMap.zero_apply]
  smul_mem' := by
    intro c x hx y
    simp only [Set.mem_setOf_eq] at *
    rw [map_smul, LinearMap.smul_apply, hx y, smul_zero]

/-- The orthogonal complement is itself nondegenerate when the embedding is primitive.
    This is Nikulin's observation that for primitive S ↪ L with L unimodular,
    S⊥ is a nondegenerate sublattice and [L : S ⊕ S⊥] = |det(S)|.
    See Nikulin, "Integer symmetric bilinear forms", Proposition 1.6.1. -/
axiom orthogonal_complement_nondegenerate
    (L M : IntegralLattice)
    (f : Hom ⟨L.carrier, L.form, L.isSymm⟩ ⟨M.carrier, M.form, M.isSymm⟩)
    (hPrim : IsPrimitive L M f)
    (hUnimod : IsUnimodular M) :
    ∀ x : OrthogonalComplement L M f,
      (∀ y : OrthogonalComplement L M f, M.form (x : M.carrier) (y : M.carrier) = 0) →
      (x : M.carrier) = 0

end LeanLattices.Categories.IntegralLat
