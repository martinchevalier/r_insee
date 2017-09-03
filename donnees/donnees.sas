/*PISA*/

LIBNAME pisa "E:\nc\cours\#data\pisa12"; 
LIBNAME out "E:\nc\cours\Insee R\donnees\pisa"; 

DATA out.pisa_stu;  
	SET pisa.int_stu12;
	KEEP cnt stidstd schoolid w_fstuwt st01q01 st04q01 st05q01 st07q01 st07q02 st07q03 st08q01 st09q01 anxmat disclima escs immig hisced pv1math pv1read pv1scie;
RUN;
DATA out.pisa_sch; 
	SET pisa.Int_scq12;
	KEEP cnt schoolid senwgt_scq sc01q01 sc03q01 sc05q01;
RUN;



/*BPE*/

PROC IMPORT DATAFILE = "E:\oc\cours\Insee R\tutoriel\donnees\bpe2\bpe2.dbf" OUT = bpe2 REPLACE; RUN;

LIBNAME bpe2 "E:\oc\cours\Insee R\tutoriel\donnees\bpe2";

DATA bpe2.bpe2;
	SET bpe2;
	FORMAT nb_equip BEST.;
RUN;



/*COG*/
PROC IMPORT DATAFILE = "E:\oc\cours\Insee R\tutoriel\donnees\cog\arrond2016.dbf" OUT = arrond REPLACE;
RUN;

LIBNAME cog "E:\oc\cours\Insee R\tutoriel\donnees\cog";

DATA cog.arrond2016(COMPRESS = NO);
	SET arrond(DROP = artmin nccenr);
RUN;
