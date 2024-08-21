- Antes, crie sua conta no Digital Ocean: https://m.do.co/c/de0597bfc277
- Crie um droplet.
- Acessa a consola / terminal e execute os seguintes comandos.
- Video tutorial: https://www.tella.tv/video/mineracao-de-ore-escalavel-5f5h ✅

# Instalando em um novo VPS (servidor)  ✨

#### 1️⃣ Baixa os arquivos necessários para minerar ORE + COAL ao mesmo tempo
```
wget https://raw.githubusercontent.com/formigapop/ore/main/gangue.sh -O gangue.sh && chmod +x gangue.sh && bash gangue.sh
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

#### 4️⃣ Tudo certo! Vamos rodar? Aqui temos 3 opções.
1. Fácil e simples. Rodamos a mineração. Por default vai considerar o RPC da Solana Foundation, 1 thread (cpus), e priority-fee 4000 (0.000004 SOL de taxa)
```
./run_ore.sh
```

2. Customizado. Aqui um exemplo. Se quer garantir o maximo de CPUs, deixe com 32 cores
```
./run_ore.sh --rpc https://api.mainnet-beta.solana.com/ --cores 1 --priority-fee 1 --jito
```
Substitua os valores após --rpc, --cores, e --priority-fee segundo a sua preferencia.

3. Para ver em tempo real.
```
./coalore mine --merged ore --rpc https://api.mainnet-beta.solana.com --keypair id.json --priority-fee 4 --cores 32 --buffer-time 2 --jito
```

#### 5️⃣ Para conferir se está minerando. Execute um destes codigos, segundo a necessidade. O valor que aparece em stake, é o minerado.
```
tail -f coalore.log
```
pra sair dessa visualização, CTRL C

#### 6️⃣ Para parar a mineração
```
./stop_ore.sh
```

#### Para resgatar o minerado acesse a versão web e resgate pelo site.

---

# Atualizando todos os arquivos (exceto a carteira). ✨

#### 🅱️ Atualizamos os arquivos.
```
([ -f gangue.sh ] && rm gangue.sh); wget https://raw.githubusercontent.com/formigapop/ore/main/gangue.sh -O gangue.sh && chmod +x gangue.sh && bash gangue.sh && bash stop_ore.sh
```

#### 🅱️ Fechamos contas do ORE e COAL, se temos minerado anteriormente. 🔴 Aperte Y e enter, para confirmar. São 2 vezes. Se der erro, significa que a conta já foi fechada.
```
./coalore close --keypair id.json
./ore close --keypair id.json
```

#### C Rodamos a mineracao. 
Use um dos comandos para rodar da seção anterior, que [está no passo 4️⃣](https://github.com/formigapop/ore/blob/main/README.md#4%EF%B8%8F%E2%83%A3-tudo-certo-vamos-rodar-aqui-temos-3-op%C3%A7%C3%B5es).

# Comandos adicionais para tarefas diversas. ✨

Conferir a versao do nosso minerador
```
./coalore -V
```
Precisa aparecer 2.4 ✅

Resgatar COAL ou ORE minerado
```
./coalore claim --rpc https://api.mainnet-beta.solana.com/ --keypair id.json --priority-fee 4000
./ore claim --rpc https://api.mainnet-beta.solana.com/ --keypair id.json --priority-fee 4000 
```

Ver os premios segundo nivel de dificuldade
```
./coalore rewards
./ore rewards
```

Ver quanto de ore tem
```
./coalore balance --rpc https://api.mainnet-beta.solana.com/ --keypair id.json
./ore balance --rpc https://api.mainnet-beta.solana.com/ --keypair id.json
```
