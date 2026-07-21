import LeanLattices.Categories.KSBAPair.Morphisms.DltContraction

namespace LeanLattices.Categories.KSBAPair

/-- An MMP output records a minimal model and the contraction producing it. -/
structure SurfaceMMPOutput (P : LogPair) where
  minimalModel : LogPair
  contraction : DltContraction P minimalModel
  canonical_nef : Prop

/-- The surface MMP assigns a canonical output to each log pair. -/
axiom surfaceMMPFunctor (P : LogPair) : SurfaceMMPOutput P

end LeanLattices.Categories.KSBAPair
