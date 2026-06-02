Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 160CBCD5BD1
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 21:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAh/+ErUVekHqHtQXfTJtvtoaPlkE7yvw2YFprC5VDE=; b=uXWm28S9Mp9gC2
	mBz6f4zNhcSYROvEFAiy1X48bfA9HQgsDuQFUN34zQuQWqJnrBfOLufIxlmMYODsy13iSkyIrfvuw
	WPizxeYqwq131yZc87qmrpcDzx9/Q83KTi3pgjjC1JMaOuq5rng+MABBs7l8gcY6UGhQDaobbIe2n
	y1CvJQ0eTkRd+YYtAg/aFJFQrkKRCxJUBHvCcLE1zigsh9hpPf71uF67/tVWhEkWP0iu/lDJZ84o1
	x31TJlCILjCqXO1axYxVjkwtp21KMCeReW8jjW5o2e5QZI1H0U1N7JoctlVXn1b14p99o84ND+CV0
	CMmW+fb70Ih62jtDRfow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWeP-0000000Dp9F-0pB2;
	Tue, 02 Jun 2026 21:27:53 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWeK-0000000Dp6X-36Hm
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 21:27:50 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-43cce7db292so2328655fac.2
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 14:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780435667; x=1781040467; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FIknTwxOsqUOA1daHCqiC+eAFjnQm6lndOnHtWRZajY=;
        b=SqD+0506PhRWhL8Dhif3Hiv2lQmuFAmIMdCl1Ft7gwtkro/SPUNQykc5cZveLcMmax
         tvTu7X31snHDbqFJ7/Jk4a/bYba/xdSmZ586sM5OanItQynVR+KJHfegIydtk2B0LYWR
         Y9ymUl7+OpJ0yXwiksmwyvEw3Z5HsgOdFKbJhSBq4zXH9ShFD1KsJ1pw7AvUmG9Py9qb
         CmUGOxA4BBbgygzgGcaZtLk2nhuBfy9iaK7L2U9KkKLV6zA2wMI/BT2BEgEclouSFTsa
         kabx+2huaxA0A4ZlSIqqVXBmSuMZPJ0/HuCQg8lwKmLw5ic1lF6qcVN2v270LRDk5Mpz
         Szjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780435667; x=1781040467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FIknTwxOsqUOA1daHCqiC+eAFjnQm6lndOnHtWRZajY=;
        b=Ew+XYNNPvj1QLuBrOV9+lyZ5pLtxblwBrDY3BoQlX3w4T5AwkdxqqBKTdD8oe3nKfG
         a9tEeGxwFsdgi3bnJ4NI8iMKFSgtHTLILzjkfWEdSu5eZ54J7LES35KHt5kT42HdoSGr
         UYEdQsZmw6btJIEMcSpGHMzOpShdHDRkr46mqU4qWCvPVhzEO4CVeK1lrTURJNdUCSy9
         pESkfryJb3I8QTSpT56+ZGQedUCtbOuetaMpd49ESFFHa7q3UeDEBgXIPn+LbKX/k8QW
         13UExsFQjVOJEA0G1ijFv0HRjhV2W/bVX7LkZx347kfaoOm6qb943UAtvqNDvPsv8vR6
         ZK0g==
X-Gm-Message-State: AOJu0Ywa8UGcISOJHfKp2OqCDnnHhW47cUJMkeo+7K8xjP7OKb5UxwYx
	k0fDgzJREHRRPBQ09fonUKttKUpIJEvJCIXjRPp9rgZsDTbYelC9bJDdRH+AxUKF
X-Gm-Gg: Acq92OEENGF77nfBTv9UunywnkO4znsP3HBG67ovHhkYOMFLcuEpkIQZi5dqrW4IK6E
	oIC6TKSQE3AMc84Uw1NN3p5FLaCzMiy1azk0mPn2Y+8L0M9hBf+xxLmuzYa+i4PHYnDKDU499WV
	QQGjZj0KMBd5BFsr2suTgknC5SbLpHQluidtbl+gMjSqNeX3o3yG/CVe3XCoXrnW+f8gA/3bF19
	Pwq8lF//S+9yjWtV/lNz1KIlgMJNO98MjyXFmSjKFyX9+IT3RQnX6RGcJdrCVvgMSegjaDyJnjg
	1NDgOe1TLfmsPdTzYs+2gMDnI1zSwPN3x6vr+Spo9oKRpqmIHfJxl4MbIwm/xDvox/kpb7rTITS
	Qbke8Skat4XN5TEdlriZrHuPyIqYkc2++hoAeUKUtHg5MSHy0VhjVk8gzHKZmVo8084y6TbLIb4
	Tq0HIWx093f2pOqCbnhxJjEV/uvIiKS9o=
X-Received: by 2002:a05:6808:6c88:b0:479:d7ea:ae34 with SMTP id 5614622812f47-4865ac60dfbmr412271b6e.24.1780435667484;
        Tue, 02 Jun 2026 14:27:47 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4865b5a53bcsm216722b6e.3.2026.06.02.14.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 14:27:47 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 2/6] power: supply: sgm41542: Add SG Micro sgm41542 charger
Date: Tue,  2 Jun 2026 16:25:08 -0500
Message-ID: <20260602212512.418166-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602212512.418166-1-macroalpha82@gmail.com>
References: <20260602212512.418166-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_142749_116037_75CEE76C 
X-CRM114-Status: GOOD (  20.73  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the SG Micro SGM41542 charger/boost converter.
Driver was adapted from Rockchip BSP driver [1] and confirmed
with vendor datasheet [2].

[1] https://github.com/rockchip-linux/kernel/blob/develop-6.6/drivers/power/supply/sgm41542_charger.c
[2] https://www.sg-micro.de/rect/assets/1e8de70b-657e-4156-be68-a64fdbe8e418/SGM41541_SGM41542.pdf

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/power/supply/Kconfig            |    8 +
 drivers/power/supply/Makefile           |    1 +
 drivers/power/supply/sgm41542_charger.c | 1065 +++++++++++++++++++++++
 3 files changed, 1074 insertions(+)
 create mode 100644 drivers/power/supply/sgm41542_charger.c

diff --git a/drivers/power/supply/Kconfig b/drivers/power/supply/Kconfig
index 83392ed6a8da..57dae0913472 100644
--- a/drivers/power/supply/Kconfig
+++ b/drivers/power/supply/Kconfig
@@ -856,6 +856,14 @@ config CHARGER_RK817
 	help
 	  Say Y to include support for Rockchip RK817 Battery Charger.
 
+config CHARGER_SGM41542
+	tristate "SGM41542 charger driver"
+	depends on I2C
+	depends on GPIOLIB || COMPILE_TEST
+	select REGMAP_I2C
+	help
+	  Say Y to enable support for the SGM41542 battery charger.
+
 config CHARGER_SMB347
 	tristate "Summit Microelectronics SMB3XX Battery Charger"
 	depends on I2C
diff --git a/drivers/power/supply/Makefile b/drivers/power/supply/Makefile
index 7ee839dca7f3..c376889db317 100644
--- a/drivers/power/supply/Makefile
+++ b/drivers/power/supply/Makefile
@@ -107,6 +107,7 @@ obj-$(CONFIG_CHARGER_BQ25890)	+= bq25890_charger.o
 obj-$(CONFIG_CHARGER_BQ25980)	+= bq25980_charger.o
 obj-$(CONFIG_CHARGER_BQ256XX)	+= bq256xx_charger.o
 obj-$(CONFIG_CHARGER_RK817)	+= rk817_charger.o
+obj-$(CONFIG_CHARGER_SGM41542)	+= sgm41542_charger.o
 obj-$(CONFIG_CHARGER_SMB347)	+= smb347-charger.o
 obj-$(CONFIG_CHARGER_TPS65090)	+= tps65090-charger.o
 obj-$(CONFIG_CHARGER_TPS65217)	+= tps65217_charger.o
diff --git a/drivers/power/supply/sgm41542_charger.c b/drivers/power/supply/sgm41542_charger.c
new file mode 100644
index 000000000000..334767df3d9e
--- /dev/null
+++ b/drivers/power/supply/sgm41542_charger.c
@@ -0,0 +1,1065 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Chrager driver for Sgm4154x
+ *
+ * Copyright (c) 2026 Rockchip Electronics Co., Ltd.
+ *
+ * Author: Xu Shengfei <xsf@rock-chips.com>
+ */
+
+#include <linux/delay.h>
+#include <linux/i2c.h>
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/power_supply.h>
+#include <linux/regmap.h>
+#include <linux/regulator/driver.h>
+#include <linux/regulator/of_regulator.h>
+#include <linux/regulator/machine.h>
+#include <linux/types.h>
+
+#define SGM4154X_MANUFACTURER			"SGMICRO"
+#define SGM4154X_NAME				"sgm41542"
+
+#define SGM4154X_CHRG_CTRL_0			0x00
+#define SGM4154X_HIZ_EN				BIT(7)
+#define SGM4154X_IINDPM_I_MASK			GENMASK(4, 0)
+#define SGM4154X_IINDPM_I_MIN_UA		100000
+#define SGM4154X_IINDPM_I_MAX_UA		3800000
+#define SGM4154X_IINDPM_STEP_UA			100000
+#define SGM4154X_IINDPM_DEF_UA			2400000
+
+#define SGM4154X_CHRG_CTRL_1			0x01
+#define SGM4154X_WDT_RST			BIT(6)
+#define SGM4154X_OTG_EN				BIT(5)
+#define SGM4154X_CHRG_EN			BIT(4)
+
+#define SGM4154X_CHRG_CTRL_2			0x02
+#define SGM4154X_BOOST_LIM			BIT(7)
+#define SGM4154X_ICHRG_CUR_MASK			GENMASK(5, 0)
+#define SGM4154X_ICHRG_I_STEP_UA		60000
+#define SGM4154X_ICHRG_I_MIN_UA			0
+#define SGM4154X_ICHRG_I_MAX_UA			3780000
+#define SGM4154X_ICHRG_I_DEF_UA			2040000
+
+#define SGM4154X_CHRG_CTRL_3			0x03
+#define SGM4154X_PRECHRG_CUR_MASK		GENMASK(7, 4)
+#define SGM4154X_PRECHRG_CURRENT_STEP_UA	60000
+#define SGM4154X_PRECHRG_I_MIN_UA		60000
+#define SGM4154X_PRECHRG_I_MAX_UA		780000
+#define SGM4154X_PRECHRG_I_DEF_UA		180000
+#define SGM4154X_TERMCHRG_CUR_MASK		GENMASK(3, 0)
+#define SGM4154X_TERMCHRG_CURRENT_STEP_UA	60000
+#define SGM4154X_TERMCHRG_I_MIN_UA		60000
+#define SGM4154X_TERMCHRG_I_MAX_UA		960000
+#define SGM4154X_TERMCHRG_I_DEF_UA		180000
+
+#define SGM4154X_CHRG_CTRL_4			0x04
+#define SGM4154X_VREG_V_MASK			GENMASK(7, 3)
+#define SGM4154X_VREG_V_MAX_UV			4624000
+#define SGM4154X_VREG_V_MIN_UV			3856000
+#define SGM4154X_VREG_V_DEF_UV			4208000
+#define SGM4154X_VREG_V_STEP_UV			32000
+#define SGM4154X_VRECHARGE			BIT(0)
+#define SGM4154X_VRECHRG_STEP_MV		100
+#define SGM4154X_VRECHRG_OFFSET_MV		100
+
+#define SGM4154X_CHRG_CTRL_5			0x05
+#define SGM4154X_TERM_EN			BIT(7)
+#define SGM4154X_WDT_TIMER_MASK			GENMASK(5, 4)
+#define SGM4154X_WDT_TIMER_40S			BIT(4)
+#define SGM4154X_WDT_TIMER_80S			BIT(5)
+#define SGM4154X_WDT_TIMER_160S			(BIT(4) | BIT(5))
+#define SGM4154X_WDT_TIMER_DISABLE		0
+
+#define SGM4154X_CHRG_CTRL_6			0x06
+#define SGM4154X_VAC_OVP_MASK			GENMASK(7, 6)
+#define SGM4154X_OVP_14V			(BIT(7) | BIT(6))
+#define SGM4154X_OVP_10_5V			BIT(7)
+#define SGM4154X_OVP_6_5V			BIT(6)
+#define SGM4154X_OVP_5_5V			0
+#define SGM4154X_OVP_DEFAULT			SGM4154X_OVP_14V
+#define SGM4154X_BOOSTV				GENMASK(5, 4)
+#define SGM4154X_VINDPM_V_MASK			GENMASK(3, 0)
+#define SGM4154X_VINDPM_V_MIN_UV		3900000
+#define SGM4154X_VINDPM_V_MAX_UV		12000000
+#define SGM4154X_VINDPM_STEP_UV			100000
+#define SGM4154X_VINDPM_DEF_UV			4500000
+
+#define SGM4154X_CHRG_CTRL_7			0x07
+
+#define SGM4154X_CHRG_STAT		0x08
+#define SGM4154X_VBUS_STAT_MASK		GENMASK(7, 5)
+#define SGM4154X_OTG_MODE		(BIT(7) | BIT(6) | BIT(5))
+#define SGM4154X_NON_STANDARD		(BIT(7) | BIT(6))
+#define SGM4154X_UNKNOWN		(BIT(7) | BIT(5))
+#define SGM4154X_USB_DCP		(BIT(6) | BIT(5))
+#define SGM4154X_USB_CDP		BIT(6)
+#define SGM4154X_USB_SDP		BIT(5)
+#define SGM4154X_NOT_CHRGING		0
+#define SGM4154X_CHG_STAT_MASK		GENMASK(4, 3)
+#define SGM4154X_TERM_CHRG		(BIT(4) | BIT(3))
+#define SGM4154X_FAST_CHRG		BIT(4)
+#define SGM4154X_PRECHRG		BIT(3)
+#define SGM4154X_PG_STAT		BIT(2)
+#define SGM4154X_THERM_STAT		BIT(1)
+#define SGM4154X_VSYS_STAT		BIT(0)
+
+#define SGM4154X_CHRG_FAULT		0x09
+#define SGM4154X_TEMP_MASK		GENMASK(2, 0)
+#define SGM4154X_TEMP_HOT		(BIT(2) | BIT(1))
+#define SGM4154X_TEMP_COLD		(BIT(2) | BIT(0))
+#define SGM4154X_TEMP_COOL		(BIT(1) | BIT(0))
+#define SGM4154X_TEMP_WARM		BIT(1)
+#define SGM4154X_TEMP_NORMAL		BIT(0)
+
+#define SGM4154X_CHRG_CTRL_A		0x0a
+#define SGM4154X_VBUS_GOOD		BIT(7)
+#define SGM4154X_VINDPM_INT_MASK	BIT(1)
+#define SGM4154X_IINDPM_INT_MASK	BIT(0)
+
+#define SGM4154X_CHRG_CTRL_B		0x0b
+#define SGM4154X_PN_ID			(BIT(6) | BIT(5) | BIT(3))
+#define SGM4154X_PN_MASK		GENMASK(6, 3)
+
+#define SGM4154X_CHRG_CTRL_C		0x0c
+
+#define SGM4154X_CHRG_CTRL_D		0x0d
+#define SGM4154X_JEITA_EN		BIT(0)
+
+#define SGM4154X_INPUT_DET		0x0e
+#define SGM4154X_DPDM_ONGOING		BIT(7)
+
+#define SGM4154X_CHRG_CTRL_F		0x0f
+#define SGM4154X_VINDPM_OS_MASK	 GENMASK(1, 0)
+
+#define SGM4154X_DEFAULT_INPUT_CUR	(500 * 1000)
+
+struct sgm4154x_init_data {
+	int ilim;	/* input current limit */
+	int vlim;	/* minimum system voltage limit */
+	int iterm;	/* termination current */
+	int iprechg;	/* precharge current */
+	int max_ichg;	/* maximum charge current */
+	int max_vreg;	/* maximum charge voltage */
+};
+
+struct sgm4154x_state {
+	bool vsys_stat;
+	bool therm_stat;
+	bool online;
+	u8 chrg_stat;
+	bool chrg_en;
+	bool vbus_gd;
+	u8 chrg_type;
+	u8 health;
+	u8 chrg_fault;
+	u8 ntc_fault;
+};
+
+struct sgm4154x_device {
+	struct i2c_client *client;
+	struct device *dev;
+	struct power_supply *charger;
+	struct regmap *regmap;
+	char model_name[I2C_NAME_SIZE];
+	struct sgm4154x_init_data init_data;
+	struct sgm4154x_state state;
+	struct regulator_dev *otg_rdev;
+	bool watchdog_enable;
+	struct workqueue_struct *sgm_monitor_wq;
+	struct delayed_work sgm_delay_work;
+};
+
+enum SGM4154X_VINDPM_OS {
+	VINDPM_OS_3900MV,
+	VINDPM_OS_5900MV,
+	VINDPM_OS_7500MV,
+	VINDPM_OS_10500MV,
+};
+
+static int sgm4154x_set_term_curr(struct sgm4154x_device *sgm, int cur_ua)
+{
+	int reg_val;
+	int ret;
+
+	cur_ua = clamp(cur_ua, SGM4154X_TERMCHRG_I_MIN_UA, SGM4154X_TERMCHRG_I_MAX_UA);
+	reg_val = (cur_ua - SGM4154X_TERMCHRG_I_MIN_UA) / SGM4154X_TERMCHRG_CURRENT_STEP_UA;
+
+	ret = regmap_update_bits(sgm->regmap,
+				 SGM4154X_CHRG_CTRL_3,
+				 SGM4154X_TERMCHRG_CUR_MASK,
+				 reg_val);
+	if (ret)
+		dev_err(sgm->dev, "set term current error!\n");
+
+	return ret;
+}
+
+static int sgm4154x_set_prechrg_curr(struct sgm4154x_device *sgm, int cur_ua)
+{
+	int reg_val;
+	int ret;
+
+	cur_ua = clamp(cur_ua, SGM4154X_PRECHRG_I_MIN_UA, SGM4154X_PRECHRG_I_MAX_UA);
+	reg_val = (cur_ua - SGM4154X_PRECHRG_I_MIN_UA) / SGM4154X_PRECHRG_CURRENT_STEP_UA;
+
+	reg_val = reg_val << 4;
+	ret = regmap_update_bits(sgm->regmap,
+				 SGM4154X_CHRG_CTRL_3,
+				 SGM4154X_PRECHRG_CUR_MASK,
+				 reg_val);
+	if (ret)
+		dev_err(sgm->dev, "set precharge current error!\n");
+
+	return ret;
+}
+
+static int sgm4154x_set_ichrg_curr(struct sgm4154x_device *sgm, int cur_ua)
+{
+	int reg_val;
+	int ret;
+
+	cur_ua = clamp(cur_ua, SGM4154X_ICHRG_I_MIN_UA, SGM4154X_ICHRG_I_MAX_UA);
+	reg_val = cur_ua / SGM4154X_ICHRG_I_STEP_UA;
+
+	ret = regmap_update_bits(sgm->regmap,
+				 SGM4154X_CHRG_CTRL_2,
+				 SGM4154X_ICHRG_CUR_MASK,
+				 reg_val);
+	if (ret)
+		dev_err(sgm->dev, "set icharge current error!\n");
+
+	return ret;
+}
+
+static int sgm4154x_get_ichrg_curr(struct sgm4154x_device *sgm)
+{
+	u32 reg;
+	int ret, val;
+
+	ret = regmap_read(sgm->regmap, SGM4154X_CHRG_CTRL_2, &reg);
+	if (ret) {
+		dev_err(sgm->dev, "get charge current error!\n");
+		return ret;
+	}
+
+	val = FIELD_GET(SGM4154X_ICHRG_CUR_MASK, reg);
+
+	return val * SGM4154X_ICHRG_I_STEP_UA;
+}
+
+static int sgm4154x_set_chrg_volt(struct sgm4154x_device *sgm, int chrg_volt)
+{
+	int reg_val;
+	int ret;
+
+	/*
+	 * Note that the value of 0x01111 represents a "special value"
+	 * corresponding to 4352000uV instead of the expected 4336000uV,
+	 * per the datasheet. All other values are as expected. So not
+	 * only do we need to clamp between max and min values, but
+	 * also clamp anything below 4352000uv to 4304000uv to prevent
+	 * overcharging.
+	 */
+	if (chrg_volt < 4352000)
+		chrg_volt = clamp(chrg_volt, SGM4154X_VREG_V_MIN_UV, 4304000);
+	chrg_volt = clamp(chrg_volt, SGM4154X_VREG_V_MIN_UV, sgm->init_data.max_vreg);
+	reg_val = (chrg_volt - SGM4154X_VREG_V_MIN_UV) / SGM4154X_VREG_V_STEP_UV;
+	reg_val = reg_val << 3;
+	ret = regmap_update_bits(sgm->regmap,
+				 SGM4154X_CHRG_CTRL_4,
+				 SGM4154X_VREG_V_MASK,
+				 reg_val);
+	if (ret)
+		dev_err(sgm->dev, "set charge voltage error!\n");
+
+	return ret;
+}
+
+static int sgm4154x_get_chrg_volt(struct sgm4154x_device *sgm)
+{
+	u32 reg;
+	int ret, val;
+
+	ret = regmap_read(sgm->regmap, SGM4154X_CHRG_CTRL_4, &reg);
+	if (ret) {
+		dev_err(sgm->dev, "get charge voltage error!\n");
+		return ret;
+	}
+
+	val = FIELD_GET(SGM4154X_VREG_V_MASK, reg);
+
+	/*
+	 * 0x01111 is a special value meaning 4352000uV, all other
+	 * values are as expected based on the offset and step values.
+	 */
+	if (val == 0x0f)
+		return 4352000;
+
+	return val * SGM4154X_VREG_V_STEP_UV + SGM4154X_VREG_V_MIN_UV;
+}
+
+static int sgm4154x_set_input_volt_lim(struct sgm4154x_device *sgm,
+				       unsigned int vindpm)
+{
+	enum SGM4154X_VINDPM_OS os_val;
+	unsigned int offset;
+	u8 reg_val;
+	int ret;
+
+
+	if (vindpm < SGM4154X_VINDPM_V_MIN_UV ||
+	    vindpm > SGM4154X_VINDPM_V_MAX_UV) {
+		dev_err(sgm->dev, "input voltage limit %u outside range\n", vindpm);
+		return -EINVAL;
+	}
+
+	/*
+	 * Supported ranges per the datasheet are as follows:
+	 * 3.9v - 5.4v with a 3.9v offset
+	 * 5.9v - 7.4v with a 5.9v offset
+	 * 7.5v - 9.0v with a 7.5v offset
+	 * 10.5v - 12.0v with a 10.5v offset
+	 * Step size is a constant 100mv
+	 */
+	if (vindpm < 5900000) {
+		vindpm = clamp(vindpm, VINDPM_OS_3900MV, 5400000);
+		os_val = VINDPM_OS_3900MV;
+		offset = 3900000;
+	} else if (vindpm >= 5900000 && vindpm < 7500000) {
+		vindpm = clamp(vindpm, VINDPM_OS_5900MV, 7400000);
+		os_val = VINDPM_OS_5900MV;
+		offset = 5900000;
+	} else if (vindpm >= 7500000 && vindpm < 10500000) {
+		vindpm = clamp(vindpm, VINDPM_OS_7500MV, 9000000);
+		os_val = VINDPM_OS_7500MV;
+		offset = 7500000;
+	} else {
+		vindpm = clamp(vindpm, VINDPM_OS_10500MV, 12000000);
+		os_val = VINDPM_OS_10500MV;
+		offset = 10500000;
+	}
+
+	ret = regmap_update_bits(sgm->regmap,
+				 SGM4154X_CHRG_CTRL_F,
+				 SGM4154X_VINDPM_OS_MASK,
+				 os_val);
+	if (ret) {
+		dev_err(sgm->dev, "set vin dpm error!\n");
+		return ret;
+	}
+
+	reg_val = (vindpm - offset) / SGM4154X_VINDPM_STEP_UV;
+
+	ret = regmap_update_bits(sgm->regmap, SGM4154X_CHRG_CTRL_6,
+				 SGM4154X_VINDPM_V_MASK, reg_val);
+	if (ret)
+		dev_err(sgm->dev, "input voltage error!\n");
+
+	return ret;
+}
+
+static int sgm4154x_set_input_curr_lim(struct sgm4154x_device *sgm, int iindpm)
+{
+	int reg_val;
+	int ret;
+
+	if (iindpm < SGM4154X_IINDPM_I_MIN_UA)
+		return -EINVAL;
+
+	/*
+	 * Per the datasheet, values between 100000uA and 3100000uA work
+	 * as expected with the register defined as having a step of
+	 * 100000 and a min/max of 100000 (0x00) through 3100000 (0x1e).
+	 * The register value of 0x1f however corresponds to 3800000uA not
+	 * 3200000uA as one would expect.
+	 */
+	if ((iindpm > SGM4154X_IINDPM_I_MAX_UA) || (iindpm > sgm->init_data.ilim))
+		iindpm = min(SGM4154X_IINDPM_I_MAX_UA, sgm->init_data.ilim);
+
+	if (iindpm > 3100000 && iindpm < SGM4154X_IINDPM_I_MAX_UA)
+		iindpm = 3100000;
+
+	if (iindpm == SGM4154X_IINDPM_I_MAX_UA)
+		reg_val = 0x1f;
+	else
+		reg_val = (iindpm - SGM4154X_IINDPM_I_MIN_UA) / SGM4154X_IINDPM_STEP_UA;
+
+	ret = regmap_update_bits(sgm->regmap,
+				 SGM4154X_CHRG_CTRL_0,
+				 SGM4154X_IINDPM_I_MASK,
+				 reg_val);
+	if (ret)
+		dev_err(sgm->dev, "set input current limit error!\n");
+
+	return ret;
+}
+
+static int sgm4154x_get_input_curr_lim(struct sgm4154x_device *sgm)
+{
+	int ret;
+	int ilim;
+
+	ret = regmap_read(sgm->regmap, SGM4154X_CHRG_CTRL_0, &ilim);
+	if (ret) {
+		dev_err(sgm->dev, "get input current limit error!\n");
+		return ret;
+	}
+
+	/* Max value is not 3200000uA as expected but is 3800000uA */
+	if (SGM4154X_IINDPM_I_MASK == (ilim & SGM4154X_IINDPM_I_MASK))
+		return SGM4154X_IINDPM_I_MAX_UA;
+
+	ilim = (ilim & SGM4154X_IINDPM_I_MASK) * SGM4154X_IINDPM_STEP_UA + SGM4154X_IINDPM_I_MIN_UA;
+
+	return ilim;
+}
+
+static int sgm4154x_watchdog_timer_reset(struct sgm4154x_device *sgm)
+{
+	int ret;
+
+	ret = regmap_update_bits(sgm->regmap,
+				 SGM4154X_CHRG_CTRL_1,
+				 SGM4154X_WDT_RST,
+				 SGM4154X_WDT_RST);
+
+	if (ret)
+		dev_err(sgm->dev, "set watchdog timer error!\n");
+
+	return ret;
+}
+
+static int sgm4154x_set_watchdog_timer(struct sgm4154x_device *sgm, int time)
+{
+	u8 reg_val;
+	int ret;
+
+	if (time == 0)
+		reg_val = SGM4154X_WDT_TIMER_DISABLE;
+	else if (time == 40)
+		reg_val = SGM4154X_WDT_TIMER_40S;
+	else if (time == 80)
+		reg_val = SGM4154X_WDT_TIMER_80S;
+	else
+		reg_val = SGM4154X_WDT_TIMER_160S;
+
+	ret = regmap_update_bits(sgm->regmap,
+				 SGM4154X_CHRG_CTRL_5,
+				 SGM4154X_WDT_TIMER_MASK,
+				 reg_val);
+
+	if (ret) {
+		dev_err(sgm->dev, "set watchdog timer error!\n");
+		return ret;
+	}
+
+	if (time) {
+		if (!sgm->watchdog_enable)
+			queue_delayed_work(sgm->sgm_monitor_wq,
+					   &sgm->sgm_delay_work,
+					   msecs_to_jiffies(1000 * 5));
+		sgm->watchdog_enable = true;
+	} else {
+		sgm->watchdog_enable = false;
+		sgm4154x_watchdog_timer_reset(sgm);
+	}
+
+	return ret;
+}
+
+static int sgm4154x_enable_charger(struct sgm4154x_device *sgm)
+{
+	int ret;
+
+	ret = regmap_update_bits(sgm->regmap,
+				 SGM4154X_CHRG_CTRL_1,
+				 SGM4154X_CHRG_EN,
+				 SGM4154X_CHRG_EN);
+	if (ret)
+		dev_err(sgm->dev, "enable charger error!\n");
+
+	return ret;
+}
+
+static int sgm4154x_disable_charger(struct sgm4154x_device *sgm)
+{
+	int ret;
+
+	ret = regmap_update_bits(sgm->regmap,
+				 SGM4154X_CHRG_CTRL_1,
+				 SGM4154X_CHRG_EN,
+				 0);
+	if (ret)
+		dev_err(sgm->dev, "disable charger error!\n");
+
+	return ret;
+}
+
+static int sgm4154x_set_vac_ovp(struct sgm4154x_device *sgm)
+{
+	int reg_val;
+	int ret;
+
+	reg_val = SGM4154X_OVP_DEFAULT & SGM4154X_VAC_OVP_MASK;
+
+	ret = regmap_update_bits(sgm->regmap,
+				 SGM4154X_CHRG_CTRL_6,
+				 SGM4154X_VAC_OVP_MASK,
+				 reg_val);
+	if (ret)
+		dev_err(sgm->dev, "set vac ovp error!\n");
+
+	return ret;
+}
+
+static int sgm4154x_set_recharge_volt(struct sgm4154x_device *sgm, int recharge_volt)
+{
+	int reg_val;
+	int ret;
+
+	reg_val = (recharge_volt - SGM4154X_VRECHRG_OFFSET_MV) / SGM4154X_VRECHRG_STEP_MV;
+
+	ret = regmap_update_bits(sgm->regmap,
+				 SGM4154X_CHRG_CTRL_4,
+				 SGM4154X_VRECHARGE,
+				 reg_val);
+	if (ret)
+		dev_err(sgm->dev, "set recharger error!\n");
+
+	return ret;
+}
+
+static int sgm4154x_get_state(struct sgm4154x_device *sgm,
+			      struct sgm4154x_state *state)
+{
+	int reg, ret;
+
+	ret = regmap_read(sgm->regmap, SGM4154X_CHRG_STAT, &reg);
+	if (ret) {
+		dev_err(sgm->dev, "read SGM4154X_CHRG_STAT fail\n");
+		return ret;
+	}
+	state->chrg_type = reg & SGM4154X_VBUS_STAT_MASK;
+	state->chrg_stat = reg & SGM4154X_CHG_STAT_MASK;
+	state->online = !!(reg & SGM4154X_PG_STAT);
+	state->therm_stat = !!(reg & SGM4154X_THERM_STAT);
+	state->vsys_stat = !!(reg & SGM4154X_VSYS_STAT);
+
+	ret = regmap_read(sgm->regmap, SGM4154X_CHRG_FAULT, &reg);
+	if (ret) {
+		dev_err(sgm->dev, "read SGM4154X_CHRG_FAULT fail\n");
+		return ret;
+	}
+	state->chrg_fault = reg;
+	state->ntc_fault = reg & SGM4154X_TEMP_MASK;
+	state->health = state->ntc_fault;
+
+	ret = regmap_read(sgm->regmap, SGM4154X_CHRG_CTRL_A, &reg);
+	if (ret) {
+		dev_err(sgm->dev, "read SGM4154X_CHRG_CTRL_A fail\n");
+		return ret;
+	}
+	state->vbus_gd = !!(reg & SGM4154X_VBUS_GOOD);
+
+	return ret;
+}
+
+static int sgm4154x_property_is_writeable(struct power_supply *psy,
+					  enum power_supply_property prop)
+{
+	switch (prop) {
+	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE:
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
+	case POWER_SUPPLY_PROP_ONLINE:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static int sgm4154x_charger_set_property(struct power_supply *psy,
+					 enum power_supply_property prop,
+					 const union power_supply_propval *val)
+{
+	struct sgm4154x_device *sgm = power_supply_get_drvdata(psy);
+	int ret = -EINVAL;
+
+	switch (prop) {
+	case POWER_SUPPLY_PROP_ONLINE:
+		if (val->intval) {
+			ret = sgm4154x_enable_charger(sgm);
+			sgm4154x_set_watchdog_timer(sgm, SGM4154X_WDT_TIMER_40S);
+		} else {
+			sgm4154x_set_watchdog_timer(sgm, 0);
+			ret = sgm4154x_disable_charger(sgm);
+		}
+		break;
+
+	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
+		ret = sgm4154x_set_input_curr_lim(sgm, val->intval);
+		break;
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
+		ret = sgm4154x_set_ichrg_curr(sgm, val->intval);
+		break;
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE:
+		ret = sgm4154x_set_chrg_volt(sgm, val->intval);
+		break;
+
+	default:
+		return -EINVAL;
+	}
+
+	return ret;
+}
+
+static int sgm4154x_charger_get_property(struct power_supply *psy,
+					 enum power_supply_property psp,
+					 union power_supply_propval *val)
+{
+	struct sgm4154x_device *sgm = power_supply_get_drvdata(psy);
+	struct sgm4154x_state state;
+	int ret;
+
+	ret = sgm4154x_get_state(sgm, &state);
+	if (ret) {
+		dev_err(sgm->dev, "get state error!\n");
+		return ret;
+	}
+	sgm->state = state;
+
+	switch (psp) {
+	case POWER_SUPPLY_PROP_STATUS:
+		if (!state.chrg_type || (state.chrg_type == SGM4154X_OTG_MODE))
+			val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
+		else if (!state.chrg_stat)
+			val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
+		else if (state.chrg_stat == SGM4154X_TERM_CHRG)
+			val->intval = POWER_SUPPLY_STATUS_FULL;
+		else
+			val->intval = POWER_SUPPLY_STATUS_CHARGING;
+		break;
+	case POWER_SUPPLY_PROP_CHARGE_TYPE:
+		switch (state.chrg_stat) {
+		case SGM4154X_PRECHRG:
+			val->intval = POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
+			break;
+		case SGM4154X_FAST_CHRG:
+			val->intval = POWER_SUPPLY_CHARGE_TYPE_FAST;
+			break;
+		case SGM4154X_TERM_CHRG:
+			val->intval = POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
+			break;
+		case SGM4154X_NOT_CHRGING:
+			val->intval = POWER_SUPPLY_CHARGE_TYPE_NONE;
+			break;
+		default:
+			val->intval = POWER_SUPPLY_CHARGE_TYPE_UNKNOWN;
+		}
+		break;
+	case POWER_SUPPLY_PROP_MANUFACTURER:
+		val->strval = SGM4154X_MANUFACTURER;
+		break;
+
+	case POWER_SUPPLY_PROP_MODEL_NAME:
+		val->strval = SGM4154X_NAME;
+		break;
+
+	case POWER_SUPPLY_PROP_ONLINE:
+		val->intval = state.online;
+		break;
+	case POWER_SUPPLY_PROP_PRESENT:
+		val->intval = state.vbus_gd;
+		break;
+	case POWER_SUPPLY_PROP_TYPE:
+		val->intval = POWER_SUPPLY_TYPE_USB;
+		break;
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE:
+		val->intval = sgm4154x_get_chrg_volt(sgm);
+		if (val->intval < 0)
+			return -EINVAL;
+		break;
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
+		val->intval = sgm4154x_get_ichrg_curr(sgm);
+		if (val->intval < 0)
+			return -EINVAL;
+		break;
+	case POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT:
+		val->intval = sgm->init_data.vlim;
+		break;
+	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
+		val->intval = sgm4154x_get_input_curr_lim(sgm);
+		if (val->intval < 0)
+			return  -EINVAL;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return ret;
+}
+
+static irqreturn_t sgm4154x_irq_handler_thread(int irq, void *private)
+{
+	struct sgm4154x_device *sgm4154x = private;
+	struct sgm4154x_state state;
+	int ret;
+
+	ret = sgm4154x_get_state(sgm4154x, &state);
+	if (ret) {
+		dev_err(sgm4154x->dev, "get state error!\n");
+		return IRQ_NONE;
+	}
+	sgm4154x->state = state;
+	if (state.vbus_gd) {
+		if (sgm4154x->init_data.ilim >= SGM4154X_DEFAULT_INPUT_CUR) {
+			ret = sgm4154x_set_input_curr_lim(sgm4154x, sgm4154x->init_data.ilim);
+			if (ret) {
+				dev_err(sgm4154x->dev, "set input current error!\n");
+				return IRQ_NONE;
+			}
+		}
+	}
+	power_supply_changed(sgm4154x->charger);
+
+	return IRQ_HANDLED;
+}
+
+static enum power_supply_property sgm4154x_power_supply_props[] = {
+	POWER_SUPPLY_PROP_TYPE,
+	POWER_SUPPLY_PROP_MANUFACTURER,
+	POWER_SUPPLY_PROP_MODEL_NAME,
+	POWER_SUPPLY_PROP_STATUS,
+	POWER_SUPPLY_PROP_ONLINE,
+	POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT,
+	POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT,
+	POWER_SUPPLY_PROP_CHARGE_TYPE,
+	POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE,
+	POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT,
+	POWER_SUPPLY_PROP_PRESENT
+};
+
+static char *sgm4154x_charger_supplied_to[] = {
+	"battery-monitor",
+};
+
+static struct power_supply_desc sgm4154x_power_supply_desc = {
+	.name = "sgm4154x-charger",
+	.type = POWER_SUPPLY_TYPE_USB,
+	.properties = sgm4154x_power_supply_props,
+	.num_properties = ARRAY_SIZE(sgm4154x_power_supply_props),
+	.get_property = sgm4154x_charger_get_property,
+	.set_property = sgm4154x_charger_set_property,
+	.property_is_writeable = sgm4154x_property_is_writeable,
+};
+
+static const struct regmap_config sgm4154x_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = SGM4154X_CHRG_CTRL_F,
+	.cache_type = REGCACHE_NONE,
+};
+
+static int sgm4154x_power_supply_init(struct sgm4154x_device *sgm,
+				      struct device *dev)
+{
+	struct power_supply_config psy_cfg = { .drv_data = sgm,
+					       .fwnode = dev->fwnode, };
+
+	psy_cfg.supplied_to = sgm4154x_charger_supplied_to;
+	psy_cfg.num_supplicants = ARRAY_SIZE(sgm4154x_charger_supplied_to);
+	psy_cfg.fwnode = dev->fwnode;
+	sgm->charger = devm_power_supply_register(sgm->dev,
+						  &sgm4154x_power_supply_desc,
+						  &psy_cfg);
+	if (IS_ERR(sgm->charger))
+		return -EINVAL;
+
+	return 0;
+}
+
+static int sgm4154x_hw_init(struct sgm4154x_device *sgm)
+{
+	struct power_supply_battery_info *bat_info;
+	int ret;
+	u32 val;
+
+	/*
+	 * If unable to read devicetree info, use default/reset
+	 * values from hardware.
+	 */
+	sgm->init_data.iprechg = SGM4154X_PRECHRG_I_DEF_UA;
+	sgm->init_data.iterm = SGM4154X_TERMCHRG_I_DEF_UA;
+	sgm->init_data.max_ichg = SGM4154X_ICHRG_I_DEF_UA;
+	sgm->init_data.max_vreg = SGM4154X_VREG_V_DEF_UV;
+	sgm->init_data.vlim = SGM4154X_VINDPM_DEF_UV;
+	sgm->init_data.ilim = SGM4154X_IINDPM_DEF_UA;
+
+	ret = power_supply_get_battery_info(sgm->charger, &bat_info);
+	if (ret)
+		dev_warn(sgm->dev, "sgm4154x: cannot read battery info\n");
+	else {
+		if (bat_info->constant_charge_current_max_ua)
+			sgm->init_data.max_ichg = bat_info->constant_charge_current_max_ua;
+		if (bat_info->constant_charge_voltage_max_uv)
+			sgm->init_data.max_vreg = bat_info->constant_charge_voltage_max_uv;
+		if (bat_info->charge_term_current_ua)
+			sgm->init_data.iterm = bat_info->charge_term_current_ua;
+		if (bat_info->precharge_current_ua)
+			sgm->init_data.iprechg = bat_info->precharge_current_ua;
+
+		power_supply_put_battery_info(sgm->charger, bat_info);
+	}
+
+	ret = device_property_read_u32(sgm->dev,
+				       "input-voltage-limit-microvolt",
+				       &val);
+	if (!ret)
+		sgm->init_data.vlim = clamp(val, SGM4154X_VINDPM_V_MIN_UV,
+					    SGM4154X_VINDPM_V_MAX_UV);
+
+	ret = device_property_read_u32(sgm->dev,
+				       "input-current-limit-microamp",
+				       &val);
+	if (!ret)
+		sgm->init_data.ilim = clamp(val, SGM4154X_IINDPM_I_MIN_UA,
+					    SGM4154X_IINDPM_I_MAX_UA);
+
+	ret = sgm4154x_set_watchdog_timer(sgm, 0);
+	if (ret)
+		return ret;
+
+	ret = sgm4154x_set_prechrg_curr(sgm, sgm->init_data.iprechg);
+	if (ret)
+		return ret;
+
+	ret = sgm4154x_set_chrg_volt(sgm, sgm->init_data.max_vreg);
+	if (ret)
+		return ret;
+
+	ret = sgm4154x_set_term_curr(sgm, sgm->init_data.iterm);
+	if (ret)
+		return ret;
+
+	ret = sgm4154x_set_ichrg_curr(sgm, sgm->init_data.max_ichg);
+	if (ret)
+		return ret;
+
+	ret = sgm4154x_set_input_volt_lim(sgm, sgm->init_data.vlim);
+	if (ret)
+		return ret;
+
+	ret = sgm4154x_set_input_curr_lim(sgm, sgm->init_data.ilim);
+	if (ret)
+		return ret;
+
+	ret = sgm4154x_set_vac_ovp(sgm);
+	if (ret)
+		return ret;
+
+	regmap_update_bits(sgm->regmap,
+			   SGM4154X_CHRG_CTRL_D,
+			   SGM4154X_JEITA_EN,
+			   0);
+
+	regmap_update_bits(sgm->regmap,
+			   SGM4154X_CHRG_CTRL_A,
+			   SGM4154X_IINDPM_INT_MASK,
+			   SGM4154X_IINDPM_INT_MASK);
+
+	regmap_update_bits(sgm->regmap,
+			   SGM4154X_CHRG_CTRL_A,
+			   SGM4154X_VINDPM_INT_MASK,
+			   SGM4154X_VINDPM_INT_MASK);
+
+	/*
+	 * Recharge voltage set to 200 by BSP driver instead of hardware
+	 * default value of 100.
+	 */
+	ret = sgm4154x_set_recharge_volt(sgm, 200);
+
+	return ret;
+}
+
+static const u32 sgm4154x_chg_otg_cur_ua[] = {
+	1200000, 2000000,
+};
+
+static const struct regulator_ops sgm4154x_vbus_ops = {
+	.list_voltage = regulator_list_voltage_linear,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+	.set_current_limit = regulator_set_current_limit_regmap,
+	.get_current_limit = regulator_get_current_limit_regmap,
+};
+
+static const struct regulator_desc sgm4154x_otg_rdesc = {
+	.of_match = "otg-vbus",
+	.name = "otg-vbus",
+	.regulators_node = of_match_ptr("regulators"),
+	.ops = &sgm4154x_vbus_ops,
+	.owner = THIS_MODULE,
+	.type = REGULATOR_VOLTAGE,
+	.min_uV = 4850000,
+	.uV_step = 150000,
+	.n_voltages = 4,
+	.vsel_reg = SGM4154X_CHRG_CTRL_6,
+	.vsel_mask = SGM4154X_BOOSTV,
+	.enable_reg = SGM4154X_CHRG_CTRL_1,
+	.enable_mask = SGM4154X_OTG_EN,
+	.curr_table = sgm4154x_chg_otg_cur_ua,
+	.n_current_limits = ARRAY_SIZE(sgm4154x_chg_otg_cur_ua),
+	.csel_reg = SGM4154X_CHRG_CTRL_2,
+	.csel_mask = SGM4154X_BOOST_LIM,
+};
+
+static int sgm4154x_vbus_regulator_register(struct sgm4154x_device *sgm)
+{
+	struct regulator_config config = {
+		.dev = sgm->dev,
+		.regmap = sgm->regmap,
+		.driver_data = sgm,
+	};
+
+	sgm->otg_rdev = devm_regulator_register(sgm->dev,
+						&sgm4154x_otg_rdesc,
+						&config);
+
+	return PTR_ERR_OR_ZERO(sgm->otg_rdev);
+}
+
+static int sgm4154x_hw_chipid_detect(struct sgm4154x_device *sgm)
+{
+	int ret;
+	int val;
+
+	ret = regmap_read(sgm->regmap, SGM4154X_CHRG_CTRL_B, &val);
+	if (ret)
+		return ret;
+
+	if ((val & SGM4154X_PN_MASK) != SGM4154X_PN_ID)
+		dev_warn(sgm->dev, "sgm4154x device ID mismatch\n");
+
+	return 0;
+}
+
+static void sgm_charger_work(struct work_struct *work)
+{
+	struct sgm4154x_device *sgm =
+		container_of(work,
+			     struct sgm4154x_device,
+			     sgm_delay_work.work);
+
+	sgm4154x_watchdog_timer_reset(sgm);
+	if (sgm->watchdog_enable)
+		queue_delayed_work(sgm->sgm_monitor_wq,
+				   &sgm->sgm_delay_work,
+				   msecs_to_jiffies(1000 * 5));
+}
+
+static int sgm4154x_probe(struct i2c_client *client)
+{
+	const struct i2c_device_id *id = i2c_client_get_device_id(client);
+	struct device *dev = &client->dev;
+	struct sgm4154x_device *sgm;
+	int ret;
+
+	sgm = devm_kzalloc(dev, sizeof(*sgm), GFP_KERNEL);
+	if (!sgm)
+		return -ENOMEM;
+
+	sgm->client = client;
+	sgm->dev = dev;
+
+	strscpy(sgm->model_name, id->name, I2C_NAME_SIZE);
+
+	sgm->regmap = devm_regmap_init_i2c(client, &sgm4154x_regmap_config);
+	if (IS_ERR(sgm->regmap))
+		return dev_err_probe(dev, PTR_ERR(sgm->regmap),
+				     "Failed to allocate register map\n");
+
+	i2c_set_clientdata(client, sgm);
+
+	ret = sgm4154x_hw_chipid_detect(sgm);
+	if (ret)
+		return dev_err_probe(dev, ret, "Unable to read HW ID\n");
+
+	device_init_wakeup(dev, 1);
+
+	sgm->sgm_monitor_wq = devm_alloc_ordered_workqueue(dev, "%s",
+			WQ_MEM_RECLAIM | WQ_FREEZABLE, "sgm-monitor-wq");
+	if (!sgm->sgm_monitor_wq)
+		return -EINVAL;
+
+	ret = sgm4154x_power_supply_init(sgm, dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to register power supply\n");
+
+	ret = sgm4154x_hw_init(sgm);
+	if (ret)
+		return dev_err_probe(dev, ret, "Cannot initialize the chip.\n");
+
+	if (client->irq) {
+		ret = devm_request_threaded_irq(dev, client->irq, NULL,
+						sgm4154x_irq_handler_thread,
+						IRQF_TRIGGER_FALLING |
+						IRQF_ONESHOT,
+						"sgm41542-irq", sgm);
+		if (ret)
+			return ret;
+
+		enable_irq_wake(client->irq);
+	}
+
+	INIT_DELAYED_WORK(&sgm->sgm_delay_work, sgm_charger_work);
+
+	ret = sgm4154x_vbus_regulator_register(sgm);
+	if (ret) {
+		disable_irq_wake(client->irq);
+		return dev_err_probe(dev, ret,
+				     "Unable to register VBUS regulator\n");
+	}
+
+	return 0;
+}
+
+static void sgm4154x_charger_shutdown(struct i2c_client *client)
+{
+	struct sgm4154x_device *sgm = i2c_get_clientdata(client);
+
+	sgm4154x_set_prechrg_curr(sgm, SGM4154X_PRECHRG_I_DEF_UA);
+	sgm4154x_disable_charger(sgm);
+}
+
+static const struct i2c_device_id sgm4154x_i2c_ids[] = {
+	{ "sgm41542" },
+	{ },
+};
+MODULE_DEVICE_TABLE(i2c, sgm4154x_i2c_ids);
+
+static const struct of_device_id sgm4154x_of_match[] = {
+	{ .compatible = "sgmicro,sgm41542", },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, sgm4154x_of_match);
+
+static struct i2c_driver sgm4154x_driver = {
+	.driver = {
+		.name = "sgm4154x-charger",
+		.of_match_table = sgm4154x_of_match,
+	},
+	.probe = sgm4154x_probe,
+	.shutdown = sgm4154x_charger_shutdown,
+	.id_table = sgm4154x_i2c_ids,
+};
+
+module_i2c_driver(sgm4154x_driver);
+
+MODULE_AUTHOR("Xu Shengfei <xsf@rock-chips.com>");
+MODULE_DESCRIPTION("sgm4154x charger driver");
+MODULE_LICENSE("GPL");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
