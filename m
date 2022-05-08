Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3456C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 19:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvZNIDIhcnabxTjE92iLjr4QMJFv2RIy57SH0KW3teM=; b=2DAKe/pUbXZz22
	G/O7MkC9DHbFSmt5TwqkQDDjRv249Frjzb7x68dm2n70nVfPsPP/ESMIe3gIWcPl/R82Wy5QdKjKp
	GMyy4kukRhIXrfZgSl4Hcxf7qVJQqg2D9vVxrErjVK/BNYDvE4BKgxU7BPNFRXUbNWf7kxqFBY5uy
	ncZXX8SgWlWxryDfLmHCuDJruqTzR2dJDXyQdbPufWXLQytWO+vdEQy5aihoiu1ZqOykkwzUzPsxD
	HTV0Ra75uU9YTHJqnCuIc6QHmJLv9NGgTszQPRkWosM3cZmxMV6/t2g5IdJeJ3s1krWkq8u54BssP
	QBo6bpgJr6OcYvqbtrmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnmSC-00B7nm-Gn; Sun, 08 May 2022 19:20:28 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm90-00AyV7-Al
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:39 +0000
Received: by mail-wr1-x431.google.com with SMTP id b19so16696058wrh.11
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=;
 b=8NgyOBgrf29vd+obhJNvgE6/+k6xvZTKqauWZrHZIxwR7gNlLjf14uG9Prvr2EOxgY
 /gqXcgfqCEp5c1KQUpYDNtgcNqhyUwI1Y2D2KgrKgt7YbwHSGKszt0ffP+stDMNd1Jui
 tV4lP7bFP7X3YAqadOWixpgqiZNgwN+QGdaTofJw16l5DdgphENhBKz4LBILsDfapSev
 +cOlxc4emLmgH9cOsq4AabNveDAo9mQLiE14/TpuXyYkgPuOGRVOCWOY2HMAziN0qRbe
 Oc/olfLiU0Egc53lk2WOcm7TijKrs2ZPFVFlm5PBozyOiPEmEIlQ7Oeh0bkRkhP021sm
 qWDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=;
 b=MFRb//Va/RYK/0vVExjrGICRjbqdUUO6AVn+85hOEXCYntOK+q9zqBzuOwrK/Z1yD0
 FJxff0J0S6WYTc69aYs7VKXMO2xvGQtggYMMFM6W1SBzRXb96VsBA49aLw/GVl38ktZn
 oc6xZ6k+KVkhJES81lT5QhOuIeMFVMsQjNlpZsoXLmMmvE4lEPNLkig+GYAFlJjm+DCd
 jqX0oBxU2P8TomKbSb1mOaTdD9tla91kBl5P3bjmyY38MYapmPPHAAKIzMoqINw8K6RB
 LVJFm6yH745/TgsIwru1urDNMuD3WwqeZ8rvpXX/Laqf10S1t8L6vUdDwOgK61T6pt+0
 6SKA==
X-Gm-Message-State: AOAM530DujejGqTcrz30sMpYn+hNpJDVGTDtI/1zMY6z0yecX8XQlA/3
 E1Kz4WV/HnkXFicTJy1G87c0zQ==
X-Google-Smtp-Source: ABdhPJyXUfndJA3IiOkW+IQ2db9ggpZ1qHHw52Nbd2i/rcN+ItF3YiiH0otZhhTNABlg9zKO6bhW4A==
X-Received: by 2002:a5d:47a6:0:b0:20c:5f3d:44b8 with SMTP id
 6-20020a5d47a6000000b0020c5f3d44b8mr10392956wrb.216.1652036437936; 
 Sun, 08 May 2022 12:00:37 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:37 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 31/33] crypto: rockchip: rk_ahash_reg_init use crypto_info
 from parameter
Date: Sun,  8 May 2022 18:59:55 +0000
Message-Id: <20220508185957.3629088-32-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_120038_434961_C8561B49 
X-CRM114-Status: GOOD (  10.23  )
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
