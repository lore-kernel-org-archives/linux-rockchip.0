Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CD09C07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 09:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAPXXihdVJ+21V4ph0jCloTOLOp7bS1fGX26qrL/Faw=; b=b0Lv9ivhI+01u3
	N8wT1E9onaSJcnYiE2K20VI/HCD5P2SU8Kf/Cixbh6hZR88dR5ggFpIwDhWFjCoHKO5uCaleRzmJC
	aht2B570dye0i3wuu26s9H1U5kq/WuiSI4stkmc9ivlH2edtgfkirljnaCcnxbg1YB4ght5a680sW
	sGTCiZpCVd13wrGc/2fmFGSyXvVgXteLFZBFH5eElS127OIVs2bPJ4nOSUr3Sqo7PnhmHi2gWMj6z
	Wc8ICmcOISbylFtln5WsoXBXNpQLhdxVxAi/C8pfMDjDr4yLbx3ttrX2Rdc9gGvABEOvGI892kE0u
	jHinzbq/RKYx1Tl4YBhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6Zr-009OrK-Tx; Tue, 27 Sep 2022 09:08:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6VC-009ML8-E7
	for linux-rockchip@bombadil.infradead.org; Tue, 27 Sep 2022 09:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LTH5XZUoNfw5j5g91Ov715oBhaysSZASayzIPMZPNtU=; b=GZFu+DKez54wB+YWepljONMyEJ
	yEawzv9lBLdgLmUTIB0X1MPPfXCOiSK6FFvEDPaXqvCgTKNCyInrdN3MZtf8Rj3dZLvGLyvWxpNlU
	MtLzM5jYDFXtDu89Uje6DT3vXiFzkmkqFaKErgBV9JUx2GNjm1NMQUNVJ2h992+kYy9lRPU0twPXU
	pTwqyvTD0JMl01tILDXHELus42JfFVhrvhVSZw8NsPoEMDwRZWuiAxSuC4CfrQMDS0Xzc/mZfvY5o
	TSiUViCLK369Yb+qLejRh+t2IRMsLP4xT12ozRSvM6yvi16Y3+qL9SFpBzufFCQd9h/MRH5YMlOFO
	80MS2AQQ==;
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5RS-00GEkh-OF
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:55:51 +0000
Received: by mail-wm1-x331.google.com with SMTP id ay36so6005149wmb.0
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=LTH5XZUoNfw5j5g91Ov715oBhaysSZASayzIPMZPNtU=;
        b=lDy9N5u3q0mT2cwLyphmqftoyVJuKq0rsENhPUgJwacRs225h0DKbzz8pao3e47XSU
         WTyoES77IkrhL3tcwXG7a4+LU3TBU7wvhAx/Ca+M8zYS2SdPJoGkEW+UzlbQQWqsI5RF
         jaap4fCW4O5EmpzV0Ycb4x/4ez5tGA+oIpSWpsQqP35K3OaBvaiq4VzkthCUxuGXxiz6
         iNp742QOPH9/geZOxwN5QoADGNUOgIbZjJWOYk21B2UvymXznhnW4wWy7Tw1qqAbDZjp
         Wy2wen51FkD4h/QvbW/tjQQeMZottNX4te6fLlKXApMbznNgfvpDNRt5PyBTIBgzfDyx
         CLlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=LTH5XZUoNfw5j5g91Ov715oBhaysSZASayzIPMZPNtU=;
        b=5rtquskjvyRk6ggpvMJvr+1pWxmBwrBIEn50KJtxlmoHLKWyFy0NKRBdOHCZ429wV4
         Qg47xteTDnW4KQMo0PU5EVZ6mjNWjilSEHak/5MU9bnILDX8dN2pCzQ0kw101EI80+dI
         diFN1Lky2nuWf31EWXvP6gfa1gGYoQynx3YysTts4IjbC9i5jOKIujbAhJZkgUMrbFWN
         bNUAa6bmuKGayCdubmo8hycCqDz0y8UpNEe8bhzl5vEmW8W2hRsH6kF+ndHMr3sGJeuF
         V4bEQ2pEgd71nw3J1pk7De9vjlyi8c+zJslJCWqM8ypWm33mHgoObNJjJ1w793u4Ajye
         vvRw==
X-Gm-Message-State: ACrzQf3u7De9srbkWDH/SmB2wTW4YNc7aXHDxGn4oRCi38SricydPhsY
	woCis6GMP26OkA5OpNkAaQsGrw==
X-Google-Smtp-Source: AMsMyM5QYaBobM6O/JnE5Y9aLHS69/vVzgjRnBvc8zF5O/v34pSApzWmO5D2mRQ1+ELj7sFMDXncVg==
X-Received: by 2002:a05:600c:4256:b0:3b4:7cfc:a626 with SMTP id r22-20020a05600c425600b003b47cfca626mr1643360wmm.187.1664265341998;
        Tue, 27 Sep 2022 00:55:41 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:41 -0700 (PDT)
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
Subject: [PATCH v10 08/33] crypto: rockchip: better handle cipher key
Date: Tue, 27 Sep 2022 07:54:46 +0000
Message-Id: <20220927075511.3147847-9-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_085547_797184_C4CDCBB9 
X-CRM114-Status: GOOD (  14.05  )
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

The key should not be set in hardware too much in advance, this will
fail it 2 TFM with different keys generate alternative requests.
The key should be stored and used just before doing cipher operations.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.h          |  1 +
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 10 +++++++---
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 8b1e15d8ddc6..540b81a14b9b 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -245,6 +245,7 @@ struct rk_ahash_rctx {
 struct rk_cipher_ctx {
 	struct rk_crypto_info		*dev;
 	unsigned int			keylen;
+	u8				key[AES_MAX_KEY_SIZE];
 	u8				iv[AES_BLOCK_SIZE];
 	struct crypto_skcipher *fallback_tfm;
 };
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index eac5bba66e25..1ef94f8db2c5 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -95,7 +95,7 @@ static int rk_aes_setkey(struct crypto_skcipher *cipher,
 	    keylen != AES_KEYSIZE_256)
 		return -EINVAL;
 	ctx->keylen = keylen;
-	memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, key, keylen);
+	memcpy(ctx->key, key, keylen);
 
 	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
 }
@@ -111,7 +111,7 @@ static int rk_des_setkey(struct crypto_skcipher *cipher,
 		return err;
 
 	ctx->keylen = keylen;
-	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
+	memcpy(ctx->key, key, keylen);
 
 	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
 }
@@ -127,7 +127,8 @@ static int rk_tdes_setkey(struct crypto_skcipher *cipher,
 		return err;
 
 	ctx->keylen = keylen;
-	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
+	memcpy(ctx->key, key, keylen);
+
 	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
 }
 
@@ -283,6 +284,7 @@ static void rk_ablk_hw_init(struct rk_crypto_info *dev)
 			     RK_CRYPTO_TDES_BYTESWAP_IV;
 		CRYPTO_WRITE(dev, RK_CRYPTO_TDES_CTRL, rctx->mode);
 		memcpy_toio(dev->reg + RK_CRYPTO_TDES_IV_0, req->iv, ivsize);
+		memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, ctx->key, ctx->keylen);
 		conf_reg = RK_CRYPTO_DESSEL;
 	} else {
 		rctx->mode |= RK_CRYPTO_AES_FIFO_MODE |
@@ -295,6 +297,7 @@ static void rk_ablk_hw_init(struct rk_crypto_info *dev)
 			rctx->mode |= RK_CRYPTO_AES_256BIT_key;
 		CRYPTO_WRITE(dev, RK_CRYPTO_AES_CTRL, rctx->mode);
 		memcpy_toio(dev->reg + RK_CRYPTO_AES_IV_0, req->iv, ivsize);
+		memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, ctx->key, ctx->keylen);
 	}
 	conf_reg |= RK_CRYPTO_BYTESWAP_BTFIFO |
 		    RK_CRYPTO_BYTESWAP_BRFIFO;
@@ -484,6 +487,7 @@ static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
 {
 	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 
+	memzero_explicit(ctx->key, ctx->keylen);
 	free_page((unsigned long)ctx->dev->addr_vir);
 	crypto_free_skcipher(ctx->fallback_tfm);
 }
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
