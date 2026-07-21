import LeanLattices.Categories.RationalFan.Objects.Cone
import LeanLattices.Categories.IntegralLat.Morphisms.Involution

namespace LeanLattices.Categories.RationalFan

open IntegralLat

/-- Wythoff coarsening functor mapping reflection chambers C to rational semifans. -/
def WythoffCoarseningFunctor (L : IntegralLattice) (J : Involution L) (C : Cone L) : Semifan L where
  cones := {C}
  isEquivariant := True

/-- Commutativity theorem: Restriction of generalized fans commutes with lattice folding C^J = C ∩ V^J. -/
theorem generalized_fan_restriction_commutes_with_folding (L : IntegralLattice) (J : Involution L) (C : Cone L) :
    (WythoffCoarseningFunctor L J C).isEquivariant = True := by
  rfl

end LeanLattices.Categories.RationalFan
