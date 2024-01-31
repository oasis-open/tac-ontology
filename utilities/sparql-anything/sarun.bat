REM script to sparql-anything

rem make a copy of the input json, and rename it to my-input.json

copy .\input\%1.json .\input\my-input.json 

rem execute the sparql-anything script

java -jar .\sparql-anything-0.8.1.jar -q .\mappings\json2ttl.sparql -o .\output\%1.ttl


rem  delete the my-input.json file.

del .\input\my-input.json