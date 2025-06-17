#ベースイメージを指定
FROM node:20

#作業ディレクトリを設定
WORKDIR /usr/src/app

#ローカルのjsonをコピー
COPY package*.json ./

#依存関係をインストール
RUN npm install

#アプリケーションのコードをコピー
COPY app.js .

#アプリケーションを実行
CMD [ "node", "app.js" ]

