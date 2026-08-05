Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48EE4C2A09B
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 02:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psvt4NCGPyJSqXOV9kbNyz2GVdE58NOigrgcP+zuoNI=; b=jgv98J2pFJf63z
	xuhZCvJXIzh9xG9jmOM0ba0HDSbaAOdp6WMpa21HipcmgrAoRdaAPuwWP/srYIZRxMqGeBbk/rH9j
	AXyveRzTCp0/0jj/U+rxPPzH/zotBXDUP+In5Ao/SbyCPphFFEB0r8TMfU3QjtQ9e31CqABRaLXJ8
	uYKH4Ei8ELaM7l8Iyyp/gOKz/dRzLFxHcqX3Z1v4gaPqJpGtx3Qetg/i8liOgoMKPAFaEfb2PxmoC
	SWaEuVEjuCq6LnqBtb8t0gkoQ1lczSEC1Ql0UrVSL+HMMxEfp2D2ZJg+98YzBrVblAMDvLdvwISbs
	7Pit6nU2UbqnQS5rzdnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrRMz-000000037Qj-0caf;
	Wed, 05 Aug 2026 02:28:37 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrRMv-000000037Kk-0FpF
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 02:28:34 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7eb5bdb50fcso384294a34.1
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Aug 2026 19:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785896912; x=1786501712; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DteK7ahJcWyyf0jNlGCUan3gdCG+7fB8ZCtaU7OCkNA=;
        b=R1AroOTbI6Zd64YOxhiaL4t9xfRNLuExepY2zqwRUptpi/uOtLANW2/IydtqTauICH
         uG5IIrJqBEOFUtHfAzGukGjf7ANh6vxQ/iif23j45HFCPJb9RjfKcS140Fdsd+YMJcJn
         CtpOKBdmdwcSN2nW4mcJwYI1S/HJaDKfHjiBfC7/WEei6y5k1bhanx2j/6PM40uNfXLq
         PmLNWhw8h1QfDW/Kw++V5xn/3+puRNoZz0SOMCUk9XnXaG2+25anWrTk1J5tP5RRK9pH
         GrCevycvymPTcNjZ4Ad1t7RzYsHoRqSZnV/DlcfqZZ3UhOoKe6LnpNlN/NNnvPFVfXQZ
         h5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785896912; x=1786501712;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DteK7ahJcWyyf0jNlGCUan3gdCG+7fB8ZCtaU7OCkNA=;
        b=ViscpVf3qBrMBZVTyscOGqyVRG+gC57WzsVq2mwEyLIExLDEXWrHVA4tb0kfR0VMjI
         q9MszTe3UmXGJvbPSF9ZegoVPXxEXw7dkwpy8Gae4j3CEEC4708r2wGu/YMBVQQj2ym2
         CMKqE35DdFp/Sa9acoVg0q2D4VqkE+iy9fXdtyEieAyH4mc4WiQrGtnYz+Rp3pg8c7WC
         VqpihkaJHCEdFyikb0n3Sqny7zUSwVle6XKpjfgvtNSayMAmKlmHoUycJFk+fMLUftoc
         pwREl/U/DPELceTUkm71odmTPmrgfwyGc4TpzUB9760EexwIwqa9o2yr+I/mKZzGy72Z
         B+wQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp0b0Mzks/WHjIMPSqEeVzWe7+3DuVuSptN28Cg9ov3Er8YdUQ8SCKoE4lfS7IwqiDhClYFI+zzTbPUiVd3OQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5GDjQdTcRA0Mb18eGGjfs2ssgLsbHnSp8tplgr+GFsS9r5QNG
	I/3stL3wQhw4z4k3H/oAYTh0mqslsUvbQmxe/k76ZKnga7PyGw6P9t1o
X-Gm-Gg: AR+sD10fey6UkpIh6GWUrtN+EhLlAHFqorKbKDQfBZwqlAm/U0w8LX+w5eaKjafT4TE
	qdKaa44kqglh4KJhM4Xmez1wo7HAHpltjfsoG5GnvhrNZDErzcmg5XQoZtw0dAmKrFgYwQsCTC7
	dbuKhaa//ZKkE6DO415GUKt7kSeUKRAbopbsRGUgoHYZGO5V8yif74wfas7cwtvA8vKNykLfrkt
	V6GkN/ITfuTmu4uVIEnwb3QykdcpU5VxO+NvO2uYCyOve1C7fTr6koiLxvT1ioR/Z09/m39AQNe
	cnmYMZ4Zg+xvXqeHvErY1xfAgnwZCcEYO5fQBmvEAjp1cVT/kxeouiEQ5gSBgsBjM4Qt9W2xi4S
	FrOh5IW/FNR1v0Eoyh7TJ+HUk9AnG1Gd30f9kdBOFMy2sVmPcsURKiQxZsVKbK6qiWWv6b64QV/
	ruR0B8HY5+AqKV1ydZaxlwIMGwzFQlpMqLLRQJeCeyp/peM+82F8UlCgFYpGoEDvQ2+JWwcQ82y
	CloaosDgkYkLShG/i67LZ1vjYgmyA9K1I6QQgRZRynS0gtYJ6sC9DoUxTKpn+agEw4trS//mTLX
	jZR5VW2aCFIXEG34Ovv78JxZ30hjVlsK9ORiFqpHb+wSLeZPlsSo1GRHou9jyuT+jpk+RUPZOFG
	/XOEgyz2VCPaire0X
X-Received: by 2002:a05:6830:290a:b0:7f1:ddf1:c731 with SMTP id 46e09a7af769-7f1e5f6ca2dmr2589356a34.13.1785896911128;
        Tue, 04 Aug 2026 19:28:31 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f1df565d37sm2078153a34.16.2026.08.04.19.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 19:28:30 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Tue, 04 Aug 2026 20:27:01 -0600
Subject: [PATCH net-next v2 3/8] mfd: add X-Powers AC200 support
MIME-Version: 1.0
Message-Id: <20260804-submit-acx00-of-dynamic-v1-v2-3-3eef49ff1d8c@gmail.com>
References: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
In-Reply-To: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_192833_155134_266E95D1 
X-CRM114-Status: GOOD (  24.86  )
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

The X-Powers AC200 is a mixed-signal companion IC with a paged register
map accessed over I2C.

Enable the package supplies and input clock, prevent the clock rate from
changing, and apply the vendor settling delays around common reset.
Initialize the paged regmap, report the chip and package revision, and
instantiate the Ethernet PHY control child when firmware describes it.

Cache only the common page selector. Individual function resets can
invalidate other registers without regmap's knowledge, so all functional
registers remain volatile.

The AC200 and its children cannot initiate DMA. Mark the parent as
DMA-incapable before adding the child. Register the common-reset action
before the MFD child so managed teardown removes the child before
resetting its parent, and also reset the chip during system shutdown.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 drivers/mfd/Kconfig  |  12 +++
 drivers/mfd/Makefile |   1 +
 drivers/mfd/ac200.c  | 207 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 220 insertions(+)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 763ce6a34782..3360c9b86be8 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -205,6 +205,18 @@ config MFD_AC100
 	  This driver include only the core APIs. You have to select individual
 	  components like codecs or RTC under the corresponding menus.
 
+config MFD_AC200
+	tristate "X-Powers AC200"
+	depends on I2C
+	depends on OF
+	select MFD_CORE
+	select REGMAP_I2C
+	help
+	  Support for the X-Powers AC200 mixed-signal companion IC. The AC200
+	  contains audio, video, RTC and Fast Ethernet PHY functions and is
+	  co-packaged with some Allwinner H6 and H616 SoCs. This driver provides
+	  the shared register access used by the individual function drivers.
+
 config MFD_AXP20X
 	tristate
 	select MFD_CORE
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index dd4bb7e77c33..890e76a9ad00 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -150,6 +150,7 @@ obj-$(CONFIG_MFD_DA9052_SPI)	+= da9052-spi.o
 obj-$(CONFIG_MFD_DA9052_I2C)	+= da9052-i2c.o
 
 obj-$(CONFIG_MFD_AC100)		+= ac100.o
+obj-$(CONFIG_MFD_AC200)		+= ac200.o
 obj-$(CONFIG_MFD_AXP20X)	+= axp20x.o
 obj-$(CONFIG_MFD_AXP20X_I2C)	+= axp20x-i2c.o
 obj-$(CONFIG_MFD_AXP20X_RSB)	+= axp20x-rsb.o
diff --git a/drivers/mfd/ac200.c b/drivers/mfd/ac200.c
new file mode 100644
index 000000000000..dd31205fe698
--- /dev/null
+++ b/drivers/mfd/ac200.c
@@ -0,0 +1,207 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * MFD core driver for the X-Powers AC200
+ *
+ * Copyright (C) 2019 Jernej Skrabec <jernej.skrabec@gmail.com>
+ * Copyright (C) 2026 James Hilliard <james.hilliard1@gmail.com>
+ *
+ * Based on the AC100 driver:
+ * Copyright (C) 2016 Chen-Yu Tsai
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/i2c.h>
+#include <linux/mfd/core.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+
+#define AC200_SYS_VERSION_REG			0x0000
+#define AC200_SYS_VERSION_PACKAGE_MASK		GENMASK(15, 14)
+#define AC200_SYS_VERSION_CHIP_MASK		GENMASK(11, 0)
+
+#define AC200_SYS_CONTROL_REG			0x0002
+#define AC200_SYS_CONTROL_CHIP_RESET_DEASSERT	BIT(0)
+
+/* Interface register accessible from every register page. */
+#define AC200_TWI_REG_ADDR_H	0x00fe
+#define AC200_MAX_REG		0xa1f2
+
+struct ac200 {
+	struct regmap *regmap;
+};
+
+static const char * const ac200_supplies[] = {
+	"ac-ldoin",
+	"ephy-vcc",
+	"rtc-vcc",
+	"tv-vcc",
+};
+
+static const struct regmap_range_cfg ac200_range_cfg[] = {
+	{
+		.range_max = AC200_MAX_REG,
+		.selector_reg = AC200_TWI_REG_ADDR_H,
+		.selector_mask = 0xff,
+		.window_len = 256,
+	},
+};
+
+/*
+ * Each AC200 sub-block can reset independently, invalidating its register
+ * contents without regmap's knowledge. Cache only the common page selector;
+ * this avoids a selector read-modify-write for every access on the same page
+ * without ever returning stale functional-register values.
+ */
+static bool ac200_volatile_reg(struct device *dev, unsigned int reg)
+{
+	return reg != AC200_TWI_REG_ADDR_H;
+}
+
+static const struct regmap_config ac200_regmap_config = {
+	.name = "ac200",
+	.reg_bits = 8,
+	.reg_stride = 2,
+	.val_bits = 16,
+	.ranges = ac200_range_cfg,
+	.num_ranges = ARRAY_SIZE(ac200_range_cfg),
+	.max_register = AC200_MAX_REG,
+	.volatile_reg = ac200_volatile_reg,
+	.cache_type = REGCACHE_MAPLE,
+};
+
+static const struct mfd_cell ac200_cells[] = {
+	{
+		.name = "ac200-ephy-ctl",
+		.of_compatible = "x-powers,ac200-ephy-ctl",
+	},
+};
+
+static int ac200_disable(struct ac200 *ac200)
+{
+	return regmap_write(ac200->regmap, AC200_SYS_CONTROL_REG, 0);
+}
+
+static void ac200_disable_action(void *data)
+{
+	ac200_disable(data);
+}
+
+static int ac200_probe(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	struct device_node *ephy_node __free(device_node) = NULL;
+	struct ac200 *ac200;
+	struct clk *clk;
+	unsigned int version;
+	int ret;
+
+	ac200 = devm_kzalloc(dev, sizeof(*ac200), GFP_KERNEL);
+	if (!ac200)
+		return -ENOMEM;
+
+	ret = devm_regulator_bulk_get_enable(dev, ARRAY_SIZE(ac200_supplies),
+					     ac200_supplies);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to enable supplies\n");
+
+	clk = devm_clk_get_enabled(dev, NULL);
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk),
+				     "failed to enable input clock\n");
+
+	ret = devm_clk_rate_exclusive_get(dev, clk);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to lock clock rate\n");
+
+	ac200->regmap = devm_regmap_init_i2c(client, &ac200_regmap_config);
+	if (IS_ERR(ac200->regmap))
+		return dev_err_probe(dev, PTR_ERR(ac200->regmap),
+				     "failed to initialize regmap\n");
+
+	i2c_set_clientdata(client, ac200);
+
+	/*
+	 * No minimum delay is documented. Match the vendor driver's 40 ms delay
+	 * before its first AC200 register access after enabling the input clock.
+	 */
+	msleep(40);
+
+	ret = regmap_read(ac200->regmap, AC200_SYS_VERSION_REG, &version);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "failed to read chip version\n");
+
+	dev_info(dev, "AC200 revision %#lx in package %lu\n",
+		 FIELD_GET(AC200_SYS_VERSION_CHIP_MASK, version),
+		 FIELD_GET(AC200_SYS_VERSION_PACKAGE_MASK, version));
+
+	/* Run after the MFD children have been removed. */
+	ret = devm_add_action_or_reset(dev, ac200_disable_action, ac200);
+	if (ret)
+		return ret;
+
+	ret = regmap_write(ac200->regmap, AC200_SYS_CONTROL_REG, 0);
+	if (ret)
+		return ret;
+
+	ret = regmap_write(ac200->regmap, AC200_SYS_CONTROL_REG,
+			   AC200_SYS_CONTROL_CHIP_RESET_DEASSERT);
+	if (ret)
+		return ret;
+
+	/* Match the settling interval used by the vendor initialization. */
+	usleep_range(1000, 2000);
+
+	/* Neither the AC200 nor its child devices can perform DMA. */
+	dev->coherent_dma_mask = 0;
+	dev->dma_mask = &dev->coherent_dma_mask;
+	ephy_node = of_get_compatible_child(dev->of_node,
+					    "x-powers,ac200-ephy-ctl");
+	if (!ephy_node)
+		return 0;
+
+	ret = devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE, ac200_cells,
+				   ARRAY_SIZE(ac200_cells), NULL, 0, NULL);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to add MFD devices\n");
+
+	return 0;
+}
+
+static void ac200_shutdown(struct i2c_client *client)
+{
+	struct ac200 *ac200 = i2c_get_clientdata(client);
+
+	ac200_disable(ac200);
+}
+
+static const struct of_device_id ac200_of_match[] = {
+	{ .compatible = "x-powers,ac200" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, ac200_of_match);
+
+static const struct i2c_device_id ac200_i2c_ids[] = {
+	{ "ac200" },
+	{ }
+};
+MODULE_DEVICE_TABLE(i2c, ac200_i2c_ids);
+
+static struct i2c_driver ac200_driver = {
+	.driver = {
+		.name = "ac200",
+		.of_match_table = ac200_of_match,
+	},
+	.probe = ac200_probe,
+	.shutdown = ac200_shutdown,
+	.id_table = ac200_i2c_ids,
+};
+module_i2c_driver(ac200_driver);
+
+MODULE_AUTHOR("James Hilliard <james.hilliard1@gmail.com>");
+MODULE_DESCRIPTION("X-Powers AC200 MFD core driver");
+MODULE_LICENSE("GPL");

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
