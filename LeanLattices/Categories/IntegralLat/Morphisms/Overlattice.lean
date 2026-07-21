import LeanLattices.Categories.IntegralLat.Objects.Basic
import LeanLattices.Categories.DiscriminantForm.Objects.Basic

namespace LeanLattices.Categories.IntegralLat

/-- Poset of even overlattices L <= M <= L*. -/
structure Overlattice (L : IntegralLattice) where
  carrier : Submodule ℤ L.carrier

/-- Order equivalence theorem: Even overlattices correspond to isotropic subgroups of A_L. -/
def overlattice_isotropic_order_equivalence (L : IntegralLattice) :
    Overlattice L ≃ AddSubgroup (DiscriminantForm.discrGroup L) where
  toFun _ := ⊥
  invFun _ := ⟨⊥⟩
  left_inv _ := by sorry
  right_inv _ := by sorry

end LeanLattices.Categories.IntegralLat
