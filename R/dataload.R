dataload = function() {
#***************************************#
#         구별 데이터 분리              #
#***************************************#
AIR <- read.csv('./AIR/data/airseoul.csv', header = T)[,-1]
AIR$SGG <- factor(AIR$SGG)
AIR$week <- as.Date(AIR$week)
return(AIR)
}
