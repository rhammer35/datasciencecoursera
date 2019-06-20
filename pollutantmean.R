pollutantmean <- function(directory, pollutant, id = 1:332) {
    j <- length(id)
    i <- 1
    id1 <- dir(directory)
    name1 <- paste(directory, "/", id1[i], sep = "")
    table <- as.matrix(read_csv(name1))
    while(i <= j) {
        i <- i + 1
        name2 <- paste(directory, "/", id1[i], sep = "")
        table <- rbind(table, as.matrix(read_csv(name2)))
        
    }
    my_mean <- mean(as.numeric(table[,pollutant]),na.rm = TRUE)
    my_mean
}