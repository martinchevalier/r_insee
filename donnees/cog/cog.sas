LIBNAME cog "D:\nc\cours\Insee R\donnees\cog"; 

PROC IMPORT DATAFILE = "D:\nc\cours\Insee R\donnees\cog\arrond2017.dbf" OUT = cog.arrond2017 REPLACE; 
RUN;

