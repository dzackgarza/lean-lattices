/-
Copyright (c) 2026 Dzack Garza. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import CategoryGraph.Categories.Algebra.Rings
import CategoryGraph.Core.Ids

/-!
# Standard names and spelling aliases

Aliases do not create semantic nodes. `CRings` is recorded as `aliasOf`
`cat.commutative_rings`.
-/

namespace CategoryGraph.Names

open CategoryGraph

abbrev CommutativeRings := Categories.Algebra.Rings.CommutativeRings

/-- Spelling alias — registry id `alias.crings`. -/
abbrev CRings := CategoryId.commutativeRings

example : AliasId.crings.raw = "alias.crings" := by rfl

end CategoryGraph.Names
