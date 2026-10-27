Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB7D606A31F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 08:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dKdbi1q+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=eu7V8ags
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hBEVR5JJWhWBiW1UlbpyoKZLv9hwv7n+X+tRrFwoJoU=; b=dKdbi1q+IJZJxsKxCJIPRVQyMH
	u4l/H4I9LfvD7IcKDcyx1x+HhL5P8Twp7saAdAZKByFZmNQ6TyyZZg8TSzO3YHY+KWa/J9RxdIer+
	Db39WYMBsQzdFsC25FWMcsIPGOmary3jWThRgLbDfft1FTWUpiSwOcnc/ko/cdtrfViKtoo3qeQHW
	7YDLR2h2szVhNTdFHsvY3bytg2GloZRDDyzIupTwYVE+VsmzrEqTaQDYXpzYWMqCjvfriJ0qjVRy/
	TIGwgSyeRFtHLPZBzQ0YqsDipaLzSSTWp5AyNPRCIonhX69rhjgQi+9KDMTUqAw703zKR3tKKZC3S
	A0o3ef2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcoc-00000004531-299V;
	Tue, 27 Oct 2026 08:45:54 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcoZ-000000044zN-0UHh
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 08:45:53 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-886e61fa30fso1597552b3a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 01:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793090750; x=1793695550; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OvmhxSjVHj+d9pk6ymL8DlmUjvcSTE0G8stIvyswo2I=;
        b=eu7V8ags8tLRlv8uDgb+ujcN+DrTmwRqWXFkPrcPQPXyj34qfR1wCFu0IQzoS0U9xO
         cDZAv6/AObBLt87qsrS+R9My482KrSdqzeN9265PF5mhOBNPqpK/WO0cX8vw1kSpPjpm
         bVN8KT3dANOWSEBuBgxpQupO63s2HJTh/8/PTrYoa0QcYT/dbftr3jRhJGvgQSEf5WCe
         9Txv+VMAuLbwnEpLRm+bB5g/CsmUqicBrbuVHaom3eZl2Hv+ufMpXIz5VWRSxcm5E49/
         XSuyBBwvaminUPCCfLRIXkj/sl+n8l3ugbhTGV5Dx3BFtq+cxACmj9Ze0zHHcJmz8FNw
         +07Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793090750; x=1793695550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=OvmhxSjVHj+d9pk6ymL8DlmUjvcSTE0G8stIvyswo2I=;
        b=hvTtyWKhHepXmMof50T1oS8LhQBEpoanG8zOPtVokWyq6jXJ5PjsZ+J9nbRJ8q32El
         r1to81mBP50bAYER1/Md7Uh+1Jb0O2Lb6iLn3pgv1bzD9nbj5CZI92iq0674xOJk1J3Z
         oHfSGo71+OxjPl2Tfy0nHBgMgep3qTAvIIJaJKxs6UC9+CBA/i3xAnrzv+cud4x4KeD6
         fSS5dG4aTJ9RNTLaBMBrVRJ+X8lhY6ZyPtNqmbxOltmk/9/ZUtFuq7HaV7VUh5irxXcX
         8AAY64n6GMurD71uPGVJx43//yZejsOJOTV5XRryUrmUkPEg2UzPrwqn+o78kBWf8J+T
         F2dg==
X-Forwarded-Encrypted: i=1; AKwUvByhtkOxIdRVxdEyy+UkRcR/fAnE859wKqp1/T814A/cYDo/uTnn2EbbuL73/trBW8ordRzgnyruNndx8jH09Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYKSR4JlqNRbsHCRrhvJV/vsmJADSPAYFTIop/S63/6jvI6uu7XY
	66Ncv6wQDaDs3usvY7v9jqiUeFxeJsOAhuCsKDd812gq8Eu5Jp5waBG3
X-Gm-Gg: AYBFou2XZxvTJX/W+cFsyxEuftUHA1nuV/qGz1sSD0vGsKe9sKyqxvHxK3mBNXKU2DA
	7CLIUS11lhY96m7WurGAjOx9+AeUIiyBTOzjmZxTKINfxNx7dCjVTCO+T1Ne7+vWL69GAus5svw
	9CfPecbglvPQ+5ykWZ3vXTT9jNik4P1DhhzKCpYuRgxK1KswDEwbTL5LR7mHo/BKYhCv6ZyG74I
	S8FDir7QkHb4uo1N4AQ9G6U+fTY/oGfEGfyAwjE87E08Mxv0j0BcFrLDQev96mxQQA2McGSEVLm
	uLk+NWXevxgpiMF82dn/kYn0ymMmfhHntxj1rylVQcMqVKvJOkHRVxvgkX6t56kRQ9VjqB+h56X
	lF5a6EKcKGS43uj4Q95wakJBXM5asMRisDVT/9ISxV1Tr9p6/X1138NmXeEUR+3aDzp+OiGiYv6
	vyBYV9RJ5tc2yGi5V3THHY0NxqKVnN4JhCQujJJBly2EkGS9D8V+uNABhkddIOUENvpeOkAuWx7
	FUhI7yuRYTBq3Gd7HRL8cB0Y4LXEw45Ou3K3evOm7rlWUPLcMzPQlztII3u8lpEeMzl
X-Received: by 2002:a05:6a20:ef03:b0:3e2:11bc:6abe with SMTP id adf61e73a8af0-3e7bfa20295mr5839714637.32.1793090750034;
        Tue, 27 Oct 2026 01:45:50 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cdad8f2c611sm267581a12.10.2026.10.27.01.45.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 01:45:49 -0700 (PDT)
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
Subject: [PATCH v5 2/3] mfd: rk8xx: Release the power hold GPIOs before powering off
Date: Tue, 27 Oct 2026 16:45:08 +0800
Message-ID: <20261027084511.1992-3-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20261027084511.1992-1-yaozhonguwl@gmail.com>
References: <20261027084511.1992-1-yaozhonguwl@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_014551_229518_9C62649B 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -2.1 (--)
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
