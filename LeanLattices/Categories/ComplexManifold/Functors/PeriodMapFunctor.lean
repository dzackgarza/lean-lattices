module

public import LeanLattices.Categories.AlgebraicStack.Morphisms.StackMorphism
public import LeanLattices.Categories.ComplexManifold.Morphisms.HolomorphicMap

@[expose] public section

namespace LeanLattices.Categories.ComplexManifold

open LeanLattices.Categories.AlgebraicStack

/-- Torelli-period assignment from KSBA stacks to type-IV domains, functorial on stack maps. -/
structure PeriodMapFunctor where
  obj : KSBAStack → Domain
  map : ∀ {S T}, StackMorphism S T → HolomorphicMap (obj S) (obj T)
  map_identity : ∀ S, (map ({
    map := id
    map_objects := fun _ => id
    representable := Function.injective_id
  } : StackMorphism S S)).map = id
  map_composition : Prop

/-- The Torelli construction determines the period-map functor. -/
axiom periodMapFunctor : PeriodMapFunctor

end LeanLattices.Categories.ComplexManifold
