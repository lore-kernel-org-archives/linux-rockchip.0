Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 122CCC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvZNIDIhcnabxTjE92iLjr4QMJFv2RIy57SH0KW3teM=; b=YGz4ASZUMBlN3V
	aIgxLV/DI7C4cTpDbPC4X/hiTy4lGXcahL3X1VQkVzdj2DbtcShi0Js4Yv7XFc6Z9ItCMQR3nKU0X
	61pt8hnNT2rIIIyQRxQ9KKATdKtgbZF16OsTv7wz+GjeaWS1y1GqY9eHAxjiSIs8OkXrhfoPnxTgn
	wLPkYEi1xU96uNAhNLoXDnDHD8o9YgAJz4rY3tUwtlCkyh/PnDl8rIXaB2lxDC394kHCCkO6dbf+9
	NEEs+zyDEfQeiQqsVF5xb8zKZsSo+2vGmcQ5cmS93VKM305U/yd+soPwe/ea1qn0zw5j0jO6Bd0fE
	0ZZgzUlXxTwXMYX1Ty8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neijw-002Tcc-V2; Wed, 13 Apr 2022 19:33:21 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiLS-002IMf-B0
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:08:04 +0000
Received: by mail-wr1-x42f.google.com with SMTP id b19so3964368wrh.11
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=;
 b=XR0T/nYjcUz0ghN3xV+oUnmLR+tTIQbtkq8WJA9G0IIG5S0jsm+Nz5NEwHcwPeymXb
 uHJ6gjhMxHBbRqmViTPBrfxHJam2yiu6WT/3DifHjfhY15huHGawHuKtuJyAZC/3P9qG
 pPNOoIE6NnTVFyf+9CO5p0XOeKvFzwlYLnhD+pTQvfo7PGEXuIHHL1gWiTDSILv7DjdK
 pEftTtda9lhM8H8omnWDOvbRPzlv+73beALZmIjhBwUdA0ASDVvy50/+URh2DjQ35vnj
 G+jEzI7wjpO1q1E3Q7SE4UA+bguUkL6QJTzcNuyhZjoQtN0D0ROvO17flSdoH+DDtcVV
 Sshw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/HcULCDUWUOb7zL9pkaT5teTJK7hgsOh6ToY9+UZMac=;
 b=d3fih4uBOEcFj/khirfnENBSePFphi65FWxYmZVHTCEEwnr7PjM4m6heoTVR4e+QLw
 FivI9NKNUBCrzqDe8PM0NpeNO+d61Qthya5/czuYHAd7rXbknEBZcXl8BKsukwjKBpfu
 0mTIft0QKYhuHRfDt95DVJHUz026znEF3LmJdi/xf1+jRl6I6qhDai+JaalqTi/PuE7g
 uTE0B2UkBJLFQb/53gvu8dPeTIvu6QMhb/OFJKCnSanLOOGffLF/ZUXAFP4eU7PkFQ0X
 tPTKZ/MBdsP2BnmsgkLy5NI4NQSuKwxN7rgxl32ahFp8yaM+chru9/uTogFsBDT4jrvE
 jCkA==
X-Gm-Message-State: AOAM533TolR5RvLZr+iLgOVpJPkS6C/anzQ0JLrfWRxH0yfmrZUxaRYw
 1KLj/+cu2wHQAE95IXeQSxZSdA==
X-Google-Smtp-Source: ABdhPJwU/3cxqhT4VHenbUuq4+V8wc7KxrpdVQahA+nxn2yulLFrGoMim28IVZ30TyU4XOfIPGMJ9g==
X-Received: by 2002:a5d:591c:0:b0:207:a060:426c with SMTP id
 v28-20020a5d591c000000b00207a060426cmr231404wrd.305.1649876875218; 
 Wed, 13 Apr 2022 12:07:55 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:54 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 31/33] crypto: rockchip: rk_ahash_reg_init use crypto_info
 from parameter
Date: Wed, 13 Apr 2022 19:07:11 +0000
Message-Id: <20220413190713.1427956-32-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120802_424730_061C13A7 
X-CRM114-Status: GOOD (  10.27  )
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
