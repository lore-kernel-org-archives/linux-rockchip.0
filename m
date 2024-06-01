Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F306C25B7E
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Jun 2024 13:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8GGj8eEs9iAUL8LZPewZxO65UtzpPNnI8SoD+a8Zdw=; b=ijKzG61AixhLsx
	H2EUnEFbkV423bKDIaGwKs4YZS6H8xJ1ltrpcW2YP5LB4OT5lxNv2YxWF7ilNBPgDurSFVbFZIre6
	6H8psPQfh3v74Edh+Tk7WEcg+gQotx2W6kGipRENgI+mlAQ1AwDnv5awBErnMZRvni4XxKwuRpmHj
	V8XR9gd1LGgSSSc/6WX1rD2ki5w72k7Pr6FE/xOtc5S2pgcvzUH2DaMohOPPCmAyfUgqbryr+EQJv
	gWf5cWYfwtELFfHJq/OC4//pNe5pxDYWQgVzy4zXwxNP3c3wW8isNx7OfmbZgzou5SWLxiNI3/o7q
	5Q0DbJ4N1JX/FlOGxAgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOYs-0000000Cf9B-2rFN;
	Sat, 01 Jun 2024 13:14:18 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOXp-0000000CeDN-2zI0;
	Sat, 01 Jun 2024 13:13:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717247592;
	bh=d5X/8LXvanfZpU40XKa3+2Yctw0Lkl4wDDDRx6WrtBs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=IIy+T7m5Qb+LrE2Ao6FFImU62A+YOJp0DV6h8zy4f5XvJs1nF8Y2glvsEzNhmmh23
	 gEDJWrn+NTWR1+mD9CQcoVZS8SQYzHrkOkIhpdw5jur0BujwRL2MljjKsvsxtCgOWz
	 wNVlWT2W30i02Rx4e8SDx1+0vZ3eDwdQtjS3Oyy4UszibXm8FNUpTQEbYD3F+dP1uy
	 ILQTocAnjSLSs+mwmCWknleJQjHqcIZN2Fpd9H5nLg4L5P4AWffWHjP9rYB/+mwHJ6
	 USfDd4xp8Z7NPst6srWfWhasfLupoVNtMmpY0TZQcxubuusGy2s4B5zEyI1WVUGxEz
	 FZytqcn4UJxAw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id F2F2837821F3;
	Sat,  1 Jun 2024 13:13:11 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 01 Jun 2024 16:12:33 +0300
Subject: [PATCH 11/14] drm/rockchip: dw_hdmi: Drop superfluous assignments
 of mpll_cfg, cur_ctr and phy_config
MIME-Version: 1.0
Message-Id: <20240601-b4-rk3588-bridge-upstream-v1-11-f6203753232b@collabora.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>
X-Mailer: b4 0.14-dev-f7c49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240601_061314_087633_43FD4066 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
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

The mpll_cfg, cur_ctr and phy_config members in struct dw_hdmi_plat_data
are only used to configure the Synopsys PHYs supported internally by DW
HDMI transmitter driver (gpu/drm/bridge/synopsys/dw-hdmi.c), via
hdmi_phy_configure_dwc_hdmi_3d_tx(), which is further invoked from
dw_hdmi_phy_init().  This is part of the internal
dw_hdmi_synopsys_phy_ops struct, managed within dw_hdmi_detect_phy().

To handle vendor PHYs, DW HDMI driver doesn't make use of the internal
PHY ops and, instead, relies on the glue layer to provide the phy_ops
and phy_name members of struct dw_hdmi_plat_data.

Drop the unnecessary assignments of DW internal PHY related members from
structs rk3228_hdmi_drv_data and rk3328_hdmi_drv_data, since both set
the phy_force_vendor flag and correctly provide the expected vendor PHY
data.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index edfd877c98fc..ca6728a43159 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -444,9 +444,6 @@ static struct rockchip_hdmi_chip_data rk3228_chip_data = {
 
 static const struct dw_hdmi_plat_data rk3228_hdmi_drv_data = {
 	.mode_valid = dw_hdmi_rockchip_mode_valid,
-	.mpll_cfg = rockchip_mpll_cfg,
-	.cur_ctr = rockchip_cur_ctr,
-	.phy_config = rockchip_phy_config,
 	.phy_data = &rk3228_chip_data,
 	.phy_ops = &rk3228_hdmi_phy_ops,
 	.phy_name = "inno_dw_hdmi_phy2",
@@ -481,9 +478,6 @@ static struct rockchip_hdmi_chip_data rk3328_chip_data = {
 
 static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
 	.mode_valid = dw_hdmi_rockchip_mode_valid,
-	.mpll_cfg = rockchip_mpll_cfg,
-	.cur_ctr = rockchip_cur_ctr,
-	.phy_config = rockchip_phy_config,
 	.phy_data = &rk3328_chip_data,
 	.phy_ops = &rk3328_hdmi_phy_ops,
 	.phy_name = "inno_dw_hdmi_phy2",

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
