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
