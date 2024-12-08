input <- read.table("input/day1.txt", col.names = (c("left", "right")))

# part 1
left <- sort(input$left)
right <- sort(input$right)
distance <- abs(left - right)
print(sum(distance))

# part 2
left_uniq <- unique(left)
right_freq <- table(right)

ss <- 0
for (l in left_uniq) {
    r <- right_freq[toString(l)]
    if (!is.na(r)){
        ss <- ss + (l * r)
    }
}
print(ss)