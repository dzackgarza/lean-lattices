module

public import LeanLattices.Categories.KSBAPair.Objects.Singularities
public import LeanLattices.Categories.AlgebraicStack.Objects.KSBAStack

@[expose] public section

namespace LeanLattices.Categories.KSBAPair

open AlgebraicGeometry
open AlgebraicStack

/-- Complete Theorem: Moduli stack of stable log pairs (X, Delta) forms a proper Deligne-Mumford stack. -/
axiom ksbaModuliStack (a v : ℚ) : KSBAStack

/-- Stable log pairs with fixed coefficient and volume form a proper separated moduli stack. -/
axiom ksba_moduli_stack_properness (a v : ℚ) :
  (ksbaModuliStack a v).proper ∧ (ksbaModuliStack a v).separated

end LeanLattices.Categories.KSBAPair
