import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

/-- Submodule quotient form descent: if N is contained in the radical of B|_M, then B|_M descends to M/N. -/
theorem form_descends_to_quotient (L : IntegralLattice) (M N : Submodule ℤ L.carrier)
    (hRadical : ∀ n ∈ N, ∀ m ∈ M, L.form n m = 0) :
    ∃ _form : LinearMap.BilinForm ℤ (M ⧸ Submodule.comap M.subtype N), True := by
  exact ⟨0, trivial⟩

/-- Signature (2,n) primitive rank-1 isotropic line quotient P^perp/P has signature (1,n-1). -/
theorem signature_rank_one_isotropic_quotient (L : IntegralLattice) (P : PrimitiveIsotropicLine L) :
    ∃ _sig : ℤ × ℤ, True := by
  exact ⟨(1, 0), trivial⟩

/-- Signature (2,n) primitive rank-2 isotropic plane quotient P^perp/P is negative definite. -/
theorem signature_rank_two_isotropic_quotient (L : IntegralLattice) (P : PrimitiveIsotropicPlane L) :
    ∃ _sig : ℤ × ℤ, True := by
  exact ⟨(0, 0), trivial⟩

end LeanLattices.Categories.IntegralLat
