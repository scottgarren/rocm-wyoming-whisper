# https://rocm.docs.amd.com/projects/install-on-linux/en/develop/install/3rd-party/pytorch-install.html

FROM rocm/dev-ubuntu-24.04

RUN apt update && apt install -y libjpeg-dev python3-dev python3-pip 

RUN pip3 install --break-system-packages wheel setuptools
RUN pip3 install --break-system-packages --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/rocm6.2/

RUN pip3 install --break-system-packages wyoming openai-whisper tokenizers

COPY src /src

WORKDIR /src

ENTRYPOINT ["/src/run.sh"]

