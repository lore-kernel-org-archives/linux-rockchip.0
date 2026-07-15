Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4707C44501
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 11:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dIwmjEp6sYmB/PPMh4UbLv97evrDBhwvZmtnJ1FJfU=; b=Zggv0EeUezS00M
	hxu/Vg1+VFDPJOqdCbGA8dHZTJWifGbL6kLPSr9zvJwgJy2u1O1n6TH2lB//H/f+wv6I/R6k+LdAT
	ok4MSIMM3gHj0ClT2NsaFr/BzvQvdXKnv9iL1wh2+h6U/BjDxpof4j1xP3dgAvC6DTOMR9k1rfsf6
	3QIHSg2/6GArAIkBDO+sGZuXKE8WxqH33sR2n84cq/UDwhT7BhU8kQ4YjRlsqes3z9dmkeQI0YSoa
	SKwvMl9QSdGtunLa2H2yBoO8XmQWIZOwxh5Iv0ygBrFXLpoEBENKB7tadYWQs6LJYlIUKqvaYqBR+
	/kmPHR9ddv9SG3VW9PYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjxMr-0000000EWRv-1c8I;
	Wed, 15 Jul 2026 11:01:33 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjxMp-0000000EWPg-10Wz
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jul 2026 11:01:32 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-81ed2a00f12so8367887b3.2
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jul 2026 04:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784113290; x=1784718090; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ppclwzo4aR4SJ35tDOFzdwKD6tEwsXd178wGH4GBW3o=;
        b=M4uJy3kWM8e1G2n8d/ZDw/eZks9m/blm9ZEIBBdFBvw3/wBcgPrrAVtdeY+S7/afhs
         DeXZTRVSj3A5xyWeU94vv7yCo3N4YLA0bGXajXIw2sEZ+/3KVA5YhMrSQbnqAy33pRuc
         xtew3vF3xAFi2vSDqwkBrtw/Sewds0j41m+0e4ExYOa0HYsJSHwjUmHvdFyovNGh32o7
         C8LGn0Tif35NeHg6a+u3Kadjt6mZTeRmKA+QYYL2vV4YNsO7BJw9MbX1n+jvt2gpf+OV
         AHdEsF5YcV3DCFzsRTTVr9fNz4l2jjRX2yVg5SBwCIYxDtwoy21EpYQrZ6waQo+Of6kw
         kt8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784113290; x=1784718090;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ppclwzo4aR4SJ35tDOFzdwKD6tEwsXd178wGH4GBW3o=;
        b=rkB46++uskFeiIeaEypij3h/UkjDU/gNKn4z9gPLOsGN7PJnmuUYxBOpNJ/HuqIT5x
         IwgkmIWAU/Qah3O4Jk98cgDSBrt8NAcHUbsjWUQ+KYbjPJ/xFTM/yJCpY8lk7QasWif9
         2FM6dSHsrmwr166k6mqi6uWG2UoQAJU+1lGpd2et9W4cyZ/y6MU8rRdCKBosncWVGzdX
         8d8KFutY0cEu8oyRmq8B8/HQVymCUWsYgQdZ4n8nhnwOT4gz20RjZNZ/iTun31vXOqLK
         gGbCXLrE3MZROafQK3ghXhxXm4pJ10VMrMBFKYX119qxd5GI3V9pDd41fRfBwh8Nq1r5
         jY+g==
X-Forwarded-Encrypted: i=1; AHgh+Rq7MM8dnpK1jRToS7bgu+4sjWg/vkBkkvDQmUiQBwy3hzHIiuGjKt20bio88UHDbcoDa5UcEvfxwzwQIcvRUA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2bdC/68+gvUQCy5wzv2+0O5/P0nug4uVOWqDrPim1uIfhCq5Z
	Yg6dkpKqso/9D2Q9ooAM7/bQT+S3ROfMT0ROQ4MHIgv6fKrgYfirqM8r
X-Gm-Gg: AfdE7cmlPBwn4pwf33hWg4YtNrJrqNLjsZe8AUrsIcUer84i0wcdmeg1YmGfluNfWMA
	gvyi/pTqigo93ih7WTfXZMNH+UCEjm+KpODDlXSIbEg0cKT/2DMA0pOvQ4szud84DiM7Y9e8ToF
	ZkXaVx90i7zh1WcNrvwvarVKSKF1UJklSfB0MTK2Qzv4dUTtfDTaQCb5t3GlPYxIHmDpBQg3A8y
	kLVZQD2y3sIaQ4Eu1Rir74iGGS1KH76YLffb/mgw4NCYdWpbAM3wEOKIMniKQQrI0gQpNlh4u7e
	BtREDCx6Yp033jRyFcF/6KnRdtFviZ9JOhCmUKECyt02F8OgYbAlRsCI4YnpMBynU0tNSahxVIO
	n8dHYSR6Hsj6giNEXqOQfOJlLhE56CGEcfuHNsLjvzakzB6dwv+VYqp/WhBs41ZEv9mHLuxvob+
	8afgKG5iY0+ymN+4IW5LYI
X-Received: by 2002:a05:690e:2002:b0:667:8b90:2ee5 with SMTP id 956f58d0204a3-668078a5e8fmr3034463d50.96.1784113289880;
        Wed, 15 Jul 2026 04:01:29 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6681fbd8c5esm59066d50.3.2026.07.15.04.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 04:01:29 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: srini@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 2/2] nvmem: rockchip-efuse: add write support for RK3399
Date: Wed, 15 Jul 2026 16:31:07 +0530
Message-ID: <20260715110107.409204-3-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260715110107.409204-1-hrushirajg23@gmail.com>
References: <20260715110107.409204-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_040131_318989_A22A0BB4 
X-CRM114-Status: GOOD (  24.04  )
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

Implement rockchip_rk3399_efuse_write() using the Array Program Mode
(A_PGM) as described in the RK3399 TRM. Each bit is programmed
individually by asserting STROBE for 15us with the target bit address
set in the EFUSE_CTRL register.

Introduce struct rockchip_efuse_soc_data to hold both reg_read and
reg_write callbacks per SoC, replacing the bare function pointer
previously stored in of_device_id.data. Move nvmem_config to the
probe stack so read_only can be set per-device based on whether a
write callback is provided.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 drivers/nvmem/rockchip-efuse.c | 152 +++++++++++++++++++++++++++------
 1 file changed, 127 insertions(+), 25 deletions(-)

diff --git a/drivers/nvmem/rockchip-efuse.c b/drivers/nvmem/rockchip-efuse.c
index 013e67136f3b..19eb61380ea4 100644
--- a/drivers/nvmem/rockchip-efuse.c
+++ b/drivers/nvmem/rockchip-efuse.c
@@ -37,12 +37,16 @@
 #define RK3399_NBYTES		4
 #define RK3399_STROBSFTSEL	BIT(9)
 #define RK3399_RSB		BIT(7)
+#define RK3399_PS		BIT(4)
 #define RK3399_PD		BIT(5)
 #define RK3399_PGENB		BIT(3)
 #define RK3399_LOAD		BIT(2)
 #define RK3399_STROBE		BIT(1)
 #define RK3399_CSB		BIT(0)

+#define RK3399_PGM_TIME_US	15
+
 #define REG_EFUSE_CTRL		0x0000
 #define REG_EFUSE_DOUT		0x0004
 
@@ -52,6 +56,16 @@ struct rockchip_efuse_chip {
 	struct clk *clk;
 };
 
+/**
+ * struct rockchip_efuse_soc_data - per-SoC efuse callbacks
+ * @reg_read:  mandatory read callback
+ * @reg_write: optional write callback; NULL means read-only
+ */
+struct rockchip_efuse_soc_data {
+	int (*reg_read)(void *ctx, unsigned int offset, void *val, size_t bytes);
+	int (*reg_write)(void *ctx, unsigned int offset, void *val, size_t bytes);
+};
+
 static int rockchip_rk3288_efuse_read(void *context, unsigned int offset,
 				      void *val, size_t bytes)
 {
@@ -177,6 +191,7 @@ static int rockchip_rk3399_efuse_read(void *context, unsigned int offset,
 	writel(RK3399_LOAD | RK3399_PGENB | RK3399_STROBSFTSEL | RK3399_RSB,
 	       efuse->base + REG_EFUSE_CTRL);
 	udelay(1);
+
 	while (addr_len--) {
 		writel(readl(efuse->base + REG_EFUSE_CTRL) | RK3399_STROBE |
 		       ((addr_start++ & RK3399_A_MASK) << RK3399_A_SHIFT),
@@ -203,48 +218,120 @@ static int rockchip_rk3399_efuse_read(void *context, unsigned int offset,
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
+			writel(ctrl | RK3399_STROBE, efuse->base + REG_EFUSE_CTRL);
+			udelay(RK3399_PGM_TIME_US);
+
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
@@ -252,20 +339,26 @@ MODULE_DEVICE_TABLE(of, rockchip_efuse_match);
 
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
 
@@ -278,12 +371,20 @@ static int rockchip_efuse_probe(struct platform_device *pdev)
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
+	econfig.reg_read  = soc_data->reg_read;
+	if (soc_data->reg_write &&
+	    of_property_read_bool(dev->of_node, "rockchip,efuse-write-enable"))
+		econfig.reg_write = soc_data->reg_write;
+
+	econfig.read_only = !econfig.reg_write;
+	econfig.priv      = efuse;
+	econfig.dev       = dev;
+
 	nvmem = devm_nvmem_register(dev, &econfig);
 
 	return PTR_ERR_OR_ZERO(nvmem);
@@ -300,3 +401,4 @@ static struct platform_driver rockchip_efuse_driver = {
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
