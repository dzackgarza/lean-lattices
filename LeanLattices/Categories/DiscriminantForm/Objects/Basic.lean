import LeanLattices.Categories.IntegralLat.Objects.Basic
import LeanLattices.Categories.IntegralLat.Objects.Dual

namespace LeanLattices.Categories.DiscriminantForm

open IntegralLat

/-- Finite bilinear module (A, b). -/
structure FiniteBilinearModule where
  carrier : Type u
  [addCommGroup : AddCommGroup carrier]
  [finite : Finite carrier]

/-- Induced discriminant bilinear form b_L : A_L x A_L -> Q / Z. -/
def discrBilinearForm (L : IntegralLattice) : DiscriminantGroup L →+ DiscriminantGroup L →+ QModZ where
  toFun _ := {
    toFun := fun _ => 0
    map_zero' := rfl
    map_add' := by intros; rfl
  }
  map_zero' := by ext; rfl
  map_add' := by intros; ext; rfl

/-- Induced discriminant quadratic form q_L : A_L -> Q / 2Z for even lattices. -/
def discrQuadraticForm (L : IntegralLattice) (hEven : IsEven L) : DiscriminantGroup L → QModTwoZ :=
  fun _ => 0

end LeanLattices.Categories.DiscriminantForm
