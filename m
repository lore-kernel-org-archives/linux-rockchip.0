Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 410B4C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VZqcCe8IADHCQYq/rkak6V89FqA2sz8XC1Rvm1JnyQ=; b=oH4FRxIiV8tY31
	I5UGp8bqBiYRxxoe7UH0X91flmnbRTK2UH7sTPyuAfNCrkXEhd4IX1nDP3PDu9He8pTmE7E6oKcRf
	aU/+JsAwKjeYPA7erriBaesoSVyVNPiy1ncdwFlKbKOQfHr0UsVwgkrbBgo6IAY1J4CIocFVmDNxn
	TrgI4Ecf1cmVsA3804LNRzcW2zhRkawyFWi0wEx1wzIyGsc2cypbzxlOU+L+nnubCZj/BHXGmZJU0
	Ee8IEsYmX4uW34IcA+G6bxrmvuAoLY1k7hVGXlVxAw03BvmAtxLPRH/Zd5s8hzLk3/S2CohtGuvq/
	yGSat+T3cVoMVzOGiebA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5S6-00BI46-US; Mon, 25 Apr 2022 20:36:59 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DU-00BB8m-L3
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:56 +0000
Received: by mail-wr1-x42c.google.com with SMTP id x18so22537293wrc.0
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i2uYJa2gxIdaD8fQBCxMjwb6E0s7Z3esdAlzwfZv714=;
 b=stsFLy+KyOnT4KHOXtZxRdSYL2fSyBm3x6cA+JZYRHkNhRTyz8ucwn+s7Eh207juoR
 N0KkARPD0vTa456iXV+8QfbMrirJ+62MqkePK8zps+f55qwDmSDTS6TU0fKDPjTfB2S0
 Prn0eQPV7VUJOPsYIXhZ18klUgNTJcsERWUitSCNEgaEZeF8zkQRNuKXqAqOfDX4q8GD
 3VxuVcV+grX73stEfCGS0rJDmeL9PGPPlpBIlGzg4/Ne+nQUef/AtZzf8lXyDI8ybqWP
 iiMzWkvEA2zSpF2caeLLxlE8S7oZSvoZUY4tCMi0Fju4clnN6pL6p2pb2fhQ6UjqSyHd
 opDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i2uYJa2gxIdaD8fQBCxMjwb6E0s7Z3esdAlzwfZv714=;
 b=revzdE39IAix2V2LvPXLyJooXTqZc8g8eeFy831ZdIVfwkACypLbB+maAUmMUGoffm
 IAScRXB7ModFkIrRUgy0DIZ9go4ebIM++XmaYwLjBcyoChpn8z4Oi7+5fjqXwTH3Znsz
 6YKdHRWOYocwdoigDd+BigB07FUaZkux+tYiAY8hCnnpEy0LdO6Zr619bWlLEBZN9p5+
 5hLwYVSkGERwSMwyOSlujvDhfdxgoHmO4SRpKI7pB3WmFlPkbEu0aAJL1NvF2LAKKY/U
 zFNp5temK9fNbXh84Rt/imyaSAgxE7YyzMwQv4TonZn8aW0KauEIMHhchAN2Ii2mlN1n
 3DNg==
X-Gm-Message-State: AOAM531+G/5Y+lFRhTdolvgnz0/G/Gu0bjHMhpwjt8hrljzI8G3B5j/u
 9Ma4WtSF6/XJphzS3PMwgUQmM5OWmYUsSw==
X-Google-Smtp-Source: ABdhPJyNQGAAcf86MjoKCDR2ng3p/kvOBGPAsnv1tbS/EgJYReKbwS+MiWO21XGDWnrPB5oganTm2Q==
X-Received: by 2002:a5d:47cf:0:b0:20a:a5f0:eab9 with SMTP id
 o15-20020a5d47cf000000b0020aa5f0eab9mr14943772wrc.369.1650918109751; 
 Mon, 25 Apr 2022 13:21:49 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:49 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 23/33] crypto: rockchip: use the rk_crypto_info given as
 parameter
Date: Mon, 25 Apr 2022 20:21:09 +0000
Message-Id: <20220425202119.3566743-24-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132152_777872_DF9E4BF0 
X-CRM114-Status: GOOD (  11.07  )
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
