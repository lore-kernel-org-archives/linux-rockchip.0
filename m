Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A825ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 13:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBdeeIzR0mCBjAbeHq+NQRSc9l2stPfhyQ/lAKob2SU=; b=aJm1FuNmi+egKI
	JUzDSQJe0vlzbdoQjYuIB3Qe5zJxrOE7JLdG3IHEVxIdkHWPk+eVZnC9cpa5h+FdGBzK+Iq2k4TdM
	FsAtKEuZ5AhA3UukgAEXaCPfWhigzDxKwOXC6wdQI1rOx7zJc3B+8qfZeD3T99R2Pz/pUfQ9Djyl3
	ImK/AmvpQvtqL0ZQ2ZLPtOExtzIAe4Jfg05Wrs8OZ0iJbrQvilff5IkOi2mMlLgQxCqQj7yz1xdc4
	buAyqTjCLsMKBJXnLSjGHfZwlmPBCBbAzLVcwraTMNrhoGtpMNhzPaBsu7BTc3ovPddGB9dxJvr8T
	XUmk2CXIo3zhxD1OO6yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjp1-00Bpyi-2P; Thu, 01 Sep 2022 13:01:27 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlG-00BnnT-Qy
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:36 +0000
Received: by mail-wm1-x330.google.com with SMTP id d12-20020a05600c34cc00b003a83d20812fso1400380wmq.1
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=cJE9JrNh4HvbwKuPRZxdjE4sOr8yHsnud2KqNuPrCRY=;
        b=eJrWPz90vueiK3A/H8oVrUd6nj9ISq0Y+RyhJZ5xFG8jbsh6YMVV2c6a7fS9nLg3t/
         ci+2vZYIKoiUtrJvUlRhAGFASFokpdE+VnphNpJWQENXRBUANKKuSZCSSE8uC+iF4WqR
         x+cx2Wh9Q9EELsvds6YMhjoCeRBcf3vEBl4rSOroVYiKzWUOC0S+Cf0q86SEDNpVnIPw
         +3RLYdkQdHbAzhtA/i0oT9TS2xguJ9LTjKOHuK2vWsBqIsjYUiqBT4VGa6FDNl5KtFP+
         OcnGXZlih/FsSXZ3iKnQAccmsu8Ioie5N0AYuJnzFGeWDBPJuZ9MZr9wgWmgjQSCLHoz
         OUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=cJE9JrNh4HvbwKuPRZxdjE4sOr8yHsnud2KqNuPrCRY=;
        b=4X6YLY/f6DK7gKYQPJy9/SYSFND/ESmmJ8Rs/Kxi7R/cSrky5bnvlIQoMBMVf9DKQ0
         +qqQ5NX7WQQ+d2mnviK/yDxjF0Pm7UEWJ2qi+XIjd9uvEwsROcnW0na53ApDmx4DduB2
         Y3OQKqaZPufUth8/6nb4qxJ8jLEzCzeFGVTTEff/Vge6vtCjS0YcVBV33udj+TUgTFXw
         h7rEYJaa4r1PODZcZk5RhdMx0PNQrBB/hdKKJYhYfZF7FWuuRw9VgBQXwnmrWpj+tUKs
         u1PEGsGf4FY08G5lZ7dUx2rTEQJ7jt46SoLlBgTBYGnYiDGsIuui3R7afJSmi1lDyo9v
         p2MA==
X-Gm-Message-State: ACgBeo3oifRSdG6NiR4y8nLlB7txRyd77D6qr9g8T3OIIYmuhx1FfRSm
	TBAh7xnnQmf+dvxchUU8HZRKCg==
X-Google-Smtp-Source: AA6agR5DXoFlCKdfdusOr/u9AHDjFvT0CFyVXgc7HSt4BUV78VZv6oBoXK/8i4WguWPANHx56rJNgw==
X-Received: by 2002:a05:600c:29ca:b0:3a6:75fe:82af with SMTP id s10-20020a05600c29ca00b003a675fe82afmr5249856wmd.3.1662037054338;
        Thu, 01 Sep 2022 05:57:34 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:33 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	ardb@kernel.org,
	davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v9 17/33] crypto: rockchip: use read_poll_timeout
Date: Thu,  1 Sep 2022 12:56:54 +0000
Message-Id: <20220901125710.3733083-18-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_055734_891499_D050A7E4 
X-CRM114-Status: GOOD (  13.80  )
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
