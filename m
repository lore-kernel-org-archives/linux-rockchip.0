Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7A4DC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=br+uZG4aj8CPR33Ld/ERFImYRe47BjEQqkF0a6921D4=; b=m3O4aYWOYf3OwF
	S4weKWIKN02tBAlsbbarYLfSUnvZHnw2DADv64HnjlYrFA+zkw3f/JneZj/nAI8NB8vCUTkiny7cs
	ef7HoGS72p4PDjQrjz6/gRU2a144kNXV6QVUVzNWD4x/xynvRqSO/cCHZ3Mo7lMUPxAlsQ3EZXRe0
	heWQ2jdBgbe5xxyJjyn6aZMKYYlETGW6J7gk+XXn5ifJsW1GNeZL3dwNU7aIclWaMvYvgy8FnXSuX
	JxSRd8Uz5IFe96F6jDLolfygAszUkSuaWLA8ZfrTAdSbbK5MiJsFNta0clWmh5udDAXIgjrfBU/Rr
	AEZKVigDoRqXPwcP88+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnWG-00BMEe-JD; Sun, 08 May 2022 20:28:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnnW1-00BLwj-UB
 for linux-rockchip@bombadil.infradead.org; Sun, 08 May 2022 20:28:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=YTCwVt48y9KJqKpi4AoXVBEGpD4ZzF22SRLhTWJSe6w=; b=K1hZt3RsFJ8SFgs51+IIE5YuG3
 17RpCWEOcVOeAMTTo9Qh9cMbdR/Ff0CJxXn31/0wC9qRI4tXamEVt7IKRZa5Q4DeF2ibEt7QQYKQ1
 eJOsGE/W7jwectSzJvZmWpXO4RuiPvjU8DX1iN95yBDMpB6cdqLChMvU7nCq64ZOEPq1OWB6ktnst
 xTUhJpPX10K1fyV0MJw7aStdvoNZ0pI9kqALCf5wkeNwXpja7gtEkcUSiXJgDK2lcb4/ZSmL7quHe
 AFTkSwyz90hYGQFD/LGopmjaqJovI+Dunjnl9gICp9LZZSBL7iMIacrlUQGQG6P7l2AEJ2VwCvcOs
 8oa3U6Qw==;
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8y-00CL4Y-9n
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:38 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 129so7293790wmz.0
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YTCwVt48y9KJqKpi4AoXVBEGpD4ZzF22SRLhTWJSe6w=;
 b=TMmv4XFZk1khUdnedp7XBp2sM6RydAts7Y3RWxmEIYAcKkj0l+Zp6croV126otdRrn
 Y8Dnntej1mkGiKFAS3XXPUWEZgovL+L6iGbvRg7zoLWPF9Ycs3lJd6JcdQY1SWUBqVpS
 1P4ZSGpT2gyOkAOOc06A/ZChA67tI2RmcNYJwt9ykxBlsnKdlbAFWIlanCxB7Qbkwah+
 dxzXWX1RG2u3Z+wlrKLRTZQcgNf1+iBf1hUBK8Er7HVVrby/ANaRvX/An0Pt+hGAAJVR
 NsT3KVXDTveea8J7m5l+9Ou4u3UhbXEeAWiLMoAFUPqxju8uWV/HUPN6Gsf2k+8vhRE4
 GhBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YTCwVt48y9KJqKpi4AoXVBEGpD4ZzF22SRLhTWJSe6w=;
 b=7OIb0beO1KFmgDEZ75qZywQ1+z9l+i9eFMrlsot6w5LnExFI/hQbqR2vsAEl9FZzOG
 GCzlpEMXEM+Ng76bXcIj0ratQT/vw+j5AAfJGOalN6aeSkW5DhGWJsLRhV9wlCwwzv0b
 T+N+H7fjaHgrnBGuD9oKvlkVGNIt95M9AAMcKd029hGD9bo6XrTcqleWg4d/1ELY/CSX
 1zPsnwMGYIiM75THJpTlz47VsvcCd5348XSKtA4TeiOmm8X36LoK5KL4gvFkk1GPIu24
 5H0t4cX5Sig+o24UTQcsd3dxQR3mgC1T3VU38KDHajh30wtaar1lMdLzQPhmPqMmJ8hE
 +5YQ==
X-Gm-Message-State: AOAM530LwiTDaupkhbx5UsiTET7HBrLnFdvpcKQCswa7HMJA+ZT48u5S
 AxkCqMhIyGGGDNKjwSgVAlSzCA==
X-Google-Smtp-Source: ABdhPJwWay0Nn3PVTCw6HqF8pWCKGdfjjEfJEVPC+ABHWWTO8o1k4z48HSy8Ar7X3JOs3QoQDWtzcA==
X-Received: by 2002:a1c:4d0d:0:b0:394:4de:539 with SMTP id
 o13-20020a1c4d0d000000b0039404de0539mr18829064wmh.124.1652036435746; 
 Sun, 08 May 2022 12:00:35 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:35 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 29/33] crypto: rockchip: store crypto_info in request
 context
Date: Sun,  8 May 2022 18:59:53 +0000
Message-Id: <20220508185957.3629088-30-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_200036_943322_3BA2BE44 
X-CRM114-Status: GOOD (  13.86  )
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

The crypto_info to use must be stored in the request context.
This will help when 2 crypto_info will be available on rk3399.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.h          |  2 ++
 drivers/crypto/rockchip/rk3288_crypto_ahash.c    | 14 ++++++--------
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c |  6 ++++--
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 28bf09fe1c1d..ff9fc25972eb 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -215,6 +215,7 @@ struct rk_ahash_ctx {
 
 /* the private variable of hash for fallback */
 struct rk_ahash_rctx {
+	struct rk_crypto_info		*dev;
 	struct ahash_request		fallback_req;
 	u32				mode;
 	int nrsg;
@@ -231,6 +232,7 @@ struct rk_cipher_ctx {
 };
 
 struct rk_cipher_rctx {
+	struct rk_crypto_info		*dev;
 	u8 backup_iv[AES_BLOCK_SIZE];
 	u32				mode;
 	struct skcipher_request fallback_req;   // keep at the end
diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 636dbcde0ca3..d1bf68cb390d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -200,6 +200,7 @@ static int rk_ahash_export(struct ahash_request *req, void *out)
 
 static int rk_ahash_digest(struct ahash_request *req)
 {
+	struct rk_ahash_rctx *rctx = ahash_request_ctx(req);
 	struct rk_ahash_ctx *tctx = crypto_tfm_ctx(req->base.tfm);
 	struct rk_crypto_info *dev = tctx->dev;
 
@@ -209,6 +210,8 @@ static int rk_ahash_digest(struct ahash_request *req)
 	if (!req->nbytes)
 		return zero_message_process(req);
 
+	rctx->dev = dev;
+
 	return crypto_transfer_hash_request_to_engine(dev->engine, req);
 }
 
@@ -223,10 +226,8 @@ static void crypto_ahash_dma_start(struct rk_crypto_info *dev, struct scatterlis
 static int rk_hash_prepare(struct crypto_engine *engine, void *breq)
 {
 	struct ahash_request *areq = container_of(breq, struct ahash_request, base);
-	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
 	struct rk_ahash_rctx *rctx = ahash_request_ctx(areq);
-	struct rk_ahash_ctx *tctx = crypto_ahash_ctx(tfm);
-	struct rk_crypto_info *rkc = tctx->dev;
+	struct rk_crypto_info *rkc = rctx->dev;
 	int ret;
 
 	ret = dma_map_sg(rkc->dev, areq->src, sg_nents(areq->src), DMA_TO_DEVICE);
@@ -241,10 +242,8 @@ static int rk_hash_prepare(struct crypto_engine *engine, void *breq)
 static int rk_hash_unprepare(struct crypto_engine *engine, void *breq)
 {
 	struct ahash_request *areq = container_of(breq, struct ahash_request, base);
-	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
 	struct rk_ahash_rctx *rctx = ahash_request_ctx(areq);
-	struct rk_ahash_ctx *tctx = crypto_ahash_ctx(tfm);
-	struct rk_crypto_info *rkc = tctx->dev;
+	struct rk_crypto_info *rkc = rctx->dev;
 
 	dma_unmap_sg(rkc->dev, areq->src, rctx->nrsg, DMA_TO_DEVICE);
 	return 0;
@@ -255,11 +254,10 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
 	struct ahash_request *areq = container_of(breq, struct ahash_request, base);
 	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
 	struct rk_ahash_rctx *rctx = ahash_request_ctx(areq);
-	struct rk_ahash_ctx *tctx = crypto_ahash_ctx(tfm);
 	struct ahash_alg *alg = __crypto_ahash_alg(tfm->base.__crt_alg);
 	struct rk_crypto_tmp *algt = container_of(alg, struct rk_crypto_tmp, alg.hash);
 	struct scatterlist *sg = areq->src;
-	struct rk_crypto_info *rkc = tctx->dev;
+	struct rk_crypto_info *rkc = rctx->dev;
 	int err = 0;
 	int i;
 	u32 v;
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index cf0dfb6029d8..0b1c90ababb7 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -86,12 +86,15 @@ static int rk_cipher_handle_req(struct skcipher_request *req)
 {
 	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 	struct rk_cipher_ctx *tctx = crypto_skcipher_ctx(tfm);
+	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
 	struct rk_crypto_info *rkc = tctx->dev;
 	struct crypto_engine *engine = rkc->engine;
 
 	if (rk_cipher_need_fallback(req))
 		return rk_cipher_fallback(req);
 
+	rctx->dev = rkc;
+
 	return crypto_transfer_skcipher_request_to_engine(engine, req);
 }
 
@@ -290,7 +293,6 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 {
 	struct skcipher_request *areq = container_of(async_req, struct skcipher_request, base);
 	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(areq);
 	struct scatterlist *sgs, *sgd;
 	int err = 0;
@@ -303,7 +305,7 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 	unsigned int todo;
 	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
 	struct rk_crypto_tmp *algt = container_of(alg, struct rk_crypto_tmp, alg.skcipher);
-	struct rk_crypto_info *rkc = ctx->dev;
+	struct rk_crypto_info *rkc = rctx->dev;
 
 	algt->stat_req++;
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
