Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82E51C982DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 12:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PexCK+8iv3YMXRkJWoRjw5wZAmv7Fo+xP0cOuKm6BY=; b=qRR326hOU/z4ca
	u17hIjD/41bteQ1Azz/8ZOVDOMSv3DO80kVEqyKb1X3paqhhNmMdv1z56v76CKkD/J9tHB6zbjU6K
	IO45UTdrWFZXkAOeiwQgzT4seKVGmFJ+MTgie0mZ9pl9xcr6vVJmY3TcnLncUsE33YryfcR2aY9k3
	TXACDECNIExv3V3gO3fP1Doo8wQYl/Ne9sMYEzZ5v21F2+c1aTokFVUa3uwa4FBQgPtoyfquOCLwI
	2hx58TMlLrvLon3B8v9a4FCSssb9k6ng2m69BZ7d5Q4pPFx9GJWeQ+Rsjqd3ihNedi9gbjXskchw/
	UsHaTS0kXMsy+pk24//A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uCi-0000000GF53-3Rji;
	Sat, 19 Sep 2026 12:30:04 +0000
Received: from mail-pj2-x10.google.com ([2607:f8b0:4864:39::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uCa-0000000GF06-1ZJH
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 12:29:57 +0000
Received: by mail-pj2-x10.google.com with SMTP id d9443c01a7336-2d91c22d27dso9833135ad.1
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 05:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789820996; x=1790425796; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JTGehQbUedEzKLkhhaH1lsUDkNzzFr5cL05MJAHVVcA=;
        b=QRUdy359l7V3pPj3KEqbntK3ScXWvg3YbEJ2wYKRCLswd1fxbYboO+UffbpPQSMWkl
         TrCwE23+8dwzE8qmdTByKsyZlyxxKrB9ijc07Q4BhqATpmFOj3HbxOzQaIj0LHFegmog
         ZLZ7gd+EPHkkSTVv956/2aSPLc4OqXbRTTkQI17X/hbKvNatuLiq35JdFvxNDzfusiH/
         QpCOC8L0nUqazCxpxSG0FjUjPPSH009DTSeP2Ao6X/mohzurkpQ1yGChw48kReTlI/nH
         UWpBmItIrXLIi+lcOsNgh0wKSs//EWDg7Hss7HMORzcADdtBM4xu9rgBrbOwBr4gH91R
         Qy2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789820996; x=1790425796;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=JTGehQbUedEzKLkhhaH1lsUDkNzzFr5cL05MJAHVVcA=;
        b=rUEPIyE/AdICoPR9B72fl6CU2eFjyjfgu6bE0MHgs5Hq/80IZTc0HXWfjevIf9dVDS
         jPJpvJIpT/55MQbJTtmq9Tn5rduFomeRJKV8gqrepJOXwiX45aav1oIsI1KuuwgNmXhA
         SZ/jJ1swfLkY3wAwYyJuZlkYtj3yi1yCyn7739ahbGrqTuJvCkRQxRjsDBuHDCGpRwpu
         SaD9ExMwSWIyNiwaFq3Mn68v2qdYMjd7sXtJZxzWqBync2o0A24X4B6gu6x6k8DFWM49
         ThNR2MzRox0YsUAuLsqRb6mdk0hRP4zMXwMrEIX1HkRhcz/EyeYq/Zf17m6Nm2oH/hTO
         DFDA==
X-Forwarded-Encrypted: i=1; AKwUvBxZtk3YZcWGTEEg0yupAuML2yXQFjGo6ayPV5IfaA6Epv86l8pKRF9IClriCMTic9dyM3OT6R46RUg4TzcrRQ==@lists.infradead.org
X-Gm-Message-State: AFuF++m/SgQn5VSjOwlT1ck+h7uIkX+PNpmDfcu8wS45cXhYMDck31kX
	aq06Z1DulcLGX3bxXgqXNk+TJDen9Mf2Bxaxb33rnUDWQV3JbNdkG1zA
X-Gm-Gg: AYBFou2f/4Xa6jFaWjSEEwvhnAF1uBGPwBdFdHZf9RnpvgOORGrwd1m5q32RT2mTa0Y
	96j+Kw624YVAZfdX5XoTYo8okhDnG0hRNbaqILN7u7qbU90oza1SE6Y/GGUVkV8c5XbbTYDjjIz
	NtX9IQWDiNt2PQfofX8m0ugOhjauk5eHaTP0FRvOPm63cGXC/RZ77VhxVq1sjvXPvS3JALQ6YTP
	XptP4znOzBfaue/f3UTvAw6dPRBKnoyxvROOwpUArzAsc6gNWOOAwWGhrIAsVrudsnXnF4r/2CV
	nLtpmUrUesqtsQ1MxKTzs+zNfgFqFRVFTNbwRcqi6yR9VScSDOcdN1SdPRDmRk5faET6rw7ZvxR
	R52wb0CfK6t6bVRPbLeGSQUXVxArC/z9uFCGvs2UlIjae+gqOVhLYB/QNa+7X8bjlb27SCUI03q
	WnwIZkFCK3q36nmhwihiduixXlnc0clYhHVPNdRbHOHfcW1TNMFRUmsFX157EIImC/10eyMXuMC
	FHQH2OtRIE=
X-Received: by 2002:a17:902:d4c4:b0:2d8:d4dd:24c0 with SMTP id d9443c01a7336-2ddb1b97ee1mr97401945ad.21.1789820995660;
        Sat, 19 Sep 2026 05:29:55 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ddc17d7115sm9552155ad.66.2026.09.19.05.29.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:29:55 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>
Cc: mfd@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [RFC PATCH v2 2/3] mfd: rk8xx: Release the power hold GPIOs before powering off
Date: Sat, 19 Sep 2026 20:29:29 +0800
Message-ID: <20260919122930.1418-3-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260909092728.1859-1-yaozhonguwl@gmail.com>
References: <20260909092728.1859-1-yaozhonguwl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_052956_422313_C4C09EA3 
X-CRM114-Status: GOOD (  21.87  )
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

rk808_power_off() writes the PMIC's shutdown bit directly. On boards where
lines driven by the SoC gate the PMIC's power-off path, a shutdown
performed this way does not stick: the rails drop and immediately come
back up, so the board restarts instead of staying off. U-Boot reports the
result as a power-on reset.

Take those lines as an optional GPIO array, hold them asserted while the
system runs and release them - waiting power-hold-delay-ms - before
writing the shutdown bit. Device trees without the property retain the
existing behaviour.

The array is claimed before any child device is registered, so that a
-EPROBE_DEFER from the GPIO provider does not tear down the regulators,
RTC and clocks that devm_mfd_add_devices() has already registered.

Releasing every described line matters: on a Firefly-RK3399 the board
stays off when both lines described for it are released, whereas releasing
GPIO1_D0 while GPIO1_B5 is left asserted makes it come back up.

Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
 drivers/mfd/rk8xx-core.c  | 47 +++++++++++++++++++++++++++++++++++++--
 include/linux/mfd/rk808.h |  4 ++++
 2 files changed, 49 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
index 3dcf6ab..0898db0 100644
--- a/drivers/mfd/rk8xx-core.c
+++ b/drivers/mfd/rk8xx-core.c
@@ -11,6 +11,8 @@
  */
 
 #include <linux/bitfield.h>
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
 #include <linux/interrupt.h>
 #include <linux/mfd/rk808.h>
 #include <linux/mfd/core.h>
@@ -703,6 +705,24 @@ static int rk808_power_off(struct sys_off_data *data)
 	default:
 		return NOTIFY_DONE;
 	}
+
+	/*
+	 * Some boards route "power hold" lines from the SoC into the board's
+	 * power circuitry. They have to be held asserted while the system is
+	 * running and released before the PMIC shutdown request is written:
+	 * with any of them left asserted, the rails drop and then come back
+	 * up. Releasing them here rather than from a separate handler keeps
+	 * the ordering against the I2C write explicit.
+	 */
+	if (rk808->power_hold_gpios) {
+		unsigned int i;
+
+		for (i = 0; i < rk808->power_hold_gpios->ndescs; i++)
+			gpiod_set_value_cansleep(rk808->power_hold_gpios->desc[i], 0);
+
+		msleep(rk808->power_hold_delay_ms);
+	}
+
 	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
 	if (ret)
 		dev_err(rk808->dev, "Failed to shutdown device!\n");
@@ -766,6 +786,7 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
 	struct rk808 *rk808;
 	const struct rk808_reg_data *pre_init_reg;
 	const struct mfd_cell *cells;
+	bool system_power_controller;
 	int dual_support = 0;
 	int nr_pre_init_regs;
 	u32 rst_fun = 0;
@@ -851,6 +872,29 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
 	if (!irq)
 		return dev_err_probe(dev, -EINVAL, "No interrupt support, no core IRQ\n");
 
+	system_power_controller =
+		device_property_read_bool(dev, "system-power-controller") ||
+		device_property_read_bool(dev, "rockchip,system-power-controller");
+
+	/*
+	 * Claim the optional power hold GPIOs before any child device is
+	 * registered. A -EPROBE_DEFER from the GPIO provider at this point
+	 * costs nothing, whereas deferring after devm_mfd_add_devices()
+	 * would tear the freshly registered children down again on every
+	 * retry.
+	 */
+	if (system_power_controller) {
+		rk808->power_hold_gpios =
+			devm_gpiod_get_array_optional(dev, "power-hold",
+						      GPIOD_OUT_HIGH);
+		if (IS_ERR(rk808->power_hold_gpios))
+			return dev_err_probe(dev, PTR_ERR(rk808->power_hold_gpios),
+					     "Failed to get power hold GPIOs\n");
+
+		device_property_read_u32(dev, "power-hold-delay-ms",
+					 &rk808->power_hold_delay_ms);
+	}
+
 	ret = devm_regmap_add_irq_chip(dev, rk808->regmap, irq,
 				       IRQF_ONESHOT | dual_support, -1,
 				       rk808->regmap_irq_chip, &rk808->irq_data);
@@ -872,8 +916,7 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to add MFD devices\n");
 
-	if (device_property_read_bool(dev, "system-power-controller") ||
-	    device_property_read_bool(dev, "rockchip,system-power-controller")) {
+	if (system_power_controller) {
 		ret = devm_register_sys_off_handler(dev,
 				    SYS_OFF_MODE_POWER_OFF_PREPARE, SYS_OFF_PRIO_HIGH,
 				    &rk808_power_off, rk808);
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 7ffc904..eda111e 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -1459,6 +1459,8 @@ enum {
 	RK818_ID = 0x8180,
 };
 
+struct gpio_descs;
+
 struct rk808 {
 	struct device			*dev;
 	struct regmap_irq_chip_data	*irq_data;
@@ -1466,6 +1468,8 @@ struct rk808 {
 	long				variant;
 	const struct regmap_config	*regmap_cfg;
 	const struct regmap_irq_chip	*regmap_irq_chip;
+	struct gpio_descs		*power_hold_gpios;
+	u32				power_hold_delay_ms;
 };
 
 void rk8xx_shutdown(struct device *dev);
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
