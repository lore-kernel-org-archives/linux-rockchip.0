Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F675C9832A
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 14:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBEVR5JJWhWBiW1UlbpyoKZLv9hwv7n+X+tRrFwoJoU=; b=1fQJm5wyzZigaE
	WGVmTGrFchpcady86g1tPmyDu5iwweVvh/qlVGZWrV8NHUZceIBF9eybc3b/l8cK0+uHl0Kttj6HX
	sLUzvK6/qw9NenEWFzsQmHfD0vNp5wxaZUhF6VxMqLgX4Q0VOIdWzBV9iN76Nfjd3rRxop+txuFlz
	AyWSsED/UFpzxnqZ1ccnQAohZ8h6qVA0t9fRzKyNtfSlZEpNwXTGIft0DcElBl7ei5aHFTxKO+lsL
	XJoCO25eYjg1WTuxOHdnKiNvCXSw8uqRwugIL59YvrYTS0VreAjjRuCIBY+2OXmkDCUR1UMF21qoQ
	xbFsPcDGbg+jMPChwGJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBYUL-00000003kQU-2VtW;
	Tue, 29 Sep 2026 14:07:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBYUJ-00000003kOi-1o5Z
	for linux-rockchip@bombadil.infradead.org;
	Tue, 29 Sep 2026 14:07:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OvmhxSjVHj+d9pk6ymL8DlmUjvcSTE0G8stIvyswo2I=; b=MPp431U4J+tDHlO1fRfaiMhSR6
	LNdYJ1DWbUNYVt+2kba6ujN17DjOiyz2FUv5EbS/Zi4trDfMYwbuh4u+FRc/e96oXZTlWONBs0SLH
	lyWdESThxLCnDqQh0SudjbKOARTMFEQXhLHnJGrdFmrv3yWqO5/IaFfAoKAgTWGeSkJyEwPuptTQn
	zEYQx7e9O2/wgUwn/hJX/RS3/Aq0xTM8euGRd6uXXEoceaKe2LhD9/sM53xwnJodeM1TJ8wig153G
	MLaD7OhsK2CvBZXNHVq9oAjMFkdYUYAlH2IlPbkPLgndQ2IWvbZxp4PmKUJzKN7/3aBEQeZ6CmAHY
	Qu/TcR6A==;
Received: from mail-pz2-x10.google.com ([2607:f8b0:4864:3b::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBYUG-00000002iaK-1WuR
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Sep 2026 14:07:18 +0000
Received: by mail-pz2-x10.google.com with SMTP id 41be03b00d2f7-cc4c08393b0so1817933a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2026 07:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790690834; x=1791295634; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OvmhxSjVHj+d9pk6ymL8DlmUjvcSTE0G8stIvyswo2I=;
        b=S+Yuv7eSTteqT7xWZJrk72xhebZxXQ0HaotjemlgtODoj+Ab23ExR3dRmVnQeMuevU
         cnHAKWRqiBCbfF17mSx5hQWrrhgb8eeZ6aFRRabqk0Ja25MnmONOS75bMR6q6RVb7Ijt
         bVGYbVENvARilrpSJF271SyfIO/iuTsIo593FCL4Ft6TdMOdUKlTv2CDivNjD3S6ZAhp
         /SiR7GL92AEKBWN67l513PXuAgCu5JxtM7HDPfvU3q+FFDrcrdHL4hCDrz4h3yV74eqB
         4Ik3Q5HgQy5Rf274RwR+jS0Kxm4r9lQlYXNmkiW5SY5AiJNQzVjIBAj5Bd1qw6rhTKAe
         Sjvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790690834; x=1791295634;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=OvmhxSjVHj+d9pk6ymL8DlmUjvcSTE0G8stIvyswo2I=;
        b=DL3wml4dx8eLDKNBlVnOu4khfbCrmao5rRHXv0KLOdF2awOZwoICalbZ6HkqEvwNi1
         w24Lckb3qzeh8F7XvWTFuSGGdCVnJip/hai4+FumuYSzck7SCnPQ4HUFqYfTC6C4+5kC
         NAL1gJYDlgAy+YUfZiCfRO0ZdP7kMJHNvPW1rCYTbJhBJtLVaPQOWGlwH0xoXS29YmFz
         PoJoXlW8HWH4764vSNP91GWvqPHxyYGXCaJq5bUfkj/YqynNPb0o3W20NAmpFru4o3pB
         FSb/ep+knkAXDL/6UINidH5OLACzmqEcEyZfdGecArem8mb5C7YEKeMRiwD5snZMzVsM
         zO/A==
X-Forwarded-Encrypted: i=1; AKwUvBz/aAQraA1WYqXhk+RZHuZH4dv6iNEbthec18z3+OQCfAjUdSQ7V1p80Ep8/qLu0BqPKqsiWOsf+pdRjyAH3g==@lists.infradead.org
X-Gm-Message-State: AFq9FYLvFI8gDQdp2I4BS1BRgAygo2hDpBGgeYE4I4/vKVNjljVYeHxF
	LYT+TVTORJ6o50FOnasAE0htbl+JKVA8JiAYx8bNVGK7wyof0na+V8eb
X-Gm-Gg: AYBFou1KHWNWp/NzRq+FQOBeBFTYdP2BcVO6oU/TIvBd5m0uiBheOju0TLL2paOkgEH
	R8gOI92Voqp6nQCp2f3zqzByvKNqcl3Pkh5BcTaUIzkigj9Fneql9N6OzpOMUcEN4b8gZYF39ni
	19E499wHTVeW9Y6kKb+3W3l/iGRLK+XLhZAaGPDJt5DLgpwWMqv+Ti5KvYZhaEGQAKbQET8NwwF
	20/y0AxGZGU3gafnMCbI3uGmxrmPUcDfs4LN3FcPwqvmFQ+svvenP4WOr9u8AnEtQTKqZqUG6l6
	lBWPCDkbiK4Qf3Pxq2hawV59bsc0rbeOWRR8YGnAoUklyISCo2L0ws11xaSJkTCjrOTqCopUPPl
	f+ne7Ih7uMzw+KkpQ86qyywJxVwmdukjYL7dCQFdtDxpDfEDeOSpS9ivF6xBPgihm2hhlsG/qRU
	ZHjQWfyNHDBAChQnH0Vbhcn/OZytuDiRS+r3Q/4oerO+c957HmZfy+0eeqpUz1nqReEaF2UtRV2
	Zu4kVv/7FM=
X-Received: by 2002:a17:90b:1a84:b0:39e:6c69:34d3 with SMTP id 98e67ed59e1d1-3a098e8814emr14918272a91.55.1790690833528;
        Tue, 29 Sep 2026 07:07:13 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7b0f4ab05sm3526989a12.29.2026.09.29.07.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 07:07:12 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	mfd@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [RFC PATCH v3 2/3] mfd: rk8xx: Release the power hold GPIOs before powering off
Date: Tue, 29 Sep 2026 22:06:47 +0800
Message-ID: <20260929140649.55-3-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260929140649.55-1-yaozhonguwl@gmail.com>
References: <20260929140649.55-1-yaozhonguwl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_150716_656998_FC30F361 
X-CRM114-Status: GOOD (  23.05  )
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

On a Firefly-RK3399 the shutdown stuck when such a line went from high to
low before the shutdown bit was written, and did not when the line was
never driven.

Assisted-by: LLM
Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
 drivers/mfd/rk8xx-core.c  | 49 +++++++++++++++++++++++++++++++++++++--
 include/linux/mfd/rk808.h |  3 +++
 2 files changed, 50 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
index 3dcf6ab..137ab20 100644
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
@@ -703,6 +705,22 @@ static int rk808_power_off(struct sys_off_data *data)
 	default:
 		return NOTIFY_DONE;
 	}
+
+	/*
+	 * Some boards route "power hold" lines from the SoC into the board's
+	 * power circuitry. They have to be held asserted while the system is
+	 * running and released before the PMIC shutdown request is written,
+	 * otherwise the rails can drop and come back up instead of staying
+	 * off. Releasing them here rather than from a separate handler keeps
+	 * the ordering against the I2C write explicit.
+	 */
+	if (rk808->power_hold_gpios) {
+		for (unsigned int line = 0; line < rk808->power_hold_gpios->ndescs; line++)
+			gpiod_set_value_cansleep(rk808->power_hold_gpios->desc[line], 0);
+
+		msleep(rk808->power_hold_delay_ms);
+	}
+
 	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
 	if (ret)
 		dev_err(rk808->dev, "Failed to shutdown device!\n");
@@ -766,6 +784,7 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
 	struct rk808 *rk808;
 	const struct rk808_reg_data *pre_init_reg;
 	const struct mfd_cell *cells;
+	bool system_power_controller;
 	int dual_support = 0;
 	int nr_pre_init_regs;
 	u32 rst_fun = 0;
@@ -851,6 +870,33 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
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
+		rk808->power_hold_gpios = devm_gpiod_get_array_optional(dev, "power-hold",
+									GPIOD_OUT_HIGH);
+		if (IS_ERR(rk808->power_hold_gpios))
+			return dev_err_probe(dev, PTR_ERR(rk808->power_hold_gpios),
+					     "Failed to get power hold GPIOs\n");
+
+		/*
+		 * The settle time is optional. rk808 is zero initialised and
+		 * the binding documents 0 as the default, so an absent property
+		 * means the shutdown request follows the release with no wait.
+		 */
+		device_property_read_u32(dev, "power-hold-delay-ms",
+					 &rk808->power_hold_delay_ms);
+	}
+
 	ret = devm_regmap_add_irq_chip(dev, rk808->regmap, irq,
 				       IRQF_ONESHOT | dual_support, -1,
 				       rk808->regmap_irq_chip, &rk808->irq_data);
@@ -872,8 +918,7 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to add MFD devices\n");
 
-	if (device_property_read_bool(dev, "system-power-controller") ||
-	    device_property_read_bool(dev, "rockchip,system-power-controller")) {
+	if (system_power_controller) {
 		ret = devm_register_sys_off_handler(dev,
 				    SYS_OFF_MODE_POWER_OFF_PREPARE, SYS_OFF_PRIO_HIGH,
 				    &rk808_power_off, rk808);
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 7ffc904..e56d595 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -15,6 +15,7 @@
 #ifndef __LINUX_REGULATOR_RK808_H
 #define __LINUX_REGULATOR_RK808_H
 
+#include <linux/gpio/consumer.h>
 #include <linux/regulator/machine.h>
 #include <linux/regmap.h>
 
@@ -1466,6 +1467,8 @@ struct rk808 {
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
