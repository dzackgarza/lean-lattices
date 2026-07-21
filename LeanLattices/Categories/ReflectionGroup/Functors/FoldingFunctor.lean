import LeanLattices.Categories.IntegralLat.Morphisms.Involution
import LeanLattices.Categories.ReflectionGroup.Objects.CoxeterDatum

namespace LeanLattices.Categories.ReflectionGroup

/-- The fixed-subspace chamber C^J = C ∩ V^J. -/
def FoldedChamber (L : OrientedHyperbolicLattice) (J : IntegralLat.Involution L.toIntegralLattice)
    (C : Chamber L) : Set L.carrier :=
  C.points ∩ (IntegralLat.FixedSublattice L.toIntegralLattice J : Set L.carrier)

/-- Folding data records the original chamber and its genuine fixed-subspace intersection. -/
structure Folding (L : OrientedHyperbolicLattice) where
  involution : IntegralLat.Involution L.toIntegralLattice
  chamber : Chamber L
  fixedChamber : Set L.carrier
  fixedChamber_eq : fixedChamber = FoldedChamber L involution chamber

end LeanLattices.Categories.ReflectionGroup
