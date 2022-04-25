Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A0D5C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oL13P5KE/qdQOmvZ7zWka/MirMW89Sklx1YQyDU8Ti8=; b=I4Hl2T8zdxXACI
	slDwe3hiYgK2Rga304ktmvTXLklt7WAoqYbWyZHu+KedhrZ3dvsZyURX9zKcHjly+E021qYTp5F+l
	tx3qgW/At53tZcTJROsnCR7D+B5edDTOHeNGkKcRSuIGQsR6Oy+s8Etqx2KT+ixT8eJUdBRJ/U9Mk
	t2aFWy6YNmFkdaqTXSkgEuGVnklk3dMypBgZFeJf11ddjnAw8voHvePbQH+BivnHlWrhlKKbm6Vqe
	JVu1Lf5k8/BIaFeyrR663MAPYP57iWROSeqAvH4Vrgv1jdt4zCaCTZ43lbJjdfhcxeUOi607ovh4Y
	fmm+zgFAS7r89BdosWmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5FJ-00BCGT-RJ; Mon, 25 Apr 2022 20:23:45 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DG-00BAwQ-Hp
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:41 +0000
Received: by mail-wr1-x436.google.com with SMTP id b19so22451349wrh.11
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yzvgVyreo6slTFAo6yIfKz7ssJtwxUt4QGb+bB9VZnw=;
 b=g0W+RBEU2DVpJOcyQb0vAUSv0HySUb4wrQLTjDRQrYCkExGUJA/3kkqNl0TsH6B07P
 G/BdSyXPm/hK9AbPy6f0CrBKYAQNBJmoe9sQtUdwCzylYu/94cy9W6P5Wl7539OpClEm
 ubCViQLyOoHAgmatfdvMXkQrqlad3KNyTv4cE6vE9tTgWvmCkblTaD0r6Uzkq4GGnL57
 22BAgHrvM7j+J2otUMXw4psRsRtPR8+unx7wQLZfJdGHmwE87mss0UoI88KNbCtgCt9U
 zcW5E58jf+v3OMBs0KIq8FYMFa6WNSZqWZK3/BCSfwVRfTvlySDTa5SEhxCO+c45NIcs
 oLSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yzvgVyreo6slTFAo6yIfKz7ssJtwxUt4QGb+bB9VZnw=;
 b=qz/yCWYiX9h2WkUFBclwQPKruxHQxCPNkU8L3e0LDOKVw33rR+iXn+HW1wqR3khKlh
 ZYVgNQGVZgQMkfw+H+6gufJptH9xlH29GdycpJxM71X8AfayTqjQ+Pihz4UhYrAD1IBo
 qz/GJ5bSCkkP/NJVbVKJvQZgPq5pR4mHvr9nkoGGFoZFP9om4OE9Om3xtixgxQA+hnpC
 wB2V+wWK8OORTFXl6wLVDF8PxufVqsBgI2MOMapIWFvx8R4OI+UQKsljvyhQchwdBev6
 4aiOWV/wc+gAJu9yaSqzQlwahwouw0KAtQXMeNe/iPwRDStsJszcWZvp9uqOluynTho9
 fZmA==
X-Gm-Message-State: AOAM531d3zCJZfZm9a5ntwYNWh62Sfcm+X9K9FYfgiFUk1E2cMhzCXWC
 ZxKsdgz1tPMKL7e0fXxrwR17RQ==
X-Google-Smtp-Source: ABdhPJwaSWCN4u/OFWV2DnC80dUm1T8fYKILu0YE8V/VULdmNc7nx+qeTGdxShpo3cm0Mud1zMUXlg==
X-Received: by 2002:adf:db86:0:b0:205:bccf:8cbf with SMTP id
 u6-20020adfdb86000000b00205bccf8cbfmr15278513wri.346.1650918094282; 
 Mon, 25 Apr 2022 13:21:34 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:33 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 07/33] crypto: rockchip: add fallback for ahash
Date: Mon, 25 Apr 2022 20:20:53 +0000
Message-Id: <20220425202119.3566743-8-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132138_656101_C9A6472E 
X-CRM114-Status: GOOD (  12.15  )
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
