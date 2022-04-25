Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC80FC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvZNIDIhcnabxTjE92iLjr4QMJFv2RIy57SH0KW3teM=; b=iBBO4iuH57RaeW
	9urKVy9EZCmLROew0jmBxvObF2C3Czc84MtGUpe/FRiYXrpgqW3uUpf5CQsOofSCY/B7iSx+goLkd
	0JYnhmcrN/VflAvNJ/Z163A7lWhxdFwYQ4rM9t1EEc+L6/edwmtXXE9OKVD4ZSQe+bmfbTNp8Ofhh
	zGeoM5UgA15SE2kLqNtJ/NfyzO6CExcUqWjN/cXXgH39tIdoWW8guIgb5fSuzCiheuuQecyN7T8oy
	CRgJGmDowe8MNkwI3Ew1Pu6CfdB4DgERM1QPlyDd6M9KBi1VDODqcBmtyR9hEMopnxe25W8EkvZh/
	nlX1Pb16OA3bXiDnBJGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5du-00BNBk-3r; Mon, 25 Apr 2022 20:49:10 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5Db-00BBFo-Lz
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:22:06 +0000
Received: by mail-wm1-x32a.google.com with SMTP id
 k36-20020a05600c1ca400b00393f18c8fc5so253920wms.4
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=;
 b=xqUTU8xMQZJdiUUUhaiatxHt2pJ0KhhDESFWwIHZFGx0fwxOw1AAnJ3XSHyxDgaIlc
 NMdO0z37i6kh2m1Jx0hX0V+NHdfqEjupyl5rDg9uCzzOIBcdeo+aAU1V2H8oeMErHOsK
 JkIfpXJwmsb9/FPqYTpj2fsoSrbZC7Df405Tte52Pe10azA6zLzQFy6Nlcuq6uczsU3x
 HVm6sEXoG4asvDWClJmbwxnKYAX4uIa9vPkrFIracvHWeh9I5EVw7jeT+D1ATmSLH34k
 Owjjh+WVYq6JgCzrypD9mTU7tWEXkxETAVxJ7BuFtzewjAwbuu2UfjNdJ8o4806Wu+tR
 5sjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=;
 b=8B9YOtNXOy9UHGAswXxAoTzRF0YNUL8AsJXrtBTSzOsMxMckbS9gcTt4ATlTkCavOe
 xwZe0WVj4Cc6EQP7vp9TMg8w2HLR2TzE2LIiUT4KH7C7JHIKbsVUogIu18EYnBhStFHv
 BaWlDQRva9ckC+v0viFeHvh8GDyQG0iGFXz2hMSSUAk4QewM6BsC/swueriDyITWrl90
 OzHgfrcLSpt4AVL2RmONHi3FeHxGkvpU1ihoYK3wFHfzvCO68UX6SsD8b6RLWCIlUgM7
 oi8DKlyWlo5GyZng0WWNBRdVg1zGZw/xyEr2e/D10LQRpRjMtLSjh9ZiMOx6XfnRFck+
 bU4Q==
X-Gm-Message-State: AOAM531zUPdYIkoGixjBkuYFGlO5S0uESANOTTKRt8fmwbUUJXkA3lf3
 3nV68LjVQC6fQCkMDmfIIj7IcQ==
X-Google-Smtp-Source: ABdhPJyFG59O4Q5s2JRra7taaFzIKxx9HKl6TygfF76w2bWP4ST4HKjFihAcupMDMyl5BAuFscFu/A==
X-Received: by 2002:a1c:2c6:0:b0:38f:f280:caa2 with SMTP id
 189-20020a1c02c6000000b0038ff280caa2mr18100378wmc.87.1650918117419; 
 Mon, 25 Apr 2022 13:21:57 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:56 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 31/33] crypto: rockchip: rk_ahash_reg_init use crypto_info
 from parameter
Date: Mon, 25 Apr 2022 20:21:17 +0000
Message-Id: <20220425202119.3566743-32-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132159_780673_C1947BCF 
X-CRM114-Status: GOOD (  10.56  )
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
