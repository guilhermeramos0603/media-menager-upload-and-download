reset: 
	@echo "-- [APP] Resetando o Projeto!! ... --"
	flutter clean &&\
	flutter pub get &&\
	make build_runner

clean:
	@echo "-- [APP] Limpando o Projeto!! ... --"
	@rm -rf pubspec.lock
	@flutter clean

build_runner_clean:
	@echo "-- [APP] Limpando o build_runner ... --"
	@(flutter pub run build_runner clean)

build_runner: build_runner_clean
	@echo "-- [APP] build_runner build ... --"
	@(flutter pub run build_runner build --delete-conflicting-outputs)

format: 
	@echo "-- [APP] resetando o build ... --"
	@make reset
	@echo "-- [APP] rodando o dart fix ... --"
	@dart fix --dry-run
	@echo "-- [APP] formatando o código ... --"
	@dart format .
	@echo "-- [APP] analizando o código ... --"
	@dart analyze .
