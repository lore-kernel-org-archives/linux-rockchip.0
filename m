Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E184C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 10:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBdeeIzR0mCBjAbeHq+NQRSc9l2stPfhyQ/lAKob2SU=; b=lcB5qAmn2Qex/E
	ss6Ke01Y+14Kv8leHx34/AP2OlsddF8TmLaftnTP1ky/BTGEa/OkHvvnug8CbxI19ClznNFPorXr4
	gcKtgfTy2sBsYToOrPr2HGztsam1Ze5yPPpJSgjhWewvgDl1xd8Q9XOZXi+gMOtMRJXVMVipm8nxW
	ixhfQh7jE6ZvKiBUoy+/ZCZvfl9p9LDh4ZhJVcEfEA2JLD5QwNuN9j+CpuBscTZ0LthrklcQqUycY
	Buavprr8dOHhYByaAy0wvG7l38tV6BfbpNklYybLs6hjL/f7kKrizQeUYSzVgrcXzVPEdeegQE3Sd
	u/lTyONHQpPU59hgW9FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o92Jf-008Xz6-Lt; Wed, 06 Jul 2022 10:31:31 +0000
Received: from mail-wr1-f53.google.com ([209.85.221.53])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xq-007bxv-1E
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:04:55 +0000
Received: by mail-wr1-f53.google.com with SMTP id q9so21051974wrd.8
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cJE9JrNh4HvbwKuPRZxdjE4sOr8yHsnud2KqNuPrCRY=;
        b=zu+LLYNfYMR5w2kmcD+VYvYPTp0nJI+jT7tqr9TOwHrQicaqgP6aWYB4SxDRI4kvXK
         BTpaTst+Kf2CgpT8EMtXXOLZBdyjJltD/PkJYqQZlYlOt0DDcXWpehZHlYpOR0GPscdp
         2MeE5vjRhXLjQHwfeySb9QQrwi8wJaCfBCzq0tYbMV3hxIVrX1u7f0UgFvrHSwmSpmJO
         JsbbVnLZhXi0ihk7Ko9AtHZhwkXPjnk7t7rabDtQouXLzJb5akPuulNS3jm2qpHDr8UB
         l298OPf2l8G1OsnQjwvWuGBdVXJkdMmjJtsLQx3KyFAaqQpNNU/uML10kbrGUrtv9uWt
         k0oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cJE9JrNh4HvbwKuPRZxdjE4sOr8yHsnud2KqNuPrCRY=;
        b=1uAHs8oj1T2TuRZh+5074ksFPoGuDCfLzvdaChfgX7EbYW4SXSxN2Ry6JM2+mxxj3C
         BtEQLKDhOzEqfNjtHUAnp95etKQMSqg48cV7rSBtOo2HSG6UNWDiQ/yUfuZaeiFChgRW
         3Hmoj3D2msZb5xshqhuNEJeVryv7IBz+yFOXUVLqg0fq7v2vlltixsLcaqkQzsstSGF8
         9zPTrSJyjIT+LgelJZpdBvzoJVv2VGVB3ottOiagmOcGhKSzt1DxBEIIaEEpcATFrmR8
         z7aaK2L3RN1RBvvcrGWPmIVNQW/BHKCEHxdgr5qzsY18+AgfXIO/Ma8t8kMDSjdzkSHU
         j4Yw==
X-Gm-Message-State: AJIora/wD1LW5NTlxrN3LLgI/U38J7sy5GP7iILQ/doYWoiuiaq6l4Zh
	YaeQiaCJL3EfgeRJB2X9ROYQaA==
X-Google-Smtp-Source: AGRyM1tEKqZlLUJfN0k4nDeQgcEf9DG4eNIDN0NpdWfXaZGKmEatPTHkXZAc5xBm0SQDd3swFPHszA==
X-Received: by 2002:a05:6000:170e:b0:21d:54ac:6ce8 with SMTP id n14-20020a056000170e00b0021d54ac6ce8mr21083862wrc.43.1657098290976;
        Wed, 06 Jul 2022 02:04:50 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:50 -0700 (PDT)
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
Subject: [PATCH v8 17/33] crypto: rockchip: use read_poll_timeout
Date: Wed,  6 Jul 2022 09:03:56 +0000
Message-Id: <20220706090412.806101-18-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_020454_138978_1CB1DFA2 
X-CRM114-Status: GOOD (  13.42  )
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

Use read_poll_timeout instead of open coding it.
In the same time, fix indentation of related comment.

Reviewed-by: John Keeping <john@metanate.com>
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
