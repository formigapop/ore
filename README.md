- Antes, crie sua conta no Digital Ocean: https://m.do.co/c/de0597bfc277
- Crie um droplet.
- Acessa a consola / terminal e execute os seguintes comandos.
- Video tutorial: https://www.tella.tv/video/mineracao-de-ore-escalavel-5f5h ✅

# Instalando em um novo VPS (servidor)  ✨

#### Baixa os arquivos necessários.
```
wget https://raw.githubusercontent.com/formigapop/ore/main/gangue.sh -O gangue.sh && chmod +x gangue.sh && sh gangue.sh
```

#### Vamos editar a privatekey importada da Solflare
```
nano id.json
```

#### Para copiar e colar a privatekey,  vá no solflare, exporte a privatekey e copie. Depois aperte estas teclas para salvar no servidor
```
CTRL SHIFT V #Para colar na consola
CTRL X #Para fechar o arquivo
Y #Para salvar
ENTER #Para confirmar
```

#### Tudo certo! Vamos rodar?
Rodamos a mineração. Por default vai considerar o RPC da Solana Foundation, 1 thread (cpus), e priority-fee 4000 (0.000004 SOL de taxa)
```
./run_ore.sh
```

Ou, se queremos customizar, aqui um exemplo.
```
./run_ore.sh --rpc https://api.mainnet-beta.solana.com/ --threads 32 --priority-fee 8000
```
Substitua os valores após --rpc, --threads, e --priority-fee segundo a sua preferencia.


#### Para conferir se está minerando. Execute um destes codigos, segundo a necessidade. O valor que aparece em stake, é o minerado.
```
tail -f ore_mainnet.log
```
pra sair dessa visualização, CTRL C

#### Para parar a mineração
```
./stop_ore.sh
```

#### Para resgatar o minerado acesse a versão web e resgate pelo site.

---

# Atualizando todos os arquivos (exceto a carteira). ✨

Paramos a mineração e baixamos novamente todos os arquivos
```
./stop_ore.sh && rm gangue.sh && wget https://raw.githubusercontent.com/formigapop/ore/main/gangue.sh -O gangue.sh && chmod +x gangue.sh && sh gangue.sh

```

Rodamos a mineracao, como na seção anterior. Por default vai considerar o RPC da Solana Foundation, 1 thread (cpus), e priority-fee 4000 (0.000004 SOL de taxa)
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
./ore_mainnet --rpc https://solana-mainnet.g.alchemy.com/v2/hSEMDRahvlURIV6-sMCnGchkl2jt1Z5o --keypair id.json claim --priority-fee 4000
```

Ver os premios segundo nivel de dificuldade
```
./ore_mainnet --rpc https://solana-mainnet.g.alchemy.com/v2/hSEMDRahvlURIV6-sMCnGchkl2jt1Z5o --keypair id.json claim --priority-fee 4000
```

