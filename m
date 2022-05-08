Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDE8BC433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Wel8bxUNZCeoAWBr6p9ZG0OfbTc2wmzseY5cFT8FRw=; b=2xtig8Usi4MEoo
	IOzG9QCYKnNfN5BMQmPGPzxBxMchl4y4SP/TCBiiJbb8/zXgEFBJbsg+/NtXDaNypDNf60HccvoYu
	IkQf6tRE7wORbcusvUR3L4FWJoAkEZO21uO8NVaisxNsDJNDEIpHv7mIF6l1jt3Xis2IQoAphLui2
	bGMKYVrF0O9mViUWbgJSpfKKffpHwKQGsQdXfyPrSpzFiNZsrdEkvjfIp4cGKDm2YzdAn+7XpD7fC
	PUY4Nvape1+6v8cm+48DXKAEVcLAN8xiQOuQnuT32Pk+iBqncW5kYRNcQXZb9cAqwp03v/CY8sAIq
	tm0mYiQ3tEtABH0CxjHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnXS-00BMrU-Bf; Sun, 08 May 2022 20:29:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnnW6-00BLwj-Gq
 for linux-rockchip@bombadil.infradead.org; Sun, 08 May 2022 20:28:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=6pTbLIs8HmRuUEZw2l8zof3evoZumgxq0qJ8FLEkt80=; b=JF9hEOfklKrLe/8JqA67X2kOKz
 xfhZ6XLyB9Vxs/O79Ka5vP5abp19Cwgpf3uiFVl/s6cORHA9xHseI3PIk0q3Q0TPggNGBAllHu+Iw
 /cPiHxFtAexZd0i6/LwTqAU2oTn+eyTLnEqoQfBIT6TuUUp8rBFfddmtHEFt1CijuhPwz+9xk07b5
 /44s6gKGI2ArITtBQi4uB+v7qeR8wP/g93ccWr+OpPdyddtMTpuhEGhBoRDjJm5rv/FOOKtILJjB7
 tKK+sm1QvObt+Jd/qOyPuvQ6/EjTAba7MI+OwckFwEJD0iQbdJ2cguNh4+FruqytLsHOjxVYwgZ20
 IlKpbzuA==;
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8p-00CL63-Px
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:33 +0000
Received: by mail-wm1-x332.google.com with SMTP id
 c190-20020a1c35c7000000b0038e37907b5bso9671797wma.0
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6pTbLIs8HmRuUEZw2l8zof3evoZumgxq0qJ8FLEkt80=;
 b=AiI/bRyGGQ5/bVZfgQzEMkLIuSs9f++QpwoWK8ajWJQyLoYyRNKmnNUNRusfvhaMPm
 +C79Lb8kJLHxTtxkitQ4Ehs1utRSKRQuLoI5J4SJr4NTztv91oJytWO7Lz6IQxBfOY/7
 XoLjug28ig1M7qcSEgyriOerEiSZHF6iXdZIkLO5odeIcQyLrzjy5u84eq/NyGQP43nU
 eyb/4pO75IP6i/JffRZxcWm71bptqXSWshBxxbOXQe75J08KpGndJ72nPr/gi3Z7oTXL
 K3bFnw+ovXz6IWfEEx67PgajJkvctuZahK4jpx26wwh6bJ24XC+eWeiUAlnVuWghFyeH
 O/IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6pTbLIs8HmRuUEZw2l8zof3evoZumgxq0qJ8FLEkt80=;
 b=MB2CJzOBwBcdCe2zmHXzXyFtRH3qk8EHQRESLjqS0k0YsNaxZUjHBkLtMtJ0k1I3DF
 4AJR3tkJFTz36A4TV+rR/9d7hsqExWlY0Oa8EP519e++YWFTj6It0lnz39gRXtRFx8mr
 Dt+mXRE0Ond888U9mRDuwsPtrotpVZuEhne5L4RGztjE1TJD44aMsPW5avxETobGeh2F
 n8vmDEcZEVjfPkkORO0M//GzjRr9gxctifSWVfl1OIETL/HK95zjNzBkWFxSgsJGCWKA
 P4JeUssP1HN3MUXgMK0Pv9NWFGNp+kkw6BXqTvxT3noforkaz/Ke8oJFb4zJHldg1dTK
 k3gA==
X-Gm-Message-State: AOAM530tqrqZcyVileaXbdd5AQ7BMyaMoLmo/Zra0PKzou53u9o8Q3OD
 n+8VB5dB05PbSKGTMYftA1KtYQ==
X-Google-Smtp-Source: ABdhPJyLcjSRqR3zIziehWKJPQwNmj07Np4ulYlfpVKJwGJ4x0wDwI2QFjVRZYVBKTzLVXMZrfiWkg==
X-Received: by 2002:a05:600c:4ecc:b0:394:790d:5f69 with SMTP id
 g12-20020a05600c4ecc00b00394790d5f69mr13209325wmq.196.1652036425929; 
 Sun, 08 May 2022 12:00:25 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:25 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 20/33] crypto: rockchip: rename ablk functions to cipher
Date: Sun,  8 May 2022 18:59:44 +0000
Message-Id: <20220508185957.3629088-21-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_200028_593512_361F31EA 
X-CRM114-Status: GOOD (  10.24  )
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

Some functions have still ablk in their name even if there are
not handling ablk_cipher anymore.
So let's rename them.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 32 +++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 3bdb304aa794..d60c206e717d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -273,7 +273,7 @@ static int rk_des3_ede_cbc_decrypt(struct skcipher_request *req)
 	return rk_handle_req(dev, req);
 }
 
-static void rk_ablk_hw_init(struct rk_crypto_info *dev, struct skcipher_request *req)
+static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_request *req)
 {
 	struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(req);
 	struct crypto_tfm *tfm = crypto_skcipher_tfm(cipher);
@@ -382,7 +382,7 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 			}
 		}
 		err = 0;
-		rk_ablk_hw_init(ctx->dev, areq);
+		rk_cipher_hw_init(ctx->dev, areq);
 		if (ivsize) {
 			if (ivsize == DES_BLOCK_SIZE)
 				memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_IV_0, ivtouse, ivsize);
@@ -448,7 +448,7 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 	return err;
 }
 
-static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
+static int rk_cipher_tfm_init(struct crypto_skcipher *tfm)
 {
 	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
@@ -482,7 +482,7 @@ static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
 	return err;
 }
 
-static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
+static void rk_cipher_tfm_exit(struct crypto_skcipher *tfm)
 {
 	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 
@@ -503,8 +503,8 @@ struct rk_crypto_tmp rk_ecb_aes_alg = {
 		.base.cra_alignmask	= 0x0f,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= AES_MIN_KEY_SIZE,
 		.max_keysize		= AES_MAX_KEY_SIZE,
 		.setkey			= rk_aes_setkey,
@@ -525,8 +525,8 @@ struct rk_crypto_tmp rk_cbc_aes_alg = {
 		.base.cra_alignmask	= 0x0f,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= AES_MIN_KEY_SIZE,
 		.max_keysize		= AES_MAX_KEY_SIZE,
 		.ivsize			= AES_BLOCK_SIZE,
@@ -548,8 +548,8 @@ struct rk_crypto_tmp rk_ecb_des_alg = {
 		.base.cra_alignmask	= 0x07,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= DES_KEY_SIZE,
 		.max_keysize		= DES_KEY_SIZE,
 		.setkey			= rk_des_setkey,
@@ -570,8 +570,8 @@ struct rk_crypto_tmp rk_cbc_des_alg = {
 		.base.cra_alignmask	= 0x07,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= DES_KEY_SIZE,
 		.max_keysize		= DES_KEY_SIZE,
 		.ivsize			= DES_BLOCK_SIZE,
@@ -593,8 +593,8 @@ struct rk_crypto_tmp rk_ecb_des3_ede_alg = {
 		.base.cra_alignmask	= 0x07,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= DES3_EDE_KEY_SIZE,
 		.max_keysize		= DES3_EDE_KEY_SIZE,
 		.setkey			= rk_tdes_setkey,
@@ -615,8 +615,8 @@ struct rk_crypto_tmp rk_cbc_des3_ede_alg = {
 		.base.cra_alignmask	= 0x07,
 		.base.cra_module	= THIS_MODULE,
 
-		.init			= rk_ablk_init_tfm,
-		.exit			= rk_ablk_exit_tfm,
+		.init			= rk_cipher_tfm_init,
+		.exit			= rk_cipher_tfm_exit,
 		.min_keysize		= DES3_EDE_KEY_SIZE,
 		.max_keysize		= DES3_EDE_KEY_SIZE,
 		.ivsize			= DES_BLOCK_SIZE,
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
