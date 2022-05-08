Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0273DC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VZqcCe8IADHCQYq/rkak6V89FqA2sz8XC1Rvm1JnyQ=; b=riaS4oJVEo/dFI
	MsL4bLb274941h5qgyPhqBcHyAqCf1b+//mHq1tvKSHTBr+hgKQD1jV0hFYzyzfVAoOGZgS9TFFzm
	GEdetGFHHVMMKVv4wy/ojCZFcJpebit73DBagpxmHYs36aywWqBt6ymJMooFBYCu9ZxRGJU5O8jO8
	nphXtS/cFgZ6I0HuzWr/J3hNVZv0yAHELxT+GMkgetfhyVnrE2uZbxl3E/UWe3Of7+efZg5JALQe4
	M+7ZQ2cDvipAHfhNFy14Zj+JwYbXV3Wc/5WQS5MxW8/Pot0XXH+U+wSP+WhMaavdQlLUqgrNO61/L
	fal+ujoLY/gaFKyPU7ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnYI-00BNSq-64; Sun, 08 May 2022 20:30:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnnW7-00BLwj-GS
 for linux-rockchip@bombadil.infradead.org; Sun, 08 May 2022 20:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=i2uYJa2gxIdaD8fQBCxMjwb6E0s7Z3esdAlzwfZv714=; b=RgLmiECD+AZfgKqh2sBoOWbft7
 v9DsJTXa17Bcn80aMaKpzMpD73yFwEoR/Jf7jV6Az1DL6OfoCGwNNlyMuqqRlxLYfLDT7eflK8x8t
 3CTHrdju6F6/6i1wK3+edmKI62X9b+Y2dU5jMU4jpqMdfUZtHoLMMvE7iCXSiuyu83Fp0UD3gJj1d
 2zJhf6VOzlrsB7D99G6mRFLnHZ2ZPjrydw3B0l5YsW2pN8MetkkwgEqDFBRQi/eC4cqjua2AIboe7
 WmrMe2sm1qeNewIvqtNNAmphJEqjbH9gFs2Wi5F3zffN5ESAVZG0Eny5oZF8y047iO94M74CBMa6V
 ndWFwxkQ==;
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8s-00CL7f-DM
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:33 +0000
Received: by mail-wm1-x336.google.com with SMTP id p189so7280898wmp.3
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i2uYJa2gxIdaD8fQBCxMjwb6E0s7Z3esdAlzwfZv714=;
 b=7DJ1zP2YxdU6IX/RUiFnD+Y6o4wHYt/GovZV9GZnYlY3QDAv0vvypAxxGE12USg+cx
 aAFr+EuwuJ1tN/NAAQgAqmqgNH4cOsptYE+9jbkZY6UqIAl5lbP0hcoXihysDb5Zj92D
 EZcObpoSsBa+1xuPpuWrjQ2hDfJvXxMc/KFrrDEyuwcJItv97HsMNhUjGBsUFwJF/747
 AKKqvr+6EuKGNfTSz268XknKW5b8s/UMiedi90182ccGPjS/6c4n5h+0NUFMPxTcCjwH
 esSSDYC2GO7LNsXmpdcxIAX09xJgmXTZcQ3wyygYe2SFW06Nq9nyQhkeKFWeBNwH6d2z
 9UaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i2uYJa2gxIdaD8fQBCxMjwb6E0s7Z3esdAlzwfZv714=;
 b=6VVG8dZOZTwzyvTozsS707k5smj/xJ+jRuwAYiA+N6N0AG14ZmOb+n6r/Nwel0V3vj
 tpYtyb8tmiWafCE40Eq8gg7jBxW2PxUl8EKlRdaiANPpC9X+8AL50KZdP4WJ60WQy2Jv
 FKcZUpJyxTC/uPAf29MkUpgxrx/tHqoMO28BFVIAbQEmcFVEhnbvLxc7E57tTu6C4VQG
 3q6Ans+GttT2i5DHJP/kOjlioKuYr9JpHZvhBycDyOMywash+hk+HRSEm82OybxaoSOc
 S2TUCc4SWTnBrRCa7zM7E9Ii5BZu+9u8LcNOB2LuMtCICrQ6aRerCJe6GO3vOHDryW0A
 QO2w==
X-Gm-Message-State: AOAM532K4fpOdLvQauuc69apVY7PehzSO7Vnj4iQuQTOKD2OzBGfT3Ch
 WhhxxsdqF8+KohMsGADCUh2nfw==
X-Google-Smtp-Source: ABdhPJz1Bn96NkNlpBwW7gmLnC4gKO6YIqTcEyHARlQXxpdCcK/f3iY8GvjvU8XDHYLiJF5twUOWSg==
X-Received: by 2002:a05:600c:35cc:b0:394:7e9e:bd1f with SMTP id
 r12-20020a05600c35cc00b003947e9ebd1fmr10934528wmq.95.1652036429227; 
 Sun, 08 May 2022 12:00:29 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:28 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 23/33] crypto: rockchip: use the rk_crypto_info given as
 parameter
Date: Sun,  8 May 2022 18:59:47 +0000
Message-Id: <20220508185957.3629088-24-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_200030_903307_383378E0 
X-CRM114-Status: GOOD (  10.79  )
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
