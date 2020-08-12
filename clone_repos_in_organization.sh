# Compatible with UNIX machines (Mac, Linux)
# This method assumes you have ssh keys set up in github and your local machine
# You may need first to install 'jq' and 'parallel' packages - in case your permissions do not allow parallel cloning, remove the 'parallel' keyword from the command

# From public GitHub
curl -s https://$THE_USER_NAME:$THE_USER_PASS@api.github.com/orgs/$ORGANIZATION_NAME/repos?per_page=200 | jq .[].ssh_url | parallel xargs -n
 1 git clone


# From company GitHub
curl -s https://$THE_USER_NAME:$THE_USER_PASS@api.github.$THE_COMPANY_DOMAIN.com/orgs/$ORGANIZATION_NAME/repos?per_page=200 | jq .[].ssh_url | parallel xargs -n
 1 git clone
