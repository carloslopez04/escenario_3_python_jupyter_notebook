FROM python:3.10
RUN pip install numpy scikit-learn seaborn jupyter notebook matplotlib pandas
WORKDIR /home/notebooks
EXPOSE 8888 
COPY . . 
ENTRYPOINT [ "jupyter","notebook","--ip=0.0.0.0","--allow-root","--no-browser"]
