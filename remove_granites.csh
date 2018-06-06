#!/bin/csh -f

#cheking the platforms and setting the stager path according to it

#P50
#PTC_VERSION = P-30-47

set PXX = `echo $PTC_VERSION |sed 's/-//g' |tr '[A-Z]' '[a-z]' | awk '{print substr($1,1,3)}'`
echo= "present working stream is $PXX"

#stager location for i486_nt/obj

set work_dir = /srpsrc$PXX/../stager/rpsrc$PXX/spg/system_1/i486_nt/obj

cd $work_dir

ls -l gBase* > /common/tmp/martin/p30/p3047/granite_test/$PXX-gBase_obj.log

if ( -z $PXX-gBase_obj.log) then
     echo "no gBase objects to be deleted in the current directory"
else rm -rf gBase*
    echo "removing the gbase objects from the "
endif

ls -l gGeometry* > /common/tmp/martin/p30/p3047/granite_test/$PXX-gGeometry_obj.log

if ( -z $PXX-gGeometry_obj.log) then
     echo "no gGeometry objects to be deleted in the current directory"
else rm -rf gGeometry*
endif

ls -l gTranslator* > /common/tmp/martin/p30/p3047/granite_test/$PXX-gTranslator_obj.log

if ( -z $PXX-gTranslator_obj.log) then
     echo "no gTranslator objects to be deleted in the current directory"
else rm -rf gTranslator*
endif

ls -l gGraphic* > /common/tmp/martin/p30/p3047/granite_test/$PXX-gGraphic_obj.log

if ( -z $PXX-gGraphic_obj.log) then
     echo "no gGraphic objects to be deleted in the current directory"
else rm -rf gGraphic*
endif



cd //../stager/rpsrcp30/spg/system_1/i486_nt/obj
p30
p20


cd /srpsrcp30/../stager/rpsrcp30/spg/system_1/i486_nt/obj
rm -rf gBase*
rm -rf gGeometry*
rm -rf gTranslator*
rm -rf gGraphic*
cd /srpsrcp30/../stager/rpsrcp30/spg/system_1/i486_nt/dobj
rm -rf gBase*
rm -rf gGeometry*
rm -rf gTranslator*
cd /srpsrcp30/../stager/rpsrcp30/spg/system_1/x86e_win64/obj
rm -rf gBase*
rm -rf gGeometry*
rm -rf gTranslator*
cd /srpsrcp30/../stager/rpsrcp30/spg/system_1/x86e_win64/dobj
rm -rf gBase*
rm -rf gGeometry*
rm -rf gTranslator*
