Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99E82C83F1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 12:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZW6KbLk/+LGHoyHv/e9zCMreJbdpGr5X4ZI3jKNCwNg=; b=beJliyjyFNGjzw
	N0IBOuijvOZH0c9ATAines4Fxq+FbB65yy3uWWOZ56XUGTl6ZFzTMTHCImCT90NiUnhivIrq0T6G/
	xh7wplJWeori2TSyZR1iUbXQC7N716zq2i2mcu/cvUDI4LBVJPc36T96B4guFF8oyLYTaqOqYxd51
	BzeB9Md7YbsV6WiCitA8pb+B5pJzk6L+ga9Sg6NKPJhomUsGoRcd4pBTOofIi9B9ugGizijxCczDA
	Hn7Gso46Sw1tNiVmBjvRseuFX3bSKMcwyvq9J0z6C4c5XgxGHLKu06NO72nJ4ATX+99QsrxQ2LFGX
	0eeUFL0P1bcvcL1REK+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYaV-00000004uX8-1DwS;
	Wed, 23 Jul 2025 12:28:47 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYVc-00000004tgX-06Oy
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Jul 2025 12:23:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753273423; bh=0v79iA3SmSSu7coGbRQw4Mmbd+Mg73Nzz/UpJsKT+eM=;
 b=D8OTsH7/dKaahkz9OROA68I6+ucObBBRKPbeqsTDcQEAHut7stCiFsvysINkPams3LhatvoOD
 npEpRfbt3S6ArgD7pY35XIQRQlUQpXAwijNH6GpahVUTugJnLZPX+B5r+5QF3sJ9kERptzvvGaE
 WBGcmlmbsqJAip6lyRnzDtmLFSJUU+wHz+wPwCp9m0XDjtv3/eVu9dgMx7Rm3Gg/l77T2G2dd8m
 fl/P/cHLTW+q3vcjIKBPopEd74u+G5ipKVHYb9LT82aa20yQ4Uov7KWb6pGSLOK14H+e74bl6bp
 HJd4PGiOItlJrgOBuqmVJ/4eu6CqujhVuVn/d/yJBw3A==
X-Forward-Email-ID: 6880d44acb0ee86f9731a072
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
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
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 02/11] phy: rockchip: inno-usb2: Simplify rockchip,usbgrf handling
Date: Wed, 23 Jul 2025 12:23:00 +0000
Message-ID: <20250723122323.2344916-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723122323.2344916-1-jonas@kwiboo.se>
References: <20250723122323.2344916-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_052344_112945_1C33D335 
X-CRM114-Status: GOOD (  17.09  )
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

The logic to decide if usbgrf or grf should be used is more complex than
it needs to be. For RK3568, RV1108 and soon RK3528 we can assign the
rockchip,usbgrf regmap directly to grf instead of doing a usbgrf and grf
dance.

Simplify the code to only use the grf regmap and handle the logic of
what regmap should be used in driver probe instead.

The only expected change from this is that RK3528 can be supported
because of an addition of a of_property_present() check.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 68 +++++--------------
 1 file changed, 18 insertions(+), 50 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index b0f23690ec30..130f03474719 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -228,7 +228,6 @@ struct rockchip_usb2phy_port {
  * struct rockchip_usb2phy - usb2.0 phy driver data.
  * @dev: pointer to device.
  * @grf: General Register Files regmap.
- * @usbgrf: USB General Register Files regmap.
  * @clks: array of phy input clocks.
  * @clk480m: clock struct of phy output clk.
  * @clk480m_hw: clock struct of phy output clk management.
@@ -246,7 +245,6 @@ struct rockchip_usb2phy_port {
 struct rockchip_usb2phy {
 	struct device	*dev;
 	struct regmap	*grf;
-	struct regmap	*usbgrf;
 	struct clk_bulk_data	*clks;
 	struct clk	*clk480m;
 	struct clk_hw	clk480m_hw;
@@ -261,11 +259,6 @@ struct rockchip_usb2phy {
 	struct rockchip_usb2phy_port	ports[USB2PHY_NUM_PORTS];
 };
 
-static inline struct regmap *get_reg_base(struct rockchip_usb2phy *rphy)
-{
-	return rphy->usbgrf == NULL ? rphy->grf : rphy->usbgrf;
-}
-
 static inline int property_enable(struct regmap *base,
 				  const struct usb2phy_reg *reg, bool en)
 {
@@ -323,12 +316,11 @@ static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
 {
 	struct rockchip_usb2phy *rphy =
 		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
-	struct regmap *base = get_reg_base(rphy);
 	int ret;
 
 	/* turn on 480m clk output if it is off */
-	if (!property_enabled(base, &rphy->phy_cfg->clkout_ctl)) {
-		ret = property_enable(base, &rphy->phy_cfg->clkout_ctl, true);
+	if (!property_enabled(rphy->grf, &rphy->phy_cfg->clkout_ctl)) {
+		ret = property_enable(rphy->grf, &rphy->phy_cfg->clkout_ctl, true);
 		if (ret)
 			return ret;
 
@@ -343,19 +335,17 @@ static void rockchip_usb2phy_clk480m_unprepare(struct clk_hw *hw)
 {
 	struct rockchip_usb2phy *rphy =
 		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
-	struct regmap *base = get_reg_base(rphy);
 
 	/* turn off 480m clk output */
-	property_enable(base, &rphy->phy_cfg->clkout_ctl, false);
+	property_enable(rphy->grf, &rphy->phy_cfg->clkout_ctl, false);
 }
 
 static int rockchip_usb2phy_clk480m_prepared(struct clk_hw *hw)
 {
 	struct rockchip_usb2phy *rphy =
 		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
-	struct regmap *base = get_reg_base(rphy);
 
-	return property_enabled(base, &rphy->phy_cfg->clkout_ctl);
+	return property_enabled(rphy->grf, &rphy->phy_cfg->clkout_ctl);
 }
 
 static unsigned long
@@ -574,7 +564,6 @@ static int rockchip_usb2phy_power_on(struct phy *phy)
 {
 	struct rockchip_usb2phy_port *rport = phy_get_drvdata(phy);
 	struct rockchip_usb2phy *rphy = dev_get_drvdata(phy->dev.parent);
-	struct regmap *base = get_reg_base(rphy);
 	int ret;
 
 	dev_dbg(&rport->phy->dev, "port power on\n");
@@ -586,7 +575,7 @@ static int rockchip_usb2phy_power_on(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = property_enable(base, &rport->port_cfg->phy_sus, false);
+	ret = property_enable(rphy->grf, &rport->port_cfg->phy_sus, false);
 	if (ret) {
 		clk_disable_unprepare(rphy->clk480m);
 		return ret;
@@ -615,7 +604,6 @@ static int rockchip_usb2phy_power_off(struct phy *phy)
 {
 	struct rockchip_usb2phy_port *rport = phy_get_drvdata(phy);
 	struct rockchip_usb2phy *rphy = dev_get_drvdata(phy->dev.parent);
-	struct regmap *base = get_reg_base(rphy);
 	int ret;
 
 	dev_dbg(&rport->phy->dev, "port power off\n");
@@ -623,7 +611,7 @@ static int rockchip_usb2phy_power_off(struct phy *phy)
 	if (rport->suspended)
 		return 0;
 
-	ret = property_enable(base, &rport->port_cfg->phy_sus, true);
+	ret = property_enable(rphy->grf, &rport->port_cfg->phy_sus, true);
 	if (ret)
 		return ret;
 
@@ -787,28 +775,22 @@ static const char *chg_to_string(enum power_supply_type chg_type)
 static void rockchip_chg_enable_dcd(struct rockchip_usb2phy *rphy,
 				    bool en)
 {
-	struct regmap *base = get_reg_base(rphy);
-
-	property_enable(base, &rphy->phy_cfg->chg_det.rdm_pdwn_en, en);
-	property_enable(base, &rphy->phy_cfg->chg_det.idp_src_en, en);
+	property_enable(rphy->grf, &rphy->phy_cfg->chg_det.rdm_pdwn_en, en);
+	property_enable(rphy->grf, &rphy->phy_cfg->chg_det.idp_src_en, en);
 }
 
 static void rockchip_chg_enable_primary_det(struct rockchip_usb2phy *rphy,
 					    bool en)
 {
-	struct regmap *base = get_reg_base(rphy);
-
-	property_enable(base, &rphy->phy_cfg->chg_det.vdp_src_en, en);
-	property_enable(base, &rphy->phy_cfg->chg_det.idm_sink_en, en);
+	property_enable(rphy->grf, &rphy->phy_cfg->chg_det.vdp_src_en, en);
+	property_enable(rphy->grf, &rphy->phy_cfg->chg_det.idm_sink_en, en);
 }
 
 static void rockchip_chg_enable_secondary_det(struct rockchip_usb2phy *rphy,
 					      bool en)
 {
-	struct regmap *base = get_reg_base(rphy);
-
-	property_enable(base, &rphy->phy_cfg->chg_det.vdm_src_en, en);
-	property_enable(base, &rphy->phy_cfg->chg_det.idp_sink_en, en);
+	property_enable(rphy->grf, &rphy->phy_cfg->chg_det.vdm_src_en, en);
+	property_enable(rphy->grf, &rphy->phy_cfg->chg_det.idp_sink_en, en);
 }
 
 #define CHG_DCD_POLL_TIME	(100 * HZ / 1000)
@@ -820,7 +802,6 @@ static void rockchip_chg_detect_work(struct work_struct *work)
 	struct rockchip_usb2phy_port *rport =
 		container_of(work, struct rockchip_usb2phy_port, chg_work.work);
 	struct rockchip_usb2phy *rphy = dev_get_drvdata(rport->phy->dev.parent);
-	struct regmap *base = get_reg_base(rphy);
 	bool is_dcd, tmout, vout;
 	unsigned long delay;
 
@@ -831,7 +812,7 @@ static void rockchip_chg_detect_work(struct work_struct *work)
 		if (!rport->suspended)
 			rockchip_usb2phy_power_off(rport->phy);
 		/* put the controller in non-driving mode */
-		property_enable(base, &rphy->phy_cfg->chg_det.opmode, false);
+		property_enable(rphy->grf, &rphy->phy_cfg->chg_det.opmode, false);
 		/* Start DCD processing stage 1 */
 		rockchip_chg_enable_dcd(rphy, true);
 		rphy->chg_state = USB_CHG_STATE_WAIT_FOR_DCD;
@@ -894,7 +875,7 @@ static void rockchip_chg_detect_work(struct work_struct *work)
 		fallthrough;
 	case USB_CHG_STATE_DETECTED:
 		/* put the controller in normal mode */
-		property_enable(base, &rphy->phy_cfg->chg_det.opmode, true);
+		property_enable(rphy->grf, &rphy->phy_cfg->chg_det.opmode, true);
 		rockchip_usb2phy_otg_sm_work(&rport->otg_sm_work.work);
 		dev_dbg(&rport->phy->dev, "charger = %s\n",
 			 chg_to_string(rphy->chg_type));
@@ -1349,27 +1330,14 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	if (!rphy)
 		return -ENOMEM;
 
-	if (!dev->parent || !dev->parent->of_node) {
+	if (!dev->parent || !dev->parent->of_node ||
+	    of_property_present(np, "rockchip,usbgrf")) {
 		rphy->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
-		if (IS_ERR(rphy->grf)) {
-			dev_err(dev, "failed to locate usbgrf\n");
-			return PTR_ERR(rphy->grf);
-		}
 	} else {
 		rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
-		if (IS_ERR(rphy->grf))
-			return PTR_ERR(rphy->grf);
-	}
-
-	if (of_device_is_compatible(np, "rockchip,rv1108-usb2phy")) {
-		rphy->usbgrf =
-			syscon_regmap_lookup_by_phandle(dev->of_node,
-							"rockchip,usbgrf");
-		if (IS_ERR(rphy->usbgrf))
-			return PTR_ERR(rphy->usbgrf);
-	} else {
-		rphy->usbgrf = NULL;
 	}
+	if (IS_ERR(rphy->grf))
+		return PTR_ERR(rphy->grf);
 
 	if (of_property_read_u32_index(np, "reg", 0, &reg)) {
 		dev_err(dev, "the reg property is not assigned in %pOFn node\n", np);
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
