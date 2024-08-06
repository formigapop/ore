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
tail ore_devnet.log
tail ore_mainnet.log
```

#### Para parar a mineração
```
./stop_ore.sh
```

#### Para resgatar o minerado acesse a versão web e resgate pelo site.

---

# Atualizando a versão do ore_mainnet (ore-cli)

```
rm ore_mainnet
```

```
chmod +x ore_mainnet
```

```
wget -O ore_mainnet https://github.com/formigapop/ore/releases/download/ore-cli-1.1.1/ore_mainnet
```


