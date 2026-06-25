# Contributing to Stellar DeFi Vault

Thank you for your interest in contributing! This project is part of the **Stellar Wave Program** on Drips. All contributions that resolve tagged issues during an active Wave are eligible for rewards.

## Full Contributor Guide

For a detailed walkthrough — including environment setup, architecture overview, a worked example PR, and common mistakes — see **[docs/CONTRIBUTING_GUIDE.md](docs/CONTRIBUTING_GUIDE.md)**.

## Getting Started

### Prerequisites

- Rust (stable) — install via [rustup](https://rustup.rs/)
- `wasm32-unknown-unknown` target:
  ```bash
  rustup target add wasm32-unknown-unknown
  ```
- Stellar CLI (optional, for local deployment):
  ```bash
  cargo install --locked stellar-cli
  ```

### Setup

```bash
git clone https://github.com/YOUR_ORG/stellar-defi-vault.git
cd stellar-defi-vault
cargo build
```

### Running Tests

```bash
cargo test --features testutils
```

### Building the WASM Contract

```bash
cargo build --target wasm32-unknown-unknown --release
```

The compiled `.wasm` file will be at `target/wasm32-unknown-unknown/release/stellar_defi_vault.wasm`.

---

## How to Contribute (Wave Program)

1. Browse open issues tagged **`Stellar Wave`** at [drips.network/wave/stellar](https://www.drips.network/wave/stellar/issues).
2. Apply for an issue through the Drips Wave app.
3. Wait to be **assigned** before starting work — do not open a PR before assignment.
4. Fork the repo, create a branch named `fix/<issue-number>-short-description` or `feat/<issue-number>-short-description`.
5. Open a PR with `Closes #<issue-number>` in the description so the Drips bot can track it.
6. Respond promptly to review feedback — the Wave window is short.

## Code Style

- Run `cargo fmt` before committing.
- Ensure `cargo clippy --features testutils` passes with no warnings.
- All new functionality must include unit tests.
- Public functions must have doc comments (`///`).

## PR Checklist

- [ ] Tests pass (`cargo test --features testutils`)
- [ ] `cargo fmt --check` passes
- [ ] `cargo clippy` passes with no warnings
- [ ] New logic is covered by tests
- [ ] PR description references the issue (`Closes #N`)

## Questions?

Open a [GitHub Discussion](../../discussions) or ask in the [Drips Discord](https://discord.gg/BakDKKDpHF).
