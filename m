Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C331C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUEOJgxM8ar58SN09tDZP/Cqy8AGPFB6nWSsa52Y+aE=; b=ElKeVo/QABkNgo
	VyxOZQyxUueRGyiUO8fxDtfLIN42j/DqhVv/tiT17MKr8AKICW5SW2egEWt5Qc3xBthTWBKIgYuEE
	69PItCr2ly1iPA/Ujox6+3qphEA1YzyVS4aan5Cx+0rSN45TKPDZo78F09LNRwhUsLC/Yd4Y31IMH
	DFRF/z+tycjKJoGqk+fOnnUtLvB5jLcQrnDLGJweRInPisPV/vgRBkkQoqlauTFjMsj6cKvkFrGM6
	yasnlg0DYoBQgk6HRjYd6dVsc0RBvhvcf7Wo1NWumcQ6nVPTFDPrOfD80YMLxRzl7kZh9TS5resTj
	J4dBmphG7QsFYdduJ9KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5Nn-00BGFY-Fh; Mon, 25 Apr 2022 20:32:31 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DN-00BB5E-5f
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:51 +0000
Received: by mail-wm1-x32b.google.com with SMTP id y21so9967216wmi.2
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R5vq5Bgg0GZnREfAKsIq2BCzfZlNqniOuDOVX7ptgS8=;
 b=K5apVdfdWrDo9ukPlzrj9+9KY0m9iTK/hWQiRgYqK4IyaLYt/oe+4gOgJEV1Ut+JLy
 3bGm/+BOtad6o7dyE4SKlF+fJJGsTMS/oci4c8fLSGu5VUOhJQnmQsBasBbtYncRjs+j
 LF64bbzC0iIrv0RN1Um6AYNLpbmblKVdJ6d6Fj/UNxdJDg7nrrPiqzuq+S67FRdDF7D3
 tY9wn2O0FcbC5IaVjD5RoHZIrNowsysvogyf6bzlLrc+IXBkzr0UpUQRhqRbpsB8MTRq
 P7b4e1mRhMecvuvTBsQojNto+5d0H229E2d0lqiA8J7qZniSkmkc/t8/S67ocGA9GLNu
 2pFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R5vq5Bgg0GZnREfAKsIq2BCzfZlNqniOuDOVX7ptgS8=;
 b=n+fXYgU4r4yt9iqmSTpslqDm/19enh4dV0CHej8waTWwxdM51TGY15PAuc3V/1LBDm
 vrPmyko5j8jarvhA9FLxBb4hqtgs1eIuUXBwAEZw8u9HUC3eXy1AjJu03ReXbFDDOP5v
 wI1v/Nx7SkzqumuNnvFqAvz/8s4XsIFWaWBqVZ8XCNjAUXl0K4FR/b5+X9YIjHe2gfw0
 e9mKkIj+WkViM1M3oBlyc5ZNL7JHSsUEbk159+MUy6/xUrEwqMI0L/5A5ervwUvmZTib
 p7PCdNCcjJKBceTktlPqaJ7DElZJmliD7Ta3ES3AjRHGG8OODb41KuTD5RRWHx7784lh
 Qbpg==
X-Gm-Message-State: AOAM533k+ZG6LYBud/Y9LwePVA3455itMpSOP+x1JaV+JHqh+UA9MX9Y
 9oypW7InZrTHymFzvMyvlFzFtg==
X-Google-Smtp-Source: ABdhPJxiTR3Xs8owoOBUUZ1RHATewVGrE2jNvNEZzcFLtdHPjVHWqKyvmVdU63TsDULIwyoN/yCu1g==
X-Received: by 2002:a05:600c:348f:b0:393:dcff:f95b with SMTP id
 a15-20020a05600c348f00b00393dcfff95bmr15403757wmq.76.1650918103942; 
 Mon, 25 Apr 2022 13:21:43 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:43 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 17/33] crypto: rockchip: use read_poll_timeout
Date: Mon, 25 Apr 2022 20:21:03 +0000
Message-Id: <20220425202119.3566743-18-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132145_358274_5898C507 
X-CRM114-Status: GOOD (  13.48  )
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
