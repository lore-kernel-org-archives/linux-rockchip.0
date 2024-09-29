Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37C3ECF6498
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Sep 2024 06:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0U8LbH+rf7sejnu9QxW84GSzNbD5+UrVyYsui/5NAnM=; b=0+ToKZE05lU9wb
	mjduKk40DozTVkBMIKG7d+KcgZPjQ9WNMk7BEukVX+0uqfYdqIVnTGAYoNFIcQlap0XLMdZ5SecJh
	V2a/zP5J7b+uhpKuRTioJvUexbEGQdAO4qYqLLOGY0C7iXpxeCz5/eb7KRy7UfC0t+OajKY2C7WCb
	TxyLeolQn9XB5yDd+ecX372Bq6YJLz92u3SpGnbQ1gH9L2J+QogGgwuK4SjbsOeYeEU9ArAqoWZKH
	B5y0ZYWpMTyNgBbNBFYnFTE8X1pjlOCeYCpcAABBdKlKbiZG+spstO5qmUKlNUurmF0ZqU9uMQehx
	We+s2UYYOC34K/y3XM5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sunDE-0000000EGNt-3xe8;
	Sun, 29 Sep 2024 06:15:20 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sun8d-0000000EFRM-0AlT;
	Sun, 29 Sep 2024 06:10:36 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2e09a36f54eso349764a91.1;
        Sat, 28 Sep 2024 23:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727590234; x=1728195034; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xKLiR5gYmZwZmfgs+vGwBtpwK5USPFATr2yD/8gCPKI=;
        b=HYowon+T3aNNWc8fNraSMbertV1pvTJR3NgzwPpmxvnUOPXmTt5CdX9yrEYwCe5p6Z
         tZCzvWNCSQN7QC7bSzSsVviTH2Y0CBeI4VG33RgHpfafPKBHeH4gPDJNE4ffxMLoWdrk
         5QL81/o7CFAesWn9pWrWhtqS6hIk4FwGUz+hr2teEZ+ptJWdLnwFtCw+le63wbbgfXAG
         rGJdfPNZ4oeJMX1OoDEIyPNxoQtt9s4zXYK5d9ZghvawXvJibaNfCRpPw4gLQU9MWbC8
         RIu4p2gvCc61Ira3r0RFlTfdGgC4lE0FrHeH/nCR1kowzeYdWOu1UP3CpS/zB3SOSBTX
         Xd9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727590234; x=1728195034;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xKLiR5gYmZwZmfgs+vGwBtpwK5USPFATr2yD/8gCPKI=;
        b=o3cT+NvjMyWlimt20GXsCTJnuN8vdlxPvMYH3xIDMI2yuDgV81SSKf1xkdTcR/5opj
         yBnQU/3zWPXyfPiw8UwEEugrafwMJAhycJDjTlEST6CriWSg0mDXQJXVvcNkE4z7gOGk
         H8oU8xz1QsDmNBxeS97zP+a11nlZeMrWUjr0EmD2BXK8W2WlrhbxjREejSF2IVNlVH+c
         9MG5t8C8jISSy2mTQtXTWroqbP1SpmU9sVxRU8msNF8204ajK6tjAU+n6/iBMKkgNLDR
         iM6+DeE1+nzZAmItV1dacdYjt4c2V1vpXWVSIEoAdhKnrtXp6Ok+eWNLFNcX4/5Hs7V2
         SXZw==
X-Forwarded-Encrypted: i=1; AJvYcCUNHS2myveC96MQsNZbHDdRJgjnEv+hnxyLOuuANT37HxYZPuNrlKtbj8/75T6gJkpJAajWqC+xihp83AqmIjU=@lists.infradead.org, AJvYcCVicmlrkP7jZ9UVpgFef0uWHFty1b11rPqHIczW/eBSW/sECWXcvyV/gosR4a+eturY/GJrg1bbIeDZodU7zN0v@lists.infradead.org
X-Gm-Message-State: AOJu0YyLTOBtP8iq761XFsMfC1kMWhNmKJRICjtdto3ORjhXAg7Ac2B5
	51/N2CetRBtV2Og+WoUQSMYHJBy24YI31AqTpW0qhsEZCbdYPqDL
X-Google-Smtp-Source: AGHT+IHuhs9Kcf2V+igHziL1L5Hw5uJbO/yqgFJbHygqQCcJ8RtC/6BHGX+4wtceCMUQFmbirgH0Uw==
X-Received: by 2002:a05:6a21:78a1:b0:1cf:5471:bbe1 with SMTP id adf61e73a8af0-1d4fa7adecbmr6059094637.8.1727590233595;
        Sat, 28 Sep 2024 23:10:33 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7e6db2b974bsm4269584a12.34.2024.09.28.23.10.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Sep 2024 23:10:33 -0700 (PDT)
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
Subject: [PATCH v4 1/3] phy: rockchip: inno-usb2: convert clock management to bulk
Date: Sun, 29 Sep 2024 14:10:23 +0800
Message-ID: <20240929061025.3704-1-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240928_231035_139217_1B180791 
X-CRM114-Status: GOOD (  19.94  )
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
v4:
 - a new patch split from the [PATCH v3 2/2], suggestions from Heiko.

v1-v3:
 - none

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 43 ++++++++++++++++---
 1 file changed, 36 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 4f71373ae6e1..ad3e65dc6aa4 100644
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
@@ -1406,18 +1424,29 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
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
+	ret = devm_add_action_or_reset(dev, rockchip_usb2phy_clk_bulk_disable, rphy);
+	if (ret)
+		return ret;
+
 	if (rphy->phy_cfg->phy_tuning) {
 		ret = rphy->phy_cfg->phy_tuning(rphy);
 		if (ret)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
