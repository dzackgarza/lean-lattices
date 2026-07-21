import LeanLattices.Categories.IntegralLat.Objects.Basic
import LeanLattices.Categories.IntegralLat.Objects.Dual

namespace LeanLattices.Categories.IntegralLat

/-- Primitive embedding theorem: existence of primitive embedding of L into unimodular lattice M. -/
theorem primitive_embedding_existence (L M : IntegralLattice) (hUnimod : IsUnimodular M)
    (hRank : Module.finrank ℤ L.carrier + Module.finrank ℤ L.carrier ≤ Module.finrank ℤ M.carrier) :
    ∃ f : SymmBilinModuleCat.Hom ⟨L.carrier, L.form, L.isSymm⟩ ⟨M.carrier, M.form, M.isSymm⟩,
      Module.IsTorsionFree ℤ (M.carrier ⧸ LinearMap.range f.toLinearMap) := by
  sorry

end LeanLattices.Categories.IntegralLat
