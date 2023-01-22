const serverRsaPublicKey = """
-----BEGIN RSA PUBLIC KEY-----
MIIBCgKCAQEAwhHQ+vv9KINjfH7hD6Tt2nGddx5bMVyezgTQHSoe6ALzIqyu8n53
f5Ids2WBz0IgPnQQ+JxAb3dCX6xHlwYtmwrgNAgAepUg4C/o+YKsEHN7CpUqfmzb
oWRNDtEmzAN1/oQBLMCT456Amnc2CH8tHT5smdFjDV4SAe/PEayy7rbW8b44UYUj
+jEzDYtotkhlWEyPafuoZ5z8T4u0D/ofEpT2qEQVCawREkrAjJL9B6qjl2QS5m2c
dt8jnF8bvw/epIr7DPtDHGKn7G2GnVFOeyugqlF7TjH3aLnlhdn//TJEILmNChvS
lH3krDNRDV1tzE7QS7ystVsCKBi7YWg4jwIDAQAB
-----END RSA PUBLIC KEY-----
""";

const rsaBitStrength = 2048;
const rsaCertainityFactor = 5;
const rsaCipherLength = 256;

const messageHeaderLength = 4;
const messageHeaderBase = 16;

const aesKeyLength = 32;
const aesBlockSize = 16;
