/-
Copyright (c) 2026 Dzack Garza. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import CategoryGraph.Tools.AxiomAudit

/-- Lake entry point for the kernel-axiom audit. -/
def main : IO UInt32 :=
  CategoryGraph.Tools.AxiomAudit.main
