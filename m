Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72F86C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUEOJgxM8ar58SN09tDZP/Cqy8AGPFB6nWSsa52Y+aE=; b=r7YMzCdGL7p3/7
	lA1VeBUheXMUBjqC+EmfINU5ujKCldG1wCR2h1bIyFg/OsH4pllVhSGB+UH6D/muFbcX1tONBy5FV
	WeBKLr6fDe/sPuT2K6WWn3PL2xzRJbL7gS8C957ZE9b2dHM2WiwPwN4+4mg4XVhrx34WAYli0iMOf
	UzgXftjvJAP4rmWxfUjOzE5XhbWrRotMGAEejW0UER2yjibCXYAwJkSpSJ0KHMYEnMe0eeNENlEOo
	sGB+3rKPlCTe5nzQmvU55B/SHbqj291UN8cOBANFEK6Ncv2zDfMLLrsPDTeZ8fkmn2eI1Fsgn8wHJ
	IL5NQfCVBeS2zP05V5RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnaH-00BOlf-6P; Sun, 08 May 2022 20:32:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnnWB-00BLwj-Mt
 for linux-rockchip@bombadil.infradead.org; Sun, 08 May 2022 20:28:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=R5vq5Bgg0GZnREfAKsIq2BCzfZlNqniOuDOVX7ptgS8=; b=ZvLGyHI59Fquu3+C2tll3b/j6s
 hgOT3OXn9Lo3Uj64UkPSiU2nuL2NNhrl3OKDeml74BYiiTTFVbITVcSPRPdrkYKGjIPcBf5eEEzxg
 R99booL+pR3QWoiZ2s3aRDrTTwDdJONXMShpR3aBq1xqv1758hIRRbCVhdvSaoF20kx9yPf7tKVct
 bC1V9sKQ5Ubp21vgFrJiL2uz9T4xAEDrbzz+Sx4EZ4OPkNUGa4Q9RMH4SWmyhp4URe8JwsOR0qMXj
 RbB1RUBRIvFIaYkFzgUTWkUOztYC900Rq2JLzH2c6NK4zFcuNpdY7u0q9Y5xtXTp2X2IvN+4lbxPS
 7+bA9urg==;
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8m-00CL50-S8
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:27 +0000
Received: by mail-wm1-x331.google.com with SMTP id k126so7290659wme.2
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R5vq5Bgg0GZnREfAKsIq2BCzfZlNqniOuDOVX7ptgS8=;
 b=JM69r6XBahlTafzNdFRMQ1zAiMSwqONkuy9jTWoq4dOtKpEQTtc4Z9JnYmHyCxVRZX
 78YFg923+WPzFGVNs+Hh2YvCfgzWoV6BqgfF2DHvAQJgfHbk+mZ6b8mLNVdwRWxbXHLY
 2V0+26mKwFr2aM6fpbMVOb5SVsV+nRRXv+18LoiPaxOo4lQ+j1C7NMHavr+ac/UsFr3z
 xyEzJhII5AHAeoXsvKU5ve+pMrWl06AFrpn3LQZc4RGFxOF3FaZ1ZLjps9WrDgiQUYcM
 2BoRqu5UpP9V19J43GDtRI+sMHk6XTjB0qPhBOQer+HEBd6n4FPg/o7mt5y1t80tfpNo
 f2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R5vq5Bgg0GZnREfAKsIq2BCzfZlNqniOuDOVX7ptgS8=;
 b=lv3/bjBLDMitzlc3BfX0l4N4vu/eihzxh55kIl3jqJ8PVQxfVAVrn08RR2BdEzD/DZ
 rFBwCFzzgxQnOBAb0l60pLzlwcKvwmulIBR01JDFU8vQRQHMJl25H57YOl3HRrwcs6qF
 fv7niiKXQo5qb146YvwGp/seNwG8tSk3gW90+1FpnzYQLmLPB2JLHM1nbjZ4DidXhxSA
 Q1BC4Mx3eKFsp9ehdEXulyGCfeVhnDiZFY4vCKkJk4q2sLg6HGHLvk8rAq2OIfCU6rVH
 Gg8xXQt4o+RALZGEm3u+9flGUdY6hJKIa6z7cs+e7fS0K62aYOOmrbQ9cnkT3CchHbfY
 xY8A==
X-Gm-Message-State: AOAM530tbHc5fWr7XYqrgOLHJDtN2ObfrIzKYgEEUiogSVdDfFGJS1vM
 ot+EfWuOrtDnBSbx1y0FhfivNQ==
X-Google-Smtp-Source: ABdhPJwuHXGm8xhJzulSq8r+KdksEF7KcqMZvOMvhqAwQXJoVgrWUqGFUSaQq8+qZfP3sZ2OZkpN8g==
X-Received: by 2002:a1c:e916:0:b0:37c:f44f:573 with SMTP id
 q22-20020a1ce916000000b0037cf44f0573mr19376737wmc.179.1652036422599; 
 Sun, 08 May 2022 12:00:22 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:22 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 17/33] crypto: rockchip: use read_poll_timeout
Date: Sun,  8 May 2022 18:59:41 +0000
Message-Id: <20220508185957.3629088-18-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_200025_273981_EA940A42 
X-CRM114-Status: GOOD (  13.30  )
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
