# コンテナの起動(ローカルでのみ)
.PHONY: up
up:
	docker-compose up -d

# コンテナの削除(ローカルでのみ)
.PHONY: down
down:
	docker compose down --rmi all --volumes --remove-orphans

# 推奨拡張機能の一括インストール
.PHONY: ext
ext:
	./install_extentions.sh

.PHONY: lint
lint:
	ruff check

.PHONY: fix
fix:
	ruff check --fix

.PHONY: format
format:
	ruff format