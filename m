Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85CE3C76196
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 20:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzLwkq5C4lVInB7T5hH2db2jcKnuEizlX+t/6PlZKf8=; b=4/93LRvl4GMvma
	1bfhqoLh4n/JU6YS14Ww5qzpTBC6Y9zrVs6t4YGkX2OI6mNw4EDIbtKp4GyUmuFTORZlDZFhNATgv
	1HPbluIOArRZswT5q8U8JZHZWRDjXgv2OvAgVQBLAQWRG6xZj6tCh+FfsTxAVjAUG79/9yEHPcM18
	GSY63PsvuaZNm5iDOMXt6hZbAwG4IjwtgwpaVWbICcbr2OcMKIrwKguwtg+9pRHcbvJBwfWNMIYF8
	7TTq0fkd8XCxosXUnwSp6vADd9/+uRM9K+cgwr6UlFweU23WoX/xgDGFQx2JDTl96NSnm0esxXzpe
	ggHX4MB3qc0Vqo3MhntA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQiF-00Gb5T-17;
	Mon, 03 Apr 2023 20:23:35 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQi1-00Gan2-2w;
	Mon, 03 Apr 2023 20:23:24 +0000
Received: from jupiter.universe (dyndsl-091-248-212-192.ewe-ip-backbone.de [91.248.212.192])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DDF04660316C;
	Mon,  3 Apr 2023 21:23:14 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680553395;
	bh=IaXnd/TmDz+Pb/Lo3qVMIEFOaBSU3EHyiLnXscaJdlo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=S3FDcWaNuohQVCrTCsFItK51ce4vVpzyorjjVHaXNJ3P/3sMyu85H+8zVM0NyntzK
	 Qsd1xW2QcRLax4LNEUDacbACP8nX93jDHkxbswcoqpPR9lk9LR03LoxGZuriTm1i6Y
	 q+5tEnFHDT0lFGRaS7wfMdQkDVeWeNa+cKDkivijl1IJW7GQHz3+d/HAxLiIWqzVQK
	 gIQWRQRVUEKaxMMb076UtM09YCv8dPG0cKeXfVPzcGboPrwxrS3YbotxBTKjd47rFu
	 grmtOJCYgByHQOu6udWI7RIsO9/tr/QiaqLqw+LbYXeisOtFGvlQegFwtGyQ3KYcZy
	 etPpQUaor+uNw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 16D574807F3; Mon,  3 Apr 2023 22:23:09 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 7/7] phy: phy-rockchip-inno-usb2: simplify getting match data
Date: Mon,  3 Apr 2023 22:23:07 +0200
Message-Id: <20230403202307.120562-8-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230403202307.120562-1-sebastian.reichel@collabora.com>
References: <20230403202307.120562-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_132322_116099_B1C4FE5D 
X-CRM114-Status: GOOD (  13.23  )
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

Simplify the code by directly getting the match data via
device_get_match_data() instead of open coding its functionality.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 2de1408eaa60..e978c73ba1e5 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1305,7 +1305,6 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	struct phy_provider *provider;
 	struct rockchip_usb2phy *rphy;
 	const struct rockchip_usb2phy_cfg *phy_cfgs;
-	const struct of_device_id *match;
 	unsigned int reg;
 	int index, ret;
 
@@ -1313,12 +1312,6 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	if (!rphy)
 		return -ENOMEM;
 
-	match = of_match_device(dev->driver->of_match_table, dev);
-	if (!match || !match->data) {
-		dev_err(dev, "phy configs are not assigned!\n");
-		return -EINVAL;
-	}
-
 	if (!dev->parent || !dev->parent->of_node) {
 		rphy->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
 		if (IS_ERR(rphy->grf)) {
@@ -1359,12 +1352,15 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	}
 
 	rphy->dev = dev;
-	phy_cfgs = match->data;
+	phy_cfgs = device_get_match_data(dev);
 	rphy->chg_state = USB_CHG_STATE_UNDEFINED;
 	rphy->chg_type = POWER_SUPPLY_TYPE_UNKNOWN;
 	rphy->irq = platform_get_irq_optional(pdev, 0);
 	platform_set_drvdata(pdev, rphy);
 
+	if (!phy_cfgs)
+		return dev_err_probe(dev, -EINVAL, "phy configs are not assigned!\n");
+
 	ret = rockchip_usb2phy_extcon_register(rphy);
 	if (ret)
 		return ret;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
