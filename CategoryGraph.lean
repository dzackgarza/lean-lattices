/-
Copyright (c) 2026 Dzack Garza. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import CategoryGraph.Core.Universes
import CategoryGraph.Core.Ids
import CategoryGraph.Core.Classifier
import CategoryGraph.Core.CategoricalPullback
import CategoryGraph.Core.AxiomOpfibration
import CategoryGraph.Core.Expr
import CategoryGraph.Core.Normalize
import CategoryGraph.Core.StructuralMap
import CategoryGraph.Model.Atomic
import CategoryGraph.Model.Interpretation
import CategoryGraph.Registry.Entry
import CategoryGraph.Registry.Extension
import CategoryGraph.Presentation.Nodes
import CategoryGraph.Categories.Algebra.Magmas
import CategoryGraph.Categories.Algebra.Rings
import CategoryGraph.Names.Standard
import CategoryGraph.ForMathlib.CategoricalPullback

/-!
Standalone normalized category-graph root.

Mathlib realizations are **not** imported here; use
`CategoryGraph.Realization.Mathlib.Atomic` as a separate root.

This root contains no observation-specific correspondence data.
-/
