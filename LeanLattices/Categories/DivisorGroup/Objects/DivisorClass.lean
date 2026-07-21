import Mathlib.Algebra.Group.Subgroup.Basic

namespace LeanLattices.Categories.DivisorGroup

variable {X : Type*}

structure DivisorClass where
  group : AddSubgroup X

structure DivisorHom (D1 D2 : DivisorClass (X := X)) where
  hom : D1.group →+ D2.group

def PositivityFunctor (D : DivisorClass (X := X)) : Prop :=
  True

end LeanLattices.Categories.DivisorGroup
