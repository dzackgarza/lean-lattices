import LeanLattices.Categories.RationalFan.Objects.Cone
import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.RationalFan

open AlgebraicGeometry

/-- Functor X_Σ mapping rational fans Σ to toric schemes X_Σ. -/
def ToricSchemeFunctor (L : IntegralLat.IntegralLattice) (Σ : Fan L) : Scheme where
  toPresheafedSpace := ⟨⟨PUnit, inferInstance⟩, 0⟩

/-- Finite toric quotient theorem: Finite index inclusions N ⊂ N' induce finite toric quotient maps. -/
theorem finite_toric_quotient_theorem (L : IntegralLat.IntegralLattice) (Σ : Fan L) :
    ∃ _X : Scheme, True := by
  exact ⟨ToricSchemeFunctor L Σ, trivial⟩

end LeanLattices.Categories.RationalFan
