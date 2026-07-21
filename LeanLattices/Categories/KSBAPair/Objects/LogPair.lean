import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.KSBAPair

open AlgebraicGeometry

structure DualizingSheaf (X : Scheme) where
  sheaf : Type _

structure LogPair where
  X : Scheme

structure DltContraction (P1 P2 : LogPair) where
  morphism : P1.X ⟶ P2.X

def SurfaceMMPFunctor (P : LogPair) : Type _ :=
  True

end LeanLattices.Categories.KSBAPair
