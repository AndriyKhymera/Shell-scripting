echo -en "What is your name [ `whoami` ] "
read myname
echo "Your name is : ${myname:-`whoami`}"
#echo "Your name is : ${myname:-John Doe}"
#echo "Your name is : ${myname:=John Doe}"
