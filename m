Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BB72C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 21:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBq08+wu/Hj8duxm/RfpczUkLa9EU98kG4EUwuAO6i8=; b=R5WZJ/3OZtB7s2
	ck40rjRGZqyp0DdNJNu6xrazm4imtv4plvWOkun09xpJ8OW7tiH06cOXsiSd/5phxpt+6XB7ZUpTu
	QzH8xuAX7ga2Mun8rEiDayAVeheE+ZVy3tcd9jW/CqFe65rtNHEmfq6lcE3zpIDSJFnZlEDeiNePD
	RabBUXO3/v7SgL4v4a9pkD9ZzDpc4yNkyZT8d2UFmYxYwhXQi73iM+ZVGL1dV2r1mSbCkaEft36Ss
	VKF8qK/jfAnGCqsz8JJhTqHiiylCOEhUJzP2Rx6XRThAYoKiAV2mIEYsBZEE8wHbKbV+pHpN/46EP
	dLUCrEM1wYCmhiqlQYqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPWQz-004HI0-NK; Wed, 02 Mar 2022 21:22:57 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWFt-004Bih-N1
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 21:11:35 +0000
Received: by mail-wr1-x42c.google.com with SMTP id d3so4771719wrf.1
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 13:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UQNU+zESf8LDh+yao8Oc3gO6dXSE2ne6kHnyQ9VdhdQ=;
 b=XyO28tj3TU+B+3XLenZaHOAECDjiZQCjIzHC4Ys3oYIiUR3pcp4sGFhwBnqSZYe4a/
 Da4DZewdoOXXZsf7fHZ2CDBO7vZpEMLu7+MFtZ+1KtavfBY8GjwyAskpIwUzQwK6ljj0
 iBb5t+bvXd8ECvZiv1r3CVxPuDBRgQvDoLXehvLYbVLDLlXsl55m9+e4lu0Wy2eqmlfG
 2bTXSNOsVygIv+VFIb0s0XKSDfZYL8jEp7bZLuBCNTw7cZUtMYvZJycY0CZ3528KrFpO
 p8ScGO0EqTtUH8sUqks6Iy3zVymRj3cd5UnmueOGlON7/Qh8aPBdRcu8oUq9ELxHOR/C
 cDcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UQNU+zESf8LDh+yao8Oc3gO6dXSE2ne6kHnyQ9VdhdQ=;
 b=67NWR2B9yEfL6UsKPQu3dTJdCnLJgZI/37mhKtMOGyaCOdMmeDALU2tXzB5DlsgB4i
 NQ0x3L3atrkPDlsC1boTa92r8/hZ8Ix+eUBX7isx1CDkZxjIairrvlJo2zVXClKvAfhY
 ykpbHATAL3J/Z+uLdlamusf8e6DutMxHAY7BxVzF/Etv2HvyuU31oiPOZTRzir90TvGs
 aanMxQQLcXB/CEnGys5whHnSZt7Z9DvUet08DKpsS4SGI9aCdTj1Fm2WP9VW7jCRwvSm
 Hm/fIV2Ty1sUicn+klQilP2pD07u6y9b20Wt/zJ01GjMGnuQ9+owH3MfaKWdrxhwukXX
 /dvA==
X-Gm-Message-State: AOAM531Lgj7RwLLxT/yKLRTQ29XgvKTURCD4Z12DJqC9pkrSYWU2fi7w
 v5Ld8c/nG2Xn/9+8tNwDARLnaw==
X-Google-Smtp-Source: ABdhPJzfWDf+uImBTOrxpwmcexKER/HJdZYcXbT6y4/9uwZp7eE8txba43Evn6iHNknG/kRArRh8fw==
X-Received: by 2002:a5d:59ae:0:b0:1f0:474c:d995 with SMTP id
 p14-20020a5d59ae000000b001f0474cd995mr2125020wrr.217.1646255488302; 
 Wed, 02 Mar 2022 13:11:28 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 z5-20020a05600c0a0500b0037fa93193a8sm145776wmp.44.2022.03.02.13.11.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 13:11:27 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 07/18] crypto: rockchip: add fallback for ahash
Date: Wed,  2 Mar 2022 21:11:02 +0000
Message-Id: <20220302211113.4003816-8-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302211113.4003816-1-clabbe@baylibre.com>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_131129_804335_12B773C9 
X-CRM114-Status: GOOD (  12.69  )
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

Adds a fallback for all case hardware cannot handle.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
