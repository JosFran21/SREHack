read -p "Enter email: " email
echo
if [[ $email =~ ^([a-zA-Z0-9._-]+\@([a-zA-Z0-9]+\.)+(([a-zA-Z][a-zA-Z][a-zA-Z](\.[a-zA-Z][a-zA-Z])?)|([a-zA-Z][a-zA-Z])))$ ]]; then
    echo "valid email"
else
    echo "invalid email"
fi