Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E75C6C55182
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGKPRa1M7oP/GKgn2aQ854SnKJLPB0sa2O4hFR+IqaY=; b=h/O0zZ2CS/v2XW
	/zesvmzfWrZLxiDyPRcERYXakjVwakwFAX05dxaVpCa5ehGySyaPi3cEzBrhN1io+vQM84NRJz5vm
	6NkDvCnYzpgwJqsoFIoEKZ6qiUs1QBnTIM/2ofayy8OoMgYL0Q7TPwe0dZITtacQ7ffzyaAln5Nsa
	4cPdItDf1m1cpwmZnmY+/2TFq1fGlJeel/3e0VWYwsaqEpc+SH2YTM8TDVAbqfRU6rx66CriH2RTu
	Ii1NRsGSjf+V1E9L5PtIu7zQpxa8/27siI9SVMi8gB3Rg6tKZNRzvYXfwqOFPd+sA0SeDD3R6bEgd
	OtMc0FBybClzqNPTLe/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1d-0000000GL27-1HcR;
	Mon, 03 Aug 2026 05:15:45 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1Z-0000000GKte-3ZKS
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:15:44 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-7ee37dc91f5so1801424a34.3
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734141; x=1786338941; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DdvS6JgS1wsN4XXB/DPlHPE/KXR5tqJa5L67sBE8VSE=;
        b=s7S7Zag+BwMpRZGIaIiw6xxkz55aXGn/p1QFKpHBbxkXFveaN8wkE6bAT+IZwy4PuR
         OM8JeP8wltQNleegmkLIAWACjB+9dGrD60AEHFIF37Ehvw8jzqzx7tO3qTUrnZYLGr6N
         SYdPUzru953O7nuJZPsLKaswmgIZ+XTghi5NXjhhRpLJOOhcFkswaz12dNKYMF5wxZKa
         D1eJys1YpmGDjs8Vu2jyi4TFM12WrLCSFtTmcRT5a7uA+AL0wrcpeW6xDCfU4pw79TAC
         ODDu+QYyXxQ0BrBil8tT027+CxxWH4kJIgTBR5EmHxqVft4OndfsIpd6eVjGRpjCVgzb
         syuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734141; x=1786338941;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DdvS6JgS1wsN4XXB/DPlHPE/KXR5tqJa5L67sBE8VSE=;
        b=n328Nk30vh1M0jXs6YCV77PhHA81GQ/qFHJ5btq880/NEv57dHRAx7aD0OvQIBnNe5
         j8qldQY4uwV/f3num81tgo4xYfiBxMsxInI6e76ftbgt0T92Zsv99wXx2XJ2FRcEAORC
         wG2Vrfp18TMzuj8tsNsxxsxXfBK3tAeJrvh6N5KpWJK84pxljfAFnk28bbpyhca6ioih
         yVJEBr+r02cp/6mRNFnzcqD3q7JPwg4ujZ6yp4gTCh15hYoZlzmL8RCv8rj4FY+FzZ0k
         57fgSqu5bNrKvCNR+TfLZcLSetts5LmTeeSlqaglve2k97TgT11irDEzmL0mBTHrJT98
         Hmwg==
X-Forwarded-Encrypted: i=1; AHgh+RpF1TEqrhCcmYNa1l2isGzFhT98DrEcQO82k4pN19p5rO/I6Btg43uXeAokdEBADjrYebUiNMv7WoRwLMO6UA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyiVhPJ/vRqddzH2cjXTfVKX0Q8o5VkWsgQ9f6cEP0g7pBg2hil
	WBzEzvYJVMI7MhtxBVz/vD3iGOVfa5GF6fv9zoeUzLcEdVOKXATlAr+z
X-Gm-Gg: AR+sD120CoeeTgSPcsSsfSKtCfmNM/FCHV1S4alIGf+gR3D/BmGoqrh7X5MaTJcwP5a
	C6/ZrCX+7HBpszUOHD6IT2POeWGVYfSx+Pp7xyVSoVQTK8z/pzU8lU0PU+TrydlltruFFO93B+G
	TYtT5uvRoA/mbBka0tlCH0SqlGoBglzsAXraz1QHfqWrKX97y1YMXDRDlOOMbNQCw90jEQWuJ4A
	m0RxGA0VWOXjK1IPDykmH1hheOjrVpPVeJaGOglw6zonay7r003j0jKXMbjrrfoDVXNsA+RvxeD
	Ff2m8u9vQ1LeG1HmHGBMlMyoDOY45c0EycBzIZAUz9C280apcv5U9ny9C7/IGcRnFY0y88MrUS1
	J4PG6zjW4hzKJQU/XvH8lhPMvdf3/IUbre2ceRWdPzej583S0FY7OF6T8vXPtP/XjfNXXUhjwxi
	763Ukt/Tr9wsLVNvcran8pfe7PSeS4fYsdW5+dJc29TzJZn9InLu13ZXC4lT6dvZw8cshdSwZIg
	NeCeaDLWfDoeWNQ3mpsq+/GoUPJYktZDq8R02MnEgka4crf0PYLb3rutUnIw8/BlYYmiAqY+Zn8
	bw31cA40jmmCSXB89nYu52LbmkYzKPY6xgfDWb1S3w4iTUQY/cNTL8xm7bJpBL7xA/KoCfcd/4K
	Efy45f6h09L4v2Kq5
X-Received: by 2002:a05:6830:3814:b0:7e6:ca29:9609 with SMTP id 46e09a7af769-7f196d82b85mr13995078a34.13.1785734136211;
        Sun, 02 Aug 2026 22:15:36 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:35 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:20 -0600
Subject: [PATCH 10/21] net: phy: add X-Powers AC200 EPHY control driver
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-10-0a53cd9e21cc@gmail.com>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
In-Reply-To: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Andre Przywara <andre.przywara@arm.com>, 
 Richard Genoud <richard.genoud@bootlin.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 mfd@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_221542_012077_32338AC3 
X-CRM114-Status: GOOD (  27.22  )
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

The AC200 Fast Ethernet PHY is powered and configured through registers
in the parent I2C regmap before its Clause 22 link registers become usable.

Add a control driver that prepares the calibration value and vendor
offset, interface mode and input-clock selection. Use an optional SoC SID
cell when supplied, otherwise read the AC200's internal calibration eFuse.
Derive the documented 24 or 27 MHz selector from the actual locked clock
rate. Although the feature summary also mentions 25 MHz, EPHY_CTL provides
no encoding for it, so reject that rate rather than silently selecting
27 MHz.

Program the link PHY MDIO address into EPHY_CTL.PHY_ADDR before bringing
the PHY out of its disabled state using the vendor initialization sequence.

Expose serialized, idempotent power-on and power-off operations so the
link-PHY driver can sequence the control block across resets and system
sleep. Also expose operations for the global LED polarity and package pad
enables. Initialize all three outputs active-low as in the vendor kernel,
while allowing an explicit link-PHY LED topology to replace that fallback.
Quiesce the block during probe failures, driver removal and system
shutdown.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 drivers/net/phy/Kconfig             |   9 +
 drivers/net/phy/Makefile            |   1 +
 drivers/net/phy/xpowers-ac200-ctl.c | 330 ++++++++++++++++++++++++++++++++++++
 drivers/net/phy/xpowers-acx00.h     |  25 +++
 4 files changed, 365 insertions(+)

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 099f25dceabb..e059bd6c5eda 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -469,6 +469,15 @@ config VITESSE_PHY
 	help
 	  Currently supports the vsc8244
 
+config XPOWERS_AC200_PHY_CTL
+	tristate "X-Powers AC200 Ethernet PHY control"
+	depends on MFD_AC200
+	help
+	  Enable the control driver for the Fast Ethernet PHY function in
+	  the X-Powers AC200 mixed-signal companion IC. It programs the PHY
+	  address, interface mode, calibration and I/O controls through the
+	  parent AC200 I2C regmap.
+
 config XILINX_GMII2RGMII
 	tristate "Xilinx GMII2RGMII converter driver"
 	help
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index de660ae94945..e53ca319f9c4 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -99,4 +99,5 @@ obj-$(CONFIG_SMSC_PHY)		+= smsc.o
 obj-$(CONFIG_STE10XP)		+= ste10Xp.o
 obj-$(CONFIG_TERANETICS_PHY)	+= teranetics.o
 obj-$(CONFIG_VITESSE_PHY)	+= vitesse.o
+obj-$(CONFIG_XPOWERS_AC200_PHY_CTL) += xpowers-ac200-ctl.o
 obj-$(CONFIG_XILINX_GMII2RGMII) += xilinx_gmii2rgmii.o
diff --git a/drivers/net/phy/xpowers-ac200-ctl.c b/drivers/net/phy/xpowers-ac200-ctl.c
new file mode 100644
index 000000000000..c2a37f958565
--- /dev/null
+++ b/drivers/net/phy/xpowers-ac200-ctl.c
@@ -0,0 +1,330 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * X-Powers AC200 Ethernet PHY control driver
+ *
+ * Copyright (C) 2026 James Hilliard <james.hilliard1@gmail.com>
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/phy.h>
+#include <linux/platform_device.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+
+#include "xpowers-acx00.h"
+
+#define AC200_EPHY_BPS_EFFUSE_OFFSET	3
+
+#define AC200_SYS_EPHY_CTL0_REG			0x0014
+#define AC200_EPHY_RESET_DEASSERT		BIT(0)
+#define AC200_EPHY_SYSCLK_ENABLE			BIT(1)
+
+#define AC200_SYS_EPHY_CTL1_REG			0x0016
+#define AC200_EPHY_MII_IO_ENABLE			BIT(0)
+#define AC200_EPHY_LINK_LED_IO_ENABLE		BIT(1)
+#define AC200_EPHY_SPEED_LED_IO_ENABLE		BIT(2)
+#define AC200_EPHY_DUPLEX_LED_IO_ENABLE		BIT(3)
+#define AC200_EPHY_LED_IO_ENABLE_MASK \
+	(AC200_EPHY_LINK_LED_IO_ENABLE | AC200_EPHY_SPEED_LED_IO_ENABLE | \
+	 AC200_EPHY_DUPLEX_LED_IO_ENABLE)
+
+/* AC200-internal copy of the Ethernet PHY calibration eFuse. */
+#define AC200_EFUSE_EPHY_REG			0x8004
+
+#define AC200_EPHY_CTL_REG			0x6000
+#define AC200_EPHY_SHUTDOWN			BIT(0)
+#define AC200_EPHY_LED_ACTIVE_LOW		BIT(1)
+#define AC200_EPHY_CLK_SEL_24_MHZ		BIT(2)
+#define AC200_EPHY_PHY_ADDR_MASK			GENMASK(8, 4)
+#define AC200_EPHY_RMII_SEL			BIT(11)
+#define AC200_EPHY_BPS_EFFUSE_MASK		GENMASK(15, 12)
+
+struct ac200_ephy_ctl {
+	struct acx00_ephy_control control;
+	struct regmap *regmap;
+	struct mutex lock; /* Serializes power sequencing and state. */
+	u16 ephy_ctl;
+	u16 led_io_enable;
+	unsigned int phy_addr;
+	bool powered;
+};
+
+static int
+ac200_ephy_ctl_set_led_outputs(struct acx00_ephy_control *control,
+			       unsigned long outputs)
+{
+	struct ac200_ephy_ctl *priv =
+		container_of(control, struct ac200_ephy_ctl, control);
+	u16 led_io_enable;
+	int ret = 0;
+
+	if (outputs & ~GENMASK(ACX00_EPHY_LED_COUNT - 1, 0))
+		return -EINVAL;
+
+	led_io_enable = (outputs << 1) & AC200_EPHY_LED_IO_ENABLE_MASK;
+
+	mutex_lock(&priv->lock);
+	if (priv->powered)
+		ret = regmap_update_bits(priv->regmap, AC200_SYS_EPHY_CTL1_REG,
+					 AC200_EPHY_LED_IO_ENABLE_MASK,
+					 led_io_enable);
+	if (!ret)
+		priv->led_io_enable = led_io_enable;
+	mutex_unlock(&priv->lock);
+
+	return ret;
+}
+
+static int
+ac200_ephy_ctl_set_led_polarity(struct acx00_ephy_control *control,
+				bool active_low)
+{
+	struct ac200_ephy_ctl *priv =
+		container_of(control, struct ac200_ephy_ctl, control);
+	u16 value = active_low ? AC200_EPHY_LED_ACTIVE_LOW : 0;
+	int ret = 0;
+
+	mutex_lock(&priv->lock);
+	if (priv->powered)
+		ret = regmap_update_bits(priv->regmap, AC200_EPHY_CTL_REG,
+					 AC200_EPHY_LED_ACTIVE_LOW, value);
+	if (!ret) {
+		priv->ephy_ctl &= ~AC200_EPHY_LED_ACTIVE_LOW;
+		priv->ephy_ctl |= value;
+	}
+	mutex_unlock(&priv->lock);
+
+	return ret;
+}
+
+static int ac200_ephy_ctl_power_off_locked(struct ac200_ephy_ctl *priv)
+{
+	int err;
+	int ret;
+
+	if (!priv->powered)
+		return 0;
+
+	ret = regmap_write(priv->regmap, AC200_EPHY_CTL_REG,
+			   priv->ephy_ctl |
+			   FIELD_PREP(AC200_EPHY_PHY_ADDR_MASK,
+				      priv->phy_addr) |
+			   AC200_EPHY_SHUTDOWN);
+	err = regmap_write(priv->regmap, AC200_SYS_EPHY_CTL1_REG, 0);
+	if (!ret)
+		ret = err;
+	err = regmap_write(priv->regmap, AC200_SYS_EPHY_CTL0_REG, 0);
+	if (!ret)
+		ret = err;
+
+	priv->powered = false;
+
+	return ret;
+}
+
+static int ac200_ephy_ctl_power_off(struct acx00_ephy_control *control)
+{
+	struct ac200_ephy_ctl *priv =
+		container_of(control, struct ac200_ephy_ctl, control);
+	int ret;
+
+	mutex_lock(&priv->lock);
+	ret = ac200_ephy_ctl_power_off_locked(priv);
+	mutex_unlock(&priv->lock);
+
+	return ret;
+}
+
+static int ac200_ephy_ctl_power_on(struct acx00_ephy_control *control,
+				   unsigned int phy_addr)
+{
+	struct ac200_ephy_ctl *priv =
+		container_of(control, struct ac200_ephy_ctl, control);
+	u16 ephy_ctl;
+	int ret;
+
+	if (phy_addr > FIELD_MAX(AC200_EPHY_PHY_ADDR_MASK))
+		return -EINVAL;
+
+	mutex_lock(&priv->lock);
+	if (priv->powered && priv->phy_addr == phy_addr) {
+		ret = 0;
+		goto out_unlock;
+	}
+	if (priv->powered) {
+		ret = ac200_ephy_ctl_power_off_locked(priv);
+		if (ret)
+			goto out_unlock;
+	}
+
+	ephy_ctl = priv->ephy_ctl |
+		FIELD_PREP(AC200_EPHY_PHY_ADDR_MASK, phy_addr);
+
+	/* Start from a disabled state before applying the configuration. */
+	ret = regmap_write(priv->regmap, AC200_SYS_EPHY_CTL0_REG, 0);
+	if (ret)
+		goto err_disable;
+
+	ret = regmap_write(priv->regmap, AC200_SYS_EPHY_CTL1_REG,
+			   AC200_EPHY_MII_IO_ENABLE |
+			   priv->led_io_enable);
+	if (ret)
+		goto err_disable;
+
+	ret = regmap_write(priv->regmap, AC200_EPHY_CTL_REG,
+			   ephy_ctl | AC200_EPHY_SHUTDOWN);
+	if (ret)
+		goto err_disable;
+
+	ret = regmap_write(priv->regmap, AC200_SYS_EPHY_CTL0_REG,
+			   AC200_EPHY_RESET_DEASSERT |
+			   AC200_EPHY_SYSCLK_ENABLE);
+	if (ret)
+		goto err_disable;
+
+	fsleep(10000);
+
+	ret = regmap_write(priv->regmap, AC200_EPHY_CTL_REG, ephy_ctl);
+	if (ret)
+		goto err_disable;
+
+	priv->phy_addr = phy_addr;
+	priv->powered = true;
+	goto out_unlock;
+
+err_disable:
+	/* Mark it active so the cleanup sequence is always attempted. */
+	priv->phy_addr = phy_addr;
+	priv->powered = true;
+	ac200_ephy_ctl_power_off_locked(priv);
+out_unlock:
+	mutex_unlock(&priv->lock);
+
+	return ret;
+}
+
+static int ac200_ephy_ctl_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct ac200_ephy_ctl *priv;
+	phy_interface_t interface;
+	struct clk *clk;
+	unsigned long clk_rate;
+	unsigned int calibration;
+	u8 nvmem_calibration;
+	u8 bps_effuse_code;
+	u16 ephy_ctl;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+	mutex_init(&priv->lock);
+
+	priv->regmap = dev_get_regmap(dev->parent, NULL);
+	if (!priv->regmap)
+		return dev_err_probe(dev, -EPROBE_DEFER,
+				     "parent regmap is not ready\n");
+
+	if (device_property_present(dev, "nvmem-cells")) {
+		ret = nvmem_cell_read_u8(dev, "calibration",
+					 &nvmem_calibration);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "failed to read calibration data\n");
+		calibration = nvmem_calibration;
+	} else {
+		ret = regmap_read(priv->regmap, AC200_EFUSE_EPHY_REG,
+				  &calibration);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "failed to read on-chip calibration data\n");
+	}
+
+	ret = device_get_phy_mode(dev);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "failed to read PHY mode\n");
+	interface = ret;
+
+	/* The vendor driver supplies no transfer function beyond this offset. */
+	bps_effuse_code = (calibration + AC200_EPHY_BPS_EFFUSE_OFFSET) &
+			   FIELD_MAX(AC200_EPHY_BPS_EFFUSE_MASK);
+	ephy_ctl = FIELD_PREP(AC200_EPHY_BPS_EFFUSE_MASK, bps_effuse_code) |
+		   AC200_EPHY_LED_ACTIVE_LOW;
+	/* EPHY_MODE and BIST_CLK_EN stay clear for normal operation. */
+
+	switch (interface) {
+	case PHY_INTERFACE_MODE_MII:
+		break;
+	case PHY_INTERFACE_MODE_RMII:
+		ephy_ctl |= AC200_EPHY_RMII_SEL;
+		break;
+	default:
+		return dev_err_probe(dev, -EINVAL,
+				     "unsupported PHY mode %s\n",
+				     phy_modes(interface));
+	}
+
+	clk = clk_get(dev->parent, NULL);
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk),
+				     "failed to get input clock\n");
+
+	clk_rate = clk_get_rate(clk);
+	clk_put(clk);
+
+	switch (clk_rate) {
+	case 24000000:
+		ephy_ctl |= AC200_EPHY_CLK_SEL_24_MHZ;
+		break;
+	case 27000000:
+		break;
+	default:
+		return dev_err_probe(dev, -EINVAL,
+				     "unsupported input clock rate %lu Hz\n",
+				     clk_rate);
+	}
+
+	priv->control.power_on = ac200_ephy_ctl_power_on;
+	priv->control.power_off = ac200_ephy_ctl_power_off;
+	priv->control.set_led_outputs = ac200_ephy_ctl_set_led_outputs;
+	priv->control.set_led_polarity = ac200_ephy_ctl_set_led_polarity;
+	priv->control.interface = interface;
+	priv->ephy_ctl = ephy_ctl;
+	priv->led_io_enable = AC200_EPHY_LED_IO_ENABLE_MASK;
+	platform_set_drvdata(pdev, &priv->control);
+	return 0;
+}
+
+static void ac200_ephy_ctl_remove(struct platform_device *pdev)
+{
+	struct acx00_ephy_control *control = platform_get_drvdata(pdev);
+
+	control->power_off(control);
+}
+
+static const struct of_device_id ac200_ephy_ctl_of_match[] = {
+	{ .compatible = "x-powers,ac200-ephy-ctl" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, ac200_ephy_ctl_of_match);
+
+static struct platform_driver ac200_ephy_ctl_driver = {
+	.probe = ac200_ephy_ctl_probe,
+	.remove = ac200_ephy_ctl_remove,
+	.shutdown = ac200_ephy_ctl_remove,
+	.driver = {
+		.name = "ac200-ephy-ctl",
+		.of_match_table = ac200_ephy_ctl_of_match,
+	},
+};
+module_platform_driver(ac200_ephy_ctl_driver);
+
+MODULE_AUTHOR("James Hilliard <james.hilliard1@gmail.com>");
+MODULE_DESCRIPTION("X-Powers AC200 Ethernet PHY control driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/net/phy/xpowers-acx00.h b/drivers/net/phy/xpowers-acx00.h
new file mode 100644
index 000000000000..8cf6fe616137
--- /dev/null
+++ b/drivers/net/phy/xpowers-acx00.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __DRIVERS_NET_PHY_XPOWERS_ACX00_H
+#define __DRIVERS_NET_PHY_XPOWERS_ACX00_H
+
+#include <linux/phy.h>
+
+enum acx00_ephy_led {
+	ACX00_EPHY_LED_LINK_ACTIVITY,
+	ACX00_EPHY_LED_SPEED,
+	ACX00_EPHY_LED_DUPLEX,
+	ACX00_EPHY_LED_COUNT,
+};
+
+struct acx00_ephy_control {
+	phy_interface_t interface;
+	int (*power_on)(struct acx00_ephy_control *control,
+			unsigned int phy_addr);
+	int (*power_off)(struct acx00_ephy_control *control);
+	int (*set_led_outputs)(struct acx00_ephy_control *control,
+			       unsigned long outputs);
+	int (*set_led_polarity)(struct acx00_ephy_control *control,
+				bool active_low);
+};
+
+#endif

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
