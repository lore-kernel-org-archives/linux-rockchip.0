Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90A29C7EE32
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 11:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xuuc4EQEi/kkPDo1UHU2/vY1x3wZgRhTs/JLryv3V2Q=; b=E6Zzp0h7R6QujP
	oZjsbKlDCAeJh8yc4SX2rzy5fWAjBYKEVTuUL0w5HXbX2IpD3rW10WPil4IAX4UPMo6POUVxsPgoS
	BzJP1JurxCkZ6edEQN/YcMlaMtzBi3nP6Z5cHtK3p1WLBEBDw3gx7pgAKC1latJPBDAGOdcvyM1n1
	dB1R7pPOn/X6+Q4xo8F7iLbEkHXdnBkFWSJPo18NB8JOrXVbsvuu6JSIWMbDiKbimDzS8Ay60S/DP
	b2gL0SKtVS5C12ixP2OAuZubMwqY/Gca6EYNdLZAFb+layDVqREtI7ykxm59Q8E7SIhAyrTxKUkO1
	mxmmkHph2FUcAlvQDlgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV71b-0000000ERVD-35R8;
	Fri, 27 Jun 2025 11:13:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV6is-0000000EMyh-3c84
	for linux-rockchip@bombadil.infradead.org;
	Fri, 27 Jun 2025 10:54:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+KTkkcuGqyAnxeNSHub1NpNvSC0dY6zuN9Oy6QBuK74=; b=K9WmhLsvnjpsyJMOXqifyMwitl
	Pbp3b6jMSBSI1n6Vjtfe/T0nAnG1fXtbrG76V+1V9uOjCpKMXBo7RctNRhT8bO+MES6ec013MnQBH
	DEFmeaGf46KpzAgq52B1MEmpeC55+rQsmAlioJX/ThIZWfI4EiiPRx4FCBWoqUi46X8syG2vHnWz+
	tXecDgVVFFcV3NOlUNbded4S2GaE2dm6hofZMY3L5Mhr1SEs4kkmH08udgcnkLpI/HHCW7TD7A5TL
	Sp71ZFockjO0gU8TqjWK8aEsursbm9NRcRwmVLMlI5WrlopItr91ztVORAGtc1s2eXW6MPEbsf7Bz
	dhiF84Hg==;
Received: from smtp-bc0b.mail.infomaniak.ch ([2001:1600:7:10::bc0b])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV6io-00000006J77-0mbf
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Jun 2025 10:54:21 +0000
Received: from smtp-4-0001.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10::a6c])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4bTC9L4pN1zW0Y;
	Fri, 27 Jun 2025 12:54:14 +0200 (CEST)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4bTC9K3SKyzx9C;
	Fri, 27 Jun 2025 12:54:13 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 27 Jun 2025 12:53:54 +0200
Subject: [PATCH v4 2/5] mfd: rk8xx-core: allow to customize RK806 reset
 mode
MIME-Version: 1.0
Message-Id: <20250627-rk8xx-rst-fun-v4-2-ce05d041b45f@cherry.de>
References: <20250627-rk8xx-rst-fun-v4-0-ce05d041b45f@cherry.de>
In-Reply-To: <20250627-rk8xx-rst-fun-v4-0-ce05d041b45f@cherry.de>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_115418_401435_942507EA 
X-CRM114-Status: GOOD (  13.80  )
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

0b00 means "Restart PMU"
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
 drivers/mfd/rk8xx-core.c  | 12 ++++++++++++
 include/linux/mfd/rk808.h |  2 ++
 2 files changed, 14 insertions(+)

diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
index 71c2b80a4678d627e86cfbec8135f08e262559d3..def4587fdfb8b82e5548e70310d3e16e6d07d7af 100644
--- a/drivers/mfd/rk8xx-core.c
+++ b/drivers/mfd/rk8xx-core.c
@@ -10,6 +10,7 @@
  * Author: Wadim Egorov <w.egorov@phytec.de>
  */
 
+#include <linux/bitfield.h>
 #include <linux/interrupt.h>
 #include <linux/mfd/rk808.h>
 #include <linux/mfd/core.h>
@@ -699,6 +700,7 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
 	const struct mfd_cell *cells;
 	int dual_support = 0;
 	int nr_pre_init_regs;
+	u32 rst_fun = 0;
 	int nr_cells;
 	int ret;
 	int i;
@@ -726,6 +728,16 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
 		cells = rk806s;
 		nr_cells = ARRAY_SIZE(rk806s);
 		dual_support = IRQF_SHARED;
+
+		ret = device_property_read_u32(dev, "rockchip,reset-mode", &rst_fun);
+		if (ret)
+			break;
+
+		ret = regmap_update_bits(rk808->regmap, RK806_SYS_CFG3, RK806_RST_FUN_MSK,
+					 FIELD_PREP(RK806_RST_FUN_MSK, rst_fun));
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "Failed to configure requested restart/reset behavior\n");
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
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
