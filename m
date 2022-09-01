Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E08FBECAAD1
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 14:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bul191y5Jj4ONLFkwiR2QDNCCkvMXgoXLV6wkEQ5tA=; b=ezo8/0oyNDyGRZ
	SZCw8nlEeo8WBu7RrG2zFrna6skkxc5SJRcShxnzZZER4WJusIHMIAzZhtwVjfOHAv188M5azmcTj
	1dyYWgsf/c1Ob8//CUXLgc4x6a29haDK/HQ9/1/QjBobOEkBxvbGxXzgnCd2qMpH6qsa8zfPhvmvZ
	wxexRwVjxIEtgNb4VaNacGtDHZJ0k1PhWRxLkEBkn2cyCni0MWg/QG/W5YqtxXHyNa1+KZzdaIg/V
	YaIKRyLXnuk3BeQhTAVfLJZ2UP717BvoQazlBsfLe3MzP2at/FGoEb5WSgbOvTU9gcXfgAVQbM3jz
	RJ0bg+8Q565fBimdLnCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkqi-00CL4H-UL; Thu, 01 Sep 2022 14:07:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkn4-00CIuS-FX
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 14:03:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8+zNu8By2wCTRIvE0cQTAVxjDoLu9Skp/kq6mTlEw+Q=; b=aci/uzf0B5T+7p2oEjwxlA3FTf
	xfa9s1OzZ6xvR96hpzmRDTfqSuGLwO3ALnBJjFX6B4CKKSzv8MNETGYNBw4GyMfF4HUUzUookLD8n
	DBu7lD39WJvJbzeHGTXGzeAwjBASrf/fXS1wKqBu3u8LSPL2OZubjUGwHF6++Qrzr9rdJtgg5JjQh
	kdYYB9i1eQ2HuhKjT72toOQSaZaD5fz2aTpUn2p8wdzMG3Y+xCxfBYjNwtSzrB04MzeTJOQ6Nboln
	NfChyAKo40FUKUoH+luO0+0qy83pHOtNf4GVsTTBIkTLTCPZivQAVQlg50neS9lLIDunL4EzrSB3c
	lgAdXJ1A==;
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlC-008P1F-2m
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:36 +0000
Received: by mail-wr1-x42e.google.com with SMTP id b16so14625988wru.7
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=8+zNu8By2wCTRIvE0cQTAVxjDoLu9Skp/kq6mTlEw+Q=;
        b=p8a5KvRCONLhmu6zby6kEv4aKsIiBM7aaxU2uTFFpJQedjHQY+APNBLXnPCdLD8+aV
         wHPl8hJRdiDlQCDNbZefKDwaqhEkNOYNvoG7tN7xO8kynv8Zwb3y9QwlOjl1UMRAt2iM
         6i/goxZ6s+Odu6IPyxfPMbpExNd/jPHl2rAnzl2beGZDPtIMPH8eZKCaGyxVc977NNxa
         Z4nvFwiMdvvtf3IG9AsOBtkSCDilYA/hXrWmTp6lPRW7H+gji9GLzKdWhvBTSofiCs4M
         Pbp1WTNDvdEuI/irO0e1htfir2wRaHhSLCHfg57m0R6FAnQvO23czPghjNwMFkBS0gWD
         Clbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=8+zNu8By2wCTRIvE0cQTAVxjDoLu9Skp/kq6mTlEw+Q=;
        b=q2tQWgtJkYl7U7T7fJd03xeR/TrJt+rw1vvMDkK49OFifhD5UNX+RH90h59qc1DEjf
         iW//vRVH+ZlsnMO+rDaK9HD0Ee6sYhGBCTIdibgDODV084h4SLydsSvar0j41AVckiw4
         AaygSfFR9Jtb+O6Css9HEUaJw171y5OjRogl/avw8iOvTDnV8NwgWP4sL8CE/FWVevQn
         uiBTpbUl51XTp9vmzAzUtWWMa6l7p2csaUUrM3G22EwDC9M+nBqQMTiug+TwcPpUQW1w
         3AorGDVUAYo9ahH/IerN5nyVB+UAbdanVK7fFWELogP4mb11MbvFHtJKlClQuGjtBpox
         vtDQ==
X-Gm-Message-State: ACgBeo3YIhSoFEoMkmEB1pMjxrv3FWjw3NCUznwQrh/73kob6UHKfJTY
	DPR9nb1thu6LMe7V1JpUnpC1GA==
X-Google-Smtp-Source: AA6agR6SUD1EDxEW3Vq1Epp8cElLMHgoapxAOByE3s44UA3hCev8yaZFTAmSEucphAao1zvftq5AWw==
X-Received: by 2002:a5d:6d88:0:b0:222:c8e2:f5fb with SMTP id l8-20020a5d6d88000000b00222c8e2f5fbmr15173567wrs.35.1662037048187;
        Thu, 01 Sep 2022 05:57:28 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:27 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	ardb@kernel.org,
	davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v9 11/33] crypto: rockchip: rewrite type
Date: Thu,  1 Sep 2022 12:56:48 +0000
Message-Id: <20220901125710.3733083-12-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135730_226782_8C0DD668 
X-CRM114-Status: GOOD (  15.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Instead of using a custom type for classify algorithms, let's just use
already defined ones.
And let's made a bit more verbose about what is registered.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c       | 26 +++++++++++++------
 drivers/crypto/rockchip/rk3288_crypto.h       |  7 +----
 drivers/crypto/rockchip/rk3288_crypto_ahash.c |  6 ++---
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 12 ++++-----
 4 files changed, 28 insertions(+), 23 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 1afb65eee6c9..8f9664acc78d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -102,12 +102,22 @@ static int rk_crypto_register(struct rk_crypto_info *crypto_info)
 
 	for (i = 0; i < ARRAY_SIZE(rk_cipher_algs); i++) {
 		rk_cipher_algs[i]->dev = crypto_info;
-		if (rk_cipher_algs[i]->type == ALG_TYPE_CIPHER)
-			err = crypto_register_skcipher(
-					&rk_cipher_algs[i]->alg.skcipher);
-		else
-			err = crypto_register_ahash(
-					&rk_cipher_algs[i]->alg.hash);
+		switch (rk_cipher_algs[i]->type) {
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			dev_info(crypto_info->dev, "Register %s as %s\n",
+				 rk_cipher_algs[i]->alg.skcipher.base.cra_name,
+				 rk_cipher_algs[i]->alg.skcipher.base.cra_driver_name);
+			err = crypto_register_skcipher(&rk_cipher_algs[i]->alg.skcipher);
+			break;
+		case CRYPTO_ALG_TYPE_AHASH:
+			dev_info(crypto_info->dev, "Register %s as %s\n",
+				 rk_cipher_algs[i]->alg.hash.halg.base.cra_name,
+				 rk_cipher_algs[i]->alg.hash.halg.base.cra_driver_name);
+			err = crypto_register_ahash(&rk_cipher_algs[i]->alg.hash);
+			break;
+		default:
+			dev_err(crypto_info->dev, "unknown algorithm\n");
+		}
 		if (err)
 			goto err_cipher_algs;
 	}
@@ -115,7 +125,7 @@ static int rk_crypto_register(struct rk_crypto_info *crypto_info)
 
 err_cipher_algs:
 	for (k = 0; k < i; k++) {
-		if (rk_cipher_algs[i]->type == ALG_TYPE_CIPHER)
+		if (rk_cipher_algs[i]->type == CRYPTO_ALG_TYPE_SKCIPHER)
 			crypto_unregister_skcipher(&rk_cipher_algs[k]->alg.skcipher);
 		else
 			crypto_unregister_ahash(&rk_cipher_algs[i]->alg.hash);
@@ -128,7 +138,7 @@ static void rk_crypto_unregister(void)
 	unsigned int i;
 
 	for (i = 0; i < ARRAY_SIZE(rk_cipher_algs); i++) {
-		if (rk_cipher_algs[i]->type == ALG_TYPE_CIPHER)
+		if (rk_cipher_algs[i]->type == CRYPTO_ALG_TYPE_SKCIPHER)
 			crypto_unregister_skcipher(&rk_cipher_algs[i]->alg.skcipher);
 		else
 			crypto_unregister_ahash(&rk_cipher_algs[i]->alg.hash);
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 65ed645e0168..d924ea17402a 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -232,18 +232,13 @@ struct rk_cipher_rctx {
 	struct skcipher_request fallback_req;   // keep at the end
 };
 
-enum alg_type {
-	ALG_TYPE_HASH,
-	ALG_TYPE_CIPHER,
-};
-
 struct rk_crypto_tmp {
+	u32 type;
 	struct rk_crypto_info		*dev;
 	union {
 		struct skcipher_alg	skcipher;
 		struct ahash_alg	hash;
 	} alg;
-	enum alg_type			type;
 };
 
 extern struct rk_crypto_tmp rk_ecb_aes_alg;
diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index edd40e16a3f0..d08e2438d356 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -352,7 +352,7 @@ static void rk_cra_hash_exit(struct crypto_tfm *tfm)
 }
 
 struct rk_crypto_tmp rk_ahash_sha1 = {
-	.type = ALG_TYPE_HASH,
+	.type = CRYPTO_ALG_TYPE_AHASH,
 	.alg.hash = {
 		.init = rk_ahash_init,
 		.update = rk_ahash_update,
@@ -382,7 +382,7 @@ struct rk_crypto_tmp rk_ahash_sha1 = {
 };
 
 struct rk_crypto_tmp rk_ahash_sha256 = {
-	.type = ALG_TYPE_HASH,
+	.type = CRYPTO_ALG_TYPE_AHASH,
 	.alg.hash = {
 		.init = rk_ahash_init,
 		.update = rk_ahash_update,
@@ -412,7 +412,7 @@ struct rk_crypto_tmp rk_ahash_sha256 = {
 };
 
 struct rk_crypto_tmp rk_ahash_md5 = {
-	.type = ALG_TYPE_HASH,
+	.type = CRYPTO_ALG_TYPE_AHASH,
 	.alg.hash = {
 		.init = rk_ahash_init,
 		.update = rk_ahash_update,
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 67a7e05d5ae3..1ed297f5d809 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -468,7 +468,7 @@ static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
 }
 
 struct rk_crypto_tmp rk_ecb_aes_alg = {
-	.type = ALG_TYPE_CIPHER,
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
 	.alg.skcipher = {
 		.base.cra_name		= "ecb(aes)",
 		.base.cra_driver_name	= "ecb-aes-rk",
@@ -490,7 +490,7 @@ struct rk_crypto_tmp rk_ecb_aes_alg = {
 };
 
 struct rk_crypto_tmp rk_cbc_aes_alg = {
-	.type = ALG_TYPE_CIPHER,
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
 	.alg.skcipher = {
 		.base.cra_name		= "cbc(aes)",
 		.base.cra_driver_name	= "cbc-aes-rk",
@@ -513,7 +513,7 @@ struct rk_crypto_tmp rk_cbc_aes_alg = {
 };
 
 struct rk_crypto_tmp rk_ecb_des_alg = {
-	.type = ALG_TYPE_CIPHER,
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
 	.alg.skcipher = {
 		.base.cra_name		= "ecb(des)",
 		.base.cra_driver_name	= "ecb-des-rk",
@@ -535,7 +535,7 @@ struct rk_crypto_tmp rk_ecb_des_alg = {
 };
 
 struct rk_crypto_tmp rk_cbc_des_alg = {
-	.type = ALG_TYPE_CIPHER,
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
 	.alg.skcipher = {
 		.base.cra_name		= "cbc(des)",
 		.base.cra_driver_name	= "cbc-des-rk",
@@ -558,7 +558,7 @@ struct rk_crypto_tmp rk_cbc_des_alg = {
 };
 
 struct rk_crypto_tmp rk_ecb_des3_ede_alg = {
-	.type = ALG_TYPE_CIPHER,
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
 	.alg.skcipher = {
 		.base.cra_name		= "ecb(des3_ede)",
 		.base.cra_driver_name	= "ecb-des3-ede-rk",
@@ -580,7 +580,7 @@ struct rk_crypto_tmp rk_ecb_des3_ede_alg = {
 };
 
 struct rk_crypto_tmp rk_cbc_des3_ede_alg = {
-	.type = ALG_TYPE_CIPHER,
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
 	.alg.skcipher = {
 		.base.cra_name		= "cbc(des3_ede)",
 		.base.cra_driver_name	= "cbc-des3-ede-rk",
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
