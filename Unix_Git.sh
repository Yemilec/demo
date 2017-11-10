for year in 2009
##{2006..2015}
	do 
		mkdir $year
		for month in Agosto Diciembre #Enero Febrero Marzo #Abril Mayo Junio Julio Agosto Septiembre Octubre Noviembre Diciembre
			do
				#mkdir "$year"/$month
				curl "http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/${year}/{$month}{%20,_}{$year}.zip" >"$year"/"$month"_"$year".zip 
				     #http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Diciembre_2009.zip
				     #http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Agosto%202009.zip
				     #http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Enero_2006.zip
				unzip "$year"/"$month"_"$year"  -d "$year"/  

				rm "$year"/"$month"_"$year".zip
				rm $(ls "$year"/"$month"/*.txt|grep -v T_127P)

			done
	done 