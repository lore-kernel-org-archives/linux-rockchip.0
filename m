Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5FEEC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5VM/JMD8DGbLA9bjE1RdCta6LUHjhcp1vIhhfLHUS8=; b=OxnGo4tcaLsYJb
	KgYiSMczoL6oRMTrBecNXCvfI3c1GvlZZJlj76hHpEtbWPIRqYOKJ7xrEUaAyn43X1m1kBIxcs25s
	TyMjncEskPmpSk2yNyxn2taw6Tj5sKSiGQH3jSoBCs+/QRfTOk/JrgjRO8GYHawTUk+nPaTjwzD6B
	2jHSPM90xqHKtGWOV5hqNJAg2dfciXm85kPKieAEj+D1Ar/S7drOPhNPAlrnv6RoyxCMx3WXFU0VP
	0KRygIaTIthPHuz1fW7UuTQ1OBZbHkJDV2wxHK/LqsOj+Q/SwRBFVD2lPLCfW2T62BNQg/QNEO7zt
	v3paZ0oGR2hGbyhuZUsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naODk-007JZX-ND; Fri, 01 Apr 2022 20:50:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naODG-007IwW-Vv
 for linux-rockchip@bombadil.infradead.org; Fri, 01 Apr 2022 20:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=6swuCZEj1H9IhNG3rWy6ySopJSL6Uc0TxbQDyYEwsKg=; b=iT2DfIVHavbGigvJqdRMnARtfw
 SS2dUIwSBxlsUQ5oRlh8dJSTpVDdWW6PSs2Q3XLh+nt4vZegrEi6ib5yi/mFtoahHdL94Al1Y8gyg
 WZF1TmBRNbAnKMlygeOiJKADrA2/GkNSV8r4R5JGv7gCAASS85HpnJ/s6g1W83IDg1sdVT5v4wOPy
 gcQTI1J2YMae3jGHxo8WPhmmvWzwhTYIk7A0RYoK5k8XUbEMRhr7T0RRzfUoz1T151oOZVrYlY8C/
 bXX1catryObGZqF/J/hHG/l6sHjfgp7xQsnaLp8Jc65vmWn5z0rNavm3K8ODTO/l8A69S54YyEBoy
 awNc0pGg==;
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNj1-000f8s-Tf
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:31 +0000
Received: by mail-wr1-x432.google.com with SMTP id i4so5804654wrb.5
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6swuCZEj1H9IhNG3rWy6ySopJSL6Uc0TxbQDyYEwsKg=;
 b=8C3fbPHtza/5r5DTDDDrqPm6SzR5PRyXchIQF339yDpy9jZGj6gueNLC2NpLYZbu8y
 Wjq5eMI7J8X+BVGGjwZo12aUBBejeq8Tb4g5E4QDKTOW9Hj64oh/tqxkLN3SdDzH864P
 9YHdTmixVyU8C1DoecpA7cCbKvW4AV0QtnCyAFaVY53bz6WeXRQiUe4HYWiVLzuAkSMA
 Yq12HPehBT8OeUwqQ5SqrU8PwO00Mk31Ff9DorptyqKyu/RYVmLGvw0bA0i6Q2uZX7n9
 7wZrNUSl7XoWH/uOnc5ZqTmPPI5L54+EHjHDPlNucXbhvnNFGJF015H2UaBHiqlOEbfI
 Xvrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6swuCZEj1H9IhNG3rWy6ySopJSL6Uc0TxbQDyYEwsKg=;
 b=LsV6K8B013axK9u6uNMAMzO9clzd+IDyFIfuoUTCTa03/6CtV8DSJs0qgUsJQdCE4M
 cadNvkVdeWq1xSaVwpKoloUcHKGXx7xb+fIc76OliKbvJnZwuOEZ894uOrD44/QeLufA
 R0IEi+fANSNofqe1ETf36AzBJzwMwOA8xPSMjsUQxK1d9J3kNnIu4NWJJYRsnK26vpXb
 EGQelpdYMNPzJlQvsZWgEnWjsksiKL4kDDtlOmqphJZFOB/wI4IK8zxIEnIpYHMPF0p9
 xBruvHFlIkD6GqunpLFuOAJFSGXcUYBgB+OoP4w07kWcoy5qQurdx8ygLF/UQOldS4DC
 ST+Q==
X-Gm-Message-State: AOAM532rBwyf4j5v1NEsVH4u9anFFCW/z441uDzpKUF6AdS32pkKB3Gu
 f0Czo/XIhgE2ARp84FKHema74A==
X-Google-Smtp-Source: ABdhPJxm8ZRkHhR9rWbyI2Z49YGWfivSKi/w6w2YNPzqFvYzIofiteGHryo/kLviJbYvlwrDpDnx5g==
X-Received: by 2002:adf:d1e5:0:b0:205:85f5:656c with SMTP id
 g5-20020adfd1e5000000b0020585f5656cmr8796129wrd.65.1648844306256; 
 Fri, 01 Apr 2022 13:18:26 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:25 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 21/33] crypto: rockchip: rework rk_handle_req function
Date: Fri,  1 Apr 2022 20:17:52 +0000
Message-Id: <20220401201804.2867154-22-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_211828_798557_C276BADF 
X-CRM114-Status: GOOD (  10.44  )
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

This patch rework the rk_handle_req(), simply removing the
rk_crypto_info parameter.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 68 +++++--------------
 1 file changed, 17 insertions(+), 51 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index c5e7090c77c8..0920b1ae3862 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -92,10 +92,12 @@ static int rk_cipher_fallback(struct skcipher_request *areq)
 	return err;
 }
 
-static int rk_handle_req(struct rk_crypto_info *dev,
-			 struct skcipher_request *req)
+static int rk_cipher_handle_req(struct skcipher_request *req)
 {
-	struct crypto_engine *engine = dev->engine;
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *tctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *rkc = tctx->dev;
+	struct crypto_engine *engine = rkc->engine;
 
 	if (rk_cipher_need_fallback(req))
 		return rk_cipher_fallback(req);
@@ -152,135 +154,99 @@ static int rk_tdes_setkey(struct crypto_skcipher *cipher,
 
 static int rk_aes_ecb_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_AES_ECB_MODE;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_aes_ecb_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_AES_ECB_MODE | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_aes_cbc_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_AES_CBC_MODE;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_aes_cbc_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_AES_CBC_MODE | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des_ecb_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = 0;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des_ecb_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des_cbc_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_CHAINMODE_CBC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des_cbc_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_CHAINMODE_CBC | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des3_ede_ecb_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_SELECT;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des3_ede_ecb_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des3_ede_cbc_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_TDES_CHAINMODE_CBC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des3_ede_cbc_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_TDES_CHAINMODE_CBC |
 		    RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_request *req)
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
