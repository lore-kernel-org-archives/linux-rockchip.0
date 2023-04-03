Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D21F1C761AF
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 20:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2dWB5CW8pwkNWpAM+2y70eR4kcukno7FyFwTxs0O2M=; b=Z2+WKaXhdlwVWK
	se5jDFL7QpfAiUyT3yKYRsJwdhTg3UwfUVy2I+jTLYSguI/DILSToDjuay2m1Zj7V99FgAcuB0f+z
	xwX5bbW/yXALkte0SovmfRHkeApDmoUujVqnK8Zk+KamZ/EI+lcxx3o+Wod4dQ7oKrq0vLpJ+wLj0
	5deVz7UHqKazFerdkwEEw+e7MC3AR9hicFBLRd2RAp0H1YKOfD/a/Ac487qHXvu81FevSKHCjbvEj
	bkzz5v2xHu4tE0nfOBBW+OS/kzrGeirriRNHmzsG5qAxUrcxzGbUxEOh8TeSBXdCRVtb35hoeT0CC
	Fk0Zd15FdI9vI8a2GUAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQi3-00Gatm-2w;
	Mon, 03 Apr 2023 20:23:23 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQhw-00Gamj-1O;
	Mon, 03 Apr 2023 20:23:18 +0000
Received: from jupiter.universe (dyndsl-091-248-212-192.ewe-ip-backbone.de [91.248.212.192])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CB18D6603161;
	Mon,  3 Apr 2023 21:23:14 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680553394;
	bh=skQehSyjADh+Hmg49bUp5beSk9f0LyInxN05A6rHyU4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SHYEevNO6ngY82LXCjdFut8i94fOG0cnvk/M7cZEM08niT3tjO40ZrXeNnjjOBpxb
	 jg6N6M6OSiPvaziwtffNTRNFF2OahdkBFmTcgTYAWfoHeSkfOrfUAdwV/W4viDcZTD
	 FzYbtaFDhyKoVhKlfitWd7Mqlvf8KAs3clcX69Zy0CIz6iLD2VRSSHPow5zLBErdUl
	 PnhbODflnwY3dBYWvVz2J8Bv0XIU0obDW9hXpTTe+hZGkoquIiciR/oENnnfrcKk7u
	 IpNNodXTGict/hSsxpaf8Bg29l5ogVQnPvFHv6XnZUmGf+j4V3Vf+Fn1CesLofk4ru
	 i1BOVQdriPO0w==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 12F884807F1; Mon,  3 Apr 2023 22:23:09 +0200 (CEST)
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
Subject: [PATCHv2 5/7] phy: phy-rockchip-inno-usb2: add rk3588 phy tuning support
Date: Mon,  3 Apr 2023 22:23:05 +0200
Message-Id: <20230403202307.120562-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230403202307.120562-1-sebastian.reichel@collabora.com>
References: <20230403202307.120562-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_132316_740618_084E50F1 
X-CRM114-Status: GOOD (  19.45  )
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

On RK3588 some registers need to be tweaked to support waking up from
suspend when a USB device is plugged into a port from a suspended PHY.
Without this change USB devices only work when they are plugged at
boot time.

Apart from that it optimizes settings to avoid devices toggling
between fullspeed and highspeed mode.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 3a78c5bf11d4..9f6d09da7fbd 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -33,6 +33,8 @@
 #define SCHEDULE_DELAY		(60 * HZ)
 #define OTG_SCHEDULE_DELAY	(2 * HZ)
 
+struct rockchip_usb2phy;
+
 enum rockchip_usb2phy_port_id {
 	USB2PHY_PORT_OTG,
 	USB2PHY_PORT_HOST,
@@ -163,6 +165,7 @@ struct rockchip_usb2phy_port_cfg {
  * struct rockchip_usb2phy_cfg - usb-phy configuration.
  * @reg: the address offset of grf for usb-phy config.
  * @num_ports: specify how many ports that the phy has.
+ * @phy_tuning: phy default parameters tuning.
  * @clkout_ctl: keep on/turn off output clk of phy.
  * @port_cfgs: usb-phy port configurations.
  * @chg_det: charger detection registers.
@@ -170,6 +173,7 @@ struct rockchip_usb2phy_port_cfg {
 struct rockchip_usb2phy_cfg {
 	unsigned int	reg;
 	unsigned int	num_ports;
+	int (*phy_tuning)(struct rockchip_usb2phy *rphy);
 	struct usb2phy_reg	clkout_ctl;
 	const struct rockchip_usb2phy_port_cfg	port_cfgs[USB2PHY_NUM_PORTS];
 	const struct rockchip_chg_det_reg	chg_det;
@@ -1400,6 +1404,12 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 		goto disable_clks;
 	}
 
+	if (rphy->phy_cfg->phy_tuning) {
+		ret = rphy->phy_cfg->phy_tuning(rphy);
+		if (ret)
+			goto disable_clks;
+	}
+
 	index = 0;
 	for_each_available_child_of_node(np, child_np) {
 		struct rockchip_usb2phy_port *rport = &rphy->ports[index];
@@ -1468,6 +1478,55 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	return ret;
 }
 
+static int rk3588_usb2phy_tuning(struct rockchip_usb2phy *rphy)
+{
+	int ret = 0;
+	bool usb3otg = false;
+	/*
+	 * utmi_termselect = 1'b1 (en FS terminations)
+	 * utmi_xcvrselect = 2'b01 (FS transceiver)
+	 */
+	int suspend_cfg = 0x14;
+
+	if (rphy->phy_cfg->reg == 0x0000 || rphy->phy_cfg->reg == 0x4000) {
+		/* USB2 config for USB3_0 and USB3_1 */
+		suspend_cfg |= 0x01; /* utmi_opmode = 2'b01 (no-driving) */
+		usb3otg = true;
+	} else if (rphy->phy_cfg->reg == 0x8000 || rphy->phy_cfg->reg == 0xc000) {
+		/* USB2 config for USB2_0 and USB2_1 */
+		suspend_cfg |= 0x00; /* utmi_opmode = 2'b00 (normal) */
+	} else {
+		return -EINVAL;
+	}
+
+	/* Deassert SIDDQ to power on analog block */
+	ret = regmap_write(rphy->grf, 0x0008, GENMASK(29, 29) | 0x0000);
+	if (ret)
+		return ret;
+
+	/* Do reset after exit IDDQ mode */
+	ret = rockchip_usb2phy_reset(rphy);
+	if (ret)
+		return ret;
+
+	/* suspend configuration */
+	ret |= regmap_write(rphy->grf, 0x000c, GENMASK(20, 16) | suspend_cfg);
+
+	/* HS DC Voltage Level Adjustment 4'b1001 : +5.89% */
+	ret |= regmap_write(rphy->grf, 0x0004, GENMASK(27, 24) | 0x0900);
+
+	/* HS Transmitter Pre-Emphasis Current Control 2'b10 : 2x */
+	ret |= regmap_write(rphy->grf, 0x0008, GENMASK(20, 19) | 0x0010);
+
+	if (!usb3otg)
+		return ret;
+
+	/* Pullup iddig pin for USB3_0 OTG mode */
+	ret |= regmap_write(rphy->grf, 0x0010, GENMASK(17, 16) | 0x0003);
+
+	return ret;
+}
+
 static const struct rockchip_usb2phy_cfg rk3228_phy_cfgs[] = {
 	{
 		.reg = 0x760,
@@ -1785,6 +1844,7 @@ static const struct rockchip_usb2phy_cfg rk3588_phy_cfgs[] = {
 	{
 		.reg = 0x0000,
 		.num_ports	= 1,
+		.phy_tuning	= rk3588_usb2phy_tuning,
 		.clkout_ctl	= { 0x0000, 0, 0, 1, 0 },
 		.port_cfgs	= {
 			[USB2PHY_PORT_OTG] = {
@@ -1821,6 +1881,7 @@ static const struct rockchip_usb2phy_cfg rk3588_phy_cfgs[] = {
 	{
 		.reg = 0x4000,
 		.num_ports	= 1,
+		.phy_tuning	= rk3588_usb2phy_tuning,
 		.clkout_ctl	= { 0x0000, 0, 0, 1, 0 },
 		.port_cfgs	= {
 			[USB2PHY_PORT_OTG] = {
@@ -1857,6 +1918,7 @@ static const struct rockchip_usb2phy_cfg rk3588_phy_cfgs[] = {
 	{
 		.reg = 0x8000,
 		.num_ports	= 1,
+		.phy_tuning	= rk3588_usb2phy_tuning,
 		.clkout_ctl	= { 0x0000, 0, 0, 1, 0 },
 		.port_cfgs	= {
 			[USB2PHY_PORT_HOST] = {
@@ -1877,6 +1939,7 @@ static const struct rockchip_usb2phy_cfg rk3588_phy_cfgs[] = {
 	{
 		.reg = 0xc000,
 		.num_ports	= 1,
+		.phy_tuning	= rk3588_usb2phy_tuning,
 		.clkout_ctl	= { 0x0000, 0, 0, 1, 0 },
 		.port_cfgs	= {
 			[USB2PHY_PORT_HOST] = {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
