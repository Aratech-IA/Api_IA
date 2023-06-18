FROM nvcr.io/nvidia/pytorch:23.04-py3

USER root
RUN useradd -rm -d /home/aratech -s /bin/bash -g root -G sudo -u 1001 aratech && groupadd aratech && chown -R  aratech:aratech /home
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y sudo ffmpeg libsm6 libxext6
RUN pip install ultralytics
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
COPY start.sh /
RUN chown aratech:root /start.sh
USER aratech
WORKDIR /home/aratech

CMD ["/start.sh"]
