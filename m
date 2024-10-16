Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFE29D206AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 07:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5NZSt4hPNoFXsT7tisVWvegEjqF2MA6bNU/URg7Z6Nk=; b=3NXCpnC16eYBcz
	ArSrYBuDJIpe4fPp++v9kSp/jZoFeJq50TVii/CdB+LKwrNs7SCtCiAkRt/g/YgxJbRD0Hg2AH8i3
	lkXi0ZqpgLSy6692I52/KN14R1aOHs26Bb2G/yBa7vp9n/DhZgWJ8HB9qvQ7SKg/gAtx4+l5Qpani
	cGTk4KS+48KYSsWiQQjRo8OIy8h69zetUqJ7DT3sOj5NBXyNtXpBSmv52IUparGIN2vt8p8VkpXcz
	a9a5cBfV5qUp/ceivOSg5/Bnb4sqxydQtILjgijTMTA2Zjsboc5jICcDpMIef0+TlrbILqXk/VqKm
	f6WOAvI0VyPumfo0kP/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ycR-0000000Ar4w-30eN;
	Wed, 16 Oct 2024 07:38:55 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0yax-0000000Aqey-1zYE;
	Wed, 16 Oct 2024 07:37:24 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-2e2e31aacbbso516415a91.2;
        Wed, 16 Oct 2024 00:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729064242; x=1729669042; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tE76eFeF0w5KNSCI8LEUq1pGIui/CIG/PhuBZfyVnmM=;
        b=m7/5jAklhzubwzlNtBXwUC5Qlr6F6hduivO4gc9wXwA+kmsn+5MhMR/0O/GSRCkxGN
         F03P+dATJUOQiUHHsonj5MC6rADs0Li6AVz6DbO30e6DSvdLmlJsj9hpQB2dJVwJ03YX
         e7MAxtJR0FzlP/K8xJd8WaV53/JUAYP2VJ2UjOJ0uIO99itJPi7U/6BkKTekgaPHl/f0
         CDqwwFbjedWJUKRImARUiM2tVl9O57NGPETcq88zWNPUAwQwDJg0lH996X5PctAIdXny
         OhvjT1MKLG6bSup7DVzE8qHS6rSN3n65VIdcL1w95c226XgJ381UR+KQwKS6pP32k8UV
         ds+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729064242; x=1729669042;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tE76eFeF0w5KNSCI8LEUq1pGIui/CIG/PhuBZfyVnmM=;
        b=LObBd8+TBJPLC67wmoGgYGLVF+vamqU4pig41GTwxpkoxy8gKqedbp7Xo1nX5eyItH
         Um6smQHO49/bXLQv/VSpfsudPQMbmPp8C6ujE8V7Dl7YqgZxs4Ighzwu56Tlg/k1uPh9
         gpkO1tANIeynr28//R7+8HzUjWFmELna1EG5ufd3Xggg0lP1qwByk1R4ERPojoBFdu1V
         /PYBTkmfSNh3Swt+1n3rD/YDvVvnx1R6RL51FBF9csHTop0YTe5vT/CTf8Nm8QhwSQrz
         hb5d+0TgvqwPW2NqdemKkXFFXS+p62Ti1l2qIkfSyL2SsyXdhHAJSDdGk+QeOWMSfN0y
         0WSg==
X-Forwarded-Encrypted: i=1; AJvYcCU1Jjjvi8DUPaJnLbFMmHQOHvijmyCchDvUzNvggc+24Upk/LentFjDQLHKfbhFBHsO/dLuRXL5wOmKSpaTHYqQ@lists.infradead.org, AJvYcCUHUldGIvuOHiVWvFHtBXr24Ij/SlWp1mROrISRaT++acvwV2MXtcmP73bdzfGfztKzHYKcNnyV7mY8e48iW0M=@lists.infradead.org
X-Gm-Message-State: AOJu0YyyxMrpDbxYj5GbqGgNK0nhKK6Bvajno+OaG/Ox8ym1b+ymN4FT
	TOjxtKsC/W7YLX1Abr/EjgO7oV0yYs4IxFWl6z8DIWv3O8sh4PLpP3xPRQ==
X-Google-Smtp-Source: AGHT+IEhzIpQMDtfFdV12qVQsmmk7szjHI+s/s4R35Hmx1nztSoglJmv993u13LVpMZmItO0dLlVng==
X-Received: by 2002:a17:90b:1d01:b0:2e3:1af7:6ead with SMTP id 98e67ed59e1d1-2e31af76f40mr7378844a91.5.1729064241915;
        Wed, 16 Oct 2024 00:37:21 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e3b7e6339fsm765471a91.1.2024.10.16.00.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 00:37:21 -0700 (PDT)
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
Subject: [PATCH v6 1/4] phy: rockchip: inno-usb2: convert clock management to bulk
Date: Wed, 16 Oct 2024 15:37:10 +0800
Message-Id: <20241016073713.14133-1-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_003723_544382_E0C6FD7D 
X-CRM114-Status: GOOD (  20.16  )
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
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
Changelog:
v6:
 - add Reviewed tag.

v5:
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
