# instalando paquetes
install.packages("XML")
#usando la libreria
library(XML)

#cargando un XML
url<- "PU-SA/data/cd_catalog.xml"
url2<-"PU-SA/data/20138122256-07-FC21-00024477.XML"
#APUNTANDO EL XML
xmlDoc<- xmlParse(url2) #NOS DEVUELVE UN XMLInternalDocument
rootnode <- xmlRoot(xmlDoc)
rootnode[1]

# visualizar el xml como tabla
cds_data <- xmlSApply(rootnode,function(x) xmlSApply(x,xmlValue) )
#transponer filas por columnas
cds.catalog <- data.frame(t(cds_data),row.names = NULL)
head(cds.catalog,2)
cds.catalog[1:5,]
