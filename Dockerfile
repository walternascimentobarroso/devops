# Dockerfile

# Use uma imagem base do Ubuntu
FROM ubuntu:20.04

# Atualize os pacotes do sistema
RUN apt-get update && apt-get upgrade -y && apt-get clean

# Instale as dependências necessárias para o Ansible
RUN apt-get install -y python3 python3-pip

# Instale o Ansible
RUN pip3 install ansible

# Copie os arquivos de inventário e playbook para a imagem Docker (opcional)
COPY inventory.ini /etc/ansible/hosts
COPY playbook.yml /ansible/playbook.yml

# Defina o diretório de trabalho padrão
WORKDIR /ansible

# Execute o playbook (opcional)
# CMD ["ansible-playbook", "playbook.yml"]

# Ou execute o modo interativo do Ansible (opcional)
# CMD ["ansible", "localhost", "-m", "ping"]
