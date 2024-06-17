Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 626C7C27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 21:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mdvr0QzUkiWPMCa8IUHRYmpHOSb8gu6O2eNdvDUSVV4=; b=r2b57VXQ570hOj
	Z6G9hfF1kgmdE6zESCo0qOaG+Pwecngn+vrrXXHQcYV0a+JFTvE3DCDuajQH+tytiZPWh8h7WO+JE
	YyiqUswMUXcEvkLsZlQ8wDDMOGCMVtr8RIxbfX6SXt2WfZzqSozakfkYnrMS3QTUVGvNq0oK1TGb0
	dMp1+bA1wNDrT1VcZznWm2chYxoiKnUTOeWss4jWVCqWVhIB5iNoI1ZFpeRupaoG9iIcsedfHe9HB
	u60jWSjtV+42Ax25cZLHhzEZ97eOCbcvkV/73HL5gjuK4U1CA17L0yP/QUo7MV5BO3Qbu8MhG3wzT
	2E/CB55fWY5sB/5AvB8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJKLF-0000000Cjg4-1onz;
	Mon, 17 Jun 2024 21:56:45 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJKKx-0000000CjW9-3q9m;
	Mon, 17 Jun 2024 21:56:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718661386;
	bh=d56lcRS9votQ6p3L/XnDZhcIMYXkAPNI+mcNCM8luyo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=j44IjBFW6DTUSrued99+CdSkmWIRLOOinXULQUn7u4R+JU/sa1XJR+xUyY3W6dwWD
	 VZqjcvr7IFlC9OQpwSGZ5sRwrlMbqbfKSBAfdV9X9MRi7aEsrtLAPQEgq9GyGQvhHb
	 Toil5v19Mt4hC+mBuPlWq0zg0EdiDDGWOhyFx3q2UxyqFkE37o1b6x6/hJC0K3/+Np
	 Joi8XUCIbYTs/LiRA5IJTgl4eEtP/EP6uvv95ONsGU6RBuUcsBhnG3bE1FK5gPdRwZ
	 ZKD0irEaslfqXEHIfdc0rw+8D+nomkbwWNcwrnZpNRyUzgegfHWBcsIZg/1Sin04zS
	 rvJLjDGN+nVPg==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E703E3782169;
	Mon, 17 Jun 2024 21:56:25 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 18 Jun 2024 00:48:10 +0300
Subject: [PATCH 2/4] phy: phy-rockchip-samsung-hdptx: Enable runtime PM at
 PHY core level
MIME-Version: 1.0
Message-Id: <20240618-rk3588-hdmiphy-clkprov-v1-2-80e4aa12177e@collabora.com>
References: <20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com>
In-Reply-To: <20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14-dev-f7c49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_145628_126929_B51D4DE4 
X-CRM114-Status: GOOD (  12.44  )
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

When a new PHY is created via [devm_]phy_create(), the runtime PM for it
is not enabled unless the parent device (which creates the PHY) has its
own runtime PM already enabled.

Move the call to devm_pm_runtime_enable() before devm_phy_create() to
enable runtime PM at PHY core level.

With this change the ->power_on() and ->power_off() callbacks do not
require explicit runtime PM management anymore, since the PHY core
handles that via phy_pm_runtime_{get,put}_sync() when phy_power_on() and
phy_power_off() are invoked.

Hence drop the now unnecessary calls to pm_runtime_resume_and_get() and
pm_runtime_put() helpers.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 24 ++++++-----------------
 1 file changed, 6 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 3bd9b62b23dc..72de287282eb 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -860,7 +860,7 @@ static int rk_hdptx_ropll_tmds_mode_config(struct rk_hdptx_phy *hdptx,
 static int rk_hdptx_phy_power_on(struct phy *phy)
 {
 	struct rk_hdptx_phy *hdptx = phy_get_drvdata(phy);
-	int ret, bus_width = phy_get_bus_width(hdptx->phy);
+	int bus_width = phy_get_bus_width(hdptx->phy);
 	/*
 	 * FIXME: Temporary workaround to pass pixel_clk_rate
 	 * from the HDMI bridge driver until phy_configure_opts_hdmi
@@ -871,17 +871,7 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
 	dev_dbg(hdptx->dev, "%s bus_width=%x rate=%u\n",
 		__func__, bus_width, rate);
 
-	ret = pm_runtime_resume_and_get(hdptx->dev);
-	if (ret) {
-		dev_err(hdptx->dev, "Failed to resume phy: %d\n", ret);
-		return ret;
-	}
-
-	ret = rk_hdptx_ropll_tmds_mode_config(hdptx, rate);
-	if (ret)
-		pm_runtime_put(hdptx->dev);
-
-	return ret;
+	return rk_hdptx_ropll_tmds_mode_config(hdptx, rate);
 }
 
 static int rk_hdptx_phy_power_off(struct phy *phy)
@@ -894,8 +884,6 @@ static int rk_hdptx_phy_power_off(struct phy *phy)
 	if (ret == 0 && (val & HDPTX_O_PLL_LOCK_DONE))
 		rk_hdptx_phy_disable(hdptx);
 
-	pm_runtime_put(hdptx->dev);
-
 	return ret;
 }
 
@@ -977,6 +965,10 @@ static int rk_hdptx_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(hdptx->grf),
 				     "Could not get GRF syscon\n");
 
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to enable runtime PM\n");
+
 	hdptx->phy = devm_phy_create(dev, NULL, &rk_hdptx_phy_ops);
 	if (IS_ERR(hdptx->phy))
 		return dev_err_probe(dev, PTR_ERR(hdptx->phy),
@@ -986,10 +978,6 @@ static int rk_hdptx_phy_probe(struct platform_device *pdev)
 	phy_set_drvdata(hdptx->phy, hdptx);
 	phy_set_bus_width(hdptx->phy, 8);
 
-	ret = devm_pm_runtime_enable(dev);
-	if (ret)
-		return dev_err_probe(dev, ret, "Failed to enable runtime PM\n");
-
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (IS_ERR(phy_provider))
 		return dev_err_probe(dev, PTR_ERR(phy_provider),

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
