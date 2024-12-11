ORG="ros-noetic-arch"

# List and clone all repositories in the organization
gh repo list $ORG --limit 1000 --json url -q '.[].url' | while read repo; do
    git clone "$repo"
done


find ./ -mindepth 2 -iname "*.git" -type d -exec rm -rf {} \+
