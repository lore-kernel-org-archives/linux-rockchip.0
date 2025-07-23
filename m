Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2022C83F1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 12:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1Pj0umFC6qNPWY7L8juRAWn1j2SMSLVP6mo2rtUzmc=; b=vgv0qyeC0eaWqy
	eqi58zdq199kTAp8CjAm70xbuJ4fs+wXKq4Prj8Qa5V7/IMe7WCGtIVz22/PA51hslIm9yOamy5OL
	HhJLRtuzPKSwpq4XC/o5+R1GZTcYg2V/Ex2MMfni4SfEsblTiHdjPEze2mydzhZTFQdjlzLoiYjvc
	PYKyALl4nmXxQLLk2kZFLIpM8z/VmRaT9WiMLpmRR4Kf0zbOa5WsBf8heiJgL4CE54sOs6lJ6fsMa
	8MRRFJHz0DozFGdx00GmpJjHm4op2rN1X6YkzMkgSSOqNb1bMkZ5t7Re3VNMGgAx0zjsF1N1iWZeH
	HWiVDOQ85YSso1hzMG7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYhn-00000004vV3-0LYr;
	Wed, 23 Jul 2025 12:36:19 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYVl-00000004tmx-3Tr6
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Jul 2025 12:23:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753273433; bh=zhhvg5zJxU5T4KsEk/esqcxT0PtM2GilClP+9BqeGhw=;
 b=G20bDmJjTXyYiUzhQK+gafAnjJI2igDGmNUN5Sr003fQLq6VhjfuGXl7Nq/IQHIbHdeAckMHi
 SIg67etURm8Sueu0wQzv66SMkG+4F/GKFDCBkmyT+LoiRC33TcG+WrLLrX8iumIZewfXPvTQKkf
 R2SRhXtybBmaPG9EpKh19/mAPej3+7nnKPDbDnd84In7vpeG5wKcxrffgaC9cRBsBq4Edm3iTYv
 Gh7s8LpgIPDnoSWk8ztT760ON9H32aSRj2IN1d+67YRk/3obkknFhKDVh2OB1GQ7CeUcKcxJ6Q7
 3uHvNWvqlHQTC8f4B9EmeBUGZNOQAT5Tvpxz4wvUGWyQ==
X-Forward-Email-ID: 6880d457cb0ee86f9731a0cb
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Jianwei Zheng <jianwei.zheng@rock-chips.com>
Subject: [PATCH 05/11] phy: rockchip: inno-usb2: Add support for RK3528
Date: Wed, 23 Jul 2025 12:23:03 +0000
Message-ID: <20250723122323.2344916-6-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723122323.2344916-1-jonas@kwiboo.se>
References: <20250723122323.2344916-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_052353_929000_7F5D0A8E 
X-CRM114-Status: GOOD (  14.46  )
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

From: Jianwei Zheng <jianwei.zheng@rock-chips.com>

The RK3528 has a single USB2PHY with a otg and host port.

Add support for the RK3528 variant of USB2PHY.

PHY tuning for RK3528:

- Turn off differential receiver in suspend mode to save power
  consumption.

- Set HS eye-height to 400mV instead of default 450mV.

- Choose the Tx fs/ls data as linestate from TX driver for otg port
  which uses dwc3 controller to improve fs/ls devices compatibility with
  long cables.

This is based on vendor kernel linux-stan-6.1-rkr5 tag.

Signed-off-by: Jianwei Zheng <jianwei.zheng@rock-chips.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index cd1a02b990ef..b8950d9f9e97 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1507,6 +1507,28 @@ static int rk3128_usb2phy_tuning(struct rockchip_usb2phy *rphy)
 				BIT(2) << BIT_WRITEABLE_SHIFT | 0);
 }
 
+static int rk3528_usb2phy_tuning(struct rockchip_usb2phy *rphy)
+{
+	int ret = 0;
+
+	/* Turn off otg port differential receiver in suspend mode */
+	ret |= regmap_write(rphy->phy_base, 0x30, BIT(18) | 0x0000);
+
+	/* Turn off host port differential receiver in suspend mode */
+	ret |= regmap_write(rphy->phy_base, 0x430, BIT(18) | 0x0000);
+
+	/* Set otg port HS eye height to 400mv (default is 450mv) */
+	ret |= regmap_write(rphy->phy_base, 0x30, GENMASK(22, 20) | 0x0000);
+
+	/* Set host port HS eye height to 400mv (default is 450mv) */
+	ret |= regmap_write(rphy->phy_base, 0x430, GENMASK(22, 20) | 0x0000);
+
+	/* Choose the Tx fs/ls data as linestate from TX driver for otg port */
+	ret |= regmap_write(rphy->phy_base, 0x94, GENMASK(22, 19) | 0x0018);
+
+	return ret;
+}
+
 static int rk3576_usb2phy_tuning(struct rockchip_usb2phy *rphy)
 {
 	int ret;
@@ -1920,6 +1942,57 @@ static const struct rockchip_usb2phy_cfg rk3399_phy_cfgs[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_usb2phy_cfg rk3528_phy_cfgs[] = {
+	{
+		.reg = 0xffdf0000,
+		.num_ports	= 2,
+		.phy_tuning	= rk3528_usb2phy_tuning,
+		.clkout_ctl_phy	= { 0x041c, 7, 2, 0, 0x27 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x004c, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x0074, 3, 2, 0, 3 },
+				.bvalid_det_st	= { 0x0078, 3, 2, 0, 3 },
+				.bvalid_det_clr	= { 0x007c, 3, 2, 0, 3 },
+				.idfall_det_en	= { 0x0074, 5, 5, 0, 1 },
+				.idfall_det_st	= { 0x0078, 5, 5, 0, 1 },
+				.idfall_det_clr	= { 0x007c, 5, 5, 0, 1 },
+				.idrise_det_en	= { 0x0074, 4, 4, 0, 1 },
+				.idrise_det_st	= { 0x0078, 4, 4, 0, 1 },
+				.idrise_det_clr	= { 0x007c, 4, 4, 0, 1 },
+				.ls_det_en	= { 0x0074, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x0078, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x007c, 0, 0, 0, 1 },
+				.utmi_avalid	= { 0x006c, 1, 1, 0, 1 },
+				.utmi_bvalid	= { 0x006c, 0, 0, 0, 1 },
+				.utmi_id	= { 0x006c, 6, 6, 0, 1 },
+				.utmi_ls	= { 0x006c, 5, 4, 0, 1 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x005c, 8, 0, 0x1d2, 0x1d1 },
+				.ls_det_en	= { 0x0090, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x0094, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x0098, 0, 0, 0, 1 },
+				.utmi_ls	= { 0x006c, 13, 12, 0, 1 },
+				.utmi_hstdet	= { 0x006c, 15, 15, 0, 1 },
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0x004c, 3, 0, 5, 1 },
+			.cp_det		= { 0x006c, 19, 19, 0, 1 },
+			.dcp_det	= { 0x006c, 18, 18, 0, 1 },
+			.dp_det		= { 0x006c, 20, 20, 0, 1 },
+			.idm_sink_en	= { 0x0058, 1, 1, 0, 1 },
+			.idp_sink_en	= { 0x0058, 0, 0, 0, 1 },
+			.idp_src_en	= { 0x0058, 2, 2, 0, 1 },
+			.rdm_pdwn_en	= { 0x0058, 3, 3, 0, 1 },
+			.vdm_src_en	= { 0x0058, 5, 5, 0, 1 },
+			.vdp_src_en	= { 0x0058, 4, 4, 0, 1 },
+		},
+	},
+	{ /* sentinel */ }
+};
+
 static const struct rockchip_usb2phy_cfg rk3562_phy_cfgs[] = {
 	{
 		.reg = 0xff740000,
@@ -2287,6 +2360,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
 	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
 	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
+	{ .compatible = "rockchip,rk3528-usb2phy", .data = &rk3528_phy_cfgs },
 	{ .compatible = "rockchip,rk3562-usb2phy", .data = &rk3562_phy_cfgs },
 	{ .compatible = "rockchip,rk3568-usb2phy", .data = &rk3568_phy_cfgs },
 	{ .compatible = "rockchip,rk3576-usb2phy", .data = &rk3576_phy_cfgs },
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
