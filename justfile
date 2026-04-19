run-dev:
  cargo run --color always --message-format human

build-dev:
  cargo build --color always --message-format human

run:
  cargo run --release --color always --message-format human

build:
  cargo build --release --color always --message-format human

clean:
  cargo clean
