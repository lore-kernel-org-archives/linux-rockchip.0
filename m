Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3516C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oL13P5KE/qdQOmvZ7zWka/MirMW89Sklx1YQyDU8Ti8=; b=FWlmbEEKpRFGPU
	zx2/5rQqq1BBcC8+n57Wjtm/kY5l/8ANdkidw82QeYe/r2c9+Z5Hq8hQII5M+Riz9in7JUfQyebhW
	6uXaoF3nXIpIx2buUjZtFKE7PXnZnJ/Bor4hw03FvtB38dhtbUwOQ53wwDbdN24rjGBalu9o4ZWjQ
	7Aq951379Ny1fLOkPp+cZT5kVGQLKG6cXfgTu8syZ1W61lm+V9LGm9B4SF8T5CGssncJ7lDriIiq6
	PVSHldaqA3EtPBpAPQJbk3csnfnX4dvPT33hes2bmq84MpDsx/JYwQ0SxGXzwY3O7kMb4OJvKP8SN
	PFoTyv6JimMlVbhHOePQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNka-00763z-7D; Fri, 01 Apr 2022 20:20:04 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNis-0074sg-Lp
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:22 +0000
Received: by mail-wr1-x435.google.com with SMTP id r13so5760721wrr.9
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yzvgVyreo6slTFAo6yIfKz7ssJtwxUt4QGb+bB9VZnw=;
 b=QvdtuXJUDVErKeJtsEhLz1nBAGfbgmN1mQYGN07MjOynZL/vSdAtL/G8vPaRDZ1y3Q
 EkMDhz34rwNCYGMTGWORRmFK9cUYKj8gMSqCLql9swylJSrtuiYHBpNhtx+3Q6SLvVvy
 5U2l92TxwXtT05eBLI2gm3sDHZCiTum+G4FHkKcFCb/gxFglJGkX6IMOhy3KWEZTINI8
 lkOrT8Gfo6zYr5IA5Db35TQCSUJbLfy7sQ6Z8NH2pzEfnATmACUSDmIJUFtPNLYBSEkq
 2fzdAUdVxfTwRunvya/oUuRFa1pcDffJ+2GVCM9knByIDrgOHX6JHTLY7n4GhyvqmkNQ
 jz+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yzvgVyreo6slTFAo6yIfKz7ssJtwxUt4QGb+bB9VZnw=;
 b=hzH36ufQ0M1Mcsii5DoGL5nOSNpD//rHRnbMKrGN8gfjtytrYeo0YIgaJRuq8jywKs
 dQj2C9Aq1SdvfyVfRusDXByYQsQJr3s+rTeWWfutzmQUODOujTiLfMhvs8DT9Gb3KO8M
 RUZTpVBfzaCkhVfd6pUOVe9DvaSnGVowhLRpdT/hBDdPIqSNBbM36QJ6fE6caTohQuHX
 dTZV2B1CXKmRmmLiXSNkrQxIR+Fmw7vWG/1b0JdAh4oZLPyLx1MH4QQV2iCJeR2BBUdA
 VMbh7M7QuehkWqvemjfL2OjhyIA7NQZ+bkOppL3pbGbR6eZEUlxCObLdj0emrujZffcQ
 EAZQ==
X-Gm-Message-State: AOAM533Czg6SO7l5eWCea1xohD4ex9fKhSWOQCVUNh8GwCTu3S5JWm8Z
 CJ9hJ9uNEkuiYH+qH6pH+zEUWg==
X-Google-Smtp-Source: ABdhPJzagPANYHiKjLhY479oe6/09+78LAgtlNmTUDvX4KAKnhWhGpyAZriJPqTM0HpBWXX4pLApyg==
X-Received: by 2002:adf:e947:0:b0:205:9051:ab61 with SMTP id
 m7-20020adfe947000000b002059051ab61mr8954855wrn.510.1648844295909; 
 Fri, 01 Apr 2022 13:18:15 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:15 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 07/33] crypto: rockchip: add fallback for ahash
Date: Fri,  1 Apr 2022 20:17:38 +0000
Message-Id: <20220401201804.2867154-8-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131818_751419_7C15A9B6 
X-CRM114-Status: GOOD (  12.19  )
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
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
