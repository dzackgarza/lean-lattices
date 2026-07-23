# lean-lattices

Lean libraries for lattice mathematics and reusable categorical foundations.

`CategoryGraph` is the neutral normalized-category-graph library migrated from the
research prototype. It owns the generic expression language, classifier machinery,
Mathlib realization, registry reflection, and JSON exporter. Sage observations and the
Sage-to-normalized correspondence remain in the research repository.

The current catalogue is a deliberately incomplete specimen. It establishes a
Lean-authoritative registry/export path but does not claim the complete normalized
catalogue or the research repository's 179-row Sage correspondence.

```bash
just cache
just build
lake exe category-graph-export
```

## Mathematical design

This repository builds one higher-categorical mathematical language, its Lean
formalization, a Sage correspondence into it, and the foundation for a computational DSL
whose users see only ordinary mathematics. The programme's three coupled outputs:

1. **A Lean-owned mathematical foundation** in which categories, higher categories,
   classifiers, functors, higher cells, limits, and categories of structured objects have
   principled definitions.
2. **A Sage correspondence** mapping Sage's empirical category system and algorithms into
   that normalized universe — without making Sage's labels, parent graph, or
   implementation accidents authoritative.
3. **A computational mathematics DSL** in which a mathematician introduces and
   interrogates objects by ordinary membership and notation, while formalization and
   backend routing remain invisible.

The conceptual compression: structures and axioms are **classifier morphisms**; an
assertion of structure is a **lift**; transport is **(homotopy) pullback**; compatible
structures are imposed by a **limit**; comparisons are **higher cells**; equations and
coherence come from **operation-built diagrams and fillers**; a named special object is
usually a **value of a generic functor**; a theorem is a **factorization, lift, or
comparison** — never data baked into a definition; computation is inherited along the
same functorial structure. The current code is a 1-/2-truncated *realization* of that
foundation, never the foundation itself.

Work is aligned when it is stated at the lowest level at which it is generated, in
standard mathematics auditable by a working mathematician, such that later domains
(monoidal categories, stacks, spectra, derived objects, general limits) become instances
rather than refactors.

The full orientation — including the anatomy of agent drift and the alignment lens every
task should pass through — is [AGENTS.md](AGENTS.md). The governing execution state is
the issue ledger ([#1](https://github.com/dzackgarza/lean-lattices/issues/1): north star,
decision records) and the consolidated work units (#30–#40, #21–#29).
