module

public import LeanLattices.Categories.AlgebraicStack.Objects.KSBAStack

@[expose] public section

namespace LeanLattices.Categories.AlgebraicStack

/-- A semitoroidal compactification together with its recognizable boundary divisors. -/
structure SemitoroidalCompactification (S : KSBAStack) where
  compactified : KSBAStack
  inclusion : S.stack → compactified.stack
  boundaryDivisor : Type
  recognizable : boundaryDivisor → Prop
  proper : compactified.proper

/-- Main Compactification Theorem: Normalized KSBA compactification is semitoroidal. -/
axiom normalized_ksba_is_semitoroidal (S : KSBAStack) :
    SemitoroidalCompactification S

end LeanLattices.Categories.AlgebraicStack
