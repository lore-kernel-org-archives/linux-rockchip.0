Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0F72C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VZqcCe8IADHCQYq/rkak6V89FqA2sz8XC1Rvm1JnyQ=; b=tRmHIIIODzvJzO
	QaNCpHtq25MK+hcv/X3K9Qey4akYxqfPhCJ9GcLQiq4bMK6FOyb+VS1TqVVxceFESeUubcVDETHhH
	cHYTpa3brpi1GyANMwfedGgdR4zQpE58kc8TaCDFOEPKzfqeOa+T60ZZb74GBufBb96nhvVRnjZmw
	nPum3FV9/dv+lUqVdEVeMFEwX36e4NmzevEZT+uwV8g8lexQc5F/Uc24su8V6XpgEVEtXTzdgon34
	vCUtayc4r9WcfszqJ8GZNMlVP7xwA6WR+P/1lWLF201Bwjvl4weLch9eTmMFsg0KiL6U+nedrvF4o
	xzGMi1HmY4DLmXZRPzTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiaB-002PFv-O6; Wed, 13 Apr 2022 19:23:15 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiLD-002IEM-VD
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:49 +0000
Received: by mail-wr1-x42c.google.com with SMTP id b19so3963930wrh.11
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i2uYJa2gxIdaD8fQBCxMjwb6E0s7Z3esdAlzwfZv714=;
 b=7Le5EEHXMfNQFXEeyGRkW58elygFVidUMxoXIfT30Nz78GOeXzyatYmN+eOrDpHNAX
 xgdkwbPIKxs3wTY4Q6ebcogxaPv423JnQIAYgeOp/JhHqbJwaPTdc5BA7sivZk62Shaa
 1vQMuqN1LCUY1eah+aIjh4Wu/UgodCMIvGtv1LilYCr6mjrOlIJc0mZw75iPP0KyizKe
 NUpVthp5G//CaoMRCjUVe8GxC/wx62oHJULKh0W+I40NApZyKsm0Qo6CneCeCAhSH28/
 Y4PfX4w4T7jyL/Avc66CphnlvD1r0+keTM/fqEF5CCRnr9Sn4nhHpJ1MqoB4NtIpkiaC
 o0sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i2uYJa2gxIdaD8fQBCxMjwb6E0s7Z3esdAlzwfZv714=;
 b=FCvtaUfrWRQXZrkZIa8F4FpRnhMLy4AgVLOmq4cmVdDYyUH0wiKcjr8o0l/JHgBo0/
 mrvjLyKLW6T8SMYLGbpZrnuoUyvhYMJ5j3oOHzNi4PyrqpY5dZiyqnwbVli60U0E3OUS
 2QBCm+Eg7B+8lSpYXFtuVPgOGltV5u/HWrlLlK17KF5dWiGLPxfE7z94bVylJZvAnjyZ
 FAk1UtWpsI1ZsxUGdRprXOCLqO+N4ldsgYPgSpuzl1PMYS5PMNFhrNcAKP3R4zxqsGRE
 cEK1wU06l/vDwddQvSWf+OB4OXANhStUIb50jIAo1G43/Mu7NAal5NvvRja/yEFPfhox
 WU3A==
X-Gm-Message-State: AOAM533zE938G8UoI5A5rlzIX1jRkQc7qr7StgYeuJsgzZ2A/khTatfY
 W6oG+tyYVhhwxD3+PB2D9ngpZyMNwfcYoQ==
X-Google-Smtp-Source: ABdhPJyMufv5w3Q0Em6zZifrosMN9dLXnPQkZHsdSYsXYz4sWAA9h5U+l/ojpePovhDVwZD60o4YlA==
X-Received: by 2002:a05:6000:170a:b0:205:8a7f:c0c6 with SMTP id
 n10-20020a056000170a00b002058a7fc0c6mr238586wrc.702.1649876866655; 
 Wed, 13 Apr 2022 12:07:46 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:46 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 23/33] crypto: rockchip: use the rk_crypto_info given as
 parameter
Date: Wed, 13 Apr 2022 19:07:03 +0000
Message-Id: <20220413190713.1427956-24-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120748_043181_8894AD31 
X-CRM114-Status: GOOD (  10.68  )
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

Instead of using the crypto_info from TFM ctx, use the one given as parameter.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 6a1bea98fded..cf0dfb6029d8 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -254,7 +254,7 @@ static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_reques
 			     RK_CRYPTO_TDES_BYTESWAP_KEY |
 			     RK_CRYPTO_TDES_BYTESWAP_IV;
 		CRYPTO_WRITE(dev, RK_CRYPTO_TDES_CTRL, rctx->mode);
-		memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, ctx->key, ctx->keylen);
+		memcpy_toio(dev->reg + RK_CRYPTO_TDES_KEY1_0, ctx->key, ctx->keylen);
 		conf_reg = RK_CRYPTO_DESSEL;
 	} else {
 		rctx->mode |= RK_CRYPTO_AES_FIFO_MODE |
@@ -266,7 +266,7 @@ static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_reques
 		else if (ctx->keylen == AES_KEYSIZE_256)
 			rctx->mode |= RK_CRYPTO_AES_256BIT_key;
 		CRYPTO_WRITE(dev, RK_CRYPTO_AES_CTRL, rctx->mode);
-		memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, ctx->key, ctx->keylen);
+		memcpy_toio(dev->reg + RK_CRYPTO_AES_KEY_0, ctx->key, ctx->keylen);
 	}
 	conf_reg |= RK_CRYPTO_BYTESWAP_BTFIFO |
 		    RK_CRYPTO_BYTESWAP_BRFIFO;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
