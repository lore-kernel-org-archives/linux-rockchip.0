Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A1DBCD98DB
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jun 2026 06:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYueGGtTabwUQX2dGLEjpVUwPlcDqugsksoPHJ61s1A=; b=MJ29EdB36ElsDd
	NS0guQPHaMTp4Vp0dKJk8DNLd6srQQMxqfk+VZbK4OMTsDiyhH23QdksaJNa4Z59ddHolJOMBZkZ4
	WWfhTW/FUpBgyXVkvI7G7xflLu9WvKSMIyuaNiHyjTl3xpLtM6QQ1yPJyVMmF68Tinct978DsvHGN
	s+d/Fj6dcIZ4ABwwBGyUp8ngB9L42VBNwknshKB7fFC4Zgft5ZQhD6ra18ZKFg6ymI0Le+Sm94IiY
	mu0862LZ9KDulUDbEa/oAYDMRoC4rEEs6YypkaTBwejMNEQxse1Iwxd9ehi5yumWU+qnU5qsG9jyr
	U3xprerKBhbyLXbygJpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIK4-0000000C0lW-20lu;
	Sat, 13 Jun 2026 06:58:28 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIK2-0000000C0kE-0qCK
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Jun 2026 06:58:27 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-490b4a8e28bso12836595e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2026 23:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781333904; x=1781938704; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eG0rTodn0DU81UbM7Y7nOdcQ/eVn9TOf7zlRSmencCY=;
        b=kXQk3domny8bz2GGyR326S5qk62Qdftvj9RcAZ8Tizt+oamWNpbcAtDAdRg4EDaqmM
         uKXlahl1gmdufd0ubNWA1E5eu+lGr086pMqB3AGt7TXNCRmLw6FArJ8I22iUgwOuKg7Q
         ktmk3K69egl1i3Nfv++BD3Kfc4uI64dxcf/4yvIvLbn0QeOC6ZKlN+QC/ny2KWJ+HKPQ
         d7Jbwgy/RJu4502NxzXEMFddVkA1kfhMqYoHfaz1WEN5Wpqs7Zogfb/LmROmCKTpIFdO
         SStv21OuxuXvikhXnGetKgVclDZXzX0wS2rpdnDSFNItHhI5R00FD/+XUA5ZHMP74dmj
         mFmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781333904; x=1781938704;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eG0rTodn0DU81UbM7Y7nOdcQ/eVn9TOf7zlRSmencCY=;
        b=spRiIg2Y0706JltgNzcle81b/BJFqP9FVcUm5PYjPtKtGOAJ2xHajWLvlnnYlVQ4LC
         2IJb/QD1ruorL0eJDV2r4JVmOQSvDRY8IfvmmTI2S68F7Xk7W5qKekKG8Gdb8CzGo5h7
         n92hxCp3O++UE8gTzXngZOVLmIeHIUYXRGtRhyZWEHYqWJV0QIg5i0Ga9FhcEYMeYfes
         pxZIrREePSOERJ5prnlLWNuL84iU58P19Wg39hdwrTEsaQNNKxQUqLTCj+bV6dHJ1Hm5
         V3vMtAoJSkajiZJd6embL3or1cnhSWWafIG1o0TvYgMRpXMsPdlaK1+9GT8wHi2mj3jP
         ai7g==
X-Forwarded-Encrypted: i=1; AFNElJ+5+jcE9zrROWkd44hlTpL+jgDHl/IZ9damtiPmmxi7779SEDAbPh8ywmgFFSSIKOdRyQ56LrE+/4qMeA+xlQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzrbMu19J2WC23d4z2SRoSZn07ijkk8J4Ap2pbX1J9j3HO0dqJj
	sBCTAlgAISyXRbxr2w2nE2oQllW/SE+npeRWSZuB3OY+55diNNo+VwGd
X-Gm-Gg: Acq92OEifgq2c31yxg0pFmr2iwtXGq/e0UNN/0lVCNtmf+goUBO2tqpvoaYEmWZKcRV
	AYz3gqM7nC0ZMB4YgiQe+faqKJAMCXqBRaH5gjoqRDhnEByEzxBcMfaXmnvA6mZdOGI6W4pmQmO
	awgfX48f2QJHpJJ7Sqfse/lKslyLBa4QQz4w0NKz+OaTEVqxmN21U5DyXL01c6K55I2pnqiegNB
	sR/5MZN+/NO8E+KtIKq2/m+mL8cHcfp8rTi7q1THrzkpoOugKYfLwLEZcNWhXmbhxtm7vSsG+aA
	BVXDgl9gAe5Mp7JQxg84TYIMupX7XdGOXVqNP+jGlF8d6OM7XMyCbS+surV/ogWrxbBtPjcDgDx
	1hmglHK2MlvRxBbkPdAI4TdqhbIZRgtfUemwRMweYrJQnQ34kYrwfxU+fDhoBSlpf0nCc6Skwlk
	HmFUxSNwOnQd2X0opYRDxZhb855oE8EkWF2t58D9Bc1A==
X-Received: by 2002:a05:600c:820c:b0:490:45bb:8dd9 with SMTP id 5b1f17b1804b1-490ec4cde5bmr72801305e9.8.1781333904245;
        Fri, 12 Jun 2026 23:58:24 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492202e5cbasm42917705e9.2.2026.06.12.23.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:58:23 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulf.hansson@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	xxm@rock-chips.com,
	chaoyi.chen@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	jonas@kwiboo.se,
	Midgy BALON <midgy971@gmail.com>
Subject: [RFC PATCH v4 1/9] accel: rocket: Introduce per-SoC rocket_soc_data
Date: Sat, 13 Jun 2026 09:01:08 +0200
Message-Id: <20260613070116.438906-2-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260613070116.438906-1-midgy971@gmail.com>
References: <20260613070116.438906-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_235826_277403_3216D772 
X-CRM114-Status: GOOD (  15.47  )
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

From: Midgy BALON <midgy971@gmail.com>

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
