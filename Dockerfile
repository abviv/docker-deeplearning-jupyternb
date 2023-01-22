FROM pytorch/pytorch:1.13.0-cuda11.6-cudnn8-runtime

RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev \
    python3-pip \
    && ln -sf /usr/bin/python3 /usr/bin/python

COPY requirements.txt .
RUN pip3 install -r requirements.txt

EXPOSE 8888

#CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

