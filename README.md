## systask1

# averageコマンド
![test](https://github.com/Kuga0313/robosys2025/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ複数の値の平均値を求める。  
（例）入力：1,2,3,4,5  
　　　　(1+2+3+4+5)/5より  
　　　出力：3.0　　　  

## 使い方

$ cd systask1  
$ seq 5 | ./average

ランダムな数字の羅列の場合
$ ./average
5
15
7
19
14

ctrl+D   
12.0

## 必要なソフトウェア
- Python  
  - テスト済みバージョン: 3.7〜3.10

## テスト環境
- Ubuntu 24.04 LTS

© 2025 Yusuke Kuga
