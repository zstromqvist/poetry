

word_vec <- scan('~/projects/poems/ts_eliot.txt', character(), quote = "")
word_vec <- tolower(word_vec)
word_vec <- gsub(',', '', word_vec, fixed = T)
word_vec <- gsub('.', '', word_vec, fixed = T)
word_vec <- gsub('?', '', word_vec, fixed = T)
word_vec <- gsub('-', '', word_vec, fixed = T)


word <- 'his'
indexes <- c()
j = 1

for (i in 1:length(word_vec)) {
  if(word == word_vec[i]){
    indexes[j] = i
    j = j + 1
  }
}
words_after <- word_vec[indexes + 1]
test <- data.frame(table(words_after) / length(indexes))
