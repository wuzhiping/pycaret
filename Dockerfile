#FROM ghcr.io/mlflow/mlflow
FROM pycaret/full
#RUN pip install jupyterlab pycaret[full]
RUN pip install -U mlflow
CMD bash -c "jupyter lab --allow-root --ip=0.0.0.0 --ServerApp.base_url=/books --NotebookApp.token=12345678"
