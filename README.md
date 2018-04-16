# RxSwiftPlaygrounds

## 環境
cocoapods = 1.4.0  
RxSwift >= 4.0  

## How to Use

```
$ bundle install --path vendor/bundle
$ bundle exec pod install
```

# 作業ログ

## cocoapods の特定バージョンをローカルで管理

`rbenv` で ruby のバージョンを管理  
`bundler` で cocoapods のバージョンを管理する  

[bundler で cocoapods そのもののバージョン管理をする
](https://qiita.com/shinkuFencer/items/821501cd0c5c460c1fea)

コマンドの実行は以下のようにする

```bash
$ bundle exec pod install
```

## playground で RxSwift を使う

少し厄介だが以下を参考にする

[Using frameworks in Playgrounds (Xcode 9)
](http://kristofk.com/xcode-9-playground-frameworks/)