import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.Scheme

open AlgebraicGeometry

structure Curve (k : Type*) [Field k] where
  scheme : Scheme

structure FamilyMorphism (S : Scheme) where
  X : Scheme
  π : X ⟶ S

structure RelativeSpec (X : Scheme) where
  spec : Scheme

structure RelativeProj (X : Scheme) where
  proj : Scheme

structure BlowupMorphism (X : Scheme) where
  X_tilde : Scheme
  π : X_tilde ⟶ X

structure CoverMorphism (X : Scheme) where
  Y : Scheme
  π : Y ⟶ X

structure QuotientMorphism (X : Scheme) where
  Y : Scheme
  π : X ⟶ Y

structure RDPResolution (X : Scheme) where
  X_tilde : Scheme
  π : X_tilde ⟶ X

structure AnticanonicalQuotient (X : Scheme) where
  Y : Scheme
  π : X ⟶ Y

def StructureSheafFunctor (X : Scheme) : Type _ :=
  True

end LeanLattices.Categories.Scheme
