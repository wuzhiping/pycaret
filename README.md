docker run --rm -it -p 15021:8888 -p 15022:5000 shawoo/mlflow bash -c "jupyter lab --allow-root --ip=0.0.0.0 --ServerApp.base_url=/books --NotebookApp.token=12345678"
