Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6D7EC07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=br+uZG4aj8CPR33Ld/ERFImYRe47BjEQqkF0a6921D4=; b=0LDiEpYiLwDYsH
	wVwW4QVxWKsWKdz1kJEP8Z+txQFwcNWHnXIHPpgmIa2ELkZET4SZTTbYxuEizN4l7qC/8YqXTqP4a
	z/HQ+2u6cpi50j/0fL6jMQKWLPZExUHcYwPRflrQa1lylf25j3ZCGk0OJCxecsYwxZXelvjAscqno
	Idy1+Rc2oEq1TjWNvJSJFkv5u4chuiLJfldWFq1xZh+S4fkvENX2QYXcHEx8TIiQkPSPThwNUJOk6
	cGR+g44qBhTwGakrb3A0HDp1xA8g7MTHkwktpXwsPIuNNfXlQ1+oy3d82WFf2FkzSl0ITtE4uPzxu
	J0HdQRs9NzLDjwpaszqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Zj-008zEE-Jd; Tue, 27 Sep 2022 08:04:19 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Rm-008unv-WD
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:56:08 +0000
Received: by mail-wm1-x32a.google.com with SMTP id iv17so5975520wmb.4
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=YTCwVt48y9KJqKpi4AoXVBEGpD4ZzF22SRLhTWJSe6w=;
        b=aNRUzEYRbYUc1tlLJG/XgPdAulKmUd3MB39rMJUpjJNaQrLWVJY0Mq+n/Nl40U3zcw
         zew6Z7VJgI4WInSGzsrRXkLixHvAEGqZh3/MDSIf3SFizMxmj19zW7tQldiVRtCQXvuo
         syIBNh4LA07yD/xqbRQDY0v0zdeIOm4aPC1mWIfrVM/oqDYUjcXUC89kHUs2ueiDDxcN
         g32bEWK5JDuYkAEDu0cMhZwGoDwKhkEioiKbWI20Q+jX8Wo101UNETleAWRAfj295GM2
         65FWj7yAFDOkWntFr+m3qiKi9BrXYxbOIg+ex3mpln6dQnq1fz0uX0WUwH3/yGFA2Hbr
         3p0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=YTCwVt48y9KJqKpi4AoXVBEGpD4ZzF22SRLhTWJSe6w=;
        b=Fr7QWXf+qvFdUMFy0cHLaasgTblK7s+z5jGBpVFPvkJdP+XNr9kaNGIlhR5EQBde6X
         J2A+s08akQKIdQwJdv0SEnEsXoR7UvFUNfOg7c19wAX+IcrQgHmtc1Q3o3L3Zt0RqwzZ
         aPUS/UEKMjtH9MAFzdptGz9F01s69TkQ3Qvb48tmE5dS092XWJSjf2VKA8IshQBgqgVV
         1INmuW/8NYnnWRWbuGJWQCnlQZ2giSsWaOC+HJcfmjfeatNx3A9zwvcm2nb3aD4JeRhR
         EJv9kwAZvyM8dvAVOAVkx1BppCUnOrbUl0z39iu48VZvRttoGqUAfcKjD11G5mNYE3HU
         W21Q==
X-Gm-Message-State: ACrzQf3hZ30ZzJWnPcrQ04X3L3IEEOZiL1uJ3zbVtuS26tMZ+RzeSM0e
	WrawIBxz8gM95YsJ2VHaV8ZgCg==
X-Google-Smtp-Source: AMsMyM6vVLxhhyKwI9CurLZNUl4up5EoRpsbV6dKVmexy3Dd91tsn3iNplphEMmVGJEGUIJEWgREuQ==
X-Received: by 2002:a1c:202:0:b0:3a8:4197:eec0 with SMTP id 2-20020a1c0202000000b003a84197eec0mr1603199wmc.83.1664265366451;
        Tue, 27 Sep 2022 00:56:06 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:56:05 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	ardb@kernel.org,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v10 29/33] crypto: rockchip: store crypto_info in request context
Date: Tue, 27 Sep 2022 07:55:07 +0000
Message-Id: <20220927075511.3147847-30-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_005607_102688_02A92D1F 
X-CRM114-Status: GOOD (  13.83  )
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
