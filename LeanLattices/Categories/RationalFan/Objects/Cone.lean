import LeanLattices.RationalFansAndSemifans

namespace LeanLattices.Categories.RationalFan

variable {L : Type*} [AddCommGroup L] [Module ℤ L] [Module.Finite ℤ L] [Module.Free ℤ L]

structure Cone (M : IntegralLattice.IntegralLattice L) where
  generators : List L

structure Fan (M : IntegralLattice.IntegralLattice L) where
  cones : Set (Cone M)

structure FanMorphism (F1 F2 : Fan (M := M)) where
  map : L →ₗ[ℤ] L

def ToricFunctor (F : Fan (M := M)) : Type _ :=
  True

end LeanLattices.Categories.RationalFan
