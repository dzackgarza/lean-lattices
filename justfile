set dotenv-load := true

default:
    @just --list

# Build every module imported by the LeanLattices library root.
build:
    @lake build

# Run the repository proof gate.
test: build
    @if rg -n '\bsorry\b' LeanLattices --glob '*.lean'; then \
        echo 'Lean source contains sorry declarations.' >&2; \
        exit 1; \
    fi

[private]
test-commit: test

[private]
test-push: test

[private]
test-ci: test
