FROM tomcat
run mkdir -p /home/dropInRegistration/
copy ./data/PlayerInfo.db /home/dropInRegistration/
run chmod +rw /home/dropInRegistration/PlayerInfo.db
run touch /home/dropInRegistration/DropInReg.log
run chmod +rw /home/dropInRegistration/DropInReg.log
