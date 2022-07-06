Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 646A0C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 10:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SOx+iAXlq6yNXvzopTrDrui2BIXsjYxviGstDzetSg=; b=MMly/iQ/X5cJxA
	8zwyGKSJ0RMIMjnccJXMxnLpPLp3I2xOxbndpRm+EAdDCzTt2XxQC2KozZ+UcszVLcX+/1+QaOp1P
	Cy82iYRM0/mfcF6qY4yRbnSpUO5uHQdPERqVVwNi2a2riHLEfmLfnIjrqDCBzzvy1QcH1FXkS+SiW
	jzvB33Vl7AsEMObVkL+hJhiQCwFtSlda4SLV4YjLvZJi32N7UUGS26ntlwWYG/DzxSG/p03mViZYE
	PyjgzIXOfWlKI6uUFYa8E5TEN5SoMh5rd/Y1D/TnYUpm108nH3AS6sktWLZOejMUhH+VROCgICFby
	YSzEja0W/NSkmDP6ciHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o92L1-008ZDv-2k; Wed, 06 Jul 2022 10:32:55 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xt-007bo8-Ac
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:04:58 +0000
Received: by mail-wm1-x331.google.com with SMTP id f190so8422870wma.5
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0KerGvUzdejWLAwshDyy9ppWCWrJnFuYbHleK5z5lUU=;
        b=cOcyzI19J2bwcidkSWv6IYChVJ99SgUBngiNcjkB1r7bHy8FEb/EHmXmVgJy+39WrI
         5blmGvmfl/D2NUpaj/q6rfywpUvhhuYaegNRmMdTMEAW83+GcS/q+MqGBx1YpCQOBsNg
         qBuyuXLVhgf4djHOFJbgV2qsK4Rr46EOxdkXQ2MT5ZQCGfTQHhafDZXyOSHxPEScxAyi
         AHAWtXQTG4qcg6cG1349R17HfqlHyjtUo/gpO2yxSxyWvKDfKJAGLqnjcxNgQoeTQYLC
         gjv9XDsUSccvRe6OCe8NqKOiYZLID5sJXebE6y85t7ZjV/f+m8Ytib19LC1BoziJ20nl
         NXGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0KerGvUzdejWLAwshDyy9ppWCWrJnFuYbHleK5z5lUU=;
        b=Kp1llPulUp64pcZtq3/dBByaS07L3icvboLh+nUOrTFx3ugYiPH+Jpi0kM2UPmuwXL
         3CeFbNt/8GEj+7Ts7sfn3l+3feAHRiOkWX8qihEQEztckB5QdY4vV6lhwA2ARVFqVXWb
         6IZ0YcCERywT6RN5D+j3cQUa+Yk8fDxRcWVs51XmoNps3bDNMNZX8kczEezkp15W8OI7
         NzeWU/yVGoqkzvFGdWlMrEHTlXSUDL1/dIOVebRH4B51oL4XCkNNnihH9tkbN5w2SDhE
         AbUQ7hvAbfwO+OQHWPI85ZTkwUAhgLrEt89s1A/rgSWoQdOgUsnREjlSVdBo0/S85O+T
         OhpA==
X-Gm-Message-State: AJIora+mBXEwGO6Xh1iEhNGR5yz4MH+qcpVsRep/OJqtMPFpeezPvx/w
	7hv0cSRLoYDEK3xhxJYkUm1ueQ==
X-Google-Smtp-Source: AGRyM1tm3jF1Mm9yTBvcrOrrcNwguVUNZ62czBNqaQaZTtes5qap/g64RlerawH0KAvGyiXDXVAxDQ==
X-Received: by 2002:a1c:720f:0:b0:3a0:2ac9:5231 with SMTP id n15-20020a1c720f000000b003a02ac95231mr41272448wmc.39.1657098296950;
        Wed, 06 Jul 2022 02:04:56 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:56 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	john@metanate.com,
	didi.debian@cknow.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v8 23/33] crypto: rockchip: use the rk_crypto_info given as parameter
Date: Wed,  6 Jul 2022 09:04:02 +0000
Message-Id: <20220706090412.806101-24-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_020457_419252_3FF6B609 
X-CRM114-Status: GOOD (  10.89  )
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

Instead of using the crypto_info from TFM ctx, use the one given as parameter.

Reviewed-by: John Keeping <john@metanate.com>
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
