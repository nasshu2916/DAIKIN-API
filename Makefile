default:
	swagger-cli bundle -o ./daikin.yaml -t yaml ./swagger/swagger.yaml
	swagger-cli validate ./daikin.yaml

doc:
	swagger-cli bundle -o ./daikin.yaml -t yaml ./swagger/swagger.yaml

validate:
	swagger-cli validate ./daikin.yaml