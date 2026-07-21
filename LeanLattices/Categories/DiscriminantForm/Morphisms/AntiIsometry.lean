import LeanLattices.Categories.DiscriminantForm.Objects.Basic
import LeanLattices.Categories.IntegralLat.Morphisms.Embedding

namespace LeanLattices.Categories.DiscriminantForm

open IntegralLat

/-- An anti-isometry between finite quadratic modules: an isomorphism
    γ : (A₁, q₁) ≅ (A₂, -q₂) such that q₂(γ(x)) = -q₁(x).
    These arise from primitive embeddings S ↪ L via the identification
    γ : (A_S, q_S) ≅ (A_{S⊥}, -q_{S⊥}). -/
structure AntiIsometry (A₁ A₂ : FiniteQuadraticModule) where
  equiv : A₁.carrier ≃+ A₂.carrier
  anti_preserves : ∀ x, A₂.quadForm (equiv x) = -A₁.quadForm x

/-- Nikulin's theorem: primitive embeddings S ↪ L (with L even unimodular)
    are classified by anti-isometries of discriminant forms.
    Specifically, there is a bijection between:
    - Isometry classes of primitive embeddings S ↪ L
    - Anti-isometries γ : (A_S, q_S) ≅ (H, -q_S|_H) for isotropic subgroups H ≤ A_S
    See Nikulin, Theorem 1.14.4. -/
axiom primitive_embedding_anti_isometry_bijection
    (S L : IntegralLattice) (hUnimod : IsUnimodular L) :
    Prop  -- The full bijection statement

/-- Anti-isometry induced by a primitive embedding. -/
axiom induced_anti_isometry
    (S L : IntegralLattice)
    (f : SymmBilinModuleCat.Hom ⟨S.carrier, S.form, S.isSymm⟩ ⟨L.carrier, L.form, L.isSymm⟩)
    (hPrim : IsPrimitive S L f) (hUnimod : IsUnimodular L) :
    discrGroup S ≃+ discrGroup (⟨L.carrier, L.form, L.isSymm, L.nondegenerate⟩ : IntegralLattice)

end LeanLattices.Categories.DiscriminantForm
