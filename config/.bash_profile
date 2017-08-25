# Add files additional bash_profile extentions here
for file in ~/.{bash_prompt,functions}; do
  echo "$file"
  [ -r "$file" ] && source "$file"
done
unset file

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm - Some thing micke installed to get node working.

nvm use v8.2.1
