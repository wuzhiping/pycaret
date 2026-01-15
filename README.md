
<pre>
docker run --cpus="4.5" --rm -it -p 15041:8888 -p 15042:5000 \
                                   -v $(pwd):/home/jovyan/src  shawoo/mlflow \
                                   bash -c "jupyter lab --allow-root --ip=0.0.0.0 \
                                                        --ServerApp.base_url=/books \
                                                        --NotebookApp.token=12345678"

</pre>

<pre>
docker run -it --rm \
  --gpus all \
  -p 8888:8888 \
  -v $(pwd):/workspace \
  shawoo/caret:cuda
</pre>

mlflow server --host 0.0.0.0


<pre>
  ollama:
    #image: ollama/ollama:0.13.5
    build: ./ollama
    restart: always
    ports:
      - "11434:11434"
    volumes:
      - ./ollama:/root/.ollama
    deploy:
      resources:
        reservations:
          devices:
            - driver: "nvidia"
              count: "all"
              capabilities: ["gpu"]

  mineru:
    image: shawoo/mineru:2.1.7
    restart: always
    ports:
      - "8000:8000"
    deploy:
      resources:
        reservations:
          devices:
            - driver: "nvidia"
              count: "all"
              capabilities: ["gpu"]
</pre>
