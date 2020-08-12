# Compatible with UNIX machines (Mac, Linux) terminal and windows git-bash
# This method assumes you have ssh keys set up in github and your local machine
# You may need first to install 'jq' package
# in case of windows download the jq executable from here https://github.com/stedolan/jq/releases  and point the command to the location

# From public GitHub
curl -s https://$THE_USER_NAME:$THE_USER_PASS@api.github.com/orgs/$ORGANIZATION_NAME/repos?per_page=200 | jq .[].ssh_url | xargs -n
 1 git clone


# From company GitHub
curl -s https://$THE_USER_NAME:$THE_USER_PASS@api.github.$THE_COMPANY_DOMAIN.com/orgs/$ORGANIZATION_NAME/repos?per_page=200 | jq .[].ssh_url | xargs -n
 1 git clone


# Example of windows - see the 'jq' part
curl -s https://$THE_USER_NAME:$THE_USER_PASS@api.github.com/orgs/$ORGANIZATION_NAME/repos?per_page=200 | ./jq-win64.exe .[].ssh_url | xargs -n
 1 git clone
