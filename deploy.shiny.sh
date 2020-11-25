##########################
# Script for deploying your shiny apps
##########################
#SYNTAX: sh deploy.shiny.sh -a <app>
#with:
#-a <app> the name of the app (in the current directory)
##########################
#guillert(at)tcd.ie - 2020/11/25
##########################

#INPUT
## Input values
while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    -a|--app)
        APP="$2"
        ;;
        *)

        ;;
esac
shift
done

## Creating a temporary deployment folder
mkdir tmp_deploying

## Copying the app in the deployment folder
cp -R ${APP}/ tmp_deploying/${APP}/

## Removing eventual git files from the folder
sudo rm -R tmp_deploying/${APP}/.git/

## Deploy the app
R -e "rsconnect::deployApp('tmp_deploying/$APP')"

## remove the temporary deployment folder
rm -R tmp_deploying/