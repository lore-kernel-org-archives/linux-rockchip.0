Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 591FCC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ixp/d5QpIgibRYkKKX4+4jKSRRaIWtqPAxOBta4GcRQ=; b=rEa3DL9CQ+F7Sw
	f4OCKSmSW4ow8965anQmLc2HhgRHowE/XDcvABSgoB/FfK9B/L6lJsCLVxDd+CwFBF2suBgcs7x2q
	7SDP75ghtqlnJVuDg2kud5dYO2sr4XckTKuoyxsBoM0SJDCdp4V+x/EDbseYEYfGsC9r/4YIsuvNZ
	UrWkafgtyK38tvyobHQuSqOWdC7s+dqvieoI7OzgkyZ6UDp9iHOxiH6wDALm9lxAnyxlCY8hnxVFi
	yzmW0eVJ+8rQneIvfRbcmfLC81lN3oCxvPFBFCnI7XWLNINzL/+Ib6bvNUs5Ry997PmuHW5umUCNG
	IQn0LC340jF12l4RbWbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNw7-007C10-QJ; Fri, 01 Apr 2022 20:31:59 +0000
Received: from mail-wr1-f53.google.com ([209.85.221.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNj7-00755x-5O
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:36 +0000
Received: by mail-wr1-f53.google.com with SMTP id w21so5827205wra.2
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c0Y7ot3Q5VRUSKPSwhl0BI4ZBRiId1alfEO8uCFCBrQ=;
 b=g0mYZ9510PRNAHgZREvz3NPRnFTKcjFYfG+2ojPvN03/3sxjGdpvwZ9jFQRS5BsSYl
 /Avdl0YiZfjoHoozEe/CcdHsQh3pujMfE3+hYsylemNxn5wB32RYayQlp8R9BTFLfvIU
 s+hikrW0re8ixMywPmZWUXRXSp2mLM3yM6AFBk7F4ubyVk6H+dIpcfGoIR+UEC7vAM65
 g5Fef9d0Z/LJOBE91LMqhbL6C05s9tDZz2ploDbS7gqvbisBwl7VRxaurSW4hzT4pl6+
 x/er1YngbsFMmZ05ieWjRWnIEuPRT9m0Pz6bi4zavpNJZsBO8H+e6wokvOp2KIlKAOkk
 nGMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c0Y7ot3Q5VRUSKPSwhl0BI4ZBRiId1alfEO8uCFCBrQ=;
 b=YDrU0tBDwYxXFxXSZZF5jYhZkmnGqrji2Y972PnFtGcLT77duYNur5Qj9zbgFu5YC+
 55+kW/fpF+BGGQEZyk2vYedBHa64d3Rkv5n5oPd6h+Ep7pUWO3VFfHfMO+LcywyrNRex
 HPbYEpE/06TrEFsr81PzlyDkIbyQn3SuVul+3I2tPvsEcSZrjExaMuhhNl1svQ6BaokH
 ziHSVachOEIxKWe1Y5M4ZFXZyYKpx44mxEdWnEejpidVNvOffof4s+V8Kp7yTt2EL60x
 rX2G5939jVXXCyv43tn4RxRKu2a+O5XruscQPQNGWxF2k0NNQlf7LqKKLtQ8O7Eh71Gx
 Xk4w==
X-Gm-Message-State: AOAM533jVsKx20ndih8CoSksyfrQ3dGt98FRdAYp7AArun9KfN9OFktp
 JoJmQ37uwyZSQHWThXup7njj4g==
X-Google-Smtp-Source: ABdhPJxW9qYhxPRtCEDmBbn0pA41j/5Ag4UwwvMXBqiXPsHbyxUAh1ZjW/T3tWT/Ed4jIDayWpO5vg==
X-Received: by 2002:a5d:5255:0:b0:203:ec9c:6d5e with SMTP id
 k21-20020a5d5255000000b00203ec9c6d5emr9195177wrc.70.1648844309165; 
 Fri, 01 Apr 2022 13:18:29 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:28 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 25/33] crypto: rockchip: store crypto_info in request
 context
Date: Fri,  1 Apr 2022 20:17:56 +0000
Message-Id: <20220401201804.2867154-26-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131833_233960_F7E842C3 
X-CRM114-Status: GOOD (  13.78  )
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
 drivers/crypto/rockchip/rk3288_crypto.h          | 2 ++
 drivers/crypto/rockchip/rk3288_crypto_ahash.c    | 6 ++++--
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 6 ++++--
 3 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 79982fafd6b2..8cd753085128 100644
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
index 3d119c2ddf9f..0372b0f7a558 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -200,6 +200,7 @@ static int rk_ahash_export(struct ahash_request *req, void *out)
 
 static int rk_ahash_digest(struct ahash_request *req)
 {
+	struct rk_ahash_rctx *rctx = ahash_request_ctx(req);
 	struct rk_ahash_ctx *tctx = crypto_tfm_ctx(req->base.tfm);
 	struct rk_crypto_info *dev = tctx->main;
 
@@ -209,6 +210,8 @@ static int rk_ahash_digest(struct ahash_request *req)
 	if (!req->nbytes)
 		return zero_message_process(req);
 
+	rctx->dev = dev;
+
 	return crypto_transfer_hash_request_to_engine(dev->engine, req);
 }
 
@@ -256,11 +259,10 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
 	struct ahash_request *areq = container_of(breq, struct ahash_request, base);
 	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
 	struct rk_ahash_rctx *rctx = ahash_request_ctx(areq);
-	struct rk_ahash_ctx *tctx = crypto_ahash_ctx(tfm);
 	struct ahash_alg *alg = __crypto_ahash_alg(tfm->base.__crt_alg);
 	struct rk_crypto_tmp *algt = container_of(alg, struct rk_crypto_tmp, alg.hash);
 	struct scatterlist *sg = areq->src;
-	struct rk_crypto_info *rkc = tctx->main;
+	struct rk_crypto_info *rkc = rctx->dev;
 	int err = 0;
 	int i;
 	u32 v;
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 115ba7750d7b..d0bc8b4fb277 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -96,12 +96,15 @@ static int rk_cipher_handle_req(struct skcipher_request *req)
 {
 	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 	struct rk_cipher_ctx *tctx = crypto_skcipher_ctx(tfm);
+	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
 	struct rk_crypto_info *rkc = tctx->main;
 	struct crypto_engine *engine = rkc->engine;
 
 	if (rk_cipher_need_fallback(req))
 		return rk_cipher_fallback(req);
 
+	rctx->dev = rkc;
+
 	return crypto_transfer_skcipher_request_to_engine(engine, req);
 }
 
@@ -300,7 +303,6 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 {
 	struct skcipher_request *areq = container_of(async_req, struct skcipher_request, base);
 	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(areq);
 	struct scatterlist *sgs, *sgd;
 	int err = 0;
@@ -314,7 +316,7 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 	unsigned int todo;
 	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
 	struct rk_crypto_tmp *algt = container_of(alg, struct rk_crypto_tmp, alg.skcipher);
-	struct rk_crypto_info *rkc = ctx->main;
+	struct rk_crypto_info *rkc = rctx->dev;
 
 	algt->stat_req++;
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
