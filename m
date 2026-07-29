Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 097ADC54FCD
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 08:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lwy/TJKlXLzkt+JVPua/bz7WD11g6ua8igI1o+UAeiw=; b=GqEwWVuXWQyIhD
	r3bsEUi68u72C9x38uyc87eK2tjPk23UK/DU+39xryOPpDc53g7rVqThZLE6PA01cDQH312cQkGOE
	9yDQFj0WYorcWt4y4krIKCqhQ3vYAs1qqe28T8l71avUPzYdA9aOrPUB0RADPl42a2R4S8XV2QAlO
	rHkhJkM9X4XDVRN27eiBZ3v+pKqM0YNjS+77zKL9bS6tJ8ypQx6xWiFwf4wfwAejKAIv9JzMHPLYM
	G46Eri1ukFrEH8GR5yVDSMYjDqi3uUynq1j7GWL/Hv5h7XDJOLRYRCtwSe34gvQO3RwDIRm0Sl34q
	SUFOsTvhiHCFkUzSyVDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp08R-00000007IHV-0ijw;
	Wed, 29 Jul 2026 08:59:31 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp08J-00000007ICm-2akg
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 08:59:25 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2ceae1ed204so9412685ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 01:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785315563; x=1785920363; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eGKG5vGqvxPWnfZeW+tOz0OJKir7eiBHOsJj6jpBMt0=;
        b=ApNmi5qFCuHml7UtqObpO55jh669zRYDHL3DzB/wvbVTfoH7c0OBiu4zM1lzRujfvL
         SmS0aSy5eLWkfrumIBzLhDqSKbT3m2gOMsbD3SGb4kcujK7u2/YWgppIVLd7nS17CTOL
         sPAC4oGy6gPiLNcNPH7qLyHTGAGKNqanLe4vYdhS4VKappkA8f37DOl1EkFm4NNzjAm7
         weTE0ug+EEISVYjy9RFIqZQYSbba1wwDEZW4gMKie0r4eWXyigoTjD38rKvcuLZQfQ3c
         0QNUIi+0CrSqcTyyORtsMQNBb4RuK3RvxEgjTVMohzpO7C9609ymD1QhzfO9n1ABj/G9
         Sx9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785315563; x=1785920363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=eGKG5vGqvxPWnfZeW+tOz0OJKir7eiBHOsJj6jpBMt0=;
        b=h8/6mWqJ199Py6kii+R3qanHIoggpm8KjARTLS5jQs7P2wsK7/JqeVSizeliezIYg3
         5XT36mzNF2vieE/NrXnrcRiH3gVvr8SqTRDcMbqK2oShLby8pjm+wUKfGQIJo4p+FY80
         5Hv/CpyrUJu3vkaYfSW5WUJ0W+fF/j1xwAj2pdmDBCIsVXngw28mfzdoYX99qMm4mgE0
         dAUt72vVAkCRUHBwmByCTFUuHOARGiqYo/yiOhbQlSw6ljToDAXOFN5eV05ESPK5E0JZ
         V5urEjDmz1nRmjCCVyhrLrDH4xeqxf46HpHsyB/2RIB2iEnqrw7Qu/FY+ZTaa6XHOq71
         ++iw==
X-Forwarded-Encrypted: i=1; AHgh+RrxAHbsckyquek8o+fyP+jza1XQM8WCPUB5mhG2MIGrzidYJKzxV3kMFHsgco/Qf/4mJ5x12arlmP4DN9z6Tw==@lists.infradead.org
X-Gm-Message-State: AOJu0YylHN5u1bEz7DK7uCkmqwvw3gFTHPfIcB1t4U1v13UykzvWKaoF
	8abxF8kyCeTLDqyXQ/SmvQnmPf9RSNpVy8fvF+/X/H6n8E9L7Cgp5lG/
X-Gm-Gg: AR+sD10PD1X075CAtWc5FR27pKEevNv/s0zXWzP1HGVpf5VQGsOCT0mqMSsjrzUocW8
	qYo7HrnKvd0ecnoZjlyzxQxN0GBxpsu3eSqxz/6xKbUyHI1IQB71+dub2HG7Gb9yKzP7dbjcsr/
	21hFCAKhW4grRurGZSB/pyGMb+Al2X7DA53RZ2COhJ8siPW6nKZCJyu+fgsAGnLq5IulNSUyzVD
	zBvt4EsvnBa1rMy0/PpeI9reX823vRuLAO6K1m/1sHedgNaFL5RhNverA/AIgUxatX82IwMXTtI
	s7Bw28UmmvaY5cKyzCsyq1W2J95KyW0dN3HoogIsiOtzAfyzlVnLQNSjOxXOlghqn1EOIi94hHA
	FhXkXO71Z96jicRYFaYnAAzKF5kyTuyP0k+PUU0RkX9tLqXqQq/D8rHrAryzQDHdYwGcWZr078H
	BkaepwVHkcBsCCo25Kmu7c5ZwCmzg3pN79qP2yede5ahilrNVVsar00ee+hgNCKtTbUR8=
X-Received: by 2002:a05:6a21:44c8:b0:3c4:2cf9:2898 with SMTP id adf61e73a8af0-3c8ba5cdf2bmr6772062637.45.1785315562534;
        Wed, 29 Jul 2026 01:59:22 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31504cc9dffsm8179352eec.14.2026.07.29.01.59.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 01:59:22 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v2 2/2] nvmem: rockchip-efuse: add write support with optional VQPS supply gating
Date: Wed, 29 Jul 2026 14:28:56 +0530
Message-ID: <20260729085856.226001-3-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260729085856.226001-1-hrushirajg23@gmail.com>
References: <20260729085856.226001-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_015923_676829_459CA703 
X-CRM114-Status: GOOD (  30.11  )
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

Implement write support for RK3399 eFuse using A_PGM programming mode,
and gate write access on the presence of an optional "vqps" regulator.

eFuse programming requires the VQPS supply (1.8V~1.98V per RK3399 TRM)
to be active only during write operations and kept at 0V during reads.
To support this:
  - Probe uses devm_regulator_get_optional() for the "vqps" supply.
  - If "vqps" is present, the driver registers write support. If absent,
    the driver leaves the device read-only to prevent unsafe write.
  - In rockchip_rk3399_efuse_write(), VQPS is enabled prior to the A_PGM
    strobe programming loop and disabled immediately after.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 drivers/nvmem/rockchip-efuse.c | 178 ++++++++++++++++++++++++++++-----
 1 file changed, 153 insertions(+), 25 deletions(-)

diff --git a/drivers/nvmem/rockchip-efuse.c b/drivers/nvmem/rockchip-efuse.c
index 013e67136f3b..3bde09236c74 100644
--- a/drivers/nvmem/rockchip-efuse.c
+++ b/drivers/nvmem/rockchip-efuse.c
@@ -12,6 +12,7 @@
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/nvmem-provider.h>
+#include <linux/regulator/consumer.h>
 #include <linux/slab.h>
 #include <linux/of.h>
 #include <linux/of_platform.h>
@@ -37,12 +38,16 @@
 #define RK3399_NBYTES		4
 #define RK3399_STROBSFTSEL	BIT(9)
 #define RK3399_RSB		BIT(7)
+#define RK3399_PS		BIT(4)
 #define RK3399_PD		BIT(5)
 #define RK3399_PGENB		BIT(3)
 #define RK3399_LOAD		BIT(2)
 #define RK3399_STROBE		BIT(1)
 #define RK3399_CSB		BIT(0)
 
+/* Program time per TRM Section 21.1: 12us +/- 1us; use 15us for margin */
+#define RK3399_PGM_TIME_US	15
+
 #define REG_EFUSE_CTRL		0x0000
 #define REG_EFUSE_DOUT		0x0004
 
@@ -50,6 +55,17 @@ struct rockchip_efuse_chip {
 	struct device *dev;
 	void __iomem *base;
 	struct clk *clk;
+	struct regulator *vqps;
+};
+
+/**
+ * struct rockchip_efuse_soc_data - per-SoC efuse callbacks
+ * @reg_read:  mandatory read callback
+ * @reg_write: optional write callback; NULL means read-only
+ */
+struct rockchip_efuse_soc_data {
+	int (*reg_read)(void *ctx, unsigned int offset, void *val, size_t bytes);
+	int (*reg_write)(void *ctx, unsigned int offset, void *val, size_t bytes);
 };
 
 static int rockchip_rk3288_efuse_read(void *context, unsigned int offset,
@@ -177,6 +193,7 @@ static int rockchip_rk3399_efuse_read(void *context, unsigned int offset,
 	writel(RK3399_LOAD | RK3399_PGENB | RK3399_STROBSFTSEL | RK3399_RSB,
 	       efuse->base + REG_EFUSE_CTRL);
 	udelay(1);
+
 	while (addr_len--) {
 		writel(readl(efuse->base + REG_EFUSE_CTRL) | RK3399_STROBE |
 		       ((addr_start++ & RK3399_A_MASK) << RK3399_A_SHIFT),
@@ -203,48 +220,128 @@ static int rockchip_rk3399_efuse_read(void *context, unsigned int offset,
 	return 0;
 }
 
-static struct nvmem_config econfig = {
-	.name = "rockchip-efuse",
-	.add_legacy_fixed_of_cells = true,
-	.type = NVMEM_TYPE_OTP,
-	.stride = 1,
-	.word_size = 1,
-	.read_only = true,
+/**
+ * rockchip_rk3399_efuse_write - program fuse bits on RK3399 (A_PGM mode)
+ * @context: pointer to rockchip_efuse_chip
+ * @offset:  byte offset in the efuse space
+ * @val:     data to write (only set bits are programmed; OTP cannot clear)
+ * @bytes:   number of bytes
+ *
+ * Each bit is programmed individually using a hardware-timed STROBE pulse.
+ * The caller must ensure VQPS (1.8V~1.98V) is present during the write.
+ * Per TRM Section 21.6, only one bit is programmed per STROBE cycle.
+ */
+static int rockchip_rk3399_efuse_write(void *context, unsigned int offset,
+				       void *val, size_t bytes)
+{
+	struct rockchip_efuse_chip *efuse = context;
+	u8 *buf = val;
+	int ret;
+
+	ret = clk_prepare_enable(efuse->clk);
+	if (ret < 0) {
+		dev_err(efuse->dev, "failed to prepare/enable efuse clk\n");
+		return ret;
+	}
+
+	ret = regulator_enable(efuse->vqps);
+	if (ret < 0) {
+		dev_err(efuse->dev, "failed to enable vqps regulator\n");
+		clk_disable_unprepare(efuse->clk);
+		return ret;
+	}
+
+	while (bytes--) {
+		u8 byte = *buf++;
+		int bit;
+
+		for (bit = 0; bit < 8; bit++) {
+			u32 addr, ctrl;
+
+			if (!(byte & BIT(bit)))
+				continue;
+
+			addr = offset * 8 + bit;
+
+			/*
+			 * A_PGM mode (TRM table 23-3):
+			 * CSB=L, PGENB=L, PS=H, PD=L, LOAD=L, RSB=L,
+			 * STROBSFTSEL=H (software controls STROBE)
+			 * STROBE is asserted separately below.
+			 */
+			ctrl = RK3399_STROBSFTSEL | RK3399_PS |
+			       ((addr & RK3399_A_MASK) << RK3399_A_SHIFT);
+
+			writel(ctrl, efuse->base + REG_EFUSE_CTRL);
+			udelay(1);
+
+			/* Assert STROBE to program the selected bit */
+			writel(ctrl | RK3399_STROBE, efuse->base + REG_EFUSE_CTRL);
+			udelay(RK3399_PGM_TIME_US);
+
+			/* Deassert STROBE */
+			writel(ctrl, efuse->base + REG_EFUSE_CTRL);
+			udelay(1);
+		}
+
+		offset++;
+	}
+
+	/* Return to standby mode: PD=H, CSB=H */
+	writel(RK3399_PD | RK3399_CSB, efuse->base + REG_EFUSE_CTRL);
+
+	regulator_disable(efuse->vqps);
+	clk_disable_unprepare(efuse->clk);
+
+	return 0;
+}
+
+static const struct rockchip_efuse_soc_data rk3288_efuse_data = {
+	.reg_read = rockchip_rk3288_efuse_read,
+};
+
+static const struct rockchip_efuse_soc_data rk3328_efuse_data = {
+	.reg_read = rockchip_rk3328_efuse_read,
+};
+
+static const struct rockchip_efuse_soc_data rk3399_efuse_data = {
+	.reg_read  = rockchip_rk3399_efuse_read,
+	.reg_write = rockchip_rk3399_efuse_write,
 };
 
 static const struct of_device_id rockchip_efuse_match[] = {
 	/* deprecated but kept around for dts binding compatibility */
 	{
 		.compatible = "rockchip,rockchip-efuse",
-		.data = (void *)&rockchip_rk3288_efuse_read,
+		.data = &rk3288_efuse_data,
 	},
 	{
 		.compatible = "rockchip,rk3066a-efuse",
-		.data = (void *)&rockchip_rk3288_efuse_read,
+		.data = &rk3288_efuse_data,
 	},
 	{
 		.compatible = "rockchip,rk3188-efuse",
-		.data = (void *)&rockchip_rk3288_efuse_read,
+		.data = &rk3288_efuse_data,
 	},
 	{
 		.compatible = "rockchip,rk3228-efuse",
-		.data = (void *)&rockchip_rk3288_efuse_read,
+		.data = &rk3288_efuse_data,
 	},
 	{
 		.compatible = "rockchip,rk3288-efuse",
-		.data = (void *)&rockchip_rk3288_efuse_read,
+		.data = &rk3288_efuse_data,
 	},
 	{
 		.compatible = "rockchip,rk3368-efuse",
-		.data = (void *)&rockchip_rk3288_efuse_read,
+		.data = &rk3288_efuse_data,
 	},
 	{
 		.compatible = "rockchip,rk3328-efuse",
-		.data = (void *)&rockchip_rk3328_efuse_read,
+		.data = &rk3328_efuse_data,
 	},
 	{
 		.compatible = "rockchip,rk3399-efuse",
-		.data = (void *)&rockchip_rk3399_efuse_read,
+		.data = &rk3399_efuse_data,
 	},
 	{ /* sentinel */},
 };
@@ -252,20 +349,26 @@ MODULE_DEVICE_TABLE(of, rockchip_efuse_match);
 
 static int rockchip_efuse_probe(struct platform_device *pdev)
 {
-	struct resource *res;
-	struct nvmem_device *nvmem;
+	const struct rockchip_efuse_soc_data *soc_data;
 	struct rockchip_efuse_chip *efuse;
-	const void *data;
+	struct nvmem_device *nvmem;
+	struct nvmem_config econfig = {
+		.name              = "rockchip-efuse",
+		.add_legacy_fixed_of_cells = true,
+		.type              = NVMEM_TYPE_OTP,
+		.stride            = 1,
+		.word_size         = 1,
+	};
+	struct resource *res;
 	struct device *dev = &pdev->dev;
 
-	data = of_device_get_match_data(dev);
-	if (!data) {
+	soc_data = of_device_get_match_data(dev);
+	if (!soc_data) {
 		dev_err(dev, "failed to get match data\n");
 		return -EINVAL;
 	}
 
-	efuse = devm_kzalloc(dev, sizeof(struct rockchip_efuse_chip),
-			     GFP_KERNEL);
+	efuse = devm_kzalloc(dev, sizeof(*efuse), GFP_KERNEL);
 	if (!efuse)
 		return -ENOMEM;
 
@@ -278,12 +381,36 @@ static int rockchip_efuse_probe(struct platform_device *pdev)
 		return PTR_ERR(efuse->clk);
 
 	efuse->dev = dev;
+
 	if (of_property_read_u32(dev->of_node, "rockchip,efuse-size",
 				 &econfig.size))
 		econfig.size = resource_size(res);
-	econfig.reg_read = data;
-	econfig.priv = efuse;
-	econfig.dev = efuse->dev;
+
+	econfig.reg_read = soc_data->reg_read;
+	econfig.priv     = efuse;
+	econfig.dev      = dev;
+
+	/*
+	 * Enable write support only when a VQPS programming supply is
+	 * described in the device tree. Its presence is the hardware
+	 * declaration that irreversible OTP programming is intended on
+	 * this board. VQPS must be 0V during reads (the regulator is
+	 * only enabled inside the write callback).
+	 */
+	if (soc_data->reg_write) {
+		efuse->vqps = devm_regulator_get_optional(dev, "vqps");
+		if (!IS_ERR(efuse->vqps)) {
+			econfig.reg_write = soc_data->reg_write;
+		} else if (PTR_ERR(efuse->vqps) == -ENODEV) {
+			efuse->vqps = NULL;
+			dev_dbg(dev, "vqps supply absent, write support disabled\n");
+		} else {
+			return PTR_ERR(efuse->vqps);
+		}
+	}
+
+	econfig.read_only = !econfig.reg_write;
+
 	nvmem = devm_nvmem_register(dev, &econfig);
 
 	return PTR_ERR_OR_ZERO(nvmem);
@@ -300,3 +427,4 @@ static struct platform_driver rockchip_efuse_driver = {
 module_platform_driver(rockchip_efuse_driver);
 MODULE_DESCRIPTION("rockchip_efuse driver");
 MODULE_LICENSE("GPL v2");
+
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
