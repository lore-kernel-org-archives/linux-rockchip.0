Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1478C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGxfOsI75q2E77n4OaYYWBTwVF5sX/hx/iwaSvvOhfo=; b=1YwIqP33cFAy01
	dnm/Mhm1lRBmDsak9cdikck05QggjDftiXiwLESWG8KWBs/rGBS/Yl0LLAIK0jiJdaX6bPVGinCjt
	WmB3KaONMJhT3bOrxAypQS7bk4Ym+6jBDmmksRT7IJVLW2pspLDYNADbyuBIu5f+14SJCeDbC9guA
	5AITUn4SRnMIrnvfebJFxDVbt0F3Q5aLzO0zI7ypoR/WJC+qqTCBLcgMY+tmNxgx6PegMM7HpT2mL
	JQsajC5uecCuD1USFWeBEGWFWe1sGkOFTPNgQTY8KbxVX9iKKKWqsZ7bvX9f7X6WX3t/R3GnzDt8E
	Kx0zPx9PEvcLJIdyXG9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnbE-00BPNz-0S; Sun, 08 May 2022 20:33:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnnWE-00BLwj-Iw
 for linux-rockchip@bombadil.infradead.org; Sun, 08 May 2022 20:28:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=p55H6E0886aSJalxirRbnL3xLKJ1MG4FEZeIU1Ksblw=; b=Ms4jSZE6m//h2bmjkVDUsOOHbz
 9twJSHyjyR/9E1MUlLb0ZaHQ772ioDygCGzu3kIloJlTaEKEsJOvObfqIMxAT+/n/r1ZNTRxt/qVg
 QK1I9C0PMh+lusplo7BWsIDJt7henHH3/VDvF3QAO5P1lPvT1wJ2iAZ/m6SnarmsCiL1pAF3ERGTA
 FBkdHz2D0PNJP7Tya67KOjsC+S/4ynX20pSmm4hQa9FW3SWhBzWI+yDGhh+ql+HTczbtvpXv5xBko
 /b8nQuI2e9zd7e6rzuQFwU4/XjLkxCQZVE56xvyXWooUTHpcC2hz38nLhmw6sMBRqJn2rjBpcjBE3
 7xsIvLVw==;
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8k-00CL3n-87
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:25 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 r1-20020a1c2b01000000b00394398c5d51so7166561wmr.2
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p55H6E0886aSJalxirRbnL3xLKJ1MG4FEZeIU1Ksblw=;
 b=2vJGbwuHq3z17pFeF/VweArXe7B3FzgT63BrhhCU6Jnmucs+m+SFIHOlWHAOo6kXcC
 Bl860cTlfd86nDGpqACGyWTcvFk6k2W4hZKpTKYLpvxkHIw/U4TzdZ0l9ZuXkR/9SUcr
 BT92+XYetcE1Drm4DNakqx5HfcTGbiwXStMUa3Ij2/+w25OLnRKc6mbNFKSF+B5EE+bc
 MLXPlvDhiVBj7G5Wx1kVdpFZ9eonLlLU2NmHS8FNxzP1FanNKuB/oAezsbNnGU/pZ8O1
 9YklNCzavnJxqHjwqDMGyy2d4eCkRFCF8DLZZ7zdIYJztaaM0o2Vh7pj/s1hsOsCstsm
 2B3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p55H6E0886aSJalxirRbnL3xLKJ1MG4FEZeIU1Ksblw=;
 b=P/GFQjEnbNEqIEizidEYQE9Ma018Ro3R6Gi5It5joK/65BZQ8dNGbWK/J8JTLj16mU
 CFcgMtczt1JtzfKU/Rp9R7WXvejF1mbSVB36NctXKtHBdURmXRl4/7QaPE3fGWVLMFu3
 umtKjoSb0oCOgUks5+n292kzOxLUpLrNt0wjv/IKEar+/va4zEipCkW4Be3tl/6HaYx8
 1D46qt6YKAPkFgQBngvhgfbJeqZmEprTu0OZ6tZPilVtPnBdWwVPfo+ij06WmzUmblq0
 RemH/V4kMq3RuzkIWFSxXOLpjsGjtN+DAC9/le8LqRWPmRcKwYJCMQBofWorxoiOhdyr
 5VYg==
X-Gm-Message-State: AOAM530eSMfZwruO8J/QZg1WGqQUA0jHsz+HmzzeainT3RQB9EbnMkvj
 RHrQ6RROLtooCyuFUb6PwRHSCA==
X-Google-Smtp-Source: ABdhPJzzvgLkbGuhcyCd2x6HCV/pNl87JDJxeHc5Ht5BG2t3OnC5JvSp21Q14n4whAdNk8PpHa/DCw==
X-Received: by 2002:a05:600c:3658:b0:394:725:be12 with SMTP id
 y24-20020a05600c365800b003940725be12mr12875186wmq.192.1652036419689; 
 Sun, 08 May 2022 12:00:19 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:19 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 14/33] crypto: rockchip: handle reset also in PM
Date: Sun,  8 May 2022 18:59:38 +0000
Message-Id: <20220508185957.3629088-15-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_200022_939795_549CA9C6 
X-CRM114-Status: GOOD (  12.07  )
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

reset could be handled by PM functions.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index d9258b9e71b3..a11a92e1f3fd 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -73,6 +73,8 @@ static int rk_crypto_pm_suspend(struct device *dev)
 {
 	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
 
+	reset_control_assert(rkdev->rst);
+
 	rk_crypto_disable_clk(rkdev);
 	return 0;
 }
@@ -81,6 +83,8 @@ static int rk_crypto_pm_resume(struct device *dev)
 {
 	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
 
+	reset_control_deassert(rkdev->rst);
+
 	return rk_crypto_enable_clk(rkdev);
 }
 
@@ -222,13 +226,6 @@ static void rk_crypto_unregister(void)
 	}
 }
 
-static void rk_crypto_action(void *data)
-{
-	struct rk_crypto_info *crypto_info = data;
-
-	reset_control_assert(crypto_info->rst);
-}
-
 static const struct of_device_id crypto_of_id_table[] = {
 	{ .compatible = "rockchip,rk3288-crypto" },
 	{}
@@ -254,14 +251,6 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	reset_control_assert(crypto_info->rst);
-	usleep_range(10, 20);
-	reset_control_deassert(crypto_info->rst);
-
-	err = devm_add_action_or_reset(dev, rk_crypto_action, crypto_info);
-	if (err)
-		goto err_crypto;
-
 	crypto_info->reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(crypto_info->reg)) {
 		err = PTR_ERR(crypto_info->reg);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
