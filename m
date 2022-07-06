Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 015D4CCA473
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 09:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvZNIDIhcnabxTjE92iLjr4QMJFv2RIy57SH0KW3teM=; b=LmV+607184ZxmK
	Tqbo7LOKWvsLzkdjTEQN+gz2WprVrBLJA3/t9OHvKjlLMNDaPm1+ptohOeP0aXMvDZon/NF7gOypC
	XxgkjFUC4XEodJW9b2bCW81e4kHzC40/SNaCWG+JRJfaQgdIFHaHdRMqEhppDUGgicb3ba9H4/xXr
	iasflgRTziDNUDvhAmkDGdqjJl02+qbSbgFA1XRWRMI4V4DTqJgHQLlR+NmYi+yqds7J3JgH7SGtR
	pix7zTajZ5e44tGDWTNI8jZA5Cp6CcI51VrQVoZQg+eCOI+zPnddQWO/0syNQhGTYCp+XqgYLhBI/
	VeMraEHTQ41wtUMEvyjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90yg-007cQE-Hf; Wed, 06 Jul 2022 09:05:46 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90y1-007blz-Eu
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:05:06 +0000
Received: by mail-wr1-x433.google.com with SMTP id b26so21082074wrc.2
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=;
        b=jzmrHnL6AP5JP5ynKqMYe5yX2tYmFdVE8TwhZFHgWJFWW0o1xKFCEzfUtnEChQnGm/
         A6fQvxFRl2SJpiM4Zj/xug3hmVwSmyjac1QgUpHLeezzF65VvWPXm1axFpEEUOV6/Tvq
         FmFmnBGkQtH8EGsxTiOQ3zh9mBrKz/VYH64Ram1n1qoiNJN0DeG0dPQXrNtxp3U+wfWW
         e1NjKc352R2J8iC4t/8fmbX8ZkB6Zor6dVY+HZIwU2XX5wv7jTxP50GPf53rIHxA+20F
         12t1xepnNyAfFnfApYwl21tsc0KoW0p5KIZ1vlvUXF4b+4tt44fifPg2WA5jVg9InUm5
         TAyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=;
        b=j2XYAuVoOHEAIK5mDYbvS8IyqzZL9sA0PO+08zMWyrwJ9kbBppzFnQHYAUH4Kn2P8d
         rAFZKCpj2qtozrY44pEq831Ab5FTK0PBQt3tr9lqBnXq4KV/6T6i9m2eKIwX5HPGwL4c
         JaQPiEQi/IXIFCFgMM3NdFqXPP2STl4CkQjrqGTabGce1s2YJOuuY0JCXIQCeMX1aq7y
         +R7gkpko9AFCR3BzYGmEZEXniLR+vLSurgKV8fd3RD6I8wkwGERG0ap75WZKU2MdN8VZ
         w4oocFyC2zlc9lzz/YfST0MrrHWywCfRrifF1fGin1nCLklfd7GcznJApevg6bFQLpVe
         SRZg==
X-Gm-Message-State: AJIora9tP2AMcN1s/Wm7hsRLBl3t5v5Gd6XtBTJyWrgRf6Jq5l54ZGbU
	hXQincE9Y2FWsw9hrUIcXXnFBA==
X-Google-Smtp-Source: AGRyM1vRD4rRZCFfC8x4QQPMMOy8cjZ8voHj35W/8OT3F5k7JS0Li37UwyHkRVf/XoUVjf0EDwXrnw==
X-Received: by 2002:adf:fb08:0:b0:21b:af81:2ffd with SMTP id c8-20020adffb08000000b0021baf812ffdmr36963912wrr.685.1657098305026;
        Wed, 06 Jul 2022 02:05:05 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.05.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:05:04 -0700 (PDT)
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
Subject: [PATCH v8 31/33] crypto: rockchip: rk_ahash_reg_init use crypto_info from parameter
Date: Wed,  6 Jul 2022 09:04:10 +0000
Message-Id: <20220706090412.806101-32-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_020505_557491_1E895A01 
X-CRM114-Status: GOOD (  10.28  )
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

rk_ahash_reg_init() use crypto_info from TFM context, since we will
remove it, let's take if from parameters.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index d1bf68cb390d..30f78256c955 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -78,12 +78,10 @@ static int zero_message_process(struct ahash_request *req)
 	return 0;
 }
 
-static void rk_ahash_reg_init(struct ahash_request *req)
+static void rk_ahash_reg_init(struct ahash_request *req,
+			      struct rk_crypto_info *dev)
 {
 	struct rk_ahash_rctx *rctx = ahash_request_ctx(req);
-	struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
-	struct rk_ahash_ctx *tctx = crypto_ahash_ctx(tfm);
-	struct rk_crypto_info *dev = tctx->dev;
 	int reg_status;
 
 	reg_status = CRYPTO_READ(dev, RK_CRYPTO_CTRL) |
@@ -281,7 +279,7 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
 		goto theend;
 	}
 
-	rk_ahash_reg_init(areq);
+	rk_ahash_reg_init(areq, rkc);
 
 	while (sg) {
 		reinit_completion(&rkc->complete);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
