##install.packages("shiny")
##library(shiny)

PV <- function(Baselength,BaseWidth,Height) {
        
        final <- Baselength*BaseWidth*Height*.333333

        final}

SV <-  function(Baselength,BaseWidth,Height) {
        
        Base <- Baselength*BaseWidth 
        
        S <- sqrt(Height^2+(Baselength/2)^2)
        
        AR <-1/2*Baselength*S
                  
        final2 <-(4*AR) + Base            
        
        final2}

IN <-  function(Baselength,BaseWidth,Height) {
        
        final3 <- paste(Baselength , BaseWidth , Height)        
        
        final3}
        
shinyServer(
        function(input,output)
        {
                output$inputValue<-renderPrint({IN(as.numeric(input$Baselength),as.numeric(input$BaseWidth),as.numeric(input$Height))})
                output$Vol<-renderText({PV(as.numeric(input$Baselength),as.numeric(input$BaseWidth),as.numeric(input$Height))})
                output$Suf<-renderText({SV(as.numeric(input$Baselength),as.numeric(input$BaseWidth),as.numeric(input$Height))})
                output$date<-renderPrint({input$date})    
        })

