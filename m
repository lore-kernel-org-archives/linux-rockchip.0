Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89FAEC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7YX80Hrn+ca9FlnUAw8O18ajnxyFslQuXhaiHkAbEZc=; b=GYZ1C6P+tU+jnG
	gIqIxmYjmAIwcC5T6W/v90bt7HE4KJxyoXU/+XWOwsJiWQBEZUXeOvKkg52Wok7h9vptaTPq4dd7Z
	3SU5RiBdhNm7R8oDacpYpqAphRD79p7HrKFopF44W8Yb7SuxKOnfy8zsmO2GsTjFOSn1nNyyOWQN6
	DrwqeYMibwfxMKcXpYHuORQ6zA1aW9BUjUTC2qPmFw3Yl2/NUlHqmbWJH/pdPPnrQiHTVMlKnRFoL
	NUQ0Vpq+52W70Rt/zfl+h1608rf3P9lgDZbnwvGEKfIBXZiRNcI1hWULwouOb71j1PfxMd8Sj0Jai
	2P1LY3xxt6uMU0OlgV2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnndy-00BQpD-Ll; Sun, 08 May 2022 20:36:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnnWK-00BLwj-GU
 for linux-rockchip@bombadil.infradead.org; Sun, 08 May 2022 20:28:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=yeUZDJTIsCts00Fep9NY/D3Rc1u7GLFRGKGWO5X+Gz0=; b=NtaPqa6/KxX0LaracLbdS6p9AN
 tZ2TRwp2FpCY1520YxYiTd8H1RdTdhR0mCt3heuHU5vL5KyqxbGTbIAXsCOyAvp9T3E/RvyEpAYdJ
 Zzm607qYe44kQYF42yEwsVVCUTQpk7u+Av9iSPz4YJulnRReQ5HKwDdBsymKnIFKT3XHKkPvrx+V7
 D7Jp0G0cV3jFEpu8Qh93Km3NikkRHCmv6KR52OUhbECws+o9+7AN07LG9Yi+vSgWIcLxuKJ87hXVz
 rRQUFZ1n3R7RVEFP1es+1wMo5wjEDI2TksYOJoX6fmIcnA9DmSj1Dno9lq2bZ2KaSa6CIixGDdPhP
 lzb9v8WQ==;
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8g-00CL2z-2Q
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:23 +0000
Received: by mail-wr1-x42c.google.com with SMTP id u3so16720126wrg.3
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yeUZDJTIsCts00Fep9NY/D3Rc1u7GLFRGKGWO5X+Gz0=;
 b=PFpEAhrEsSgxCxdBRtZvPg4Ik2WX9HgkXMHjzp2MMVJ+Tnqps5FWILSb9BZXWDQz1I
 7VWfjPcCxXK9tEUkewy3kLm7psC8vW0UxByjmUVXY14UJsPDnS6hncoyAPDxJV7MI0GT
 44BvbzDIEFZQvaXReYQaMi3zDPPztJsNoywqnjKM9ns2nukLhH1FI89ojDCFnlKOU2Sh
 c0ah23DXYM9fHfKc0GPmvAry0UGNSt7vYrtHD9XiOAKuSc5sX4RGYrvMWtJ/QSpmWifq
 G9KKjDV3q80NiB+bxpf+ql75SzWV/jkKgwytNoAiQDpPqm/z9MZIWjxyl/lqJIcPYQp/
 XHMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yeUZDJTIsCts00Fep9NY/D3Rc1u7GLFRGKGWO5X+Gz0=;
 b=f+vuCe/nSXg9mFnpmUnFHBvZ2Mvp/MUsl/a2nk1SIzmM0GzlUJWfOqON4TbCVF0H33
 wGQR0BlT9Ga/9CCxghz2I5P5XxJmRhtV+Pk2zgsUAkuXzIvIIZYEPM9H4ll1M6BTY2Vk
 8UufrAfmxykqBZXT3bHulzWBQpB8jytcIK0+FxiIC3xeE6+FeF3/taJoF3bb3thGUO35
 6nDyg8bk0OU5TWSQiIaRj9wxN2Y51BXDS0TDHplyZudA5hBgzPeABY5cWdPlBrcivp8v
 fBTNUa77WRWKMYLtmJC344EbV3+9JW9Bd+7/JbB934Pfzs15rlRibP00ETvsCv8mORmf
 AE3Q==
X-Gm-Message-State: AOAM532oecqFvpm3lY8+DuhwFBAtY2D2pruR7971TUTT7VuX9IZPDz9Q
 Rle/bnkBxTawZAlq2J54nVDUfw==
X-Google-Smtp-Source: ABdhPJySPh54nBg5LytCDBwIS4Nb6Sht8W/RBlHTn0aXOuBFb85yFCIoTIvR4qpVn4Rts/dEcgCR5A==
X-Received: by 2002:a5d:414a:0:b0:20a:d5f9:8b62 with SMTP id
 c10-20020a5d414a000000b0020ad5f98b62mr11229469wrq.492.1652036416609; 
 Sun, 08 May 2022 12:00:16 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:16 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 11/33] crypto: rockchip: rewrite type
Date: Sun,  8 May 2022 18:59:35 +0000
Message-Id: <20220508185957.3629088-12-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_200018_349300_15232D35 
X-CRM114-Status: GOOD (  14.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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
