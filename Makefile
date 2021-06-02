default:
	swagger-cli bundle -o ./build/swagger.yaml -t yaml ./swagger.yaml
	swagger-cli validate ./build/swagger.yaml

doc:
	swagger-cli bundle -o ./build/swagger.yaml -t yaml ./swagger.yaml

validate:
	swagger-cli validate ./swagger.yaml