
Vagrant.configure("2") do |config|	
		#Provisionando a máquina virtual
		config.vm.box = "ubuntu/trusty64"
		config.vm.synced_folder "C:/boxes", "/shared_host/"
		config.vm.hostname = "labDockerK8s"
		config.vm.provision "shell", inline: "echo hello"
		config.vm.network "forwarded_port", guest: 8080, host: 8080

		#Executando o  shell para instalação do docker
		config.vm.provision "shell", inline: <<-SHELL
			sudo apt-get update
			
			sudo apt-get install \
			apt-transport-https \
			ca-certificates \
			curl \
			software-properties-common
			
			sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
			
			sudo add-apt-repository \
			"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
			$(lsb_release -cs) \
			stable"
			
			sudo apt-get update
			
			sudo apt-get install -y docker-ce
			
			# adicionando o usuário do vagrant no grupo
			#sudo groupadd docker
			
			#sudo usermod -aG docker $USER
			
			#Instalando Docker Compose
			#sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
			#sudo chmod +x /usr/local/bin/docker-compose
			
			# instalação do redis
			#sudo docker run --name redis-server -dit --restart unless-stopped redis
			
			#sudo reboot
			
		SHELL
		
end