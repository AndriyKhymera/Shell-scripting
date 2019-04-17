#!/bin/bash
echo $OSTYPE
case "$OSTYPE" in
  solaris*) echo "SOLARIS" ;;
  darwin*)  echo "OSX" ;; 
  linux-gnu)   
	echo "LINUX" 	
		#curl to get last versio number
		#curl -s -I -X GET 'https://api.bintray.com/content/jfrog/artifactory/jfrog-artifactory-oss-$latest.zip;bt_package=jfrog-artifactory-oss-zip' | grep Location | awk '{ print $2 }'
		curl -L "https://jfrog.bintray.com/artifactory/jfrog-artifactory-oss-6.9.0.zip" -o jfrog-artifactory-oss-6.9.0.zip
		filename="jfrog-artifactory-oss-6.9.0.zip"
		#outFilename="${filename%.*}_unziped"
		unzip 'jfrog-artifactory-oss-6.9.0'
		#unzip $filename
		bash "artifactory-oss-6.9.0/bin/installService.sh"
		service artifactory start
		service artifactory check
		#to view log files
		#tail -f artifactory-oss-6.9.0/logs/artifactory.log
	;;
  bsd*)     echo "BSD" ;;
  #havn't finishied because stoped at run as root
  msys*)    
		echo "WINDOWS" 
		#curl -L "https://jfrog.bintray.com/artifactory/jfrog-artifactory-oss-6.9.0.zip" -o jfrog-artifactory-oss-6.9.0.zip
				#https://bintray.com/jfrog/artifactory/jfrog-artifactory-oss-zip/6.9.0
		#curl -L "https://bintray.com/jfrog/artifactory-pro/jfrog-artifactory-pro-zip/_latestVersion"
		#latestURL=$(curl -s -o /dev/null -w "%{redirect_url}" https://bintray.com/jfrog/artifactory/jfrog-artifactory-oss-zip/_latestVersion)
		#curl -s -o /dev/null -w "%{http_code}" $latestURL
		#curl -L $latestURL
		filename='jfrog-artifactory-oss-6.9.0.zip'
		outFilename="${filename%.*}_unziped"
		#curl -L "https://jfrog.bintray.com/artifactory/jfrog-artifactory-oss-6.9.0.zip" -o $filename
		#mkdir $outFilename
		#unzip $filename -d "${outFilename}"
		bash "${outFilename}\artifactory-oss-6.9.0\bin\artifactory.sh"
	;;
  *)        echo "unknown: $OSTYPE" ;;
esac


