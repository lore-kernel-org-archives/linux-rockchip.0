Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58092D2447F
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 06:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TjU2+ehGmoOjIDZI+f6u+jqnx00eiptFK6qpFqdT6Q8=; b=o720pbpvb0JqHT
	+NQ+oHSNqFupLeoyOWyMpMSvKgI1fJufne36ltSr3QdPzwnVCn7hwokMUTKo8QFY82yJW2E6BVD22
	X1fePqzkiP2j72f8aRXzDUJN501fk+hEaFXmZJ2EJh0aAe0N9WZlDF3o69v8MXYE+3+e3Y10HVMCo
	FKNkaKy8qnNVnKEyKfPgid36co4YWBdYU5qBvj5GURF7DWJ+mPZwkTXdmVorRkb3ve9dUlgbUGNMB
	5LF8uTf+logf3skAPAsamQ4R3vYUtEKpjdhca1iRDlYV96EysPLK10Aa1NPpujgq3gBGkWhYptoic
	Kfe9PcBv3DHAkxV5e3cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sz9aq-0000000FTAK-0GzL;
	Fri, 11 Oct 2024 06:57:44 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sz9V7-0000000FS06-49AZ;
	Fri, 11 Oct 2024 06:51:51 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-71e269db566so99600b3a.3;
        Thu, 10 Oct 2024 23:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728629508; x=1729234308; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vUd+ptjyv9QJ5lB7HGC0V0YSPXyHnn+kNuvjqh6RNSw=;
        b=l+YNEGMk+K+Sd6+RNZjkBAElP+7O52DJ9zCxRTn3Dev0kRiR+Q4ov+V8O7OK+TY8ED
         To4UfvNgjBz+61QZIZEWIcHCditOXVmXoKg5WSArzGkL7hwJqxVt6M3vw5LUCjTaOQ+y
         Zxkw8VDJOI01//uJojGRY/oQejgM+Rh/utNHfh/Byos1Jr6nD7YTH0FpkCDXhKcG87Gr
         +61j9OdkBsXfybFWZCBHAno1GVVNSrXvwRN88A6XxYQYf7YrWtZmiubNuCY6UzVEG83f
         AO7jcig1cqegLEafCAMSWBppx6wAjdxNnCoZ/rkKaf7jPowPlR+KwnFLjOFbCwA4GaKn
         NRnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728629508; x=1729234308;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vUd+ptjyv9QJ5lB7HGC0V0YSPXyHnn+kNuvjqh6RNSw=;
        b=VXQOs/GnEnXourtfQ5vQ6q3JpBS5JurimQV3RZy2t9Z02MYXKXStUYAwLzLscPTi+u
         aEKTXfEHjhEkkmslTPQfGtcmqUDLHZLG+KbMnha28CK/vVoeZDPNQFq2D0BAYKjr3oAq
         TUFby3ea3HnX7jp0N7mV1C/N1y1/F0IBJHSChxD75yxj0XLO1CU74NLcq6LKcRONEJfh
         gVY+/Ni8VXqDQrQT4LpJcnNG/6hclPMrLABs+liKBel3j72QsTKIfOmym/LbUi4WMsVm
         bAdgx0GNRn7jSP5Y0asOP8rs707YOrrcMGEGkbuMWhxN/U6BABvN8JdXvLEYZT2OIY44
         s3WA==
X-Forwarded-Encrypted: i=1; AJvYcCViImvJ05a3TChRC3ab68skflV2usXPyGJJ1E0jU/Uuu9druwh8FbJyrcVRHvbUJP8UIQsxrowhG9WHQKSYE4g=@lists.infradead.org, AJvYcCXEM5CoTG9QwNrn6AV/nrx4yyELxikg34v9iF8Ic0wNTiZ6BfNgSc48DLR/ptGIKgYFZ99xjZ1asjD9pRB8J4gY@lists.infradead.org
X-Gm-Message-State: AOJu0Ywe1hePt/ZmuwbHJfKQVzdcYR7JKAjrptAqYutDoGRZg/7mDVYn
	OAWTR2WraRsZRxvcGM7IwuTLLKWO28davCuXs3ExVmdWwho+4bLI
X-Google-Smtp-Source: AGHT+IHjExOTWS+ut51FciTmYkVQWJwbGbZ+dp9P/ObMFftp08A8WqGSO9KFwxV+tjO4x0yePjh8LQ==
X-Received: by 2002:a05:6a00:8594:b0:718:e49f:4185 with SMTP id d2e1a72fcca58-71e38126090mr1026885b3a.7.1728629508440;
        Thu, 10 Oct 2024 23:51:48 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2ab109e4sm2036099b3a.206.2024.10.10.23.51.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 23:51:48 -0700 (PDT)
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
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH v5 1/3] phy: rockchip: inno-usb2: convert clock management to bulk
Date: Fri, 11 Oct 2024 14:51:38 +0800
Message-Id: <20241011065140.19999-1-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_235150_109238_6B977D4E 
X-CRM114-Status: GOOD (  19.67  )
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

From: Frank Wang <frank.wang@rock-chips.com>

Since some Rockchip SoCs (e.g RK3576) have more than one clock,
this converts the clock management from single to bulk method to
make the driver more flexible.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
Changelog:
V5:
 - use dev_err_probe() in clock enable error path in probe.

v4:
 - a new patch split from the [PATCH v3 2/2], suggestions from Heiko.

v1-v3:
 - none

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 45 +++++++++++++++----
 1 file changed, 37 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 6e5214862b8a3..f71266c27091e 100644
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
@@ -310,6 +312,13 @@ static int rockchip_usb2phy_reset(struct rockchip_usb2phy *rphy)
 	return 0;
 }
 
+static void rockchip_usb2phy_clk_bulk_disable(void *data)
+{
+	struct rockchip_usb2phy *rphy = data;
+
+	clk_bulk_disable_unprepare(rphy->num_clks, rphy->clks);
+}
+
 static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
 {
 	struct rockchip_usb2phy *rphy =
@@ -376,7 +385,9 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
 {
 	struct device_node *node = rphy->dev->of_node;
 	struct clk_init_data init;
+	struct clk *refclk = NULL;
 	const char *clk_name;
+	int i;
 	int ret = 0;
 
 	init.flags = 0;
@@ -386,8 +397,15 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
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
@@ -1399,15 +1417,26 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	if (IS_ERR(rphy->phy_reset))
 		return PTR_ERR(rphy->phy_reset);
 
-	rphy->clk = devm_clk_get_optional_enabled(dev, "phyclk");
-	if (IS_ERR(rphy->clk))
-		return dev_err_probe(&pdev->dev, PTR_ERR(rphy->clk),
-				     "failed to get phyclk\n");
+	ret = devm_clk_bulk_get_all(dev, &rphy->clks);
+	if (ret == -EPROBE_DEFER)
+		return dev_err_probe(&pdev->dev, -EPROBE_DEFER,
+				     "failed to get phy clock\n");
+
+	/* Clocks are optional */
+	rphy->num_clks = ret < 0 ? 0 : ret;
 
 	ret = rockchip_usb2phy_clk480m_register(rphy);
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to register 480m output clock\n");
 
+	ret = clk_bulk_prepare_enable(rphy->num_clks, rphy->clks);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to enable phy clock\n");
+
+	ret = devm_add_action_or_reset(dev, rockchip_usb2phy_clk_bulk_disable, rphy);
+	if (ret)
+		return ret;
+
 	if (rphy->phy_cfg->phy_tuning) {
 		ret = rphy->phy_cfg->phy_tuning(rphy);
 		if (ret)
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
