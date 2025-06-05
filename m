Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88AE7C5AE59
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 15:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QAtXL9ua+m6sRFR224gQh/wkpqniCN2X4XHBBtWQnw=; b=I5R7SwT7QbiD9b
	5gA5TwRyLMP7516s05SRNLnc8IPlFGSBrOhk83yFtA/k0ULjXDVMC0J9g+P+EVdK5qbAJbcB0CFiQ
	DSc4CxeS2lcU21LN4tW1vEhDVxwaRKCKKceEuTfRV6WIbUnDl596QmuRRSxXD6IdkSfvlHazwnOdN
	+ZVuP/Wrdj73ni8MuL6U1PLywzDtFimglyjHTBZC9ygb9c93wmZhuiu0TH8JaRVKfVSBsRorwaLiW
	ArEBGhWHBDJB7Y4hFIfuWVOyVi6M41vd+/iAiUoUzuXWW7VOREMx+mabbTq0ByGPd8w3dkkB9As3L
	hW4A8OuzGZhKfsu+MyKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNCmw-0000000FwGJ-3A94;
	Thu, 05 Jun 2025 15:45:54 +0000
Received: from smtp-1908.mail.infomaniak.ch ([2001:1600:4:17::1908])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNCiZ-0000000FvYc-0BZ2
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 15:41:26 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4bCpZm56pzz5TC;
	Thu,  5 Jun 2025 17:41:20 +0200 (CEST)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4bCpZl6yQBzq71;
	Thu,  5 Jun 2025 17:41:19 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Thu, 05 Jun 2025 17:41:07 +0200
Subject: [PATCH v2 2/4] mfd: rk8xx-core: allow to customize RK806 reset
 mode
MIME-Version: 1.0
Message-Id: <20250605-rk8xx-rst-fun-v2-2-143d190596dd@cherry.de>
References: <20250605-rk8xx-rst-fun-v2-0-143d190596dd@cherry.de>
In-Reply-To: <20250605-rk8xx-rst-fun-v2-0-143d190596dd@cherry.de>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_084123_231044_556CEDC0 
X-CRM114-Status: GOOD (  14.05  )
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
Cc: Daniel Semkowicz <dse@thaumatec.com>, devicetree@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Quentin Schulz <quentin.schulz@cherry.de>

The RK806 PMIC has a bitfield for configuring the restart/reset behavior
(which I assume Rockchip calls "function") whenever the PMIC is reset
either programmatically (c.f. DEV_RST in the datasheet) or via PWRCTRL
or RESETB pins.

For RK806, the following values are possible for RST_FUN:

0b00 means "restart PMU"
0b01 means "Reset all the power off reset registers, forcing
	the state to switch to ACTIVE mode"
0b10 means "Reset all the power off reset registers, forcing
	the state to switch to ACTIVE mode, and simultaneously
	pull down the RESETB PIN for 5mS before releasing"
0b11 means the same as for 0b10 just above.

This adds the appropriate logic in the driver to parse the new
rockchip,reset-mode DT property to pass this information. It just
happens that the values in the binding match the values to write in the
bitfield so no mapping is necessary.

If it is missing, the register is left untouched and relies either on
the silicon default or on whatever was set earlier in the boot stages
(e.g. the bootloader).

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 drivers/mfd/rk8xx-core.c  | 14 ++++++++++++++
 include/linux/mfd/rk808.h |  2 ++
 2 files changed, 16 insertions(+)

diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
index 71c2b80a4678d627e86cfbec8135f08e262559d3..32294af0b843fa20677513b1e1a5a6c8e76be4b6 100644
--- a/drivers/mfd/rk8xx-core.c
+++ b/drivers/mfd/rk8xx-core.c
@@ -699,6 +699,7 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
 	const struct mfd_cell *cells;
 	int dual_support = 0;
 	int nr_pre_init_regs;
+	u32 rst_fun = 0;
 	int nr_cells;
 	int ret;
 	int i;
@@ -726,6 +727,19 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
 		cells = rk806s;
 		nr_cells = ARRAY_SIZE(rk806s);
 		dual_support = IRQF_SHARED;
+
+		ret = device_property_read_u32(dev, "rockchip,reset-mode", &rst_fun);
+		if (ret) {
+			dev_dbg(dev,
+				"rockchip,reset-mode property missing, not setting RST_FUN\n");
+			break;
+		}
+
+		ret = regmap_update_bits(rk808->regmap, RK806_SYS_CFG3,
+					 RK806_RST_FUN_MSK,
+					 FIELD_PREP(RK806_RST_FUN_MSK, rst_fun));
+		if (ret)
+			return dev_err_probe(dev, ret, "RST_FUN write err\n");
 		break;
 	case RK808_ID:
 		rk808->regmap_irq_chip = &rk808_irq_chip;
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 69cbea78b430b562a23d995263369d475daa6287..28170ee08898ca59c76a741a1d42763a42b72380 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -812,6 +812,8 @@ enum rk806_pin_dr_sel {
 #define RK806_INT_POL_H			BIT(1)
 #define RK806_INT_POL_L			0
 
+/* SYS_CFG3 */
+#define RK806_RST_FUN_MSK		GENMASK(7, 6)
 #define RK806_SLAVE_RESTART_FUN_MSK	BIT(1)
 #define RK806_SLAVE_RESTART_FUN_EN	BIT(1)
 #define RK806_SLAVE_RESTART_FUN_OFF	0

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
