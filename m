Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7687DC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajYN87l0OvC7Vm5KhxuDsh9ulfvB2nHB0mTzjIurm3Q=; b=pH8PuU9/Ygdi60
	JcuSBbfjfQ+4KR0JRvFs0SgUagjbiOtl7/odRVVGqTrmbARHlMARFdTIbnqX03t2zLnHa0VIK3hbl
	6OQLzxTBTlV/CmiboXc/2NL6+NDLEzBzmLSp1Z+Z06gSBT121oExAiVPrgGXkI0r1QPuCDsDeBzt/
	iEaXRLlCvgXIUyOItXNUlFjFMO5AUe2PSElRBDRvhT1e+go0WzRmtGW2pdVbd9robymnRP9Yx98PG
	TFS/w2bIAzEzd5cI8bT2Oqe+85uVEf+Lnu0Yl7oQYfJxSL648SB3vGX6A6E/hCywh6uoXDg/CACqu
	FZrtPe1maSIF2bJIijAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPWKi-004EVd-U6; Wed, 02 Mar 2022 21:16:28 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWFp-004Be9-FP
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 21:11:27 +0000
Received: by mail-wr1-x429.google.com with SMTP id ay10so4736471wrb.6
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 13:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B4Tf8ps8Giknxs7LQki4ZGeia2acPTQFjucag6hcCiQ=;
 b=qWH4UXD2/XPcCp9fm8xXwAshYS4tc/CUXtc2uubCPvniyywLyxaml90tAQR59l/P1A
 2aKv7bUtzWzYQ3S7xmrY2xqtX988cCK/uvEMfW0q9bXXg8PbpFv94D42gZ1JuYP2wjnK
 JIV8mHOETs5IBnfEthCUHruqxplzo7ZHA47duBbY5g4wAHhFs+xiiiNwH3Olu36pF2qD
 U7CN/Cr+6GorNkBuDNDJiYvYLPw8gKqgW1WbYMwChBzuCpt5tvCHd+yzkgWJHCXMRxM9
 +CeNBc5nBdulz/HRokTD1cOJXVdV/Zn11OGYjS+dehHGnwlVn0AUphRIuHh5myy/B48Q
 n4/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B4Tf8ps8Giknxs7LQki4ZGeia2acPTQFjucag6hcCiQ=;
 b=6ydmdSu3c3TAJii/ujmGmEatqkltGYdEjJ44bnY9vAsp5udj9EwJB7W+dcmYJ8f95L
 pG9c9i/1aeAKcawXZA+fYMoK/4iqXrlrdpVFpJ/d3gOuzwUw+YPw4ZjVYcvGjF7RXjQE
 CCrlay073yOVeVa8B9Sxe6wEtXatbr8qyRZE/3gPcJRiYuiwaOTMA9oCA2Jmmyp1uzbc
 KC8EGvwLNg+CcNTQAzMcWPtAPZ/UVtfo4vSNCbSY/Lir/2GODAA2/M7XJXGDOcZSTNvl
 YlgIj2GR2jNKLP6TDZ9KBZNicknmtPSXyjC0QsheV42YNv1ytjtX/Ac9wzSlnPb8AQnJ
 9fGw==
X-Gm-Message-State: AOAM5320cEq04lR6DNOUtb1J9zaD1JxhnQ/Es+1m6ZUMpjhfoeuQIRIU
 bnVLg28Sh29jWynfalHz+cRMXA==
X-Google-Smtp-Source: ABdhPJy8UJKYTq/gnyeSX8atQZtgLFqkKuFQj+B+6mjLkl5a4vVgucpywjrYJ37k4zl8awGraqZMgw==
X-Received: by 2002:a5d:6103:0:b0:1ed:9e65:b090 with SMTP id
 v3-20020a5d6103000000b001ed9e65b090mr23743120wrt.332.1646255483922; 
 Wed, 02 Mar 2022 13:11:23 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 z5-20020a05600c0a0500b0037fa93193a8sm145776wmp.44.2022.03.02.13.11.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 13:11:23 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 01/18] crypto: rockchip: use dev_err for error message
 about interrupt
Date: Wed,  2 Mar 2022 21:10:56 +0000
Message-Id: <20220302211113.4003816-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302211113.4003816-1-clabbe@baylibre.com>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_131125_552710_59D31E47 
X-CRM114-Status: GOOD (  12.44  )
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

Interrupt is mandatory so the message should be printed as error.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 35d73061d156..45cc5f766788 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -371,8 +371,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 
 	crypto_info->irq = platform_get_irq(pdev, 0);
 	if (crypto_info->irq < 0) {
-		dev_warn(crypto_info->dev,
-			 "control Interrupt is not available.\n");
+		dev_err(&pdev->dev, "control Interrupt is not available.\n");
 		err = crypto_info->irq;
 		goto err_crypto;
 	}
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
