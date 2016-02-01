#This shiny app allow the user to enter the base length, base width, and pyramid height 
#and calculate the volume and surface area of pyramid. Three text box are created 
#to enter base length, base width, pyramid height and calculations for Volume and Surface Area
#pyramid are done
library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("To Calculate Volume and Surface Area of Pyramid"),
        sidebarPanel(
                ##textInput(inputId='Baselength','Enter Base Length', value='0'),
                ##textInput(inputId='BaseWidth','Enter Base Width', value='0'),
                ##textInput(inputId='Height','Enter Pyramid Height', value='0'),
                dateInput("date","Date:"),
                textInput('BaseWidth','Enter Base Width', value='0'),
                textInput('Baselength','Enter Base Length', value='0'),
                textInput('Height','Enter Pyramid Height', value='0'),
                ##h5('Please press \'Go!\' only on your first attempt'),
                ##actionButton("goButton", "Go!")
                
                submitButton("Submit")

        ),
        mainPanel(h2('Calculating Volume and Surface Area of Pyramid'),
                  h4("You Entered"),
                  verbatimTextOutput("inputValue"),
                  h4('Volume is'), 
                  verbatimTextOutput("Vol"),
                  h4('Surface Area'),
                  verbatimTextOutput("Suf"),
                  h4('Today Date is'),
                  verbatimTextOutput("date")
            
        )))