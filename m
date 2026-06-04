Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93893CD6E79
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 13:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azzETZvy4gN3/95JZq2XQSiUMF2EHaaH7bJYvdGqn7E=; b=AMPpZTohyxZBpk
	TzWZmk8QuNLrN8Z+6FVRePjcXo7jOxbGYlHKU/o3UPFDmaZgCa0M4RyNNhqSGor7nvpQM47BtwAva
	q7JNj/MjUiCOMaxpdZ5WW0zYvEiACu9CYiAFszPJaNowPmWZ0ZXc/zp1vTCXvwTWnVsoncSkdl8Qb
	N2kwNysBTBXGwi8SKRxMVhFARuabFukFXFpH+7qFYl6fM/T385GR0t+Bz/AMNuPE4xE47JMK0I06A
	CCYjmr973BmYkNJVBNJZk2MCczCc2oTnwQJy4L/x3AM2O9m/qznyHoEcX4U/Io9ppm91i3QFtxnfY
	wPK6sb/erPyYKDYzESRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VN-0000000Gpki-06EF;
	Thu, 04 Jun 2026 13:53:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VK-0000000Gpic-3it1
	for linux-rockchip@bombadil.infradead.org;
	Thu, 04 Jun 2026 13:53:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=CoHc1Zlbr3pNOE70Y4k5QiMyrmoz//QwwHMvtTDGYPc=; b=Gkf89oZCQ9vw0WL+Ahcam39n3x
	PhQCCW9AWGa3QtRp/noIx8siwjglBhKp82v6R4yI5Z7EBZ+IaRt/qKlM34XFORVSdE0BFmdSM4r/C
	6o1cBJqCS4dnttrARWCFFRaMkILMOxtCR6ZCrORxKWq4UN5I7QkAotj7vFxRqwIPcdTEuvrq3W5LV
	S8mbfd+kfgbGus65Mx1eeGx/2fqdCxEviN1RoAS/BOeyO7pz5MzCivhPVNkzknWpQGVXufz4pChkq
	IHYfe7DeaHl/HWcbhei8BH2S7DQV6npF3H+cpBc8zF/9dlMQG0JlYCIhC0q4ZvRmnPYpcrTEVfmIx
	P7B95+rQ==;
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wV8VI-0000000EOqA-0WY7
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 13:53:01 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-45eea68dd6fso413497f8f.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 06:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780581178; x=1781185978; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CoHc1Zlbr3pNOE70Y4k5QiMyrmoz//QwwHMvtTDGYPc=;
        b=joNIkdjRl7S+gB0dfufKhonvst+uO101EcRIpm7cuHbiuCNUfLCP2BCPmxnyfsJTc+
         kv9xRPKtTCqtJCh1QxaIsmDKlnz2P+K0RMB51P6jSqz6l6HhZfgcfIdmBIUnRpFQLdhb
         npVMayZxWAPLGlKRnOCmt67PD+O53eK0A5hY0IKaYBiov5fGyQ2DSlPqYE0atqM11Inm
         EfT0k9hsRzx0/SGb+vu7XLKR1js5P1GfG7IosRuQva2WJMowIWm1oNiNwb5Y5VVY7P06
         KMG48HotwtrQppHQMv/8v7A/2AhxAmMc7NO1hc6Db0t83Q1I/Kn1BrypFRfflaoqfWZx
         su5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780581178; x=1781185978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CoHc1Zlbr3pNOE70Y4k5QiMyrmoz//QwwHMvtTDGYPc=;
        b=DrrWmMqBkVoZQQfDMkZwGjU5ctSqUINR8hU8vMGO7Kd2CFrQo0GNbbydcfCSWwqSa0
         V39iJiRrn8RCIx0nFXLvXjwuU9bbxNkfDO2644PRfgDIKvPYiUwhJp1dpB7gbOOYKYaz
         el5dIs7j71eYx8DkIlAtR3oYenxz4+v8zsX5Dt3xssjtvl6wnSWKIpW65bH6TMNzu5gu
         Jxoc4RZNn1pf+pzFjLiU4vjQQaii0PqiofVAq1xP5Z34mG4fa22vYluRFgVb6hBvNeiV
         mMgBjT4WZBswDVdnjNzU6kFyzMoHUkNiBHmw7apJLC0m64H++MS6HsG6YMj+AAwkoGjF
         OWDQ==
X-Forwarded-Encrypted: i=1; AFNElJ+hKE5MyI9BKGpIQAQoOm2GuiF5xylp149oizcMGBQV5SYQ3mD+6DZFQ1LgUuuZr0ySq6RssrvafcncJgm3SQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxHh4SWrn+iAo9jWhc2In7Lr/Lts/U/WxwHiYJ5nH3jFcPp4FnE
	w6GF2eDzc7HPtJocButnkHRnm1r0qug6LYlRxqXguaog6/L7uQStjpjm
X-Gm-Gg: Acq92OG+pmgvRKhPWMDS9rQR/M8Tb7jDJFlt/Q0yUzM9oeIrhSyQCwjnXimEez9dLQa
	7JZLuqoMf5CgFCOxYF+mM5kZM71vB1lFjFyFzePCKXtuOxTZmDY6OruUThX6lDP+e3ZmXammpQq
	dJ/fkGzqgpi7X1AwYIIE8P1lf4FB0TZ1SLBadZwDZw4yTVFbsmVqQqSiaj58eNlleZY70A6BdEj
	EpqtObMNXfuj8+zwurC/KG5rPA+Bh2CpYjhlgx6t5FJ+U9vfATOq3kmnC8dsjYcE7TtUzuzrf1m
	ODMKQKPeOSbK/Nb/1Eaw/42Aq2SWNqwzC58SZwclc5f4r930ftTwXCXiMWLRZ4GxvZvf02MSJjF
	yO//IRVKjHJSvVj9Z04jt+wPIr40NceatyqLazTmQv4gYm2HcnLeekJo58sSPcrMjZFznHaL0X9
	58etXdsUBtD7bLbisYHahhuXoWPvPD3043LfvM9ZCMzVbW6ckhdwdwSmZGg8xFjTY=
X-Received: by 2002:adf:f8c4:0:b0:460:e0f:8d19 with SMTP id ffacd0b85a97d-4602179121cmr10232727f8f.9.1780581177846;
        Thu, 04 Jun 2026 06:52:57 -0700 (PDT)
Received: from compiler-rock3b.tailb81abf.ts.net ([2a01:e0a:104a:4d80:be24:11ff:fe12:2776])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f0a43e9sm16661068f8f.0.2026.06.04.06.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 06:52:57 -0700 (PDT)
From: Midgy BALON <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org
Cc: robin.murphy@arm.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 1/9] accel: rocket: Introduce per-SoC rocket_soc_data
Date: Thu,  4 Jun 2026 13:52:47 +0000
Message-Id: <20260604135255.62682-2-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260604135255.62682-1-midgy971@gmail.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_145300_259418_6CFBBF33 
X-CRM114-Status: GOOD (  15.62  )
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

Add a per-SoC data structure carried in the OF match table, currently
holding only the NPU AXI address width, and use it for the per-core DMA
mask instead of a hardcoded 40-bit value.  No functional change: the
RK3588 AXI master is 40-bit.  This prepares for SoCs with a narrower
address width.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 drivers/accel/rocket/rocket_core.c |  7 ++++++-
 drivers/accel/rocket/rocket_core.h | 11 +++++++++++
 drivers/accel/rocket/rocket_drv.c  |  6 +++++-
 3 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
index b3b2fa9ba645a..09c445af7de73 100644
--- a/drivers/accel/rocket/rocket_core.c
+++ b/drivers/accel/rocket/rocket_core.c
@@ -7,6 +7,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/err.h>
 #include <linux/iommu.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
@@ -21,6 +22,10 @@ int rocket_core_init(struct rocket_core *core)
 	u32 version;
 	int err = 0;
 
+	core->soc_data = of_device_get_match_data(dev);
+	if (!core->soc_data)
+		return dev_err_probe(dev, -EINVAL, "missing SoC match data\n");
+
 	core->resets[0].id = "srst_a";
 	core->resets[1].id = "srst_h";
 	err = devm_reset_control_bulk_get_exclusive(&pdev->dev, ARRAY_SIZE(core->resets),
@@ -52,7 +57,7 @@ int rocket_core_init(struct rocket_core *core)
 
 	dma_set_max_seg_size(dev, UINT_MAX);
 
-	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(40));
+	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(core->soc_data->dma_bits));
 	if (err)
 		return err;
 
diff --git a/drivers/accel/rocket/rocket_core.h b/drivers/accel/rocket/rocket_core.h
index f6d7382854ca9..8ee105a0be40e 100644
--- a/drivers/accel/rocket/rocket_core.h
+++ b/drivers/accel/rocket/rocket_core.h
@@ -12,6 +12,16 @@
 
 #include "rocket_registers.h"
 
+struct rocket_core;
+
+/**
+ * struct rocket_soc_data - per-SoC configuration data
+ * @dma_bits: Physical address width reachable by the NPU's AXI master.
+ */
+struct rocket_soc_data {
+	unsigned int dma_bits;
+};
+
 #define rocket_pc_readl(core, reg) \
 	readl((core)->pc_iomem + (REG_PC_##reg))
 #define rocket_pc_writel(core, reg, value) \
@@ -31,6 +41,7 @@ struct rocket_core {
 	struct device *dev;
 	struct rocket_device *rdev;
 	unsigned int index;
+	const struct rocket_soc_data *soc_data;
 
 	int irq;
 	void __iomem *pc_iomem;
diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index 8bbbce594883e..384c38e13acce 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -213,8 +213,12 @@ static void rocket_remove(struct platform_device *pdev)
 	}
 }
 
+static const struct rocket_soc_data rk3588_soc_data = {
+	.dma_bits = 40,
+};
+
 static const struct of_device_id dt_match[] = {
-	{ .compatible = "rockchip,rk3588-rknn-core" },
+	{ .compatible = "rockchip,rk3588-rknn-core", .data = &rk3588_soc_data },
 	{}
 };
 MODULE_DEVICE_TABLE(of, dt_match);
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
