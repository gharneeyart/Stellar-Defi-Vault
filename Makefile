.PHONY: build test deploy-testnet stake claim

build:
	cargo build --target wasm32-unknown-unknown --release

test:
	cargo test --features testutils

deploy-testnet:
	chmod +x scripts/deploy_testnet.sh
	./scripts/deploy_testnet.sh

stake:
	@chmod +x scripts/stake.sh
	@if [ -z "$(AMOUNT)" ]; then \
		echo "Error: AMOUNT is required. Usage: make stake AMOUNT=10000000"; \
		exit 1; \
	fi
	./scripts/stake.sh $(AMOUNT)

claim:
	chmod +x scripts/claim.sh
	./scripts/claim.sh
