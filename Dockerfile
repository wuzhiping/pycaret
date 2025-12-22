#FROM ghcr.io/mlflow/mlflow
FROM pycaret/full
#RUN pip install jupyterlab pycaret[full]
# RUN pip install -U mlflow

RUN conda config --set show_channel_urls yes \
 && conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/ \
 && conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/ \
 && conda config --set channel_priority strict \
 && conda install -n base -c conda-forge mamba -y \
 && mamba install -n base -c conda-forge mlflow>=3.1 \
 && conda clean -afy

CMD bash -c "jupyter lab --allow-root --ip=0.0.0.0 --ServerApp.base_url=/books --NotebookApp.token=12345678"
