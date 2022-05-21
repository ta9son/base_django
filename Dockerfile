FROM python:3.10.4
LABEL architecture="Machida"

ENV PYTHONUNBUFFERD 1
#ローカルのrequirements.txtをコンテナにコピー
COPY ./requirements.txt /requirements.txt
# requirements.txtに従ってパッケージを一括でインストール
RUN pip install -r /requirements.txt
# Djangoプロジェクトを置くディレクトリをコンテナ上に作成
RUN mkdir /django-api
# コンテナ上の作業ディレクトリを変更
WORKDIR /django-api
# ローカルのdjango-apiディレクトリをコンテナにコピー
COPY . /django-api
