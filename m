Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03DBFC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 19:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JYuscOJz9acaKgjbrJX+rQ8WXCuU49B9bDeS19QoISo=; b=NnKpDmd5bqK9Y8
	TAJu5pGnry1SS1wFpOQ4+vModfBMajs5bWR4h1QphNSISLl8sNCYkGgoM3Aud6uAyYw8UXnjOHqVm
	9BPOh3WIA66daCA26EhZ4A46gywp4fJLzEXJ4BC5kiISrsaVJRHbWQmnNdnDhotZD5cPtGjDKGRlb
	PSEgDeAFSLT4k+TUrXxJMlocfXgWqcRhp+tPenoQhT1Q0KXBpBV8RkpzqhGYRm2kQIk93T4OOY757
	+9edyIfzw44d9pH88PDoh1ixrsKy5iUUiL7hUnIgcE99082MsbpewCDRBs+kAyOpYXMJIf8Y/TCQ4
	Vifi18GE98v0jA+YwKqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOlvv-00Dopr-LU; Mon, 28 Feb 2022 19:43:47 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOlt4-00DnZY-AF
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 19:40:55 +0000
Received: by mail-wr1-x42d.google.com with SMTP id i8so19962wrr.8
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 11:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v1CCwvJnO4832jIoRmVnfn1erTUdDyF/92qblaVtPw0=;
 b=T6Rn7DKpnSnnyV16iFJeQmRkesyHpgcXn2Birf8VDLN9xJJGQpe3sACuKvCcbBSzZp
 siIvE0Wto1zd4n35xBM9jwhXXuxpshiEgB5NSXAzBIjyPFM7YZxoUzrs/crK6L5GQeOi
 qp2or336e6FCD9jVoQLmc8cKh7dDQmcYGeJSvQLQh/petM7XhbHZ9vcjasOowF/9lO+d
 k5bSMHM5nIKEgCLuN2GImvNmVAizz+JSDptuOE9n3ShIu8d7B4cvboMM+3h6/P2EpHPa
 rowmx1yWviBahOqGRGPklUwvfFZhf4c28OrRmBMOilIh7Mplsg6Y8IualsaBFQhrgK5Q
 CoQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v1CCwvJnO4832jIoRmVnfn1erTUdDyF/92qblaVtPw0=;
 b=n2kDxIoleBPbqzalakDbcWgH3XRgRVZDXgsCuWmPzbFmKlFIMAn5bSNCY8i0Bww9XN
 2S6a8qRtXvcIUAA6NrEtYPmvxfTHBYo38TlMQBvoFpczq9qe9Vt79ONbN5e5qKGntPd6
 LtEnk/U0uxPZjV/L/ifsWjE3/wIQNz2DgalOA4WbX1koaDBpUsyVOtCc6EQAvzIn+rnz
 Sl+qe8oN/qKAYy8ukcSJwOqnYVFt+uQh8zfE9V2SSkvmwtLhmJkvcHGJnLfZrYFjz9It
 Bq4PVnM6AJyZJUV04xXw943btanoCToMMzE7LSQllAXg2pxTHuY1nqtvFFkbpKaUim2P
 Wm4A==
X-Gm-Message-State: AOAM530Cv216zovpF2HA0DKiG9boY+ep8lzryOJGLxGBjRnGoESOnZ/K
 2/qCvMVKsir/sTeHoo6DoXnsZA==
X-Google-Smtp-Source: ABdhPJxDjjxXTOkNOHngS/ruLX9ZyvuuzcTSee0l/s0FxFJnrHS9T5djEiIy1zF/izWnMoGEURsAnQ==
X-Received: by 2002:a5d:45cb:0:b0:1ed:f938:7e17 with SMTP id
 b11-20020a5d45cb000000b001edf9387e17mr16706103wrs.170.1646077248771; 
 Mon, 28 Feb 2022 11:40:48 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 11:40:48 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 07/16] crypto: rockchip: add fallback for ahash
Date: Mon, 28 Feb 2022 19:40:28 +0000
Message-Id: <20220228194037.1600509-8-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228194037.1600509-1-clabbe@baylibre.com>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_114050_412651_2CDD6987 
X-CRM114-Status: GOOD (  11.21  )
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
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 49017d1fb510..417cf4487514 100644
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
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
