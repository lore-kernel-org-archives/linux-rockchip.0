Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66D12C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCyxRpczXS7H8/dLu/ITxtD8tiOuMu43IKWt/aTQJGs=; b=aSJ6zEPCGiRAak
	oGW0xHSTWbJWIFtj4RjqHj8xwx280N1GbLA3KQaeSbNbjZyKTaGEI7FT8ijlAq4wfSQQHUdwRWFLW
	cIbcC85gzZf34awomSAs9RPCLVstujukrQBeivf6HavIlJpib7BTT0PRfWXB+wwy9cNGQ9dJrBC+z
	ryFRhxAz2m+/cdHys4z+hTpQId68C2gW6hhN7jQvCpALtFuAjkSL3Xcg9kVO/Of/lBtLOShr8sZS/
	QcuMP7zHkQyttzWwDwSfxOl4XloibtqiM/k02SQXHsyH/V1iqajhe3zxyJOip6tJoZ8V6sK5PlWew
	QxnNEOPvQq6DhELELsIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNua-007BM1-W5; Fri, 01 Apr 2022 20:30:25 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNj6-00753s-E6
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:35 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 l62-20020a1c2541000000b0038e4570af2fso2139717wml.5
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wKC9BF4dXA1G634QoNLIKuQnuaNkW3/UOb3sMC/u5kY=;
 b=tICJ0RLoEBdT1RLJeSR2Qdmj0wSFyJNAkSICQ0VllNB5Pumz6HvKWt/nlnUoOOyI+u
 LSJQBev6GcooY+39S0jfbxZSikrx7RdpcDJgOVxNl11DyqCKdq4XUOkbLUdnEoxBQN/L
 wkugfBBvIyLoyiGAOpxI4IfbyPRECIXlF84FEOrImvkENev2lCMLDatubNZk020hsPi4
 t3JClCEV0/rYD5t6GK9X4VPEgEurgUNxuPBsrrtAnXW1ioFCJ7+jgkSelGySQxjUDX1r
 06jm3Tc3YbSxVMbKejWmGO8LctlXaN+jkTqwhQn1K3kg2Bdlxy6M0vJVdnoJ6uuUBUAf
 m+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wKC9BF4dXA1G634QoNLIKuQnuaNkW3/UOb3sMC/u5kY=;
 b=k25P/VXpBxF9mNDPWPgQLFcaWGDo0Gk8actTBdlzej2WTKndwdMVl+sTJM9iBHwtxf
 ddzha7WIJmrUeJegobK6RxeMEJE8r8d2aKFnLHVN7aZR7XRPlzX6vFwuP+kmceuweNvK
 L6aaRrwDwNsYDHG/JTgaBMqqv42o1lxUtrZ62VSWUFxDd1bLb5iSiHvJvsd/T8M3GI7a
 tb237ZCrIMZC1XDbghyUk69Goyryng9wEU6ifBylXoUkGi/PTf4E9TOpS1zkPWOWffn1
 4OIoBULy4Bmi/YAXUOZSg7nC1Xtqjgcm8Y0rwfdXnAxG1h4d3H47lgC4Vod/mYmkpWmn
 Ve7g==
X-Gm-Message-State: AOAM5329bVMI+eaDveQ3vzhvwYbymn5fV3wJSJ3vgPba356k1V6YGP7I
 /l9PfAjZAKlskEcZFfd7coyH3qJzeBcd2A==
X-Google-Smtp-Source: ABdhPJzBjRPNRhqYPjIRRftpKO82O6trPepqmMbG4DH3r7zywq41QfkZv3g3CDZwixcv1zGNRXgMGQ==
X-Received: by 2002:a05:600c:21a:b0:38b:d06e:e0f7 with SMTP id
 26-20020a05600c021a00b0038bd06ee0f7mr9809753wmi.105.1648844307626; 
 Fri, 01 Apr 2022 13:18:27 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:27 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 23/33] crypto: rockchip: use the rk_crypto_info given as
 parameter
Date: Fri,  1 Apr 2022 20:17:54 +0000
Message-Id: <20220401201804.2867154-24-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131832_499343_92385863 
X-CRM114-Status: GOOD (  10.90  )
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
index 9e2935716840..9784b25e64ce 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -264,7 +264,7 @@ static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_reques
 			     RK_CRYPTO_TDES_BYTESWAP_KEY |
 			     RK_CRYPTO_TDES_BYTESWAP_IV;
 		CRYPTO_WRITE(dev, RK_CRYPTO_TDES_CTRL, rctx->mode);
-		memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, ctx->key, ctx->keylen);
+		memcpy_toio(dev->reg + RK_CRYPTO_TDES_KEY1_0, ctx->key, ctx->keylen);
 		conf_reg = RK_CRYPTO_DESSEL;
 	} else {
 		rctx->mode |= RK_CRYPTO_AES_FIFO_MODE |
@@ -276,7 +276,7 @@ static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_reques
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
