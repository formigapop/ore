#### Minerando $COAL (e futuramente $ORE) sem pagar taxas da rede

1. Baixe o minerador
```
wget https://github.com/formigapop/ore/releases/download/coal-pool-1.3.0/coal_pool && chmod +x coal_pool
```
3. Crie uma conta no minerador (Vai cobrar 0.001 SOL). Unico custo que terá. Lembrando que deve ter a private key da carteira no arquivo id.json
```
./coal_pool --keypair id.json --url coalpool.xyz signup
```
4. Comece a minerar. Não paga taxa, não gasta RPC. 🥳
- Para ver em tempor real
```
./coal_pool --keypair id.json --url coalpool.xyz mine --cores 32
```
- Para deixar rodando e fechar a janela
```
nohup ./coal_pool --keypair id.json --url coalpool.xyz mine --cores 32 > pool.log 2>&1 &
```
4a. Quer ver como está minerando, após fechar a janela?
```
tail -f pool.log
```

4b. Quer para a mineração? Pare sempre antes de iniciar novamente.
```
pkill -f "coal"
```

Outros comandos úteis:
a. Quando quiser resgatar.
```
./coal_pool --keypair id.json --url coalpool.xyz claim
```
b. Para ver quanto minerou.
```
./coal_pool --keypair id.json --url coalpool.xyz rewards
```
