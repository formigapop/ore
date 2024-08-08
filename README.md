- Antes, crie sua conta no Digital Ocean: https://m.do.co/c/de0597bfc277
- Crie um droplet.
- Acessa a consola / terminal e execute os seguintes comandos.
- Video tutorial: https://www.tella.tv/video/mineracao-de-ore-escalavel-5f5h ✅

# Instalando em um novo VPS (servidor)  ✨

#### 1️⃣ Baixa os arquivos necessários.
```
wget https://raw.githubusercontent.com/formigapop/ore/main/gangue.sh -O gangue.sh && chmod +x gangue.sh && sh gangue.sh
```

#### 2️⃣ Vamos editar a privatekey importada da Solflare
```
nano id.json
```

#### 3️⃣ Para copiar e colar a privatekey,  vá no solflare, exporte a privatekey e copie. Depois aperte estas teclas para salvar no servidor
```
CTRL SHIFT V #Para colar na consola
CTRL X #Para fechar o arquivo
Y #Para salvar
ENTER #Para confirmar
```

#### 4️⃣ Tudo certo! Vamos rodar?
Rodamos a mineração. Por default vai considerar o RPC da Solana Foundation, 1 thread (cpus), e priority-fee 4000 (0.000004 SOL de taxa)
```
./run_ore.sh
```

Ou, se queremos customizar, aqui um exemplo.
```
./run_ore.sh --rpc https://api.mainnet-beta.solana.com/ --threads 32 --priority-fee 8000
```
Substitua os valores após --rpc, --threads, e --priority-fee segundo a sua preferencia.


#### 5️⃣ Para conferir se está minerando. Execute um destes codigos, segundo a necessidade. O valor que aparece em stake, é o minerado.
```
tail -f ore_mainnet.log
```
pra sair dessa visualização, CTRL C

#### 6️⃣ Para parar a mineração
```
./stop_ore.sh
```

#### Para resgatar o minerado acesse a versão web e resgate pelo site.

---

# Atualizando todos os arquivos (exceto a carteira). ✨

#### 🅰️ Paramos a mineração e baixamos novamente todos os arquivos
```
./stop_ore.sh && rm gangue.sh && wget https://raw.githubusercontent.com/formigapop/ore/main/gangue.sh -O gangue.sh && chmod +x gangue.sh && bash gangue.sh
```

#### 🅱️ Rodamos a mineracao, como na seção anterior. Por default vai considerar o RPC da Solana Foundation, 1 thread (cpus), e priority-fee 4000 (0.000004 SOL de taxa)
```
./run_ore.sh
```

Ou, se queremos customizar, aqui um exemplo.
```
./run_ore.sh --rpc https://api.mainnet-beta.solana.com/ --threads 32 --priority-fee 8000
```
Substitua os valores apos --rpc, --threads, e --priority-fee segundo o gosto pessoal.


#### Comandos adicionais para tarefas diversas.

Conferir a versao do nosso minerador
```
./ore_mainnet -V
```
Precisa aparecer 1.1.1 ✅

Resgatar ORE minerado
```
./ore_mainnet claim --rpc https://api.mainnet-beta.solana.com/ --keypair id.json--priority-fee 4000 
```

Ver os premios segundo nivel de dificuldade
```
./ore_mainnet rewards --rpc https://api.mainnet-beta.solana.com/ --keypair id.json --priority-fee 4000
```

Ver quanto de ore tem
```
./ore_mainnet balance --rpc https://api.mainnet-beta.solana.com/ --keypair id.json
```
