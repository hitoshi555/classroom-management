# 使用するNode.jsのバージョンを指定
FROM node:16-alpine

# アプリケーションディレクトリを設定
WORKDIR /usr/src/app

# アプリケーションの依存ファイルをインストール
COPY package*.json ./
RUN npm install

# アプリケーションのソースをコピー
COPY . .

# アプリケーションがリッスンするポート番号を指定
EXPOSE 3000

# アプリケーションを起動
CMD ["npm", "run", "start:prod"]