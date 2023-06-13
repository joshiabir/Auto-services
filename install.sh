echo "Installing Nikky Services.."
mv ./ginna.service /etc/systemd/system/
mkdir /usr/local/lib/nikky
cp ./*.py /usr/local/lib/nikky/
cp ./*.ini /usr/local/lib/nikky/

echo "Installing python requirements"
pip3 install -r requirements.txt

echo "Enabling services"
sudo systemctl daemon-reload
sudo systemctl start ginna.service
sudo systemctl enable ginna.service
