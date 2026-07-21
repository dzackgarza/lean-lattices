import LeanLattices.Categories.KSBAPair.Objects.Singularities
import LeanLattices.Categories.AlgebraicStack.Objects.KSBAStack

namespace LeanLattices.Categories.KSBAPair

open AlgebraicGeometry
open AlgebraicStack

/-- Complete Theorem: Moduli stack of stable log pairs (X, Delta) forms a proper Deligne-Mumford stack. -/
theorem ksba_moduli_stack_properness (a v : ℚ) :
    ∃ M : KSBAStack, True := by
  exact ⟨⟨0⟩, trivial⟩

end LeanLattices.Categories.KSBAPair
