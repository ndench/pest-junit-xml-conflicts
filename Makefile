vendor: composer.json composer.lock
	docker compose run composer install --profile --ansi

.PHONY: test
test:
	docker compose run php -d xdebug.mode=coverage vendor/bin/pest \
		--log-junit=build/junit.xml \
		--coverage-xml=build/coverage-xml

.PHONY: infect
infect:
	docker compose run php vendor/bin/infection -v \
	--coverage=build \
	--show-mutations
