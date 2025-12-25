docker run --cpus="4.5" --rm -it -p 15021:8888 -p 15022:5000 shawoo/mlflow bash -c "jupyter lab --allow-root --ip=0.0.0.0 --ServerApp.base_url=/books --NotebookApp.token=12345678"

<pre>
docker run -it --rm \
  --gpus all \
  -p 8888:8888 \
  -v $(pwd):/workspace \
  shawoo/caret:cuda
</pre>

mlflow server --host 0.0.0.0
