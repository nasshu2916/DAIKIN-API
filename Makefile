default:
	npx swagger-cli bundle -o ./daikin.yaml -t yaml ./swagger/swagger.yaml
	npx swagger-cli validate ./daikin.yaml

doc:
	npx swagger-cli bundle -o ./daikin.yaml -t yaml ./swagger/swagger.yaml

validate:
	npx swagger-cli validate ./daikin.yaml