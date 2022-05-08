Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 854B3C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 19:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+k93FaQEjB2wFnG1phRSb8vtc8x2gpvq6N4hUN657U=; b=zdpSITkzC7xIUZ
	zpYE/MPOkoCqRv/4DHDanOh+cNOm0hngrF5TNKPgwhcx2cwrso72XvaQQXJcX49GpVKzvv/PWP2cc
	T/1aUg40Cr1qCLmymCRrxkpqdstcDJbfjFMiPElENmnuMUHBVAEpUBLVwXQP6DR0LxiD+pX37MsUB
	zI3eZ+mKo6eLHv9+//XyxjjgRYX2BmYLPN3qO3C8jMN7SdhbhNjtOjFbKbOwxyiPJUhkVyMivCzbY
	jNMpWUit2AoOwePT0rV+qX1txDMxWjZeCuh2o+qDSH/F4P0oZWHGKL00zGkyP29IaLFW1TjKXaVE1
	H0BUPR3+Izh0qtfEMC/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnmOh-00B5ov-F8; Sun, 08 May 2022 19:16:51 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8c-00Ayaz-UC
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:20 +0000
Received: by mail-wr1-x42e.google.com with SMTP id i5so16691336wrc.13
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OBsPBZvatJoTqYtGzbRZZV/xp+iQpDNUBfwoL1YNSYU=;
 b=QqP1kUF2QwLz72c6IDPIh6AOiDLhBrJnK6HLNFhXbUbjv1nBfJ6Li7w2xKcehVZym7
 LCziYTsE08OnHTnm+w/t7wrqVKiukMiE6ttnwsWYNKcMl0ObL+qr3Gmk2zetgnamodaA
 cCB+CPupHQyA/atRdf5RzfshuVZ0bo7Ac7g48t0NZQdds4VfKQOeviKFf1OBSjyL3KZW
 2qiQ/Vk96QJD11zRTUYA4o6xTKLdRgnZ58PB1rfIWpvhYepQqM6w9y6Mt6V7kvXrHhD8
 n8CyTtJuKWriKFTW70HSZwk9jc9NMz63jYk1/YNB2o4bLvvexhx1iqnTFLL5cISXoHGQ
 9Qxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OBsPBZvatJoTqYtGzbRZZV/xp+iQpDNUBfwoL1YNSYU=;
 b=E9EVjbrErGsiGlIDQYvfdnpw0g+BiP250Qrm6IuCwUhxvhD8rMPOxvnpB4zFsS3wX9
 rNG36nP5Ib2Bi0Bukw4tE1G29nuYqpCxyqmRJC5dUkXtnpL1Qw/mE5oy7UN1T9WaksTM
 3TvOSHbFN6exjQfrophLTqoaWWr3I0a0CWrzOTAlQFiELZI9Jz6kVx9n1ueR126ccdKq
 9AjfMPdYPu/kL/bee/ZLL7G8XVB0zh1X6CmDNsugAM7qI+wn4ub46GkvdBBFGNOjHPqQ
 wqpUX9uzyYyCQbmsd9JtOYTlOu7ClXEpfL5ZuyBA3z/jVfGtvz92NUFW60PJpFPOjkQ5
 TiiA==
X-Gm-Message-State: AOAM533hvL6tjnoHOdW7ql6fikPbn2aykYYl7fDlSz+2rzQ5J1lll4/f
 Tavla+Mg+gemVE/IORmYHD1mfQ==
X-Google-Smtp-Source: ABdhPJxa0iYUbnaryiBuOcVSF0M0k833ztD+R4N14Nu6FF7EhG9Oj2gwdTmgrQPGd6iC6rG49sB9bg==
X-Received: by 2002:a05:6000:12d1:b0:20a:d901:3828 with SMTP id
 l17-20020a05600012d100b0020ad9013828mr10662249wrx.313.1652036413376; 
 Sun, 08 May 2022 12:00:13 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:12 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 08/33] crypto: rockchip: better handle cipher key
Date: Sun,  8 May 2022 18:59:32 +0000
Message-Id: <20220508185957.3629088-9-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_120015_064184_951D4F7C 
X-CRM114-Status: GOOD (  13.08  )
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

The key should not be set in hardware too much in advance, this will
fail it 2 TFM with different keys generate alternative requests.
The key should be stored and used just before doing cipher operations.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
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
