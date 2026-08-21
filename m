Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68712C5DF87
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Aug 2026 11:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version
	:Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aUf9VG1I6WjOOWUrGraY8xDyBJDgvdi5TZ5XQIjKYK8=; b=sONwCDtehmBISn
	3wQGI3F8jf0Si6HwCgX2HaRrWmO+RNdyyIzDwQ8tob9r1/+jO69G2jeIKCC8d7sZcf0QcTUpV4kxX
	plKFnktkKsHqHiSFPtWGgh4KsVlhQSN4SJFGNAHGxVqMXyhbAbUTouOYSV4xteszXWRxV9vnYucPl
	m3yMliOyvPcn1XKc1Ycd1fBROuFTDZiKCQkThuBZXfcZyriMAPAkLQu+CSkB6oQDsJ1oIQ90ZW6ed
	dKoe/HQheJ/QENpw2sy0SHIjxcaQXbOOCc7QGTC3U1q0jt2tpPDA94n9RWUfc9NZlqDfQ9K4h2GRE
	TIcsPxsgA6z6TiuRCt9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxNfb-0000000DDHH-0lwp;
	Fri, 21 Aug 2026 11:44:23 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxNfZ-0000000DDGZ-1MBG;
	Fri, 21 Aug 2026 11:44:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C6D1443247;
	Fri, 21 Aug 2026 11:44:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1750C19425;
	Fri, 21 Aug 2026 11:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787312660;
	bh=mw69rgogv25Vpqgd3XtEuUAi41G1udw7Gmgj1TV2LTM=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=J/hD0f0sao1bImlmF1Tj0zpOJ4bBliolmzMJYNxkhCFYc4RDYdazM1etOHp/miR9j
	 leLq7G70IiisjU6tFxl5ntTK7w8eZzs20GTq/AGfz3Wdni19FF+z8firy7VZHWGqOV
	 YX69smMUZgG4Yyb8+V+3R/CqF7Gd47D/euvElBP9QBMJmPTHUVOmJJNaHrNw48HzbZ
	 HmykMlk/FC9GgI2YID73X/ToUAW40W76cMBCJtOSdLSTKnTfN2KuiAmBSuWW745wit
	 C6euo69a8luxWFYCFF9a2B0qN7B6wWE5rCCb+Syj/vYvLdspJBalAtzEabk+HnvIo8
	 Tbpy/olpBVMwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D2DFC5DF89;
	Fri, 21 Aug 2026 11:44:20 +0000 (UTC)
From: Jason Yang via B4 Relay <devnull+jason98166.gmail.com@kernel.org>
Date: Fri, 21 Aug 2026 19:44:19 +0800
Subject: [PATCH] phy: rockchip-samsung-dcphy: Enable runtime PM at PHY core
 level
MIME-Version: 1.0
Message-Id: <20260821-dcphy-rpm-v1-v1-1-a7db728b2539@gmail.com>
X-B4-Tracking: v=1; b=H4sIABI6iGoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDCyND3ZTkgoxK3aKCXN0yQ11Dk2QLg5TE1OSkNHMloJaCotS0zAqwcdG
 xtbUA9ZQPJF4AAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko.stuebner@cherry.de>, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787312659; l=2166;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=rV+NofLh7S6yCChqGRpahjAqRQEXtDM0htO9np1Bxqo=;
 b=57lr4YbeWUQV/oNo07yMtqo7IjzVndgDcWGOgaLPrTo3CyHIsAirw6wRlUFdK8mWyj0DJbew5
 /a7QHFJ7gIHBi6hFxN2KWVW9a6aXFhoO7j4aDFXxQy2pX4JkjZHmv/N
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-Endpoint-Received: by B4 Relay for jason98166@gmail.com/20260721 with
 auth_id=887
X-Original-From: Jason Yang <jason98166@gmail.com>
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
Reply-To: jason98166@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Jason Yang <jason98166@gmail.com>

phy_create() only enables runtime PM on the new PHY device if the parent
already has it enabled, and this driver enables it afterwards. The PHY
device therefore never gets runtime PM, and phy_pm_runtime_get_sync()
returns -ENOTSUPP for every phy_init() and phy_power_on(). The block is
still resumed today, but only through the supplier link fw_devlink builds
from the phys phandle, which fw_devlink=off and =permissive do not.

Move devm_pm_runtime_enable() before devm_phy_create(), as done for the
sibling HDPTX PHY in commit 10ba8479f460 ("phy:
phy-rockchip-samsung-hdptx: Enable runtime PM at PHY core level").

Fixes: b2a1a2ae7818 ("phy: rockchip: Add Samsung MIPI D-/C-PHY driver")
Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index cbd780556da8..11e872cc6611 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -1610,16 +1610,16 @@ static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(samsung->grf_apb_rst),
 				     "Failed to get system grf_apb_rst control\n");
 
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to enable runtime PM\n");
+
 	samsung->phy = devm_phy_create(dev, NULL, &samsung_mipi_dcphy_ops);
 	if (IS_ERR(samsung->phy))
 		return dev_err_probe(dev, PTR_ERR(samsung->phy), "Failed to create MIPI DC-PHY\n");
 
 	phy_set_drvdata(samsung->phy, samsung);
 
-	ret = devm_pm_runtime_enable(dev);
-	if (ret)
-		return dev_err_probe(dev, ret, "Failed to enable runtime PM\n");
-
 	phy_provider = devm_of_phy_provider_register(dev, samsung_mipi_dcphy_xlate);
 	if (IS_ERR(phy_provider))
 		return dev_err_probe(dev, PTR_ERR(phy_provider),

---
base-commit: 1590cf0329716306e948a8fc29f1d3ee87d3989f
change-id: 20260821-dcphy-rpm-v1-14c80daecbf7

Best regards,
-- 
Jason Yang <jason98166@gmail.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
