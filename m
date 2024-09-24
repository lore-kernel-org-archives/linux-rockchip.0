Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18415CF9C6B
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 08:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNlf8pJV9WfoNyV4rjxxdoE2cCLqf4t8OICSMVh2RB0=; b=x94ILB+TNjvDUE
	xRpvaC+NRQpRPWokuBAh9JMxH/5vh9CXagEVnyTESeO6SuVnMGIx1u35aZnP36ZhY+eQ6azhC10lA
	DcOlsBo4PsnMWbnh9DfpyvfvmP2kxXDOhAjFzC844eM8eXb2Vyg8u4ivbiwo9Aty+RtnMGO/NdYTz
	ve1mjTDcm6qLyqmMSBWfV+0pXZQ9W/kFeKL6TZXETMOU8wUFgL7qiMXqhMiurZYJP9htLTWZtsl22
	6GWd/DqSeuax67mDeALPUZKS1yHXgjvQv823eG/GwVkbEnEjQ7KoYA0F7F/PH0a51VHElIvqHIQSX
	+UjoWoab9vYFPSQ5pnZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st1N5-00000001h9T-1PBH;
	Tue, 24 Sep 2024 08:58:11 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st1KP-00000001gNv-2Of5;
	Tue, 24 Sep 2024 08:55:27 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-7191f1875d3so768705b3a.0;
        Tue, 24 Sep 2024 01:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727168125; x=1727772925; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RdPQOqshsi8htdMx4DK/czYe2ICbMxqoRuwqGRvjM74=;
        b=jbbpDeFSWHoJCwN+Eac/SDrlsPRrgiW6zD9dbc4AVnuPA+MamFkkhmEKbX4a0LnSQF
         0gAqUWChk5aYunnoMpFtmbzt99rfq/3/bqNUxtwgtcFoNvynZTCEh9jhWi41xn4Kr1wg
         cCoiHBcijjji1sj7BAjdaQOoct4Wu18Ur7ULHfqbz6TErPGTJbxigcIE+gFBUnqR3Vz0
         vyPypD1d/h54P3WGEU7nxJ0krztBnIsj6SPRY/yxuExjifR7Jvp1agrlINx0gUPc4OVn
         QKOs46TPNQBCJdZ2Qo5ZDqKBs1VwFH8y2zPYToaEFgRckGEE9MU4NTxPgdN0wTq1jO0v
         ZGOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727168125; x=1727772925;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RdPQOqshsi8htdMx4DK/czYe2ICbMxqoRuwqGRvjM74=;
        b=DSzdTyxmbGJGxcENznGYiHIqd7ajZOoeBEAGyPGKeDYpcdbEnln5zqqQ0Oj5CnLXPH
         kbkv+4nVzCTdISjM5zCwybC3jYONFs2BsksRXVECzF7Gvj0kCMmIRsWNkWUFXZ/rGwlL
         4gxBUI0NZq5hkz5n2XnJCVBCadReqkwUiLAT2UL+U/gKhHUAl8QaJNwNlLXkeb054lWf
         0tZA/DDlCvgZYWat/csit/YZQbOJueJn5WjlR51MelsKkgdf1238CL1zChcJu4J2a3Bz
         1cEkafsEnp9I2KjA4S043IRyLsRIKDK722UMNUk8p2jWrlyipPzL5N2KbWNpmhXL5vvl
         1Agg==
X-Forwarded-Encrypted: i=1; AJvYcCVSXrQ9hpWLkq7RayrIjsp3qvDWerx7cYqYgrFnPWeTXdXvcrc9kYcQnw2eYNeKGKyz30qYas3DUnNazvt0p3Vp@lists.infradead.org, AJvYcCWpwpG5RuKUFFDVbBXY0CnJ7tNf1J0RHTX5SvpKwFYXC2VbN+Eiigic9nqg1/q0e4L6wzXrlf1ALm53Kel2dtM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxL7mDihyun85rO7ZGDGhRZX6Ybd0JV/YD10SHnX7oVUnRkJb7a
	48ob4ubePFSOnw+l8w0NhMj257+ymJUtI/sJQPpYRBu+CPtrIoHh
X-Google-Smtp-Source: AGHT+IEXl7SFCqZvaJLXCa3j7Np7B5WEQB9FRszoJwYQw7a2Y06TIz8wkJbIeFGUABP0toEDRBtHng==
X-Received: by 2002:a05:6a21:32a6:b0:1cf:3130:9966 with SMTP id adf61e73a8af0-1d30a91f9f0mr9694991637.3.1727168124544;
        Tue, 24 Sep 2024 01:55:24 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71afc97c18bsm795090b3a.158.2024.09.24.01.55.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 01:55:24 -0700 (PDT)
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
	wmc@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH v2 2/2] phy: rockchip: inno-usb2: Add usb2 phys support for rk3576
Date: Tue, 24 Sep 2024 16:55:10 +0800
Message-ID: <20240924085510.20863-2-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240924085510.20863-1-frawang.cn@gmail.com>
References: <20240924085510.20863-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_015525_966108_1A449624 
X-CRM114-Status: GOOD (  20.56  )
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

The RK3576 SoC has two independent USB2.0 PHYs, and
each PHY has one port.

Signed-off-by: William Wu <william.wu@rock-chips.com>
Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
Changelog:
v2:
 - no changes.

v1:
 - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-2-frank.wang@rock-chips.com/

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 131 ++++++++++++++++--
 1 file changed, 123 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 4f71373ae6e1a..51ca16cbb86cb 100644
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
@@ -376,6 +378,7 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
 {
 	struct device_node *node = rphy->dev->of_node;
 	struct clk_init_data init;
+	struct clk *refclk = of_clk_get_by_name(node, "phyclk");
 	const char *clk_name;
 	int ret = 0;
 
@@ -386,8 +389,8 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
 	/* optional override of the clockname */
 	of_property_read_string(node, "clock-output-names", &init.name);
 
-	if (rphy->clk) {
-		clk_name = __clk_get_name(rphy->clk);
+	if (!IS_ERR(refclk)) {
+		clk_name = __clk_get_name(refclk);
 		init.parent_names = &clk_name;
 		init.num_parents = 1;
 	} else {
@@ -1406,22 +1409,29 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
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
@@ -1484,6 +1494,8 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 
 put_child:
 	of_node_put(child_np);
+disable_clks:
+	clk_bulk_disable_unprepare(rphy->num_clks, rphy->clks);
 	return ret;
 }
 
@@ -1495,6 +1507,30 @@ static int rk3128_usb2phy_tuning(struct rockchip_usb2phy *rphy)
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
@@ -1923,6 +1959,84 @@ static const struct rockchip_usb2phy_cfg rk3568_phy_cfgs[] = {
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
@@ -2094,6 +2208,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
 	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
 	{ .compatible = "rockchip,rk3568-usb2phy", .data = &rk3568_phy_cfgs },
+	{ .compatible = "rockchip,rk3576-usb2phy", .data = &rk3576_phy_cfgs },
 	{ .compatible = "rockchip,rk3588-usb2phy", .data = &rk3588_phy_cfgs },
 	{ .compatible = "rockchip,rv1108-usb2phy", .data = &rv1108_phy_cfgs },
 	{}
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
