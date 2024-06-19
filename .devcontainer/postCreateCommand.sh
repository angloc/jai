pipenv install
echo "alias sl='/workspaces/jai/start-lab.sh'" >>~/.bashrc
echo 'set -a; . /workspaces/jai/.env; PYTHONPATH="$PWD/source:$PYTHONPATH"; set +a;' >>~/.bashrc
if [ ! -f ".env" ]; then
  # Create an empty .env file
  touch ".env"
fi
jupyter labextension enable jupyter_ai --level=user

echo "Open a new terminal to use the 'sl' alias."
echo "Then run 'jupyter server password' to set your password."
echo "Then cd projects/{your_project}"
echo "Create .env file and notebooks and source directories if not existing"
echo "Then run 'sl' to start Jupyter Lab."
echo "Then open a browser and go to http://localhost:8888/lab."
echo "Then enter your password to access Jupyter Lab."
echo "Open the Jupyter AI extension vertical tab to set up your chosen model(s)."
echo "Open a new notebook and start using the Jupyter AI extension."
echo "Close this terminal any time."