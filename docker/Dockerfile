FROM gcr.io/tensorflow/tensorflow:latest-gpu-py3

RUN apt-get update && apt-get install -y --no-install-recommends \
    tk \
    pandoc \
    texlive-xetex \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 --no-cache-dir install \
    opencv-python \
    h5py \
    matplotlib \
    numpy \
    scipy \
    tqdm \
    keras \
    scikit-learn \
    pillow \
    ipykernel \
    pandoc
