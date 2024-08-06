# Instalando em um novo VPS (servidor)

#### Baixa o arquivo da gangue
```
wget https://raw.githubusercontent.com/formigapop/ore/main/gangue.sh -O gangue.sh
```

#### Muda permissões
```
chmod -x gangue.sh
```

#### Baixa todos os arquivos necessários
```
sh gangue.sh
```

#### Edita a privatekey importada da Solflare
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

#### Tudo certo! Vamos rodar? Use qualquer um, segundo a necessidade
```
./run_ore.sh devnet
./run_ore.sh mainnet
```

#### Para conferir se está minerando. Execute um destes codigos, segundo a necessidade. O valor que aparece em stake, é o minerado.
```
tail -f ore_devnet.log
tail -f ore_mainnet.log
```
pra sair dessa visualização, CTRL C

#### Para parar a mineração
```
./stop_ore.sh
```

#### Para resgatar o minerado acesse a versão web e resgate pelo site.

---

# Atualizando a versão do ore_mainnet (ore-cli)

Paramos a mineracao 
```
./stop_ore.sh
```

Apagamos a versao existente 
```
rm ore_mainnet
```

Baixamos a nova versao
```
wget -O ore_mainnet https://github.com/formigapop/ore/releases/download/ore-cli-1.1.1/ore_mainnet
```

Mudamos permissoes
```
chmod +x ore_mainnet
```

Conferimos a versao
```
./ore_mainnet -V
```
Precisa aparecer 1.1.1 ✅

Rodamos a mineracao, como na seção anterior
```
./run_ore.sh mainnet
```
