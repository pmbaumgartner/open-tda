from tiagopeixoto/graph-tool
USER root
RUN pacman-key --refresh-keys
RUN pacman -S python-pip --noconfirm --needed
RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN jupyter nbextension enable --py widgetsnbextension
