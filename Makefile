default:
	npx swagger-cli bundle -o ./daikin.yaml -t yaml ./swagger/swagger.yaml
	npx bootprint openapi ./daikin.yaml target
	npx swagger-cli validate ./daikin.yaml

doc:
	npx swagger-cli bundle -o ./daikin.yaml -t yaml ./swagger/swagger.yaml
	npx bootprint openapi ./daikin.yaml target

validate:
	npx swagger-cli validate ./daikin.yaml