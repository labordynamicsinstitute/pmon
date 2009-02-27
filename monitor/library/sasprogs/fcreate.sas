/*** test program ***/;

%letcdir=%sysget(cdir);
%let dlabel=&sysparm.;
/* alternatively */
%let dlabel2=%sysget(dlabel);
%let jdir=%sysget(jdir);
 

options ls=256 mprint mlogic symbolgen;

%put JOBID= &sysjobid;

%let obs=500000;

%let dlabel=%sysget(dlabel);
%let work=%sysget(work);

%put _ALL_;

libname temp "&work";

data temp.fcreate;
   length var1 $ 32767;
   do i=1 to &obs;
      var1=repeat('Z',32766);
      output;
   end;
run;

proc contents data=temp.fcreate;
proc print data=temp.fcreate (obs=3);
run;
