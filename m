Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41C26C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oL13P5KE/qdQOmvZ7zWka/MirMW89Sklx1YQyDU8Ti8=; b=AExSL7PdaeiGVO
	ySyw0zU1giMn0g6xfPOCkrWkXDRv/8nalqNQNurREX4GfmOa+lYRUQ3h4sLfyED6odNgV+hYHcrWL
	CsBSOSxlSnGL7uK9tVjT4nkvLQtbtTsJJwBy31GZMpUlKdeaDDPnZ/i8K3D6ep+byxCOYZwFbOBSu
	M9uAId/aBM1NrPGuCXm+GTLvCHE9USS2Adlbo0HnZtdvBDjS1kfk6wT+5VOceTstZZPhZbJvy0wdW
	vBf4x3L/LGU/PB1pUybEle3uOQNniAJ1LoR8bDPyjP/Wa3jiDX5GJuDZKn5hMeZtu/vJ+s4pbDfLu
	9rQVVKWKHRGp/Ggobc3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiMn-002JDj-E3; Wed, 13 Apr 2022 19:09:25 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiKv-002I24-VN
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:33 +0000
Received: by mail-wr1-x429.google.com with SMTP id p18so3168289wru.5
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yzvgVyreo6slTFAo6yIfKz7ssJtwxUt4QGb+bB9VZnw=;
 b=6LonU9zxcj38hIKp4Ki621p4IxWp8og1w9ueWEVBL9K7/auhG9ymQ4gGzuU7nGsRGT
 ReW/RwoW5pT7pFoWnG5VHnguIrkZFF301PrCYAT4gbwd6oRxxaub7qmWTPogCIbtc1H+
 4GxIpgoYj1CXBl1JfoGrKgIPUpBYoKCBqmX+yLvAW6VkGv5Urpf1g6bz34ezbeylT/qm
 nrRkCiXr+QvgsUc573YNI8VnXqFEIY3+MJvFufVNSFcmJBcGo3Sgbd7cXIuPmyDIMClK
 TKl8Lpy0YmoglSvt6ZMAqN6PgZ4H1d9K99zZA+d0kMYYTVqYsWCliAWiBYcxhYUiRWZA
 2RYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yzvgVyreo6slTFAo6yIfKz7ssJtwxUt4QGb+bB9VZnw=;
 b=lsH26/DDxy+nzlMA4W0bb+C6qGgwnoKqQ1eQ8ACW1DMLYEk+7Es4Sf8+eYSX9NC5ji
 5Ty/2cI+VMJrw9IHOBZafkZymf+BQf9F6X8LuDk2coZUQ7EptnQjOujuso3owR7dPCyn
 7xDbKrvcQ7m74/BJL3IFrneCedva0QaZWmfqF36zxm/25U3QNpasOy9Bw36QpW7QzvDH
 AtkD2rOqErmcjeSvjh3G/H+pLv+bI4/nR/DOcmf14ZAiMPCiyybkjGLHv+m2DSaFDWbe
 seHsDn9/sI1cTcPcINUJZaESEUzNh/Yt0HTh96AABvVEpx11Aa8HvydhT9tp8evjqmxS
 Yc1Q==
X-Gm-Message-State: AOAM531SyPoio/uRa5FEJrP6vZv8E0ADApWYYvs4xWdQA3JgoXjj8tmN
 VvrHctGBRbF58r2HCtpE9g1PjQ==
X-Google-Smtp-Source: ABdhPJyfWDUOBo407KIkmaHDMAMa8XzduUQe5aiqb2R9yzoWCNwLKvwxBgoyW1wq8NV+NpE5BFzruA==
X-Received: by 2002:a05:6000:384:b0:203:ed51:8ab3 with SMTP id
 u4-20020a056000038400b00203ed518ab3mr226425wrf.211.1649876848785; 
 Wed, 13 Apr 2022 12:07:28 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:28 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 07/33] crypto: rockchip: add fallback for ahash
Date: Wed, 13 Apr 2022 19:06:47 +0000
Message-Id: <20220413190713.1427956-8-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120730_067495_FB59459E 
X-CRM114-Status: GOOD (  11.77  )
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
