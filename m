Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC7A4C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0d3ndqrG0njCFqqc/iOrnM2c/0iVTRJg8tx/H0HZqc=; b=nyjbgT/SD97oNc
	ry1E+enVAMMgx32ETWd8c2bx21YUTuxv4VaI4mVLL4ndvcctcy8xafkphQAS2/AdyruHXe2st3vIs
	ZmFuYc27ZE//rN9XtKK8foU3Dwx1KSB9oE5jTJw2/3IjsNC3Lpn3nExvzYK/VuSTfSiUXBpjPLSw7
	AyJ6SCII0TpG5lO7yUbSF7smxZWiM9K4cUy3ltNJSRQisLnZNU1L2B/NCF26GF4A1HildHs/V3Rfn
	5w4pbNpjh/HmOruHx5VhWSgMR0xeLPi4QFyrgOpANw0dN7BOMJOoN/52xzT9EG+NXhfxy9o5dbNdw
	GkUtLQy9oOwV53x1CMFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOltZ-00DnnS-Td; Mon, 28 Feb 2022 19:41:21 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOlt0-00DnWZ-J8
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 19:40:49 +0000
Received: by mail-wm1-x333.google.com with SMTP id
 e6-20020a05600c4e4600b0038173851f5eso82006wmq.2
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 11:40:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5/nH1g76OJr2xP0kEzxoO9d69o0mEYaKTMfwjCEna4k=;
 b=lt29u8pA79bzdXmxogX9j0y1J3zKgZTrImKzycoIIB4zcvWL7KntFgwCPueGEvs9Bp
 9E65irN8rtJH1t3f0r1ZVlV0RBu0tw0dEs3x3HqZsQowRPjvExKePG2UBpGTT/WnIAaG
 iVCLgavxjr89XfmgbY/htd1noYLNS6evA6wc8LN6aL2fVpN9EMgtbf/7MBwvrwNaoy3H
 ksHGwHdfZxTdTDO+dQo7I/DQy0cAstQraeiJRo10sgGA2ahFqb5USsFjm4WAq6yGgB5T
 HAZ9bLQEAExlKuSBB78+Ek6eqpF2YgH2JywRAvhxFmZjiZNIH4IhDrmvklCLuSHeb27N
 M89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5/nH1g76OJr2xP0kEzxoO9d69o0mEYaKTMfwjCEna4k=;
 b=I5ME98PA35kyk0L74oZPmTtWdqvzuG0/+beou7SVnk+5BPFti1oONZGEwUiuErXY6B
 UwD7VWt9KsTx2rVNxGO14gEdRi6w01V/nTfFcIMUICt96RFkBUVdo5JxqmcCzlYHM8xb
 aPEBRI7GYp59HGxYtwuB5zNFe7cLibMfDJlgSUMtPzWIihYq6bknyNEYk7gVrHwnBoq9
 q0f8Z3cI/BKJ3tDQ2na50DFoQKv+yrMNnRP4EeAV3Y6Xpdi336YlgdmGEzO9dQoJ/Llz
 n9c3QAL7blWVVWj147/ZAOCfF9fuwCNItOZ8eFe87oQKAAb37ltI24ncFftxSmSaAf4g
 l69g==
X-Gm-Message-State: AOAM532MyXiF2WdaqRuUCt2U8RUoaXs8WxqGgR4Aarn2XdLZWUp54JkI
 naMLVTuE5SfF7vAxXPoYqgXwlw==
X-Google-Smtp-Source: ABdhPJwMhluv9tSJB0/NwPrF0eIHTbzYvQsVlCyHUE3sYp/hLMc7v1GhFAU7XtKYLdVdTEfjOryeQw==
X-Received: by 2002:a05:600c:1da9:b0:381:7fdc:ef7 with SMTP id
 p41-20020a05600c1da900b003817fdc0ef7mr2669444wms.128.1646077245165; 
 Mon, 28 Feb 2022 11:40:45 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 11:40:44 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 02/16] crypto: rockchip: do not use uninit variable
Date: Mon, 28 Feb 2022 19:40:23 +0000
Message-Id: <20220228194037.1600509-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228194037.1600509-1-clabbe@baylibre.com>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_114046_658012_D1FC4F42 
X-CRM114-Status: GOOD (  10.85  )
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

crypto_info->dev is not yet set, so use pdev-dev instead.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 45cc5f766788..21d3f1458584 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -381,7 +381,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 			       "rk-crypto", pdev);
 
 	if (err) {
-		dev_err(crypto_info->dev, "irq request failed.\n");
+		dev_err(&pdev->dev, "irq request failed.\n");
 		goto err_crypto;
 	}
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
