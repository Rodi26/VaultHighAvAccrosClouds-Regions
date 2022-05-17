cat /vault/vault1/root-token
cat /vault/vault2/root-token

Path: HashiCups
Key:  Secret
Value: MyS3cr3t

Path: HashiCups
Key:  Secret
Value: MyS3cr3t

vault-east-dr

vault token create -format=json -orphan -type=batch -policy=vault-dr-token | jq -r '.auth.client_token' | tee /vault/dr-batch-token