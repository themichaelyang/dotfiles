mkdir -p $(jupyter --data-dir)/nbextensions
cd $(jupyter --data-dir)/nbextensions
mkdir jupyter_themes && cd jupyter_themes
wget https://raw.githubusercontent.com/merqurio/jupyter_themes/master/theme_selector.js
# Activate the extension
cd ../ && jupyter nbextension enable jupyter_themes/theme_selector
