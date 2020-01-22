## Run the code generator

`crystal src/codegen.cr tmp/swagger.yml ./tmp`

## Run from docker hub

Put your swagger.yml in your current directory. Generated code will be written into the current directory.

#### Windows

`docker run -v %CD%:/tmp --rm ianpurton/crystal-openapi-codegen /tmp/swagger.yml /tmp`
