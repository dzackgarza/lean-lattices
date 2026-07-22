# lean-lattices — Lean libraries for lattice mathematics and categorical foundations.
#
# Lake owns compilation and Mathlib supplies the dependency cache. This file keeps the
# public build and quality-check entry points stable for the repository.

# Show available recipes
default:
    @just --list

# Build the CategoryGraph library and its registry exporter
build:
    @lake build

# Fetch Mathlib's prebuilt compilation cache
cache:
    @lake update
    @lake exe cache get

# Run the complete repository quality gate
test: build
    @lake exe category-graph-export >/dev/null

[private]
test-commit: test

# Run the CI quality gate
test-ci: test

[private]
_axiom-audit:
    @lake exe category-graph-axiom-audit

[private]
test-push: test-ci _axiom-audit
