import Mathlib.Analysis.Complex.Basic

namespace LeanLattices.Categories.ComplexManifold

structure Domain where
  space : Type _

structure ArithmeticQuotient where
  quotient : Type _

structure HolomorphicMap (D1 D2 : Domain) where
  map : D1.space → D2.space

def PeriodMapFunctor (D : Domain) : Type _ :=
  True

end LeanLattices.Categories.ComplexManifold
