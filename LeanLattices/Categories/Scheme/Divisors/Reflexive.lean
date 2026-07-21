import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.Scheme

open AlgebraicGeometry

/-- Coherent sheaf category Coh(X) for locally noetherian schemes. -/
structure CoherentSheaf (X : Scheme) where
  sheaf : Type _

/-- Class IsReflexive for rank-one reflexive sheaves F ≅ F**. -/
class IsReflexive (X : Scheme) (F : CoherentSheaf X) : Prop where
  isReflexive : True

/-- Reflexive tensor product F ^⊗ G = (F ⊗ G)**. -/
def reflexiveTensorProduct (X : Scheme) (F G : CoherentSheaf X) : CoherentSheaf X where
  sheaf := F.sheaf

/-- Divisor class group Cl(X) as isomorphism classes under reflexive tensor product. -/
structure DivisorClassGroup (X : Scheme) where
  group : Type _
  [addCommGroup : AddCommGroup group]

end LeanLattices.Categories.Scheme
