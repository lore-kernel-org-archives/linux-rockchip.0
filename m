Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1452C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 19:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OH3qGwAq46ebfe/r+TsDzy4JqlALvPRHAFXq9jY9OSo=; b=XjvoTDY7I3Lq71
	zlFc3TGN0ocDa79HztICJr6QPqefAV97mSi0wIdZEeZNIEVNHGa8Fhx44ZcBMI523WVZRA3EIywak
	Gt8TXBEb2yRryVXEfEuGiHrh/y/VwdgYsxJbwPIWWzCP9RbHjNnpQQu+Ly5hb/XX/M/mj4ab2CdL7
	GKVCAjYsBq4zdiyGawdhtAMjWvJwuBSRXLoijpxq/Qpk4yjgWnQg3RlkcYnnN1uktd4UTHQArfqUK
	MMvXeH2cjSCqrV7OMG92zclqVXT/ygcIbHrQ1HTPBbG/pUU/5KwL8naYm3+diglVNz6ex1sw1/Ycm
	8ttP5jH2BAF542a/SaTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOlvu-00Doow-3J; Mon, 28 Feb 2022 19:43:46 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOlt3-00DnZ5-KS
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 19:40:54 +0000
Received: by mail-wr1-x430.google.com with SMTP id p9so17068573wra.12
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 11:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2h0RJqOHnB/2CxLr1UXSymDo5NhAubmOV1ht0dbXe5E=;
 b=pemdAKlIvt4FhGIn8L+XiVcX3oFmZV0j+oZ57QNQklvz4LwoWBIr0P4YEiS3QNwFPI
 iqIdvxd0K+jg87y6HJLcRj9KBxIj7cXHPO6eGmpQIYEY2DRTu4qw7REpP57CPgGkL30Y
 d1gnOGKkoepljJfI2ZsUQ4MTc0QltlLoejv4ab72eJCELakwnKgLfwlOhXVkY127cFFm
 BkNpQQqNHnvYoBVRmSl7m2IOX2wrDzT9W/PRO1DDj+pDM757tT/4jK8diK1NfezWMPOm
 dgF/Kmb7iXZx+kDN9LhljUv7nK5DOJqIBwVmXB4CYNAAfwY3U1e3/cN1kcYZrPLdWn9A
 ENDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2h0RJqOHnB/2CxLr1UXSymDo5NhAubmOV1ht0dbXe5E=;
 b=xaasi+a3G8vQf+fJ82pxavY3sYJJySYuwI4EW2DtBBOmrO2iE6pTXf1sH3/M0rdO9o
 a/2h3kXqRXUjnJhHB042GaR6XoYZXqxRaib4pFUMAHpxL20/nKrqXZzHuvXJJDjYIhkl
 rJ8f53yAtwhTVkFB96jHBEfSrZ2HgNJ0LFT0gH2WzkdgadRztFEcYTR10POjeWUrE8uC
 5MDpyx2a5RiNvCC2CLr+xEaHqAbpIR5Q9YvtRX5qZ1LPmcFpNTE2sFZHTBjNNa64OV6g
 1lRPemP5Q5Tf1Xut0qMuEYt4ugAcTEuEmG6mTClwIwpzHKoyzxCM7wlgwHX5W2JK68xI
 zGYg==
X-Gm-Message-State: AOAM531TtvyUw8gNj0G+ZR8XCTODc2xWbFxlPkQPz9irMd5FjsKu3MEZ
 FD2BwdlAXicGrs0E7h2v81hLWQ==
X-Google-Smtp-Source: ABdhPJzeauCNnTL2TDz7qrUZSUPNLxqg19fuPsQ+08+sSOkmLYWtMOtIdH6r+j38jbtU4UUP1cHVBw==
X-Received: by 2002:a05:6000:1d83:b0:1ef:f98a:5406 with SMTP id
 bk3-20020a0560001d8300b001eff98a5406mr2124106wrb.8.1646077248069; 
 Mon, 28 Feb 2022 11:40:48 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 11:40:47 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 06/16] crypto: rockchip: add fallback for cipher
Date: Mon, 28 Feb 2022 19:40:27 +0000
Message-Id: <20220228194037.1600509-7-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228194037.1600509-1-clabbe@baylibre.com>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_114049_738647_CF49A444 
X-CRM114-Status: GOOD (  16.74  )
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

The hardware does not handle 0 size length request, let's add a
fallback.
Furthermore fallback will be used for all unaligned case the hardware
cannot handle.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.h       |   2 +
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 100 +++++++++++++++---
 2 files changed, 89 insertions(+), 13 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index c919d9a43a08..8b1e15d8ddc6 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -246,10 +246,12 @@ struct rk_cipher_ctx {
 	struct rk_crypto_info		*dev;
 	unsigned int			keylen;
 	u8				iv[AES_BLOCK_SIZE];
+	struct crypto_skcipher *fallback_tfm;
 };
 
 struct rk_cipher_rctx {
 	u32				mode;
+	struct skcipher_request fallback_req;   // keep at the end
 };
 
 enum alg_type {
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index bbd0bf52bf07..060d52f18b31 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -13,6 +13,63 @@
 
 #define RK_CRYPTO_DEC			BIT(0)
 
+static int rk_cipher_need_fallback(struct skcipher_request *req)
+{
+	struct scatterlist *sgs, *sgd;
+
+	if (!req->cryptlen)
+		return true;
+
+	sgs = req->src;
+	while (sgs) {
+		if (!IS_ALIGNED(sgs->offset, sizeof(u32))) {
+			return true;
+		}
+		if (sgs->length % 16) {
+			return true;
+		}
+		sgs = sg_next(sgs);
+	}
+	sgd = req->dst;
+	while (sgd) {
+		if (!IS_ALIGNED(sgd->offset, sizeof(u32))) {
+			return true;
+		}
+		if (sgd->length % 16) {
+			return true;
+		}
+		sgd = sg_next(sgd);
+	}
+	sgs = req->src;
+	sgd = req->dst;
+	while (sgs && sgd) {
+		if (sgs->length != sgd->length)
+			return true;
+		sgs = sg_next(sgs);
+		sgd = sg_next(sgd);
+	}
+	return false;
+}
+
+static int rk_cipher_fallback(struct skcipher_request *areq)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
+	struct rk_cipher_ctx *op = crypto_skcipher_ctx(tfm);
+	struct rk_cipher_rctx *rctx = skcipher_request_ctx(areq);
+	int err;
+
+	skcipher_request_set_tfm(&rctx->fallback_req, op->fallback_tfm);
+	skcipher_request_set_callback(&rctx->fallback_req, areq->base.flags,
+				      areq->base.complete, areq->base.data);
+	skcipher_request_set_crypt(&rctx->fallback_req, areq->src, areq->dst,
+				   areq->cryptlen, areq->iv);
+	if (rctx->mode & RK_CRYPTO_DEC)
+		err = crypto_skcipher_decrypt(&rctx->fallback_req);
+	else
+		err = crypto_skcipher_encrypt(&rctx->fallback_req);
+	return err;
+}
+
 static void rk_crypto_complete(struct crypto_async_request *base, int err)
 {
 	if (base->complete)
@@ -22,10 +79,10 @@ static void rk_crypto_complete(struct crypto_async_request *base, int err)
 static int rk_handle_req(struct rk_crypto_info *dev,
 			 struct skcipher_request *req)
 {
-	if (!IS_ALIGNED(req->cryptlen, dev->align_size))
-		return -EINVAL;
-	else
-		return dev->enqueue(dev, &req->base);
+	if (rk_cipher_need_fallback(req))
+		return rk_cipher_fallback(req);
+
+	return dev->enqueue(dev, &req->base);
 }
 
 static int rk_aes_setkey(struct crypto_skcipher *cipher,
@@ -39,7 +96,8 @@ static int rk_aes_setkey(struct crypto_skcipher *cipher,
 		return -EINVAL;
 	ctx->keylen = keylen;
 	memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, key, keylen);
-	return 0;
+
+	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
 }
 
 static int rk_des_setkey(struct crypto_skcipher *cipher,
@@ -54,7 +112,8 @@ static int rk_des_setkey(struct crypto_skcipher *cipher,
 
 	ctx->keylen = keylen;
 	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
-	return 0;
+
+	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
 }
 
 static int rk_tdes_setkey(struct crypto_skcipher *cipher,
@@ -69,7 +128,7 @@ static int rk_tdes_setkey(struct crypto_skcipher *cipher,
 
 	ctx->keylen = keylen;
 	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
-	return 0;
+	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
 }
 
 static int rk_aes_ecb_encrypt(struct skcipher_request *req)
@@ -394,6 +453,7 @@ static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
 {
 	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	const char *name = crypto_tfm_alg_name(&tfm->base);
 	struct rk_crypto_tmp *algt;
 
 	algt = container_of(alg, struct rk_crypto_tmp, alg.skcipher);
@@ -407,6 +467,20 @@ static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
 	if (!ctx->dev->addr_vir)
 		return -ENOMEM;
 
+	ctx->fallback_tfm = crypto_alloc_skcipher(name, 0, CRYPTO_ALG_NEED_FALLBACK);
+	if (IS_ERR(ctx->fallback_tfm)) {
+		dev_err(ctx->dev->dev, "ERROR: Cannot allocate fallback for %s %ld\n",
+				name, PTR_ERR(ctx->fallback_tfm));
+		return PTR_ERR(ctx->fallback_tfm);
+	}
+
+	dev_info(ctx->dev->dev, "Fallback for %s is %s\n",
+			crypto_tfm_alg_driver_name(&tfm->base),
+			crypto_tfm_alg_driver_name(crypto_skcipher_tfm(ctx->fallback_tfm)));
+
+	tfm->reqsize = sizeof(struct rk_cipher_rctx) +
+		crypto_skcipher_reqsize(ctx->fallback_tfm);
+
 	return 0;
 }
 
@@ -423,7 +497,7 @@ struct rk_crypto_tmp rk_ecb_aes_alg = {
 		.base.cra_name		= "ecb(aes)",
 		.base.cra_driver_name	= "ecb-aes-rk",
 		.base.cra_priority	= 300,
-		.base.cra_flags		= CRYPTO_ALG_ASYNC,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
 		.base.cra_blocksize	= AES_BLOCK_SIZE,
 		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
 		.base.cra_alignmask	= 0x0f,
@@ -445,7 +519,7 @@ struct rk_crypto_tmp rk_cbc_aes_alg = {
 		.base.cra_name		= "cbc(aes)",
 		.base.cra_driver_name	= "cbc-aes-rk",
 		.base.cra_priority	= 300,
-		.base.cra_flags		= CRYPTO_ALG_ASYNC,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
 		.base.cra_blocksize	= AES_BLOCK_SIZE,
 		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
 		.base.cra_alignmask	= 0x0f,
@@ -468,7 +542,7 @@ struct rk_crypto_tmp rk_ecb_des_alg = {
 		.base.cra_name		= "ecb(des)",
 		.base.cra_driver_name	= "ecb-des-rk",
 		.base.cra_priority	= 300,
-		.base.cra_flags		= CRYPTO_ALG_ASYNC,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
 		.base.cra_blocksize	= DES_BLOCK_SIZE,
 		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
 		.base.cra_alignmask	= 0x07,
@@ -490,7 +564,7 @@ struct rk_crypto_tmp rk_cbc_des_alg = {
 		.base.cra_name		= "cbc(des)",
 		.base.cra_driver_name	= "cbc-des-rk",
 		.base.cra_priority	= 300,
-		.base.cra_flags		= CRYPTO_ALG_ASYNC,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
 		.base.cra_blocksize	= DES_BLOCK_SIZE,
 		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
 		.base.cra_alignmask	= 0x07,
@@ -513,7 +587,7 @@ struct rk_crypto_tmp rk_ecb_des3_ede_alg = {
 		.base.cra_name		= "ecb(des3_ede)",
 		.base.cra_driver_name	= "ecb-des3-ede-rk",
 		.base.cra_priority	= 300,
-		.base.cra_flags		= CRYPTO_ALG_ASYNC,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
 		.base.cra_blocksize	= DES_BLOCK_SIZE,
 		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
 		.base.cra_alignmask	= 0x07,
@@ -535,7 +609,7 @@ struct rk_crypto_tmp rk_cbc_des3_ede_alg = {
 		.base.cra_name		= "cbc(des3_ede)",
 		.base.cra_driver_name	= "cbc-des3-ede-rk",
 		.base.cra_priority	= 300,
-		.base.cra_flags		= CRYPTO_ALG_ASYNC,
+		.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
 		.base.cra_blocksize	= DES_BLOCK_SIZE,
 		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
 		.base.cra_alignmask	= 0x07,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
