Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A4B4CD8C81
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 13:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxKF5/H7Jg9kary4qiIL2KFYIk4yZLN4EbCptKRrrSM=; b=2xqgGi6H7DcyyE
	ycRqLJMIOarfOjalaVG014H3beEl7zvYmMO7xEvMziY3pihYWXUBMZ0hV4cTGWbeCkMVphN5s9cue
	FFUg7U+nrYkkT0xa1pnBwXqFB8Bl97Il78jAOl7uO9zwUSV9ntZTfWg6jaRsjTaYgIo00xRMvM3oO
	u/v3bdnGpULEDAfIeLrpgW7Ot0+TkpOy4GARiSFLDegZJCLvSwieih6LXv0VUKaI4KoinQH765jm0
	gUitrnxSWWxkk7kKAexVhEKOju9ma5lYG6XgLqn/adeP6AsobqUGXdv3K6gYahtINwJFuv7cu1z0X
	E12snAjjLe+NVNtsDvHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VQ-0000000Gppv-21k3;
	Thu, 04 Jun 2026 13:53:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VN-0000000GpkL-1wcM
	for linux-rockchip@bombadil.infradead.org;
	Thu, 04 Jun 2026 13:53:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fvTkXFm0z4CjuuOw/gsrhETvrrwMcV/B+e1Vnh/OZd8=; b=QGXiI3i8i4LeRU1Pz2uBMjn1gk
	HMRKe0QcLGgrp3sR+kRNF++7qmxK8/1GZVg9Ks4fPIBzeK3lBaMIHalhs9KPDSnk0rdtwDMk72eXv
	Ye1o5eU2jyKDL8ORflK9Omk24J9e+NHhWs2k5P92zUmx3aRdPPGjUxtP+HQ7mPqU/WJu3YGdHENW9
	XLtX0bdiRxPW1A2T/ZX1i0HEzOo3j73A/wgWavtr7m4r9P46J6tYWzO9/0yX+belljhB8rjrtmRVQ
	eI8aWjC06ltUVwPczPCwwlYKz38ymfPtBCd22qtAGwP5sh2Z+aq332yzO6BDGcoK5qhX3LoZpKCOG
	E6vqKpNg==;
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wV8VJ-0000000EOqX-2rV3
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 13:53:04 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-45ef372c58aso457933f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 06:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780581180; x=1781185980; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fvTkXFm0z4CjuuOw/gsrhETvrrwMcV/B+e1Vnh/OZd8=;
        b=R0Bl2xYsT2sMk1JXIjbwGC9IoYZMHVB2Rp50ZGUs4WxNVsRuCuoXFc0+qFFosHMHYo
         lUJ/Hen8nRLkVakVj09lVZrJRilszGmuTjS4iSZ/sQ3j+dTP5t5vnPDozHYTvPa1UUC1
         HW1uanJb5g2rS6/0E3zx8bXXPFnu93crMbu/xM5coB+I3UNbxba7HIvULOyhOJBlXwhb
         ar1OdUa3xd2OxVvyRzu7odNJV9NGIV0EDv7Ie8EbHOA2M2ckPv8gv9cl2L9z9zsoXlsj
         n98X24m51qTzb0IvGHUw3vEjHu3FFOmWJTkS4zmsAoTZhL2d1rRzUkU0HPOXF7UWkvjp
         VIGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780581180; x=1781185980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fvTkXFm0z4CjuuOw/gsrhETvrrwMcV/B+e1Vnh/OZd8=;
        b=IMAbZcEQnHkNIskXu/yxkbM8qcIP98vso8NbtXFctADNKUBPKb+mEZX8KHqCtX975u
         h480Gv+Sy6B0Dae7LiFoxuyVfSfQfFH9Bgf2w72PvVbUUMaiRkL471EKMD0x2oq1KwXP
         B6eXsEbxPn9v9IsxSkWUwlerQXfodhn8wTNjHmjvNt6Zw5OT9V7dd7WSg2Bn+EDHB+fe
         JVhPk3f1tH91gIA9h+PPxZMc4Pv28aP8Z97SJmA/AWO/3x+uZbhxGgjnUlczpIl/tfO3
         Lwh9g/nGffaZdePq34fT5xVMWXqeLjvYOAo1Gury4oFAHuIJduEl5L3BvDmiE5uSu03B
         kkFw==
X-Forwarded-Encrypted: i=1; AFNElJ+ZRTYBN/DWc98JffJD5AKRpZym88Raw1VJvkx6qkSXN9GeyuEy+BDZbq6Qm9qKRXH4ghmvr8Bekl4pJSRNtQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywi/myPEGU87gXwVMfr66F9Wj2VV7DafAo1bVVx50JMRyaJuWkG
	277x+Ue0HZmmJt1Lq2UeRYudMM7d5i8Si/feLSg0+44DyfAMxcnIkmcp
X-Gm-Gg: Acq92OESqnzc51mK7dNG+zQM+Fi1tSUx9kUPjhfTHz6XeYiVCUBB3DctdPjGggDjzK9
	MWMM9ecDXWCR/TJZDzMTV5gOCZhGX461cqZlvvmqUATHg8/Vt9wievebyAt4HjZbDcPsydS7HWx
	HAhZU4PWZ4iU820TcYVYSSwv1+KBOtPRWy0oeponIjI+qga4B8/QXWaboRRiPfAGYkA/nkx+TZC
	baoxUojecZNE/lM0WHjWOrwNJMlEC/eASoBIG9Ke2RUojRp4ZXogSL2VHUcWDT4Q/83GCNXrtH5
	LkGE7yaFaJg+XzBuRM2xQ2XLUGUAzEqwSWHTW372ZT1m40rliFLIiUGFLlo2OdxGrASnlY4p12A
	TjLrvAG6QpiYYbvga6Xz2hANq8BOmDvAdFU8HpyA3fe0FmK2zhMPzrJMYJNWvWkzxC8EPZhVCJJ
	6F0JvYS317EIO1Lqpi6ULu01uuIe9vyz9Xufb0BZUYfJbFH9Tx2ZURgrS3/4T38Ao=
X-Received: by 2002:a05:6000:180a:b0:45e:d6b2:e6a5 with SMTP id ffacd0b85a97d-460218654afmr9596752f8f.34.1780581180021;
        Thu, 04 Jun 2026 06:53:00 -0700 (PDT)
Received: from compiler-rock3b.tailb81abf.ts.net ([2a01:e0a:104a:4d80:be24:11ff:fe12:2776])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f0a43e9sm16661068f8f.0.2026.06.04.06.52.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 06:52:59 -0700 (PDT)
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
Subject: [RFC PATCH v3 3/9] accel: rocket: Add RK3568 SoC support
Date: Thu,  4 Jun 2026 13:52:49 +0000
Message-Id: <20260604135255.62682-4-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260604135255.62682-1-midgy971@gmail.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_145301_829764_3CAEFCDC 
X-CRM114-Status: GOOD (  16.82  )
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

The RK3568 has a single core of the same NVDLA-derived NPU IP as the
RK3588, with a 32-bit AXI master.  Unlike the RK3588 it must be powered
on and de-idled through the PMU, and its PVTPLL clock started via SCMI,
before the NPU is reachable.  Add rk3568_soc_data with an noc_init
callback performing this bring-up.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 drivers/accel/rocket/rocket_core.c |  9 +++++
 drivers/accel/rocket/rocket_core.h |  3 ++
 drivers/accel/rocket/rocket_drv.c  | 53 ++++++++++++++++++++++++++++++
 3 files changed, 65 insertions(+)

diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
index 09c445af7de73..a8de876365873 100644
--- a/drivers/accel/rocket/rocket_core.c
+++ b/drivers/accel/rocket/rocket_core.c
@@ -88,6 +88,15 @@ int rocket_core_init(struct rocket_core *core)
 		return err;
 	}
 
+	if (core->soc_data->noc_init) {
+		err = core->soc_data->noc_init(core);
+		if (err) {
+			pm_runtime_put_sync(dev);
+			rocket_job_fini(core);
+			return err;
+		}
+	}
+
 	version = rocket_pc_readl(core, VERSION);
 	version += rocket_pc_readl(core, VERSION_NUM) & 0xffff;
 
diff --git a/drivers/accel/rocket/rocket_core.h b/drivers/accel/rocket/rocket_core.h
index d6421251670dc..66d138a8ed773 100644
--- a/drivers/accel/rocket/rocket_core.h
+++ b/drivers/accel/rocket/rocket_core.h
@@ -18,10 +18,13 @@ struct rocket_core;
  * struct rocket_soc_data - per-SoC configuration data
  * @num_cores: Number of NPU cores in this SoC.
  * @dma_bits: Physical address width reachable by the NPU's AXI master.
+ * @noc_init: Optional callback to power on and de-idle the NPU NOC bus.
+ *            Required on RK3568, where this is done through the PMU.
  */
 struct rocket_soc_data {
 	unsigned int num_cores;
 	unsigned int dma_bits;
+	int (*noc_init)(struct rocket_core *core);
 };
 
 #define rocket_pc_readl(core, reg) \
diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index c18840e5aff76..5a72d0b5f4dff 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -9,9 +9,11 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <linux/iommu.h>
+#include <linux/mfd/syscon.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/regmap.h>
 
 #include "rocket_device.h"
 #include "rocket_drv.h"
@@ -217,12 +219,63 @@ static void rocket_remove(struct platform_device *pdev)
 	}
 }
 
+/*
+ * On RK3568 the NPU NOC bus is gated and idle out of reset and must be
+ * powered on and de-idled through the PMU before the NPU is reachable.  PMU
+ * registers use a write-mask protocol: the upper 16 bits enable writes to the
+ * matching lower 16 bits.
+ *
+ * The NPU's high-speed clock is a PVTPLL managed by TF-A via SCMI and must be
+ * running before the NOC acknowledges the de-idle request.  Force a real SCMI
+ * rate change (an intermediate rate defeats the clock framework's
+ * unchanged-rate shortcut) now that the power domain is on and clocks enabled.
+ */
+#define ROCKET_RK3568_SCMI_CLK	2
+
+static int rk3568_noc_init(struct rocket_core *core)
+{
+	struct regmap *pmu;
+	unsigned int val;
+	int ret;
+
+	clk_set_rate(core->clks[ROCKET_RK3568_SCMI_CLK].clk, 600000000UL);
+	clk_set_rate(core->clks[ROCKET_RK3568_SCMI_CLK].clk, 1000000000UL);
+
+	pmu = syscon_regmap_lookup_by_phandle(core->dev->of_node, "rockchip,pmu");
+	if (IS_ERR(pmu))
+		return dev_err_probe(core->dev, PTR_ERR(pmu),
+				     "failed to get PMU regmap\n");
+
+	/* Power on the NPU power domain (PWR_GATE_SFTCON bit 1 = 0). */
+	regmap_write(pmu, 0xa0, BIT(1 + 16));
+
+	/* Disable NPU NOC auto-idle (NOC_AUTO_CON0 bit 2). */
+	regmap_write(pmu, 0x70, BIT(2 + 16));
+
+	/* Request NPU bus de-idle (BUS_IDLE_SFTCON0 bit 2 = 0). */
+	regmap_write(pmu, 0x50, BIT(2 + 16));
+
+	/* Wait for the bus to report active (BUS_IDLE_ST bit 2 = 0). */
+	ret = regmap_read_poll_timeout(pmu, 0x68, val, !(val & BIT(2)), 10, 1000);
+	if (ret)
+		dev_err(core->dev, "timed out waiting for NPU bus de-idle\n");
+
+	return ret;
+}
+
+static const struct rocket_soc_data rk3568_soc_data = {
+	.num_cores = 1,
+	.dma_bits = 32,
+	.noc_init = rk3568_noc_init,
+};
+
 static const struct rocket_soc_data rk3588_soc_data = {
 	.num_cores = 3,
 	.dma_bits = 40,
 };
 
 static const struct of_device_id dt_match[] = {
+	{ .compatible = "rockchip,rk3568-rknn-core", .data = &rk3568_soc_data },
 	{ .compatible = "rockchip,rk3588-rknn-core", .data = &rk3588_soc_data },
 	{}
 };
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
