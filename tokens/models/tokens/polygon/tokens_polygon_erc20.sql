{{
    config(
        schema = 'tokens_polygon',
        alias = 'erc20',
        tags = ['static'],
        materialized = 'table'
    )
}}

SELECT contract_address, symbol, decimals
  FROM (VALUES

(0x8f3cf7ad23cd3cadbd9735aff958023239c6a063, 'DAI', 18)
,(0x0000000000000000000000000000000000001010, 'MATIC', 18)
,(0x2791bca1f2de4661ed88a30c99a7a9449aa84174, 'USDC.e', 6)
,(0xc2132d05d31c914a87c6611c10748aeb04b58e8f, 'USDT', 6)
,(0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6, 'WBTC', 8)
,(0x7ceb23fd6bc0add59e62ac25578270cff1b9f619, 'WETH', 18)
,(0x2c89bbc92bd86f8075d1decc58c7f4e0107f286b, 'WAVAX', 18)
,(0x5d47baba0d66083c52009271faf3f50dcc01023c, 'BANANA', 18)
,(0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270, 'WMATIC', 18)
,(0xd6df932a45c0f255f85145f286ea0b292b21c90b, 'AAVE', 18)
,(0xa3fa99a148fa48d14ed51d610c367c61876997f1, 'miMATIC', 18)
,(0x431cd3c9ac9fc73644bf68bf5691f4b83f9e104f, 'RBW', 18)
,(0x3a58a54c066fdc0f2d55fc9c89f0415c92ebf3c4, 'stMATIC', 18)
,(0xe2aa7db6da1dae97c5f5c6914d285fbfcc32a128, 'PAR', 18)
,(0x64060ab139feaae7f06ca4e63189d86adeb51691, 'UNIM', 18)
,(0xb0b195aefa3650a6908f15cdac7d92f8a5791b0b, 'BOB', 18)
,(0xb33eaad8d922b1083446dc23f610c2567fb5180f, 'UNI', 18)
,(0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39, 'LINK', 18)
,(0x431d5dff03120afa4bdf332c61a6e1766ef37bdb, 'JPYC', 18)
,(0x7ff54b5c384c9f3a3fece70e150d2ce2d70da6f7, 'TBAC', 8)
,(0x6d802ac662b898622f7a13e1f4cb1a50c7085b6e, 'MOV', 18)
,(0x6ae7dfc73e0dde2aa99ac063dcf7e8a63265108c, 'JPYC', 18)
,(0x769434dca303597c8fc4997bf3dab233e961eda2, 'XSGD', 6)
,(0x172370d5cd63279efa6d502dab29171933a610af, 'CRV', 18)
,(0xf287d97b6345bad3d88856b26fb7c0ab3f2c7976, 'MATIC2x-FLI-P', 18)
,(0x7f36c54da31b2dd355caffec0249f26da41e3fcd, 'ENO', 18)
,(0x94f98d16c6ba5c2f649d6d7efb9767b14b0f325b, 'TBAC', 8)
,(0xedcfb6984a3c70501baa8b7f5421ae795ecc1496, 'META', 8)
,(0xa1c57f48f0deb89f569dfbe6e2b7f46d33606fd4, 'MANA', 18)
,(0x45c32fa6df82ead1e2ef74d17b76547eddfaff89, 'FRAX', 18)
,(0xa84b5b903f62ea61dfaac3f88123cc6b21bb81ab, 'amDAI', 18)
,(0xee029120c72b0607344f35b17cdd90025e647b00, 'amDAI', 18)
,(0x5a5c6aa6164750b530b8f7658b827163b3549a4d, 'stUSD+', 6)
,(0xdc8d88d9e57cc7be548f76e5e413c4838f953018, 'SWYF', 18)
,(0xf93579002dbe8046c43fefe86ec78b1112247bb8, 'bb-am-USDC', 18)
,(0x178e029173417b1f9c8bc16dcec6f697bc323746, 'bb-am-DAI', 18)
,(0xff4ce5aaab5a627bf82f4a571ab1ce94aa365ea6, 'bb-am-USDT', 18)
,(0x548571a302d354b190ae6e9107552ab4f7fd9dc5, 'amUSDT', 6)
,(0x5d9d8509c522a47d9285b9e4e9ec686e6a580850, 'USD+', 6)
,(0xdc3326e71d45186f113a2f448984ca0e8d201995, 'XSGD', 6)
,(0xa926db7a4cc0cb1736d5ac60495ca8eb7214b503, 'jSGD', 18)
,(0xfa68fb4628dff1028cfec22b4162fccd0d45efb6, 'MaticX', 18)
,(0x48e6b98ef6329f8f0a30ebb8c7c960330d648085, 'bb-am-usd', 18)
,(0x0503dd6b2d3dd463c9bef67fb5156870af63393e, 'bb-a-DAI', 18)
,(0x8a819a4cabd6efcb4e5504fe8679a1abd831dd8f, 'bb-a-USDT', 18)
,(0x1aafc31091d93c3ff003cff5d2d8f7ba2e728425, 'LP-USDC-USD+', 18)
,(0x221836a597948dce8f3568e044ff123108acc42a, 'amUSDC', 6)
,(0x19c60a251e525fa88cd6f3768416a8024e98fc19, 'amUSDT', 6)
,(0x385eeac5cb85a38a9a07a70c73e0a3271cfb54a7, 'GHST', 18)
,(0xe0b52e49357fd4daf2c15e02058dce6bc0057db4, 'agEUR', 18)
,(0x0b3f868e0be5597d5db7feb59e1cadbb0fdda50a, 'SUSHI', 18)
,(0x9a71012b13ca4d3d0cdc72a177df3ef03b0e76a3, 'BAL', 18)
,(0xe111178a87a3bff0c8d18decba5798827539ae99, 'EURS', 2)
,(0x4e3decbb3645551b8a19f0ea1678079fcb33fb4c, 'jEUR', 18)
,(0x85955046df4668e1dd369d2de9f3aeb98dd2a369, 'DPI', 18)
,(0xef1348dac70e8349513e4ae7498f302e27102101, 'CWETHLP', 18)
,(0xa03258b76ef13af716370529358f6a79eb03ec12, 'CUSDCLP', 18)
,(0x62f594339830b90ae4c084ae7d223ffafd9658a7, 'SPHERE', 18)
,(0x255707B70BF90aa112006E1b07B9AeA6De021424, 'TETU', 18)
,(0x70c006878a5a50ed185ac4c87d837633923de296, 'REVV', 18)
,(0xbbba073c31bf03b8acf7c28ef0738decf3695683 ,'SAND' ,18)
,(0xb5c064f955d8e7f38fe0460c556a72987494ee17 ,'QUICK' ,18)
,(0xe5417af564e4bfda1c483642db72007871397896 ,'GNS' ,18)
,(0x750e4c4984a9e0f12978ea6742bc1c5d248f40ed ,'axlUSDC' ,6)
,(0xbfc70507384047aa74c29cdc8c5cb88d0f7213ac ,'ALI' ,18)
,(0xd0258a3fd00f38aa8090dfee343f10a9d4d30d3f ,'VOXEL' ,18)
,(0x1d734a02ef1e1f5886e66b0673b71af5b53ffa94 ,'SD' ,18)
,(0xe261d618a959afffd53168cd07d12e37b26761db ,'DIMO' ,18)
,(0x03b54a6e9a984069379fae1a4fc4dbae93b3bccd ,'wstETH' ,18)
,(0x67eb41a14c0fe5cd701fc9d5a3d6597a72f641a6 ,'GDDY' ,18)
,(0x0e9b89007eee9c958c0eda24ef70723c2c93dd58 ,'ankrMATIC' , 18)
,(0x0c9c7712c83b3c70e7c5e11100d33d9401bdf9dd ,'WOMBAT' ,18)
,(0x612d833c0c7a54cdfbe9a4328b6d658020563ec0 ,'fxPINE' ,18)
,(0x0169ec1f8f639b32eec6d923e24c2a2ff45b9dd6 ,'ALGB' ,18)
,(0xe06bd4f5aac8d0aa337d13ec88db6defc6eaeefe ,'IXT' ,18)
,(0x8a953cfe442c5e8855cc6c61b1293fa648bae472 ,'PolyDoge' ,18)
,(0x2760e46d9bb43dafcbecaad1f64b93207f9f0ed7 ,'MVX' ,18)
,(0xc5102fe9359fd9a28f877a67e36b0f050d81a3cc ,'HOP' ,18)
,(0x12a4cebf81f8671faf1ab0acea4e3429e42869e7 ,'HOM' ,18)
,(0xec38621e72d86775a89c7422746de1f52bba5320 ,'DAVOS' ,18)
,(0xd125443f38a69d776177c2b9c041f462936f8218 ,'FBX' ,18)
,(0x491a4eb4f1fc3bff8e1d2fc856a6a46663ad556f ,'BRZ' ,4)
,(0xa2ca40dbe72028d3ac78b5250a8cb8c404e7fb8c ,'FEAR' ,18)
,(0x8e3f56e2414aa427a211c69a3a20124e351baec1 ,'GNT' ,18)
,(0xd0b3a0e0ea080a0882d6e048cae8558f010ce81f ,'TORA' ,18)
,(0xdfce1e99a31c4597a3f8a8945cbfa9037655e335 ,'ASTRAFER' ,18)
,(0x8497842420cfdbc97896c2353d75d89fc8d5be5d ,'VERSA' ,18)
,(0x54e38ca1aaafd4ca90637c8c3e50758eeadaf67d ,'COG' ,18)
,(0x101a023270368c0d50bffb62780f4afd4ea79c35 ,'ANKR' ,18)
,(0xe8d17b127ba8b9899a160d9a07b69bca8e08bfc6 ,'NSDX' ,18)
,(0x8f006d1e1d9dc6c98996f50a4c810f17a47fbf19 ,'NSFW' ,18)
,(0x57f12FE6A4e5fe819eec699FAdf9Db2D06606bB4 ,'NPM' ,18)
,(0x958d208cdf087843e9ad98d23823d32e17d723a1 ,'dQUICK' , 18)
,(0x692ac1e363ae34b6b489148152b12e2785a3d8d6 ,'TRADE' ,18)
,(0x9246a5f10a79a5a939b0c2a75a3ad196aafdb43b ,'BETS' ,18)
,(0x2ab0e9e4ee70fff1fb9d67031e44f6410170d00e ,'mXEN' ,18)
,(0xbbfe0b60de96a189bf09079de86a2db7bf0c7883 ,'Lunr' ,4)
,(0x6f06e6bed64cf4c4187c06ee2a4732f6a171bc4e ,'FOOD' ,18)
,(0xc2a45fe7d40bcac8369371b08419ddafd3131b4a ,'LCD' ,18)
,(0x7bdf330f423ea880ff95fc41a280fd5ecfd3d09f ,'EURT' ,6)
,(0xee9a352f6aac4af1a5b9f467f6a93e0ffbe9dd35 ,'MASQ' ,18)
,(0xdf7837de1f2fa4631d716cf2502f8b230f1dcc32 ,'TEL' ,2)
,(0xdda40cdfe4a0090f42ff49f264a831402adb801a ,'DOGIRA' ,9)
,(0xac0f66379a6d7801d7726d5a943356a172549adb ,'GEOD' ,18)
,(0x444444444444c1a66f394025ac839a535246fcc8 ,'GENI' ,9)
,(0xd5d86fc8d5c0ea1ac1ac5dfab6e529c9967a45e9 ,'WRLD' ,18)
,(0xab5f7a0e20b0d056aed4aa4528c78da45be7308b ,'GBYTE' ,18)
,(0x6e4e624106cb12e168e6533f8ec7c82263358940 ,'AXL' ,6)
,(0x9f28e2455f9ffcfac9ebd6084853417362bc5dbb ,'rMATIC' ,18)
,(0x18e73a5333984549484348a94f4d219f4fab7b81 ,'DUCKIES' ,8)
,(0x537b9f8b41d331c89326454256cc2853acb8a435 ,'BERRY' ,18)
,(0xb25e20de2f2ebb4cffd4d16a55c7b395e8a94762 ,'REQ' ,18)
,(0xabeb34c52292c5f3ee96396e02d8a77c8a903a4f ,'UNIQ' ,18)
,(0x02968ea3ec4461d46fdc339a707d2a94123e3da5 ,'Fluctus' ,18)
,(0x9ca6a77c8b38159fd2da9bd25bc3e259c33f5e39 ,'SPORK' ,18)
,(0x058af2e730fb5ee7e1d7ecbc5079be1aabd30513 ,'ANKO' ,18)
,(0x9c9e5fd8bbc25984b178fdce6117defa39d2db39 ,'BUSD' ,18)
,(0xd1f9c58e33933a993a3891f8acfe05a68e1afc05 ,'SFL' ,18)
,(0x3b7e1ce09afe2bb3a23919afb65a38e627cfbe97 ,'DST' ,18)
,(0x6f3cc27e17a0f2e52d8e7693ff0d892cea1854bf ,'GOO' ,9)
,(0x831753dd7087cac61ab5644b308642cc1c33dc13 ,'QUICK' ,18)
,(0xed88227296943857409a8e0f15ad7134e70d0f73 ,'LUMIII' ,18)
,(0x282d8efce846a88b159800bd4130ad77443fa1a1 ,'OCEAN' ,18)
,(0x6f8a06447ff6fcf75d803135a7de15ce88c1d4ec ,'SHIB' ,18)
,(0xbc5eb84c052fd012bb902c258c9fd241b17c0005 ,'XNET' ,18)
,(0xb6c3c00d730acca326db40e418353f04f7444e2b ,'fcc' ,18)
,(0xb6bcae6468760bc0cdfb9c8ef4ee75c9dd23e1ed ,'PNT' ,18)
,(0xc6c855ad634dcdad23e64da71ba85b8c51e5ad7c ,'ICE' ,18)
,(0x311434160d7537be358930def317afb606c0d737 ,'NAKA' ,18)
,(0x79375c41d88f839f551457145066096c5c8944bc ,'SG' ,18)
,(0xfca466f2fa8e667a517c9c6cfa99cf985be5d9b1 ,'SPEPE' ,18)
,(0x3b56a704c01d650147ade2b8cee594066b3f9421 ,'FYN' ,18)
,(0x48b7ef4b5d2cee4f9f2b740f612462e6bc050418 ,'LGNT' ,8)
,(0x1379e8886a944d2d9d440b3d88df536aea08d9f3 ,'MYST' ,18)
,(0x7dff46370e9ea5f0bad3c4e29711ad50062ea7a4 ,'SOL' ,18)
,(0xf4c83080e80ae530d6f8180572cbbf1ac9d5d435 ,'BLANK' ,18)
,(0x6ab4e20f36ca48b61ecd66c0450fdf665fa130be ,'DOLZ' ,18)
,(0xc9010ebde4f93c6127abce5d2a948b7f9badd446 ,'MDOGE' ,18)
,(0x32f81f5fa147027f990b6a35e14b41b5990fce1a ,'BTCin' ,18)
,(0x42d61d766b85431666b39b89c43011f24451bff6 ,'PSP' ,18)
,(0xc837f561866ec886ba05d97ed02eff65184fbfc2 ,'MOM' ,6)
,(0x22e3f02f86bc8ea0d73718a2ae8851854e62adc5 ,'FLAME' ,18)
,(0x346404079b3792a6c548b072b9c4dddfb92948d5 ,'IUX' ,18)
,(0x3f8a923dda0c58ef6c353efb8141007617ab871c ,'PD-WL' ,18)
,(0x27d1a8d840ec3c1f4be069244e918980b2d73916 ,'Pepe' ,18)
,(0xfc7cb5c0ce1e41654426660e4777427abe1911d8 ,'SPEPE' ,18)
,(0x83d8af1ad528fd400f141b7190859e54d83bfe7f ,'GEEKS' ,6)
,(0x47dd60fa40a050c0677de19921eb4cc512947729 ,'mDXN' ,18)
,(0xf78610d0a197842bf98ca45254897edd13c5d182 ,'FCD' ,18)
,(0x7a7b94f18ef6ad056cda648588181cda84800f94 ,'FIS' ,18)
,(0x1386617a1bb2a6aa712ab3616bcaf1211152d1e8 ,'BGEM' ,18)
,(0xb0b2ef34d412d73b0ff90a709d1779a20655165a ,'GUARD' ,18)
,(0xa486c6bc102f409180ccb8a94ba045d39f8fc7cb ,'NEX' ,8)
,(0xee7666aacaefaa6efeef62ea40176d3eb21953b9 ,'MCHC' ,18)
,(0xc643164d9cae8f745938bf539e675cbe43dbc32c ,'AYS2' ,18)
,(0x53d9006010ce785bae94555e07d5268480b5c371 ,'LAY' ,18)
,(0x63610f5e576164ec822e5aed9bcf1af864bf92ee ,'ZTA' ,18)
,(0x7e7ff932fab08a0af569f93ce65e7b8b23698ad8 ,'Yf-DAI' ,18)
,(0x229b1b6c23ff8953d663c4cbb519717e323a0a84 ,'BLOK' ,18)
,(0xd6c93ab226455c524663eebd79fa2de9395c7d8d ,'XACT' ,18)
,(0xce1f3c5bac577302758b7ecb090576897d151c5b ,'RDS' ,18)
,(0x0b220b82f3ea3b7f6d9a1d8ab58930c064a2b5bf ,'GLM' ,18)
,(0xc3e8abfa04b0ec442c2a4d65699a40f7fced8055 ,'mFENIX' ,18)
,(0x59b5654a17ac44f3068b3882f298881433bb07ef ,'CHP' ,18)
,(0xac51c4c48dc3116487ed4bc16542e27b5694da1b ,'ATOM' ,6)
,(0xec24c04868da7abba292c2ba46fe77788a3f5f74 ,'OOG' ,18)
,(0x3801c3b3b5c98f88a9c9005966aa96aa440b9afc ,'GLTR' ,18)
,(0x0c0391a4abef50fc9386f69f2266d4d2fbeb96c7 ,'WLOKA' ,18)
,(0x323f92f937c8581abaed2df4b09e4bbd70d7d12d ,'ARGLE' ,18)
,(0xed8463fec47e04f2c4e216637e98e0be2e5bf306 ,'ALQ' ,18)
,(0xb85517b87bf64942adf3a0b9e4c71e4bc5caa4e5 ,'FTM' ,18)
,(0xd13c829bf9bf2a097b1e185e897c78448ed750e6 ,'CGT' ,18)
,(0x3b1a0c9252ee7403093ff55b4a5886d49a3d837a ,'UM' ,18)
,(0x8626264b6a1b4e920905efd381002aba52ea0eea ,'BLKC' ,8)
,(0x2bc07124d8dac638e290f401046ad584546bc47b ,'TOWER' ,18)
,(0x430ef9263e76dae63c84292c3409d61c598e9682 ,'PYR' ,18)
,(0x7fbc10850cae055b27039af31bd258430e714c62 ,'UBT' ,8)
,(0xc3c7d422809852031b44ab29eec9f1eff2a58756 ,'LDO' ,18)
,(0x026cb2fc607a333e9c64d0c6f8660fc6d7a4e9de ,'UTO' ,18)
,(0x187ae45f2d361cbce37c6a8622119c91148f261b ,'POLX' ,18)
,(0xec34a2f53c95b6ad06f7f2af6be9fc962f3fc4ee ,'SUCCESS' ,18)
,(0x580a84c73811e1839f75d86d75d88cca0c241ff4 ,'QI' ,18)
,(0x13c688eb954e367f5b4ff7cc4f706f2272660eb1 ,'WT' ,8)
,(0x1f89600a0a08bc51eef1bec8e1ca826145753052 ,'CREW' ,18)
,(0x91e7e32c710661c44ae44d10aa86135d91c3ed65 ,'wPPC' ,6)
,(0x61299774020da444af134c82fa83e3810b309991 ,'RNDR' ,18)
,(0x1551866342b8658199774861f89399520960bc27 ,'Greg' ,18)
,(0xb35fcbcf1fd489fce02ee146599e893fdcdc60e6 ,'DERC' ,18)
,(0x9cd552551ec130b50c1421649c8d11e76ac821e1 ,'CVOL' ,18)
,(0x47ab4242462087273716881a13714de5d0235d67 ,'MTK' ,18)
,(0x589503e30e29454d98d59a34f2058a5aa4e38730 ,'OKC' ,8)
,(0x462d8d82c2b2d2ddabf7f8a93928de09d47a5807 ,'BzB' ,18)
,(0xa874a3082d232e517654da2ce89374d556d339c4 ,'YEN' ,18)
,(0x18f01f43f3aa33833f4ec8a9b9218d862ba5d8e8 ,'GREATAI' ,18)
,(0xffb9f1907f827709b0ed09b37956cd3c7462abdb ,'DUCKIES' ,2)
,(0x428ac1de3fc08c0f3a47745c964f7d677716981f ,'IBZ' ,18)
,(0x91c89a94567980f0e9723b487b0bed586ee96aa7 ,'BICO' ,18)
,(0x12f99561ce5453d9917d997846f2d8df00a97037 ,'MGEN' ,18)
,(0xe453cbd79e85bedd346a0e727db05121d648d2b7 ,'1FC' ,18)
,(0x5736df66b4f8401d639ffa915a46b4c548c09ac1 ,'rETH' ,18)
,(0xc30f68091fb72469b0e0481e2551aa5e759d6271 ,'EVG' ,18)
,(0x9dbad35e5ff07bdc1ed5cf37bc30f7439996df63 ,'FLAG' ,10)
,(0x765d6f7754ca7c97b86695a19dbbaefbb9d33bd5 ,'CCS' ,18)
,(0xb382c1cfa622795a534e5bd56fac93d59bac8b0d ,'KIRO' ,18)
,(0xbdc0db15b4d95d36f72561fa5a085027f61f4a44 ,'Xoge' ,0)
,(0x54536aeea5f4511cee92cc67a9aad296078ca4e4 ,'DBT' ,6)
,(0x0e50bea95fe001a370a4f1c220c49aedcb982dec ,'ERN' ,18)
,(0xa0df47432d9d88bcc040e9ee66ddc7e17a882715 ,'pMATIC' ,18)
,(0xc3ec80343d2bae2f8e680fdadde7c17e71e114ea ,'OM' ,18)
,(0xecdcb5b88f8e3c15f95c720c51c71c9e2080525d ,'WBNB' ,18)
,(0x23d29d30e35c5e8d321e1dc9a8a61bfd846d4c5c ,'HEX' ,8)
,(0xb91916194b13fba164d4bd85a75b70285ad130de ,'DOGWIN' ,18)
,(0x22580c103d9d8091d028668bbcee41a04b434074 ,'SATIN' ,18)
,(0x204820b6e6feae805e376d2c6837446186e57981 ,'ROND' ,18)
,(0xd0cfd20e8bbdb7621b705a4fd61de2e80c2cd02f ,'SSGTx' ,18)
,(0x252181197f84b8a084f167c33040e333628f5145 ,'PGLD' ,18)
,(0x4125d86746b2d3aeda95da99dbdfa228ba28cdb3 ,'ROVA' ,18)
,(0x56633733fc8baf9f730ad2b6b9956ae22c6d4148 ,'COLLECT' ,18)
,(0x33c5a0e0bfc2521012d20356d1a48ab44b42ff5f ,'XFP' ,2)
,(0x695fc8b80f344411f34bdbcb4e621aa69ada384b ,'NITRO' ,18)
,(0xa934bcbf24a7272781197b6559230c30bf0bb2e6 ,'DOWN' ,18)
,(0x73dc6a11a346425d867230f06e4a9fb7a9b53d2e ,'NMG' ,18)
,(0x4b27cd6e6a5e83d236ead376d256fe2f9e9f0d2e ,'BLID' ,18)
,(0x23e8b6a3f6891254988b84da3738d2bfe5e703b9 ,'WELT' ,18)
,(0x1eba4b44c4f8cc2695347c6a78f0b7a002d26413 ,'UND' ,18)
,(0xe631dabef60c37a37d70d3b4f812871df663226f ,'SMT' ,18)
,(0xecfb24be40f88d66bb7a14a4bc7f22bdf6841a93 ,'DESK' ,18)
,(0x67cdeea6c3cfe7c93f8d8a96e26c008533b8995b ,'MDL' ,9)
,(0x70048335a8bcd746a2f45bd4bb15f99da5e0eb05 ,'PUFFS' ,18)
,(0xfe4db7ca9455bebb7583c764389842c85e06fe1a ,'DD' ,18)
,(0x671078c0496fa135a8c45fc7c9fa7b1501fd5146 ,'KRSTM' ,18)
,(0xb2c63830d4478cb331142fac075a39671a5541dc ,'BOMB' ,18)
,(0x20aa598eebe28cd5c8751288147a9723627975c6 ,'AIRx' ,8)
,(0x5548e42353334614f0aa92780bcf2c221313e1ac ,'FCT' ,18)
,(0x4ee438be38f8682abb089f2bfea48851c5e71eaf ,'YAE' ,18)
,(0xcbfbdd24531b713e04818bcff9c7458fd72e6c82 ,'BASE' ,18)
,(0x34667ed7c36cbbbf2d5d5c5c8d6eb76a094edb9f ,'GENE' ,18)
,(0xb45f6e99bc6e4a8bc431ba86b2e0376271c8545f ,'GBAR' ,18)
,(0x4036f3d9c45a20f44f0b8b85dd6ca33005ff9654 ,'LIQ' ,18)
,(0x9cd6746665d9557e1b9a775819625711d0693439 ,'LUNA' ,6)
,(0x6972f6e1111f3f162312e3980eb827a97fd6c37f ,'DEGODS' ,18)
,(0xcb4842687b0c687ec1e8bb4f79cd0a0dad227c78 ,'RIEN' ,18)
,(0xc004e2318722ea2b15499d6375905d75ee5390b8 ,'KOM' ,8)
,(0xc9e6e3e755a834cc6ef44d1e981dbcecee3a0fdb ,'PMA' ,18)
,(0xd93f7e271cb87c23aaa73edc008a79646d1f9912 ,'SOL' ,9)
,(0x44a6e0be76e1d9620a7f76588e4509fe4fa8e8c8 ,'FOMO' ,18)
,(0x0dedb83cba2f32bcbd06ef8bb25fced85b85c01f ,'TTT' ,18)
,(0xc642defdd176f19db8e75b27077d0fe4347553fc ,'AFWT' ,18)
,(0x77d97db5615dfe8a2d16b38eaa3f8f34524a0a74 ,'LFI' ,18)
,(0xf67c9cc6cba941d55abd794dc1b31d36946b42be ,'FFB' ,18)
,(0x5459152d2274586f98044159c79283367d6306ef ,'fxJ' ,18)
,(0x948d653f014d02aaa56c0fce794443ecc827ab28 ,'BRC' ,18)
,(0x5f0197ba06860dac7e31258bdf749f92b6a636d4 ,'1FLR' ,18)
,(0xee9801669c6138e84bd50deb500827b776777d28 ,'O3' ,18)
,(0x2c605cfdc199ae80bf70318de855769702e52967 ,'VTPN' ,18)
,(0xb53ec4ace420a62cfb75afdeba600d284777cd65 ,'SPACE' ,18)
,(0xc4b00de48c795666c2b0ad0ed4b9ac7e22fd10e1 ,'VENICE' ,18)
,(0xe84dfa1a440dab5a5945f7774b22baf2b431d6d3 ,'TB' ,18)
,(0xb39bb98170b50a68579687eeaf3eb8a17f81cd49 ,'ERK' ,18)
,(0xaf8f7162b11f56d9a138bbb1b83ef9e26c56d9a0 ,'FFU' ,18)
,(0x42e5e06ef5b90fe15f853f59299fc96259209c5c ,'KEK' ,18)
,(0x10adf16a60f0020477c70473d6ea595d9bc29372 ,'WUMI' ,18)
,(0xcf7276a62823c9d7efd540b806ce70a46419f8a6 ,'KIVOT' ,18)
,(0x8865bc57c58be23137ace9ed1ae1a05fe5c8b209 ,'AMBER' ,18)
,(0x70e546c7a2ca4495cfcbe263a3b6d5ce68b2204c ,'Lsp 20' ,18)
,(0xb837f0e111596348a27e424e43938eb01753cf34 ,'BBY' ,9)
,(0xd3b71117e6c1558c1553305b44988cd944e97300 ,'YEL' ,18)
,(0x7e26081d41fd9a18a32b66268c8cc5c621eb1cf2 ,'BUSO' ,6)
,(0x086373fad3447f7f86252fb59d56107e9e0faafa ,'YUP' ,18)
,(0x676070e324f0c75f24c3ff5c96e5561d4d4c56ce ,'MOM' ,18)
,(0x5d089336f95e649e491c054279d64a86565e8b25 ,'MLD' ,18)
,(0x3c205c8b3e02421da82064646788c82f7bd753b9 ,'UFI' ,18)
,(0x06873c7e7020a7845db8eced6cd1041afcbc9822 ,'PUNKD' ,11)
,(0xfbecfb7b87752aa28383a5ac1e9d9e05e0526017 ,'EMI' ,18)
,(0x379065b360033176e255b60ab2346ff180943b52 ,'BIT' ,18)
,(0xe62b9419a5573fc17c749abaab75242027ac27ee ,'PEPE' ,18)
,(0x38a536a31ba4d8c1bcca016abbf786ecd25877e8 ,'MNTL' ,6)
,(0x1f3917c93fafa42f446137a46987daf2e79a497b ,'BABYPEPE' ,6)
,(0xa0e390e9cea0d0e8cd40048ced9fa9ea10d71639 ,'DSLA' ,18)
,(0xc8f1248b803b5ced2d5556017092e5dabffdda37 ,'CLL' ,18)
,(0x34ad6a664b4112a9c6bac7b54b4094a05e3ff775 ,'MCOIN' ,3)
,(0x6deb362e86e79208f7dd60608e71596ffd88d733 ,'$GOLD' ,6)
,(0x39b6fc333b9b22749135e80cc27b5c82d91a4f50 ,'JithendraAntonio' , 18)
,(0x789eaa1ad044475b90e42ab010f97f1ad6964ab1 ,'BPEPE' ,18)
,(0x76bca823fe6f2c88dfd43058653f9280cf9bdc3e ,'fxNFTE' ,18)
,(0x3a3df212b7aa91aa0402b9035b098891d276572b ,'FISH' ,18)
,(0xaa404804ba583c025fa64c9a276a6127ceb355c6 ,'CPR' ,2)
,(0x4de05e6f0f4362195f5168c9409b05d8967baebb ,'WGDT' ,18)
,(0x75e7dc6a1ba66b07b07e38756b83e028f4487005 ,'WET' ,18)
,(0x8d48012b7f71fbf60d35eaa3f56ae6fdf43644ed ,'JOSH' ,18)
,(0x9dd006936c774977b61f25a24cedce47770a6461 ,'CBDC' ,18)
,(0x5647fe4281f8f6f01e84bce775ad4b828a7b8927 ,'MM' ,18)
,(0xe0339c80ffde91f3e20494df88d4206d86024cdf ,'ELON' ,18)
,(0x5c947eb80d096a5e332bf79bfdc9feb3d0a201d7 ,'SPIT' ,18)
,(0xa3c322ad15218fbfaed26ba7f616249f7705d945 ,'MV' ,18)
,(0x2340a5742579b39a7b672af0d475a89e7a4c5174 ,'LCK' ,18)
,(0xdf1570c38c907a55e94faf413fadacb70d78f959 ,'BSLAI' ,18)
,(0x1177097aca445930c9ae0c01fffb2fe33cb2f381 ,'KOD' ,18)
,(0x7e337fc1d31ad444ac31cc9a5f4effbaa6ff8dab ,'CHIP' ,18)
,(0xec3f7bdcb0f2436e3c1632f6f47b92ff0da2743c ,'ZAR' ,18)
,(0x55ecf472eb8321cb4f77fd61492625ebf9002267 ,'flappy' ,18)
,(0x6f7c932e7684666c9fd1d44527765433e01ff61d ,'MKR' ,18)
,(0x4b4327db1600b8b1440163f667e199cef35385f5 ,'fxcbETH' ,18)
,(0x60edc5ee90fea7deb8768085a140abc5dc905e99 ,'$LUF' ,8)
,(0x8068750cf1994b4aa8a0c3fb97566a431958e3d5 ,'ZTAPS' ,18)
,(0x02753ee6a439be76cfaf828cebe02ce88ecff8b5 ,'NOW' ,18)
,(0x7ecb5699d8e0a6572e549dc86dde5a785b8c29bc ,'MORI' ,18)
,(0x94788309d420ad9f9f16d79fc13ab74de83f85f7 ,'SROCKET' ,18)
,(0x5480880b0539317291810045cdb0cf6457d38433 ,'RAYA' ,18)
,(0x874e178a2f3f3f9d34db862453cd756e7eab0381 ,'GFI' ,18)
,(0x2d45c2b9937a0e6985f7e66ac00467c8aa902f48 ,'$C2$' ,18)
,(0xbe48e08db415cc17b9a2f12cd943558a2d5a7163 ,'WUSD' ,9)
,(0xf40d9de56b1fbaff388f4d1b97dc8dfc184d34ce ,'GRAMZ' ,18)
,(0x6286a9e6f7e745a6d884561d88f94542d6715698 ,'TECH' ,18)
,(0xb4f457270c5688e933dd991e8af0d3ac0dcb2b0e ,'FBUD' ,18)
,(0x8930568b98e48aa02cc660992a9223e596c528b8 ,'CNGT' ,18)
,(0xd630bab45cb21ded4f637c164659a4ad870f2bb9 ,'ABE' ,18)
,(0x3d82346b25a504d936cfcd42aa193b618a9f6e1b ,'XPEP' ,18)
,(0x3017f7cd9be91ce3c6ff791ccb1a6142c8fb167e ,'GOPI' ,18)
,(0xb48bd29939405311355a4a69b26110eeb0578f93 ,'SPELLS' ,18)
,(0x9d939e22d4a50025cddac3d26f9485e49f95d074 ,'HLH' ,18)
,(0x3050731a7ab18d05eaa5e01d66df33e04444e72c ,'ECG' ,6)
,(0xcb8bcdb991b45bf5d78000a0b5c0a6686ce43790 ,'WEIRD' ,18)
,(0xc2ab03b49cde764e9609252235e0fabf85ceaece ,'SGID' ,18)
,(0x2cb56bac568f30753d06d77bd8964ce49901e6cc ,'FIN' ,18)
,(0xd1e6354fb05bf72a8909266203dab80947dceccf ,'CNT' ,18)
,(0x441950037ae4d61bb20b6d639f2073062fa551b1 ,'MOM' ,18)
,(0x69027c8f3b39ddc03b6994e803ae7afae18367c4 ,'KAXR' ,18)
,(0x7cdfe6053ab121891a3dc35f3592a55b004e624f ,'zbsk' ,18)
,(0xffc1aa23db354c8f7f081b413a43a53dad8b1fc2 ,'FUD' ,18)
,(0xc44c9c0594ab295799f197359bbaa32cd7a13b22 ,'THC' ,18)
,(0xbb115037c0ceba3fa1e49f34b4a8160a1e86791b ,'MLK' ,11)
,(0x02649c1ff4296038de4b9ba8f491b42b940a8252 ,'XGEM' ,18)
,(0x249ee085ee379dba501b1304db2d785ee3a5f24e ,'UThrive' ,18)
,(0x0d0b8488222f7f83b23e365320a4021b12ead608 ,'NXTT' ,18)
,(0xb29781b8b09ba707631ee6720e50129777d4ba31 ,'PFC' ,18)
,(0x9e2d266d6c90f6c0d80a88159b15958f7135b8af ,'SSX' ,18)
,(0x123bac012e3b5edf2db7cbd227dd7077bad59556 ,'HRBF' ,18)
,(0x8031c44b96ec8c9b66ab16c2c164e8deeb361a3f ,'LIRA' ,18)
,(0xce2fcebdfbdf9bd211936eb6b945d163702d28ef ,'VRCITY' ,18)
,(0x83a62c2020c413b98e09787ada327191a2d870ef ,'PEPEKID' ,18)
,(0x4e7d17e4d2c31890d5e54a17399cbbe3da4212ba ,'HNL' ,9)
,(0x1d2ca639037d713c937c4890446fbe38138fd733 ,'CRN' ,18)
,(0xe4b23329a58068560de6b89166dda9194f4538c6 ,'BOBO' ,18)
,(0xfd2e95937a9a1b4a87b8c47fd3e9acc123314c0e ,'NIS' ,8)
,(0xb81ffd9a9b11821f1b04b632e8af04158fa683c9 ,'MOTTOKEN' ,18)
,(0xa563418d0d0ab3640b0eb54d3f528f2d7e534900 ,'REAP' ,18)
,(0x9dbfc1cbf7a1e711503a29b4b5f9130ebeccac96 ,'UPO' ,18)
,(0x9d9b0c4dfb66468b2c1993e2235c780d75ad418f ,'RWF' ,18)
,(0x39e472e7010aad744ce384583524600a545fcad5 ,'PRINC' ,18)
,(0xaacfb4ed6178d14d8c52ac94a412952e38dcb4ca ,'YAHWEH' ,18)
,(0xad9abc662c0dc63b8235667c4858988de4bd50ae ,'Arbyz' ,18)
,(0x5672cbe1e116eb340ee53b0b69844ea07ee8835d ,'LCS' ,18)
,(0xf44581d66ff317d5d5307aa3235266f8c6694380 ,'UCF' ,18)
,(0x82362ec182db3cf7829014bc61e9be8a2e82868a ,'MESH' ,18)
,(0x4b6d1ee0dfa39324cc093d670c8c270745c870b2 ,'BITTRON' ,15)
,(0x82b37070e43c1ba0ea9e2283285b674ef7f1d4e2 ,'CCO2' ,18)
,(0xcec974b72997b921f629dae516b890b72aa0beca ,'Wavy' ,18)
,(0x6df5c1da0310a0725b919579d06de427cb578c83 ,'HMC' ,18)
,(0x44b8626715cec5290096093a621d5e85854927c6 ,'IEVE' ,18)
,(0xb1c5c9b97b35592777091cd34ffff141ae866abd ,'WUBQ' ,18)
,(0xc71589a14aa2515a5a8976e29efcaa443449e682 ,'mGOLD' ,18)
,(0x2071c9f603615c3d48500a488a39d30cc20dfa83 ,'TGPT' ,18)
,(0xbb2e3a3aa4964c5c6cc3c1c8ebf92f8dd14953f0 ,'BRLD' ,18)
,(0x4cc1a6347ee8bcc92f42c8976ac28f9a4c1055ef ,'SIYAGUNA' ,18)
,(0x6b3ea85225d97f204dca9b456d784bbd41c01ae2 ,'ABEZZ' ,18)
,(0x9a42dc7edb66f881bf779d884ff3209e0fa57a51 ,'USD' ,18)
,(0x4e78011ce80ee02d2c3e649fb657e45898257815 ,'KLIMA' ,9)
,(0xb6a5ae40e79891e4deadad06c8a7ca47396df21c ,'CBY' ,18)
,(0xfdc4a507039bb0fcef4572e019dac3bb6b8470c1 ,'AX' ,18)
,(0xd0bb01ba48a191cd0d231464c071141ac13b4e91 ,'MDC' ,18)
,(0xb8ca15a952a04e0261fae02677da5ee735b36967 ,'ABST' ,18)
,(0x312aa7d11e5ae8d8429b81e78445f6c1fc60d917 ,'NRT' ,18)
,(0x6d53a11f2b9bae481df480055fbc298984a019bb ,'School' ,9)
,(0x553d3d295e0f695b9228246232edf400ed3560b5 ,'PAXG' ,18)
,(0x95ece3815c035b76e918e2a9fa81f23a89c3b703 ,'PSM' ,18)
,(0xf60fd2fc7a31bca079a094dabb24feefb225e618 ,'CODE' ,18)
,(0x35ac92580eb672d9c76fee4228165f6ef224c334 ,'ELONINDEX' ,18)
,(0x1bb4da071a0525805d54f5d2ae1ee53f19eb700d ,'FRD' ,10)
,(0xa040b18409fa56c70f452a1b0a3d1baef389b964 ,'polyPEPE' ,18)
,(0x0c8751e845d76cb82f1f85b989239450c7ab1e25 ,'ASNH' ,18)
,(0xffebb6d5aba955c03b203732405914150403a3bf ,'BBC' ,8)
,(0x7d471fb58b9fdae26f3c8cbb036a5698d110dec2 ,'80B' ,18)
,(0x3d356e087e3c6b25e1772c0574e02057102296da ,'MEC' ,18)
,(0x9f4bfdb8db1c65f0e117d17be340177d6c6f2eb3 ,'XCORP' ,18)
,(0x89f98423660347264341572e7a37afb5f6863701 ,'USDW3' ,9)
,(0xf0b5d85570bb7b3245f29cb545bc5fc35790fe54 ,'WIP' ,8)
,(0x3405a1bd46b85c5c029483fbecf2f3e611026e45 ,'BTD' ,18)
,(0x08f40de85f4b73c4288b68de873f37e4a308b060 ,'SIYAGUNAKOSGODAGE' ,18)
,(0xfbdd194376de19a88118e84e279b977f165d01b8 ,'BIFI' ,18)
,(0xb21c575317f735289cb43fc7cabce785d4355cc0 ,'SAFEAS' ,18)
,(0x167e4ae92f38280c048a17fb0eaf9666293d1869 ,'OTCU' ,18)
,(0xd6e8ca78e0f2a943281e40de63a29082e4a4541a ,'CHER' ,18)
,(0xbec3a3238fac0f6a79443ade963a00456af6833e ,'USDD' , 18)
,(0xbd34c3a9061118d2919fd7df1a374f5424de2947 ,'MUZAN' ,18)
,(0x4e3f6e1adc50205e329fb58fa9548f72f9fd41d8 ,'ALMIGHTY' ,18)
,(0xcc0f84e6e323aee65295c14c2ecc6784b04361b2 ,'Sh.ia' ,18)
,(0xe48796a92dcb303d56d4eecb626456db132242ea ,'GOLD' ,8)
,(0x25cbf5092cc033ab13a7f9286d88fcf27e5d04be ,'USDT' ,18)
,(0x1c0aaf256f581774e21d1fae64244c6676bff04c ,'LUI' ,8 )
,(0x47a76795fde5e6daeed2a2dae1104ada0f281c28 ,'GDIVS' ,8)
,(0xb5eb5c3ea3c1c0434451c587e9fc15391b95227d ,'WIJAYAPURA' ,18)
,(0xe77abb1e75d2913b2076dd16049992ffeaca5235 ,'Deod' ,18)
,(0x03678f2c2c762dc63c2bb738c3a837d366eda560 ,'XCASH' ,18)
,(0xca0a17ad7695d49dbdbedc72b2abe853af8c7193 ,'SATAN' ,18)
,(0x2a7acf9ce64e8281d61a70bde1d0d9e19ff9b3fc ,'MARC2' ,18)
,(0x820802fa8a99901f52e39acd21177b0be6ee2974 ,'EUROe' ,6)
,(0x5c4b7ccbf908e64f32e12c6650ec0c96d717f03f ,'BNB' ,18)
,(0x5e7a4558118b70e13693aea0058a0aad3193fcfd ,'TTOOLS' ,18)
,(0x549b06987ed5ae34b57b73cf9f9ba55b60e4e752 ,'WPC' ,18)
,(0x3028cdf5219443a70fe6343a31e89f81013e915a ,'RAYA' ,18)
,(0x92af4c3edb23d88d1958e69c59ee0574ff8f2d71 ,'SHIYA' ,9)
,(0x67e57c9eb0266ffe7648025b2354fd2f5acff155 ,'FSX' ,18)
,(0xdeeaa1e5bc43efbd767ee46e0b73c8dcf7024716 ,'XRide' ,18)
,(0x74e13fcfd0af3d31dfa58382b6145e421b538294 ,'SQUN' ,18)
,(0x56aa55bb58bbca6f31f15a1a3ac15f70c5413108 ,'LVC' ,18)
,(0xc370e41f37a75906769efbcf1532365bba096652 ,'EMA' ,18)
,(0xf9d3d8b25b95bcda979025b74fdfa7ac3f380f9f ,'CP' ,18)
,(0xe3e7030ce60b7b6d9027d0e4d93cf2b77fc989de ,'Sadman' ,18)
,(0x6968105460f67c3bf751be7c15f92f5286fd0ce5 ,'MONA' ,18)
,(0x9cd2f9ba8641f21f0bc1ba8f1d57db57f6aead65 ,'NXT' ,18)
,(0xfdcfa36f61f114bf2f7c68c3fad2b4d125b1cbcc ,'ETHW6' ,9)
,(0xcf7b421bbc03c05b09c830330f047ead6d092f07 ,'CLAZR' ,18)
,(0x0fe518b164aa1d9fe8de92a11688ea8c4e392219 ,'ELONINDEX' ,18)
,(0x4a1292fd3b8137e474cc36feceb5e1628eb34893 ,'RAYA' ,18)
,(0x46eab6c2f9a300ca815eab8885e3f11e85512843 ,'BGT' ,8)
,(0x9c2fb4b93b762716c935a9d64f8d8b68c7790eaf ,'HDI5' ,18)
,(0xf986a6737d647424cc2d2595b74813a7ad59db70 ,'REVL' ,18)
,(0xfcb5a415c5665a2868e9afc776fb506e127fd373 ,'AHJ' ,18)
,(0xa454e8e11b922871a2eca596a13dcbfab2d364ab ,'METAFORCE' ,18)
,(0xaf030d877aabd76a72d45fa40ddab66de7c7cbb3 ,'EMI' ,18)
,(0xa869c02a0b0107254194f0756b00bd4336179035 ,'OMAR' ,18)
,(0x6d39755127c7ba1a8e84451164c490b24467ba6e ,'STR' ,18)
,(0xe97a60f5d34da4f68bc1f1b9ce2c19ec1a33e928 ,'HGH' ,18)
,(0x15881780ad295afc5b385e1dc133b0024dda6389 ,'PBONE' ,18)
,(0x6612e6b288c30f47c99e299163203fdc698ab219 ,'MWG' ,18)
,(0xd78e184c2a02184f33eddb047db9af6710c80c42 ,'ALMR' ,18)
,(0x535a6a3033f5c8ca64f1103d85937870be7696a0 ,'NIIJII' ,18)
,(0x146e58d34eab0bff7e0a63cfe9332908d680c667 ,'PDDOLLAR' ,18)
,(0xc4c341148cf121f1fa962fca211b0057e0eb7d41 ,'APLX' ,8)
,(0x18aeefecdafe2297c2c431ca0c8e7e877def35a9 ,'Coin' ,18)
,(0xd3b02fdfd547aa60e1b4889fcdd60d2bc96af7f1 ,'SLP' ,18)
,(0x0833dfd43e5f97706c3aa39b76f2676eb7a7ded8 ,'BSL' ,18)
,(0xe4c0bde15b5de200f2ab0b6be96066889ffb3f70 ,'PPP' ,8)
,(0xd6d0944ceaac33bc0aafffbaecc6673aec85ea3d ,'CR7' ,18)
,(0x558c7f320ffc3064865bea361141ac1d2d1cb7a1 ,'AAB' ,18)
,(0xac3d037305f494810a0e783fcd81689bad7f189f ,'PEPEHLD' ,18)
,(0xd58347d02d0a8ffcd6c601e61ccce7afc2f1a0b3 ,'$DUCK' , 18)
,(0xb155547779fbd8f7d43589e5eeb20aa6005abecf ,'PEC' ,18)
,(0x7ae5c4374554a8e77cd63c4251ee66b15d14da48 ,'CTM Token' ,18)
,(0xad0a7bf494428d4f0cd6d8f46bc7e7a3c7338056 ,'ECGW' ,8)
,(0x797cf828cdbe044c0fd6425c553172de6f237de7 ,'QEX' ,8)
,(0x3cb3c4481db1e61bb64d394529cb20dcc29e7cc2 ,'TEST4' ,18)
,(0x3f0ed4324052196930bbee42746c63a6cffb5a20 ,'Halo' ,18)
,(0x1248fa425de2347171735f329ff007187b366a7e ,'CLG' ,18)
,(0xcbafa2eb83576b21205d8ee1ffbdedf1ad103ce5 ,'HDI4' ,18)
,(0x73b326ecfc3b3c2754ec9d605354740d18c533d9 ,'CHM' ,18)
,(0xfdbebb95c975bcff32be1f91ebc9f65151d93edf ,'BWF' ,18)
,(0x5cd68bc94832a8204af154e12b32d0e0f0a7e7ab ,'TEST3' ,18)
,(0x59566f90e7fc096eab985f5233c55989433d2acf ,'BAMBOO' ,18)
,(0x96da121769d7ae4420ed1d6ab6fbea0189d5f5b5 ,'SASIN' ,18)
,(0x4193103fbd8ebdd4f50acc37e024037e0a2392f9 ,'AIWORDS' ,18)
,(0x0b45a69529d327ab1348356fa4b455bfd4c2b5e9 ,'test' ,9)
,(0x18b948ea6ad833e9395784226fa63d015f7b1810 ,'DERIM' ,18)
,(0x3d10b3dfd34a42dd82ef1f23f5f43f8cf2dd57cd ,'TEST2' ,18)
,(0xd62bbd0d1e0ac31dc45f780cdf2046c4804e6aa8 ,'PML' ,18)
,(0x9a226f274de882c2cfcdd2ad1e1ae785864ce64e ,'LIUX' ,9)
,(0x602af0582335ee2fe11124a2e5bc13e7fb05323e ,'test' ,9)
,(0xe2af94140ccb54e02c06b6a1e593a7d140ff1b91 ,'test' ,9)
,(0x6b020f56398e3f4c9779ffffa35942dfa4f1783f ,'test' ,9)
,(0xc5ab1340e83a8160beee00742177d126d4fa3878 ,'test' ,9)
,(0x4d8be0203962716f7e92484ddbee3af2b503972f ,'test' ,9)
,(0xe2995c68a67202d4b5aa01b01c6b4bf319b49d43 ,'SS' ,9)
,(0x30e1cd47b5cbc7568c3339c7b288098be467f662 ,'SBx' ,18)
,(0xa8318cb82cd01ed1b552ce03ea7099900178355f ,'XHELLOWORLD' ,18)
,(0xd838290e877e0188a4a44700463419ed96c16107 ,'NCT' ,18)
,(0x9715a23d25399ef10d819e4999689de3d14eb7e2 ,'AAVE' ,2)
,(0xd1179e3117edfdcb0f826d4287cc8444c5c8fb4d ,'THIX' ,18)
,(0x3ad736904e9e65189c3000c7dd2c8ac8bb7cd4e3 ,'MATICx' ,18)
,(0xec482de9569a5ea3dd9779039b79e53f15791fde ,'REGEN' ,6)
,(0xf9fd0e28eb98b02afbf25b5fcc6e7346162ca5d6 ,'DOH' ,18)
,(0x913d3da68394eeafc22f5bd43407f2d1d7cfa172 ,'BDC' ,18)
,(0x3d23038a15d2186a4467f9647482994792eb401c ,'ZINGOT' ,18)
,(0x19a935cbaaa4099072479d521962588d7857d717 ,'LitCoin' ,18)
,(0x28b36e348d6fc2160172c4e6759472e003db04a5 ,'BellaFi' ,18)
,(0x3f1f0ee83a0042a691cdf99e9f7d985da89ed6a4 ,'AmeX' ,8)
,(0xd9503c336512120aa6834ab5d9258a32940bb2c6 ,'AAVE' ,2)
,(0x11d9efdf4ab4a3bfabf5c7089f56aa4f059aa14c ,'BREAD' ,18)
,(0x99b3f992c66123a73107f290ee86e04a2aa4cb89 ,'TRS' ,18)
,(0xa0826c84468d67e3f72621de012dda8558c3f833 ,'SHIBA' ,18)
,(0x76973Ba2AFF24F87fFE41FDBfD15308dEBB8f7E8, 'tigUSD', 18)
,(0xA5577D1cec2583058A6Bd6d5DEAC44797c205701, 'DEV', 18)
,(0x40379a439D4F6795B6fc9aa5687dB461677A2dBa, 'USDR', 9)
,(0x00e8c0E92eB3Ad88189E7125Ec8825eDc03Ab265, 'wUSDR', 9)
,(0x8505b9d2254a7ae468c0e9dd10ccea3a837aef5c, 'COMP', 18)
,(0x3d93f3bc2cb79c31b4df652cd332d84d16317889, 'GIT', 18)
,(0x8765f05adce126d70bcdf1b0a48db573316662eb, 'PLA', 18)
,(0x16eccfdbb4ee1a85a33f3a9b21175cd7ae753db4, 'ROUTE', 18)
,(0x1b815d120b3ef02039ee11dc2d33de7aa4a8c603, 'WOO', 18)
,(0xed755dba6ec1eb520076cec051a582a6d81a8253, 'CHAMP', 18)
,(0x1ed02954d60ba14e26c230eec40cbac55fa3aeea, 'MAKERX', 18)
,(0xa353deb6fb81df3844d8bd614d33d040fdbb8188, 'MST', 18)
,(0x86775d0b80b3df266af5377db34ba8f318d715ec, 'XEND', 18)
,(0xaa9654becca45b5bdfa5ac646c939c62b527d394, 'DINO', 18)
,(0xdf9b4b57865b403e08c85568442f95c26b7896b0, 'SFF', 18)
,(0x50b728d8d964fd00c2d0aad81718b71311fef68a, 'SNX', 18)
,(0x5fe2b58c013d7601147dcdd68c143a77499f5531, 'GRT', 18)
,(0xaaa5b9e6c589642f98a1cda99b9d024b8407285a, 'IRON', 18)
,(0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590, 'STG', 18)
,(0x9d9f8a6a6ad70d5670b7b5ca2042c7e106e2fb78, 'TRUEHN', 18)
,(0x456f931298065b1852647de005dd27227146d8b9, 'VAL', 18)
,(0x3c499c542cEF5E3811e1192ce70d8cC03d5c3359, 'USDC', 6)
,(0x8368d401732a1b2a63b2183c5dbbe657107953a5, 'NLT', 18)
,(0xb0897686c545045afc77cf20ec7a532e3120e0f1, 'LINK', 18)
,(0x94d9b0506d9acecea7da59bebe1f6b59a48dbe78, 'PSFT', 18)
,(0xb4c5d19c0bfea009c94b5b4a402280a4840b6ffe, 'ELK', 18)
,(0xA63b19647787Da652D0826424460D1BBf43Bf9c6, 'bwAJNA', 18)
,(0xf33687811f3ad0cd6b48dd4b39f9f977bd7165a2, 'truMATIC', 18)
,(0xfcbb00df1d663eee58123946a30ab2138bf9eb2a, 'csMATIC', 18)
) AS temp_table (contract_address, symbol, decimals)
