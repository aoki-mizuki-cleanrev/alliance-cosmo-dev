# Task の使い方

## Gunicorn(サーバー起動)

`ctrl + shift + p`（ Mac：`cmd + shift + p`）でコマンドパレットを立ち上げ、

1.  'タスクの実行' と検索。
2.  `[Flask] run` をセレクトして Enter。`gunicorn`が`Port:8001`で起動します。

# gh インストール

```
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
```

## GitHub にログインし、CLI を使えるようにする

```
gh auth login
```

-   現在の認証状態を確認

```
gh auth status
```

# Review

## PR の変更をローカルで確認

```
git fetch origin pull/<PR番号>/head:pr-<PR番号>
git checkout pr-<PR番号>
```

## レビューの投稿

-   PR を承認（Approve）

```
gh pr review <PR番号> --approve
```

-   修正をリクエストする場合

```
gh pr review <PR番号> --request-changes --body "修正が必要です"
```

-   コメントのみ

```
gh pr review <PR番号> --comment --body "ここが気になりました"
```

-   PR をマージ

```
- gh pr merge <PR番号> --merge
```
