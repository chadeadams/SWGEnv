cd /home/swgemu
sleep 3
sudo apt-get update && sudo apt-get install -y -q git && git clone https://github.com/nugax/SWGEnv.git && cp -i /home/swgemu/SWGEnv/README.md /home/swgemu/Documents && mkdir setup && cp -i /home/swgemu/SWGEnv/setup/* /home/swgemu/setup/ && mkdir run && cp -r /home/swgemu/SWGEnv/run/* /home/swgemu/run/ && chmod -v +x /home/swgemu/SWGEnv/bin/* && cat ~/SWGEnv/bin/pathto &>> ~/.bashrc && ln -s /home/swgemu/SWGEnv/bin bin
sleep 5
echo "All done. Follow the steps in the readme.md file!"

