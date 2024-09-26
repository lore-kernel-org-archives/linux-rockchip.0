Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F86ECCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 10:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2YZH7WdjyOcd4bvKij7LB7Rrjf9QCzzJx/SlpfN1wY=; b=w9HyRakj/N/bwq
	hXUmpTCw8CoxC9mKq6MNuYlt+7a/iULqgHS++13wkl1UFIOOMjpNkKphpA5S8H+T5FS6hZOFgMeYS
	La1c4UhQLc1OKMgSAI+x8LT3KtLDP17gO9Ls/KE3dHF/Ka9nU9vdpdhY+pUx0T2oQKQnCVnAWmar4
	u76tGTkWqUu82sNwElIZb6ju5jrMsrstL3q7osDmF92cC+7k36siEIkWjb69xzx16SWNLO4sZG98X
	DtPi+Igzi9J4q4FjCsh5qZpRQd3zRMTJUs9x0dJbyc1BTMqyX63ABkrjbNm8a21jBVvLfMoUXb8WY
	bzTYEJAF9qFhQB6SbF7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stlqo-0000000859A-1bkA;
	Thu, 26 Sep 2024 10:35:58 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stlnZ-000000084TR-3XYc;
	Thu, 26 Sep 2024 10:32:39 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-206b9ab5717so582565ad.2;
        Thu, 26 Sep 2024 03:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727346756; x=1727951556; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g2+baB4CWB73BvGZfoux0cIyphNGGTAlOhg5FAQ80bA=;
        b=b707OfTJ94ZdYdR3q3jy9HWOG1pJjZ9r5b4kLvwwwlF1OIxQSuXvAAAhBiCGk6GezQ
         8E1JdqmZuy/m9KYZmduG3i+knBbm/9Qk5B6iUYDUbyQnvh/PnFsIj5RWPQjCBAGP8VdU
         0HDtBU+GPLYbvBEZFf1WPLfjQdSThIpNoavOj8sh1KPFYRtt2O1aflIuUGVX2JrZKTz+
         3yRR3kwBAJd45U6w3ucCUxAm2nfVJonJmgzg6VCwD2M/FqpV4Sz3/JEHyg7sfDkTlMQa
         4VCDHJX1U4cvFuMOtrZ0Cucp7dGzyHkvxGvupsR7juG+Da5SJMw58jHXxFZMX4erkeLQ
         jiAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727346756; x=1727951556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g2+baB4CWB73BvGZfoux0cIyphNGGTAlOhg5FAQ80bA=;
        b=bHiB6TWdknIs/M0j/Xad1macgK0fi1b0M9aJtalbCS7FU2d717zJikpVnRjilr32f2
         fgYEmlWXIN1FwDiQE3GrKkECu4p9UISt2YQ4MGkye2LfqKZh5xjVFjEGw9PZPQJBL5Y5
         NjJR9zViMGRUPr3eOGYf8A20S/V2yKf9zD7TPnxe9etzSgOY193jMP1SxH6rlldXa73U
         dk97LGdec2iMJI00ijB3x6fnmbP8hPuam6UmysemeBv2md6tI+b1SRakUc4CnCqi4gXN
         vXu7kLgqyWqqj9DTl0nZrFS25lqgg2fgE/9zLSvGQnNfMuIn7VzVvQC/4uz6svkG5s+s
         iK4w==
X-Forwarded-Encrypted: i=1; AJvYcCUeebwJrRl+npIXsS5K2pKUfHx2AubLRY0QfR4rIh825ntNHtUizRMc8FY9FDHOxsb75s0t8VAilxlKVfQqaLo=@lists.infradead.org, AJvYcCVsDDulEPrBYocNcUUghNMqeOKDwG2Ojg0afGgn9rCWHJBmUuaYVN7gKuE8I3+usf2+i9xZHcUTXdJt3MCYrjww@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6+NBq1taqp0nsxidolxJp85nRPRjovHGwWXpQAYqdVFDymeWe
	5FcgxPzvUUgDnbv2XmyJEZN5NQluEiv0nKmA7QZsB0Pdn1OyaYR5
X-Google-Smtp-Source: AGHT+IFzHQlaZeBDK4I+Lh482loDywI/m5hc0I5SH3w0kjlGeZy6XRf9l2xWSz297JdGoTTT2RHXLw==
X-Received: by 2002:a17:903:11c3:b0:205:875c:354a with SMTP id d9443c01a7336-20afc3e9ad9mr34098345ad.3.1727346756350;
        Thu, 26 Sep 2024 03:32:36 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20b002aaa8fsm22109335ad.240.2024.09.26.03.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2024 03:32:36 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	frank.wang@rock-chips.com
Subject: [PATCH v3 2/2] phy: rockchip: inno-usb2: Add usb2 phys support for rk3576
Date: Thu, 26 Sep 2024 18:32:23 +0800
Message-ID: <20240926103223.29538-2-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926103223.29538-1-frawang.cn@gmail.com>
References: <20240926103223.29538-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_033237_920194_26DE5DBF 
X-CRM114-Status: GOOD (  23.51  )
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

From: William Wu <william.wu@rock-chips.com>

The RK3576 SoC has two independent USB2.0 PHYs, and each PHY has
one port.

This change also converts the clock management from single to bulk
as some Rockchip SoCs (e.g RK3576) have more than one clock.

Signed-off-by: William Wu <william.wu@rock-chips.com>
Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
Changelog:
v3:
 - amend the commit log adds clocks converting.
 - retrieve the clock by "clks.id" in *_clk480m_register() function.

v2:
 - no changes.
v1:
 - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-2-frank.wang@rock-chips.com/

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 139 +++++++++++++++++-
 1 file changed, 131 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 4f71373ae6e1..642c7857c5ae 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -229,9 +229,10 @@ struct rockchip_usb2phy_port {
  * @dev: pointer to device.
  * @grf: General Register Files regmap.
  * @usbgrf: USB General Register Files regmap.
- * @clk: clock struct of phy input clk.
+ * @clks: array of phy input clocks.
  * @clk480m: clock struct of phy output clk.
  * @clk480m_hw: clock struct of phy output clk management.
+ * @num_clks: number of phy input clocks.
  * @phy_reset: phy reset control.
  * @chg_state: states involved in USB charger detection.
  * @chg_type: USB charger types.
@@ -246,9 +247,10 @@ struct rockchip_usb2phy {
 	struct device	*dev;
 	struct regmap	*grf;
 	struct regmap	*usbgrf;
-	struct clk	*clk;
+	struct clk_bulk_data	*clks;
 	struct clk	*clk480m;
 	struct clk_hw	clk480m_hw;
+	int			num_clks;
 	struct reset_control	*phy_reset;
 	enum usb_chg_state	chg_state;
 	enum power_supply_type	chg_type;
@@ -376,7 +378,9 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
 {
 	struct device_node *node = rphy->dev->of_node;
 	struct clk_init_data init;
+	struct clk *refclk = NULL;
 	const char *clk_name;
+	int i;
 	int ret = 0;
 
 	init.flags = 0;
@@ -386,8 +390,15 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
 	/* optional override of the clockname */
 	of_property_read_string(node, "clock-output-names", &init.name);
 
-	if (rphy->clk) {
-		clk_name = __clk_get_name(rphy->clk);
+	for (i = 0; i < rphy->num_clks; i++) {
+		if (!strncmp(rphy->clks[i].id, "phyclk", 6)) {
+			refclk = rphy->clks[i].clk;
+			break;
+		}
+	}
+
+	if (!IS_ERR(refclk)) {
+		clk_name = __clk_get_name(refclk);
 		init.parent_names = &clk_name;
 		init.num_parents = 1;
 	} else {
@@ -1406,22 +1417,29 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	if (IS_ERR(rphy->phy_reset))
 		return PTR_ERR(rphy->phy_reset);
 
-	rphy->clk = devm_clk_get_optional_enabled(dev, "phyclk");
-	if (IS_ERR(rphy->clk)) {
-		return dev_err_probe(&pdev->dev, PTR_ERR(rphy->clk),
+	ret = devm_clk_bulk_get_all(dev, &rphy->clks);
+	if (ret == -EPROBE_DEFER) {
+		return dev_err_probe(&pdev->dev, -EPROBE_DEFER,
 				     "failed to get phyclk\n");
 	}
 
+	/* Clocks are optional */
+	rphy->num_clks = ret < 0 ? 0 : ret;
+
 	ret = rockchip_usb2phy_clk480m_register(rphy);
 	if (ret) {
 		dev_err(dev, "failed to register 480m output clock\n");
 		return ret;
 	}
 
+	ret = clk_bulk_prepare_enable(rphy->num_clks, rphy->clks);
+	if (ret)
+		return ret;
+
 	if (rphy->phy_cfg->phy_tuning) {
 		ret = rphy->phy_cfg->phy_tuning(rphy);
 		if (ret)
-			return ret;
+			goto disable_clks;
 	}
 
 	index = 0;
@@ -1484,6 +1502,8 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 
 put_child:
 	of_node_put(child_np);
+disable_clks:
+	clk_bulk_disable_unprepare(rphy->num_clks, rphy->clks);
 	return ret;
 }
 
@@ -1495,6 +1515,30 @@ static int rk3128_usb2phy_tuning(struct rockchip_usb2phy *rphy)
 				BIT(2) << BIT_WRITEABLE_SHIFT | 0);
 }
 
+static int rk3576_usb2phy_tuning(struct rockchip_usb2phy *rphy)
+{
+	int ret;
+	u32 reg = rphy->phy_cfg->reg;
+
+	/* Deassert SIDDQ to power on analog block */
+	ret = regmap_write(rphy->grf, reg + 0x0010, GENMASK(29, 29) | 0x0000);
+	if (ret)
+		return ret;
+
+	/* Do reset after exit IDDQ mode */
+	ret = rockchip_usb2phy_reset(rphy);
+	if (ret)
+		return ret;
+
+	/* HS DC Voltage Level Adjustment 4'b1001 : +5.89% */
+	ret |= regmap_write(rphy->grf, reg + 0x000c, GENMASK(27, 24) | 0x0900);
+
+	/* HS Transmitter Pre-Emphasis Current Control 2'b10 : 2x */
+	ret |= regmap_write(rphy->grf, reg + 0x0010, GENMASK(20, 19) | 0x0010);
+
+	return ret;
+}
+
 static int rk3588_usb2phy_tuning(struct rockchip_usb2phy *rphy)
 {
 	int ret;
@@ -1923,6 +1967,84 @@ static const struct rockchip_usb2phy_cfg rk3568_phy_cfgs[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_usb2phy_cfg rk3576_phy_cfgs[] = {
+	{
+		.reg = 0x0,
+		.num_ports	= 1,
+		.phy_tuning	= rk3576_usb2phy_tuning,
+		.clkout_ctl	= { 0x0008, 0, 0, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0000, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x00c0, 1, 1, 0, 1 },
+				.bvalid_det_st	= { 0x00c4, 1, 1, 0, 1 },
+				.bvalid_det_clr = { 0x00c8, 1, 1, 0, 1 },
+				.ls_det_en	= { 0x00c0, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x00c4, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x00c8, 0, 0, 0, 1 },
+				.disfall_en	= { 0x00c0, 6, 6, 0, 1 },
+				.disfall_st	= { 0x00c4, 6, 6, 0, 1 },
+				.disfall_clr	= { 0x00c8, 6, 6, 0, 1 },
+				.disrise_en	= { 0x00c0, 5, 5, 0, 1 },
+				.disrise_st	= { 0x00c4, 5, 5, 0, 1 },
+				.disrise_clr	= { 0x00c8, 5, 5, 0, 1 },
+				.utmi_avalid	= { 0x0080, 1, 1, 0, 1 },
+				.utmi_bvalid	= { 0x0080, 0, 0, 0, 1 },
+				.utmi_ls	= { 0x0080, 5, 4, 0, 1 },
+			}
+		},
+		.chg_det = {
+			.cp_det		= { 0x0080, 8, 8, 0, 1 },
+			.dcp_det	= { 0x0080, 8, 8, 0, 1 },
+			.dp_det		= { 0x0080, 9, 9, 1, 0 },
+			.idm_sink_en	= { 0x0010, 5, 5, 1, 0 },
+			.idp_sink_en	= { 0x0010, 5, 5, 0, 1 },
+			.idp_src_en	= { 0x0010, 14, 14, 0, 1 },
+			.rdm_pdwn_en	= { 0x0010, 14, 14, 0, 1 },
+			.vdm_src_en	= { 0x0010, 7, 6, 0, 3 },
+			.vdp_src_en	= { 0x0010, 7, 6, 0, 3 },
+		},
+	},
+	{
+		.reg = 0x2000,
+		.num_ports	= 1,
+		.phy_tuning	= rk3576_usb2phy_tuning,
+		.clkout_ctl	= { 0x2008, 0, 0, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x2000, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x20c0, 1, 1, 0, 1 },
+				.bvalid_det_st	= { 0x20c4, 1, 1, 0, 1 },
+				.bvalid_det_clr = { 0x20c8, 1, 1, 0, 1 },
+				.ls_det_en	= { 0x20c0, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x20c4, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x20c8, 0, 0, 0, 1 },
+				.disfall_en	= { 0x20c0, 6, 6, 0, 1 },
+				.disfall_st	= { 0x20c4, 6, 6, 0, 1 },
+				.disfall_clr	= { 0x20c8, 6, 6, 0, 1 },
+				.disrise_en	= { 0x20c0, 5, 5, 0, 1 },
+				.disrise_st	= { 0x20c4, 5, 5, 0, 1 },
+				.disrise_clr	= { 0x20c8, 5, 5, 0, 1 },
+				.utmi_avalid	= { 0x2080, 1, 1, 0, 1 },
+				.utmi_bvalid	= { 0x2080, 0, 0, 0, 1 },
+				.utmi_ls	= { 0x2080, 5, 4, 0, 1 },
+			}
+		},
+		.chg_det = {
+			.cp_det		= { 0x2080, 8, 8, 0, 1 },
+			.dcp_det	= { 0x2080, 8, 8, 0, 1 },
+			.dp_det		= { 0x2080, 9, 9, 1, 0 },
+			.idm_sink_en	= { 0x2010, 5, 5, 1, 0 },
+			.idp_sink_en	= { 0x2010, 5, 5, 0, 1 },
+			.idp_src_en	= { 0x2010, 14, 14, 0, 1 },
+			.rdm_pdwn_en	= { 0x2010, 14, 14, 0, 1 },
+			.vdm_src_en	= { 0x2010, 7, 6, 0, 3 },
+			.vdp_src_en	= { 0x2010, 7, 6, 0, 3 },
+		},
+	},
+	{ /* sentinel */ }
+};
+
 static const struct rockchip_usb2phy_cfg rk3588_phy_cfgs[] = {
 	{
 		.reg = 0x0000,
@@ -2094,6 +2216,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
 	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
 	{ .compatible = "rockchip,rk3568-usb2phy", .data = &rk3568_phy_cfgs },
+	{ .compatible = "rockchip,rk3576-usb2phy", .data = &rk3576_phy_cfgs },
 	{ .compatible = "rockchip,rk3588-usb2phy", .data = &rk3588_phy_cfgs },
 	{ .compatible = "rockchip,rv1108-usb2phy", .data = &rv1108_phy_cfgs },
 	{}
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
