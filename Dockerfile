FROM python:3
MAINTAINER AMSELIM
RUN mkdir -p /python_code/src
WORKDIR /python_code/src
COPY requirements.txt /python_code/src
RUN pip install --no-cache-dir -r requirements.txt
COPY TestFile.xlsx /python_code/src
COPY Kompose_Volume_Flask_App.py /python_code/src

ENV APP_ENV development
VOLUME ["/app"]
ENTRYPOINT ["python"]
CMD ["Kompose_Volume_Flask_App.py"]