Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B61C6FA92
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBdeeIzR0mCBjAbeHq+NQRSc9l2stPfhyQ/lAKob2SU=; b=gL6Q7D1rQJZAEX
	SwmbY+ATTex8K9Ars8Dm7VhPz0SzgvQVJYWryuS0uLzxYKOe5+gSyA0u6c1mylYPLo2TnSJpiiZUd
	8Zafj3jE6mve/Kr4vaavtMx0dpaMygufw+febpMYyGf3yG3rc7X5dxMNpJvQKIFGgKXGWYFRDt1WO
	Y+5Njy9uMQl+EF0aICG3XIy+mLCC0Nz5XOudOj2qDm12HBMdbP1Sxi9fEUwkcx0pJeqAGmw/6WB2z
	R6YUJhwykIZHw04DM5REaU0MlWMVkQeANRLOekFIWUT5Qv+gjpYdybIZKONEMscmKcdpX/WOE4Kj6
	/jOjz1rcvvvfSuzFwL/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5X4-008y5z-AJ; Tue, 27 Sep 2022 08:01:34 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5RY-008upW-FF
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:55:56 +0000
Received: by mail-wm1-x32c.google.com with SMTP id d12-20020a05600c3acc00b003b4c12e47f3so4952999wms.4
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=cJE9JrNh4HvbwKuPRZxdjE4sOr8yHsnud2KqNuPrCRY=;
        b=20kzfWx9aFDUAIT6CRNbmts2xKF41R3yIU2wQhMgemqKUKm9PfGdpdzuA3A7EFeJ6H
         Iok7JfIJA8T6hUZ+qSRMg914u+8yUXo2KS4PCKgbA1w3KeOklMBs1KPtN9soEnGDIz9U
         bYJ774WZT/cLBQ/uNvbZkJz6DCK6FT3peZunOxgHG9OMq+51o2soutWOn79dSpqZjqpf
         Mc4ASvDawv4rRHqam72yB4bJCJGoiLljB6VjuRs2y42cj0oUPUnkC/Dev9InlFQGKCt8
         EcuQxhssHuLmWz0fusJlKiCjh/0z9LR6cY1XMUiD/SfNH33cgAQRdiWUa4665WIAyM4r
         jj+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=cJE9JrNh4HvbwKuPRZxdjE4sOr8yHsnud2KqNuPrCRY=;
        b=5Fv6EhE/lbbMOmbFBoyUhGytGD8uRAFjZhxfX634iF+2GD08bbBqUFHrGKiFH7zb1U
         vJsZzsigVBhIBnk7oIf1aiP4F53BI6tPP2I1bXojcUJPYa6fqGfD1PW8N6MWGLKXEWO3
         mBujKJzKMUUh+TQcCTo50ruGzNCCvcOO/yHtik0QMwPz2llsHG57EBFFxyEzoCEjNp/x
         spx/ldBZmamZHcCwJDkEIs1h3TUS7EUPq1fhiU70qDnVTgLF1mqv0TTYzh/27PylexPt
         Bk+Rj43EYK0/cMgJMrHPDhr0UnwxKqSy7ga+Bh9hn5324EyDiJOk8MWrPXvza1oXy5Fw
         ba3g==
X-Gm-Message-State: ACrzQf3rAhZZWb+iAa6I2mC0o2DWlXeP85dE/GJ4AIuK/Vcr8hBCcK5/
	WeAGVNTBPYyOfMsinSvsBzHtag==
X-Google-Smtp-Source: AMsMyM5Hup35F8JL91OS8GUnQcPPFYhGSM2YCoZNnF0Xb08xMtOKnNvRAzZkn4zQ06arBDX8UGaGGA==
X-Received: by 2002:a7b:ce99:0:b0:3b4:9031:fc02 with SMTP id q25-20020a7bce99000000b003b49031fc02mr1635504wmj.154.1664265352028;
        Tue, 27 Sep 2022 00:55:52 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:51 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	ardb@kernel.org,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v10 17/33] crypto: rockchip: use read_poll_timeout
Date: Tue, 27 Sep 2022 07:54:55 +0000
Message-Id: <20220927075511.3147847-18-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_005553_031999_21E797CD 
X-CRM114-Status: GOOD (  13.70  )
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
