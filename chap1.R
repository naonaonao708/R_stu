
die <- c(1:6)

sample(x = die, size = 1)
# ランダムにXの引数からsize個の要素を返す

# argで関数の引数名を調べることができる
args(round)
# digitsというオプション引数をもっている

round(3.1415, digits = 3)

sample(die, size = 2)
# サンプルから一つずつ抽出していくイメージ
# このままでは第一のサイコロと第二のサイコロとで同じ値になることはない
sample(die, size = 2, replace = TRUE)
# 独立した無作為サンプルを作成


# 独自関数の書き方
roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

# （）はRが関数を実行する時の引き金
roll()
# （）なしだと関数内に格納されているコードを表示する
roll


roll2 <- function(bones) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}

roll2(bones = 1:4)

