FROM apache/airflow:2.9.3
# COPY requirements.txt /
COPY . /
RUN pip install --user --upgrade pip
RUN pip install dhis2.py
RUN pip install 'apache-airflow[apache-kafka]'
RUN pip install 'apache-airflow[pandas]'
RUN pip install 'apache-airflow[telegram]'
RUN pip install python-dotenv
RUN pip install pandas
RUN pip install requests
RUN pip install polars
RUN pip install SQLAlchemy
RUN pip install psycopg2
RUN pip install --no-cache-dir --user -r /requirements.txt