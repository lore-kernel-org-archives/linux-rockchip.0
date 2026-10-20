Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85424606A31B
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 14:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=INhKawX7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=XSNHTeNB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=qek6znER
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBEVR5JJWhWBiW1UlbpyoKZLv9hwv7n+X+tRrFwoJoU=; b=INhKawX7+pfpNT
	ig9w8w5cTOhTNBntSuMTQu/YmS+OCnSOAAyi7KeStpiepHE52oFFnfDKJzOpkmFlqTOhxZqr+mxIH
	YUDYKiRrHUjpnurbYpFlXaAoEKlTNTMY8likFog0CC+CUkfAcgV9a05UYQ/2Is/6WeNAMxmuyVdhA
	xDXawA3g/OFP/hzCWZQZHcbFm5iBqwFORRjFFyuBaWwKICY88kniERg6laxaLRJXLhmPuGZRQ1ddm
	rDIKteoVAIiGPN5IU4UyXG0WXMFSi39V10RIuXkbf9cqn/T4qMQxcoasgIPPSGb9A9uHFvPpx8MHr
	SOLxwds8+w4MUDvLf17w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJARM-00000009s8s-0sy4;
	Tue, 20 Oct 2026 14:03:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJARK-00000009s7O-0Vo1
	for linux-rockchip@bombadil.infradead.org;
	Tue, 20 Oct 2026 14:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OvmhxSjVHj+d9pk6ymL8DlmUjvcSTE0G8stIvyswo2I=; b=XSNHTeNB4YBaLjiZZ9mukZ5SDn
	7uqLpEUOF/XUvuegJ++MhEsGZMUa/fl4Z0zw1OABA3YoYsiVjMC+/Q2CCPbyJcZrtteZUj896a6Ah
	0ssOs+ZOxjH+l2ZRR8GEuAJkLPaRMzmX4+ut8BP5a+/KODUKjJNhJIe9hlLuVASWJbJSW7wvNqUlM
	UW7LEGuUYGrXH1OjFSJEvQPu7gmnQf0LMmoStFE9SoaAr4pfOylGCM8H8yQf3nRm+3gHRY4mtOiGz
	J1SbIs/OujrbY3r8iBrs5ur7+OYvSbApokpjlorWhSugg0ejqjQwMi9Tk8Jf+/1tXa7YygKg76kN0
	5+YCl22A==;
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xJARH-00000004nZG-1Bzu
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 14:03:41 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2e7e742a2c7so4805565ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 07:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792505016; x=1793109816; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OvmhxSjVHj+d9pk6ymL8DlmUjvcSTE0G8stIvyswo2I=;
        b=qek6znERP3vjuUM4VFI3UaNEJ1M6P/01b/4tGZ+31ihXlsEEhFEwErPBSo1ec2GBgJ
         FjsIfb2Rk8fqEBUMiM7X+7zj2y7Ytx1GmXK0pf31JmbovX2zQ/jgXuXSFyWrzGGminMr
         hwySSYsjUVryVQvOXq3/8XEZMQwqLeoMm7AWnDilONBo7rK7tGlnYpno73CESL55g4DN
         8HHBD99dCBhh2C/v8KvYXLRAGDYp0GzHI8a3o06XFcIxK/dgVDEKNa+6v98BnCQPm+Tr
         H/P7351KUGm8lGxQb228jfDirMvxsbaqmMaT6+XVMlQ+NcmW7IZrTSS0kmdSYldZ1qMH
         3AJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792505016; x=1793109816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=OvmhxSjVHj+d9pk6ymL8DlmUjvcSTE0G8stIvyswo2I=;
        b=VeyzFJ0qAI5mlFMLeiGcpPgpWfcrf51lnFYFGGUOwk5LSiM8ubAfWqRkF7MAuat0J3
         un6fJs8YLb9MgAB3WNs6F12/UREAPyn9FrFpslzR/rP41NsPh4jgunCP3cu6bPpqCpVM
         baYnqAbIHZCG8z7cetLTJY5HbIO3AdYi9bB8Y8iJ7zjpCBtEtAlRt2J89HIcu226lyOT
         Z34WwYSxFo/sHBvUKLxwWT7fk83GrvqhbNE13PQzP8Go05T0wDkbZboUNRT2/Op02JEO
         5n/4qKX8FZHKwtFT4y2iZKbJP79vnJSKia5n8fzHpgIPlbi/Em5tboHvw1kUMRqgtzHc
         oJnw==
X-Forwarded-Encrypted: i=1; AKwUvByCTR0zP4t2L07okZwjgByJ4v582+XYJACCPGE/njB1y2AirT0N/4ptYuSdh7MsMzUiXyMYVuUr8PnmumYR0g==@lists.infradead.org
X-Gm-Message-State: AFq9FYLs+Fsv9eeUl/U+AUxM3NSSoYdiEX/5hKiq2r0ZfrtDohQTi2LP
	ENGJewvMAIYRbh/qXnx0+QPbDV93BdoOV7JD8/p0gyGD3KsvtC9zctzY
X-Gm-Gg: AYBFou0Y1XjYNw7Ra2L0yWg/caFB2ZgnoC8HDhJdhKB/SMlmCvNQPIPt2sOwlb7Lb24
	1iuMEvXisoPyft3tjAwuNm/Dr/RrVOjeLSMx7Po5iPaAIm1IVL37pfSsiSNlrRbvJOMo/yRsmas
	+lFYSLBGLe/sG3it34pSCFQoTomqGzmFi/ErQ5DLcgS7pIvq5sBlhxAqP4UDomLAko/E5Mbt6Io
	TyaUzbPU0iUll83SYK5fDPr1jVzh4w8Go6TXjuxFD8CxW6kig089Snycp95oO4Xg0XqgVdJJhkq
	HV6nd8KiTrOhIGQX0O7gc0/2cg5PZVJATsU+7zRBU/4WzOEoMSnO2/E4Tv8Y8wTuhS3nQIzOWL2
	FN3P4pGe3u1zxGzPSRJms/aafw2i1d5rU/h0ohKd0VLEHLV+lvXwF7ziJSd9uGb+JFDSitNu1l/
	ScLeu2t7v5hD0GmApAJhatxBsuir6kD2IIUkxH4Rwn2UNh6VEbDjPpjEwtENzqJM6p/psyGO3ZN
	U8l46egZWQ=
X-Received: by 2002:a17:902:dacb:b0:2ea:1e40:624 with SMTP id d9443c01a7336-2ea1e400e03mr14007165ad.17.1792505015392;
        Tue, 20 Oct 2026 07:03:35 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ea1502971csm12434865ad.51.2026.10.20.07.03.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 07:03:35 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	Joseph Chen <chenjh@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	mfd@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [PATCH v4 2/3] mfd: rk8xx: Release the power hold GPIOs before powering off
Date: Tue, 20 Oct 2026 22:01:13 +0800
Message-ID: <20261020140127.720-3-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20261020140127.720-1-yaozhonguwl@gmail.com>
References: <20261020140127.720-1-yaozhonguwl@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_150339_507594_7C686D0F 
X-CRM114-Status: GOOD (  21.63  )
X-Spam-Score: -0.2 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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
