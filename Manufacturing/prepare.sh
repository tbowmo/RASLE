#!/bin/sh

rm dirtypcb.zip

orgname=("B_Cu.gbl" "B_Mask.gbs" "B_SilkS.gbo" "F.Cu.gtl" "F.Mask.gts" "F.SilkS.gto")
newname=(GBL GBS GBO GTL GTS GTO)

for item in ${!orgname[*]}
do 
	file=$(echo *-${orgname[$item]})
	r=$(echo -${orgname[$item]})
	n=$(echo .${newname[$item]})
	file2=${file/$r/$n}
	cp  $file $file2
done

drl=$(echo *.drl)
drl=${drl/.drl/}

cp $drl.drl $drl.TXT

zip -m dirtypcb.zip *.GB? *.GT? *.TXT
