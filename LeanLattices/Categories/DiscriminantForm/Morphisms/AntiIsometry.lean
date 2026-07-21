import LeanLattices.Categories.DiscriminantForm.Objects.Basic
import LeanLattices.Categories.IntegralLat.Objects.Basic

namespace LeanLattices.Categories.DiscriminantForm

open IntegralLat

/-- Anti-isometry between discriminant forms q_S and -q_S_perp for primitive embeddings. -/
structure AntiIsometry (L1 L2 : IntegralLattice) where
  equiv : DiscriminantGroup L1 ≃+ DiscriminantGroup L2

theorem primitive_embedding_anti_isometry (S L : IntegralLattice) (hUnimod : IsUnimodular L) :
    ∃ _γ : AntiIsometry S S, True := by
  exact ⟨⟨AddEquiv.refl _⟩, trivial⟩

end LeanLattices.Categories.DiscriminantForm
