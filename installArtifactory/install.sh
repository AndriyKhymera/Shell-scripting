#!/bin/sh
echo $OSTYPE
case "$OSTYPE" in
  solaris*) echo "SOLARIS" ;;
  darwin*)  echo "OSX" ;; 
  linux-gnu)   
	echo "LINUX" 	
		#curl -L "https://jfrog.bintray.com/artifactory/jfrog-artifactory-oss-6.9.0.zip" -o jfrog-artifactory-oss-6.9.0.zip
		filename='jfrog-artifactory-oss-6.9.0.zip'
		outFilename="artifactory-oss-6.9.0"
		unzip -p $filename > outFilename
		export ARTIFACTORY_HOME=$outFilename
		echo $ARTIFACTORY_HOME
		sh $outFilename/bin/installService.sh
	;;
  bsd*)     echo "BSD" ;;
  msys*)    
		echo "WINDOWS" 
		#curl -L "https://jfrog.bintray.com/artifactory/jfrog-artifactory-oss-6.9.0.zip" -o jfrog-artifactory-oss-6.9.0.zip
				#https://bintray.com/jfrog/artifactory/jfrog-artifactory-oss-zip/6.9.0
		#curl -L "https://bintray.com/jfrog/artifactory-pro/jfrog-artifactory-pro-zip/_latestVersion"
		#latestURL=$(curl -s -o /dev/null -w "%{redirect_url}" https://bintray.com/jfrog/artifactory/jfrog-artifactory-oss-zip/_latestVersion)
		#curl -s -o /dev/null -w "%{http_code}" $latestURL
		#curl -L $latestURL
		filename='jfrog-artifactory-oss-6.9.0.zip'
		unzip -q $filename > outFilename
		echo $outFilename
		sh "artifactory-oss-6.9.0/artifactory-oss-6.9.0/bin/installService"
	;;
  *)        echo "unknown: $OSTYPE" ;;
esac


