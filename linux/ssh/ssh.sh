#
# A single script to generate ssh keys
#
# Override the params with your info
#
# Generate ssh keys
ssh-keygen -t ed25519 -C "email@gmail.com"

# Start ssh agent in background
eval "$(ssh-agent -s)"

# Add private ssh key to ssh-agent
ssh-add ~/.ssh/id_ed25519

# View public ssh key - Add this to github
cat ~/.ssh/id_ed25519.pub

# Test ssh connection to github
ssh -T git@github.com