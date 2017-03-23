cd /home/swgemu
sleep 3
sudo apt-get update && sudo apt-get install -y -q git && git clone https://github.com/nugax/SWGDevEnvDebianBased.git && cp -i /home/swgemu/DevEnv/README.md /home/swgemu/Documents && mkdir setup && cp -i /home/swgemu/DevEnv/setup/* /home/swgemu/setup/ && mkdir run && cp -r /home/swgemu/DevEnv/run/* /home/swgemu/run/ && chmod -v +x /home/swgemu/DevEnv/bin/* && cat ~/DevEnv/bin/pathto &>> ~/.bashrc
sleep 5
print "All finished, run scripts in the bin folder according to the instructions in README.md"

