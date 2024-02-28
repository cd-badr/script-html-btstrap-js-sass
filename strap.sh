echo -n "
███████╗████████╗██████╗  █████╗ ██████╗ 
██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗
███████╗   ██║   ██████╔╝███████║██████╔╝
╚════██║   ██║   ██╔══██╗██╔══██║██╔═══╝ 
███████║   ██║   ██║  ██║██║  ██║██║     
╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝      

Folder name : "

read folder

mkdir -p /home/w/Desktop/$folder/public/img /home/w/Desktop/$folder/public/pages /home/w/Desktop/$folder/public/css /home/w/Desktop/$folder/public/js
mkdir -p /home/w/Desktop/$folder/src /home/w/Desktop/$folder/src/sass /home/w/Desktop/$folder/src/sass/modules /home/w/Desktop/$folder/src/sass/modules/home
touch /home/w/Desktop/$folder/index.html /home/w/Desktop/$folder/public/css/app.css /home/w/Desktop/$folder/public/js/app.js
touch /home/w/Desktop/$folder/src/sass/_allModules.sass /home/w/Desktop/$folder/src/sass/_variables.sass /home/w/Desktop/$folder/src/sass/_fonts.sass /home/w/Desktop/$folder/src/sass/app.sass
touch /home/w/Desktop/$folder/src/sass/modules/home/_main.sass

import="@import ./_variables
@import ./_fonts
@import ../../node_modules/bootstrap/scss/bootstrap.scss
@import ../../node_modules/@fortawesome/fontawesome-free/css/all.css
@import ./_allModules
"

echo "$import" > /home/w/Desktop/$folder/src/sass/app.sass

allm="@import ./modules/home/_main
"
echo "$allm" > /home/w/Desktop/$folder/src/sass/_allModules.sass

true="1"
false="2"

while [ "$result" != "$true" ] && [ "$result" != "$false" ] 
do

echo -n "Bootstrap Oui = 1 
Bootstrap No = 2
¯\_(ツ)_/¯ : "

read result

if [ $result -eq "1" ]; then

code_html="<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Index</title>
    <link rel="stylesheet" href="./public/css/app.css">
</head>
<body>
    <h1>Hello world</h1>

    <script src="./node_modules/bootstrap/dist/js/bootstrap.bundle.js"></script>
</body>
</html>
"
    echo "$code_html" > /home/w/Desktop/$folder/index.html
cd /home/w/Desktop/$folder
npm init -y
npm install bootstrap
npm i --save @fortawesome/fontawesome-free

echo -e "\e[1;42m Success!! \e[0m" 

elif [ $result -eq "2" ]; then
    code_html2="<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Index</title>
    <link rel="stylesheet" href="./public/css/app.css">
</head>
<body>
    <h1>Hello world</h1>

</body>
</html>
"
    echo "$code_html2" > /home/w/Desktop/$folder/index.html

echo -e "\e[1;42m Success!! \e[0m" 

else 
echo -e "\e[1;41m Try Again !! \e[0m"

fi
done

code /home/w/Desktop/$folder
