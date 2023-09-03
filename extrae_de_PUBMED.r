
# Enrique Buendia
# extrae el abstract del archivo de PUBMED.txt


# Read the text file
data <- readLines("pubmed.txt")

# Print the data
print(data)


buscar="AB"
ll<- length(buscar) + 1
blancos=c()
for (j in 1:ll){ blancos=c(blancos," ")}
s2 <- paste(blancos,collapse="")
s2

extract <- c()
ab_acum=c()
inicio=FALSE
j=1
while (j <= length(data)){
	scad <- substr(data[j], 1, ll)
	#print(scad)
	#print(buscar)
	if (tolower(scad) == tolower(buscar))
		{ inicio=TRUE
			ab_acum <- c(ab_acum,data[j])
			j=j+1
			
		}
	
	while ((substr(data[j],1,ll) == s2) && inicio){
		ab_acum <- c(ab_acum,data[j])
		j=j+1
	}
	
	inicio=FALSE
	j=j+1
	if (length(ab_acum) >= 1){
		#print(ab_acum) #ver cada resumen por separado en pantalla
		s3 <- paste(ab_acum,collapse="")
		extract <- c(extract,s3)
	}
	ab_acum <- c()
	
}
print(extract)



