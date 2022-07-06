Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11A74CCA473
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 10:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFqBfnnUAvugOM6BMG+kJAPC6qQX1BZHTww5KGSm69c=; b=AAiPDVLcgFEU5o
	/J9x4TjquZycEIBAps7cooWe6Mk+YLkYJO9zyI4EWX/1YhmhEb/0EobfdnkFx+WHlrJi2IC9ZMlXo
	06D9lNmWRXcl3IEsj7dA7TkOoxEidXN4jkhCRx5mRfxu5ZrJh4hx55i2JrlzJQ1hQGmeroXNTWISf
	rfdjXk6ee1ddb4vfcwGP1zNm2A9nCFAvwurU8BUevg5zJX72sjGA8xxHW0EDMCd2LdjzKWyeMVMEi
	1DHe51u0a2wAF28m8xGt0Z5dQR1UZJ6xr73pTQTsNgqLSrXMIHHMDt6YSl0e53QCQTz5m7Kk3SHdV
	0l+wzPLeVJSMG5CXay2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o92Hh-008Vr7-Rh; Wed, 06 Jul 2022 10:29:29 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xi-007bo8-A1
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:04:50 +0000
Received: by mail-wm1-x331.google.com with SMTP id f190so8422369wma.5
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Lb5wXjXl71KLOn69lH3EgInZyalgQlnigOqDmtk2Tt0=;
        b=zzT8S8RHrwSOYDYb4nSxX1Vj2+7cZjylmxpA5nZxp11NT/r63jTYcVVHZVl1lod/vB
         s4xJiX61UpU/2yD2nDSoAXIUQOjT25go1QRplexRcmJizflXuNntueAVYZ4v4ZLopP8/
         gL6ba9Slb3Y8RCW5lRpR8O/XRgUTDBfYs8WszlEED2WevNhp5huie9+dYgrB0wxuN+Bt
         iaN0wmPl8OrU95zsa3j5H2CK/L2eZYGG0cPCFukjkmOKO5VREcFxavuSxGROA/kv+GHZ
         kEbvvxkjoCQ+tNJ+fYZc2xx2gOoSiQyhMMtENoQzsznYrFRR1EAxEVMH9i+YrweM2h9E
         Xbhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Lb5wXjXl71KLOn69lH3EgInZyalgQlnigOqDmtk2Tt0=;
        b=vJgGoY+nMSKu8I9EH/22Q7C7ZWkz7nM3Jrn01SOG5bRGHb8H2vISSB2e129xfUqxeT
         p+Mc7xuZ4BEq0Hz57W93WxJJ1/MNWphcuuS6wzrf+gDrQCOHr31scJF5p7X9sRZkavzB
         ahkJkDYe5qt8p3q6QffF8Drnx22nKk9Uy8frFxOvc6GMPb2arrz8Z9+eD4+RMGhMMMAs
         aSqdL6fMymsrYvFowLWrjwFNsJv6sssS9mHcgMVVg3105yab29oJw5MZ+NU16Pnb1xr1
         QWpihxT3HK6H4HImqXvC0143hxrr5rCs1L6wPzYFtOy85MF0T61SPG3fvHaZxcXgh/L/
         63AA==
X-Gm-Message-State: AJIora+T4eu0CGjtBBXtIeYy7/Mx99i2VcrN+DK5PGQNDM8kLKe0roQ3
	RmkSbtY6YwAqa2MOePPHPhUlaA==
X-Google-Smtp-Source: AGRyM1tU/eQs9y3rllPt7O3uf71DaGtNf9lf86F+8T4gDenqt/KrF5cKS5X1r9zX5d+0CXqvHL2xqA==
X-Received: by 2002:a7b:cb93:0:b0:3a0:4d00:2517 with SMTP id m19-20020a7bcb93000000b003a04d002517mr41934646wmi.117.1657098280280;
        Wed, 06 Jul 2022 02:04:40 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:39 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	john@metanate.com,
	didi.debian@cknow.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v8 07/33] crypto: rockchip: add fallback for ahash
Date: Wed,  6 Jul 2022 09:03:46 +0000
Message-Id: <20220706090412.806101-8-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_020446_390573_809BF203 
X-CRM114-Status: GOOD (  12.08  )
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

Adds a fallback for all case hardware cannot handle.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 49017d1fb510..16009bb0bf16 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -16,6 +16,40 @@
  * so we put the fixed hash out when met zero message.
  */
 
+static bool rk_ahash_need_fallback(struct ahash_request *req)
+{
+	struct scatterlist *sg;
+
+	sg = req->src;
+	while (sg) {
+		if (!IS_ALIGNED(sg->offset, sizeof(u32))) {
+			return true;
+		}
+		if (sg->length % 4) {
+			return true;
+		}
+		sg = sg_next(sg);
+	}
+	return false;
+}
+
+static int rk_ahash_digest_fb(struct ahash_request *areq)
+{
+	struct rk_ahash_rctx *rctx = ahash_request_ctx(areq);
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
+	struct rk_ahash_ctx *tfmctx = crypto_ahash_ctx(tfm);
+
+	ahash_request_set_tfm(&rctx->fallback_req, tfmctx->fallback_tfm);
+	rctx->fallback_req.base.flags = areq->base.flags &
+					CRYPTO_TFM_REQ_MAY_SLEEP;
+
+	rctx->fallback_req.nbytes = areq->nbytes;
+	rctx->fallback_req.src = areq->src;
+	rctx->fallback_req.result = areq->result;
+
+	return crypto_ahash_digest(&rctx->fallback_req);
+}
+
 static int zero_message_process(struct ahash_request *req)
 {
 	struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
@@ -167,6 +201,9 @@ static int rk_ahash_digest(struct ahash_request *req)
 	struct rk_ahash_ctx *tctx = crypto_tfm_ctx(req->base.tfm);
 	struct rk_crypto_info *dev = tctx->dev;
 
+	if (rk_ahash_need_fallback(req))
+		return rk_ahash_digest_fb(req);
+
 	if (!req->nbytes)
 		return zero_message_process(req);
 	else
@@ -309,6 +346,7 @@ static void rk_cra_hash_exit(struct crypto_tfm *tfm)
 	struct rk_ahash_ctx *tctx = crypto_tfm_ctx(tfm);
 
 	free_page((unsigned long)tctx->dev->addr_vir);
+	crypto_free_ahash(tctx->fallback_tfm);
 }
 
 struct rk_crypto_tmp rk_ahash_sha1 = {
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
