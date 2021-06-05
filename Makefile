default:
	swagger-cli bundle -o ./swagger.yaml -t yaml ./swagger/swagger.yaml
	swagger-cli validate ./swagger.yaml

doc:
	swagger-cli bundle -o ./swagger.yaml -t yaml ./swagger/swagger.yaml

validate:
	swagger-cli validate ./swagger.yaml