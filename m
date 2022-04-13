Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C7C1C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUEOJgxM8ar58SN09tDZP/Cqy8AGPFB6nWSsa52Y+aE=; b=sd7EAK+O/WcWjL
	l3YfIrJ/9HOAEnwo3KNKCQagY4GXyfOusJ/k9Ojch2uSnPykrqPRi0BDieH3aOl0ianc0o3DPp/2D
	7Fwz3L8TNnHOCc+3qbdCy2CGvD4tpp59sSCHwzE0ShqGxAbg85hcdpZhy7M0tZqSm4WBxayjPxEKL
	22lLjD8NZg5QHTcFX7RR8rU2RYIU+KgwopbVwhWRgBmKNT2AuzqtBDyU+ftYqXAdJxb8gh2pPMlYf
	TBhuHVGGTP/px1cVQ6jIKSeneBLRfhPQl7YzYLi4I5+k2bB7O6boz6EEZKHepHtKGegCJcmfuv0Dg
	Yj9aMC1bzeFJWCwXJntw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiV6-002NEq-10; Wed, 13 Apr 2022 19:18:00 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiL6-002I9D-VY
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:45 +0000
Received: by mail-wr1-x429.google.com with SMTP id p18so3168897wru.5
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R5vq5Bgg0GZnREfAKsIq2BCzfZlNqniOuDOVX7ptgS8=;
 b=kyPfgqPdX5bKPeUlT6rwUXDmRRnm9phoOWKd2lLRfBui57/iosZbbybnVQd1+O9PHA
 rE70HAXbBr6Z5MYEOVk0excL9TlcmbNdZZ10pQEQDR8IWVYiMm/J6VuKX1iwxs02yTux
 OHVpdgNN0w0h3xasHgaLdCA0wOicFnSU1+kwZiS1ug+A0RDQZjos9TocTMwetvJFXvcr
 wACUQkT8xa5/TztjvoDqCAN0suUwAl06Y9GwOFuluzcH07bcIm4gBEFmxu1wIa54wNJH
 lIAVz7wDoPPKNdR0lx/7QtDZy5rNYVindttxvUF5ikRvLdVQfi7RbOPJPqOEto4tDwaL
 DjtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R5vq5Bgg0GZnREfAKsIq2BCzfZlNqniOuDOVX7ptgS8=;
 b=bNbd3J5pqhpU7TbbqqFKHq0mH04eOXfLDjtDvLPL51v78m6RasTHn1OFolimd9ceZy
 LipwXgf4qfi0F7jXYblM/h9qeGtqxGAJzldprLpbRzIIu1x2dAzd9rS8dD8Omt1YxvEM
 NAXfsK3YgVPtg7sOfhMIwFq98//evDGQSuYQOtMvXoYfoIpsqD1PyIIiIo+PvHldjkcR
 upC9ldUYLz6uwNCRIDZW4Q/WFIrFUTscUcjziR38Kzh0MIu3yaHp/30wbOKB+ytLh9lj
 Z4TJa7FvxmbtHeRIxkTE4iGk7tZdG5IAE6hG2cBl1kM1Q30stMbfAsiYYODADuht/ves
 6J5Q==
X-Gm-Message-State: AOAM531E76ez/BkFvoPRsr38A+X+um7UyuLeL4+nw5iw7T1l9W4D3Fv9
 rF6jIxcrUCZqhUNsm3gCVG/Lkg==
X-Google-Smtp-Source: ABdhPJzC+WzU/9ehOhCA2MTjsi0jXGnxry8CN6OaecUq8DOc3IWTzYkhUPWe8nUjlNIo8D3cPZwu+w==
X-Received: by 2002:adf:f508:0:b0:207:a8fe:c8bd with SMTP id
 q8-20020adff508000000b00207a8fec8bdmr224403wro.313.1649876859713; 
 Wed, 13 Apr 2022 12:07:39 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:39 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 17/33] crypto: rockchip: use read_poll_timeout
Date: Wed, 13 Apr 2022 19:06:57 +0000
Message-Id: <20220413190713.1427956-18-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120741_135534_38113595 
X-CRM114-Status: GOOD (  13.19  )
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

Use read_poll_timeout instead of open coding it.
In the same time, fix indentation of related comment.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 137013bd4410..1fbab86c9238 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -10,6 +10,7 @@
  */
 #include <linux/device.h>
 #include <asm/unaligned.h>
+#include <linux/iopoll.h>
 #include "rk3288_crypto.h"
 
 /*
@@ -295,18 +296,17 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
 		sg = sg_next(sg);
 	}
 
-		/*
-		 * it will take some time to process date after last dma
-		 * transmission.
-		 *
-		 * waiting time is relative with the last date len,
-		 * so cannot set a fixed time here.
-		 * 10us makes system not call here frequently wasting
-		 * efficiency, and make it response quickly when dma
-		 * complete.
-		 */
-	while (!CRYPTO_READ(tctx->dev, RK_CRYPTO_HASH_STS))
-		udelay(10);
+	/*
+	 * it will take some time to process date after last dma
+	 * transmission.
+	 *
+	 * waiting time is relative with the last date len,
+	 * so cannot set a fixed time here.
+	 * 10us makes system not call here frequently wasting
+	 * efficiency, and make it response quickly when dma
+	 * complete.
+	 */
+	readl_poll_timeout(tctx->dev->reg + RK_CRYPTO_HASH_STS, v, v == 0, 10, 1000);
 
 	for (i = 0; i < crypto_ahash_digestsize(tfm) / 4; i++) {
 		v = readl(tctx->dev->reg + RK_CRYPTO_HASH_DOUT_0 + i * 4);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
