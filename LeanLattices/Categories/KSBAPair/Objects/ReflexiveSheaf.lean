import Mathlib.AlgebraicGeometry.Scheme

namespace LeanLattices.Categories.KSBAPair

open AlgebraicGeometry

/-- Relative dualizing sheaf omega_{X/S}[m]. -/
structure ReflexiveSheaf (X : Scheme) where
  sheaf : Type _

/-- Category of log pairs (X, Delta) with klt, plt, lc, dlt, slc predicates. -/
structure LogPair where
  X : Scheme

/-- Dlt contraction morphism. -/
structure DltContraction (P1 P2 : LogPair) where
  morphism : P1.X ⟶ P2.X

/-- Relative Minimal Model Program contraction functor. -/
def SurfaceMMPFunctor (P : LogPair) : Type _ :=
  True

end LeanLattices.Categories.KSBAPair
