Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 372D8CD98D2
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jun 2026 06:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmMq4e+pQBftysPhN29NwVwaJOABFAODlvUQeKAdoOE=; b=nGsIs9thyXQFbG
	LaBTGofkaTcWYMnmwdJFD9s4g3jchPFIe5BpLwWN77aVhbz40JOtvgdLO6cc90wmwC+ni2PdBG56T
	VDZqzoHv6wKkoUKMzNGARlrWqCzXERZHwDaL2YMpuKJd4AO/KElBbpdZV3chtkiCu/kJSnUj0KPTt
	7CiAMRHHxvhbofNrXe33taChhHmTX5MSZOFpdN5YpgWyXaEWflteCwsdZC464CspqEAHxyJWsQldd
	s3mWcJzmC5EG3x/GpPYAnXxA8KfJ0OP/It10QkzrNu0X9sra0CbVsZg5OUUb47KqBh7mAdGc3aMco
	2LzGJG8jnOcKlexX5ZAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIKD-0000000C0rv-3lgl;
	Sat, 13 Jun 2026 06:58:37 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIK9-0000000C0oB-3tDw
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Jun 2026 06:58:37 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4903d730b1fso20770295e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2026 23:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781333912; x=1781938712; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q9lCT5hFuQlBjQqDnDlpEFs50IBGKZjmVIr8JFjJQzU=;
        b=dDHBDETwb/6YzziA50e1bFUgfGPtA/lKdDsYhkU0aS9Iw81ueWvKa2TXipiWk+NHfP
         FrZ8w6fTqH39cmHhwsexhqs6+xhfuKQOlicn2e54IbH7sqWRLw/rcYVFsphibGuYVGby
         op+twRgp8CrIp8f95EYfzC0Mg79Hoqpm3U5a0cmSNMbRdK2OGna6nehVQG+9abzETLMZ
         2Akewic2F8RQy9vINjPlq2ynF/H/C13QHmc3UZQ4LK8uJpy4QfoxXsVq0eY57nRsYlkM
         wfxJe+FtgyIHNOe1VTWnLnb3jDY/aQPFfL+GMXzzwWZ9GYk1bJfXoNBU2lB+b/rndGM4
         LmRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781333912; x=1781938712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q9lCT5hFuQlBjQqDnDlpEFs50IBGKZjmVIr8JFjJQzU=;
        b=Cx0H51e2ZuVpf+KQ5DJCeCUUMKvIgWfp5vPRzEZqoteVn9dByD8n5O1qUGXTDMRavA
         oE/yWgdeK6r1eMWOWvdy66/nbnIyGJfIDvU+ohbtKmB4avNxnBqKToIGgP5SI++3wSUS
         rYPyLPkMWuA1di7zhinDdhoRpH1MZjsmy9YuYzrx4LBjSXIQhyyuEh999oAj5AA4LXeG
         PUVcwemAnJ5dIDP1gXlq7AF8TsQga9qDX3gzp3tZZ3nIJfNuJmtkkGOD4mDx8cjOFtpu
         iYb0zJZL4dRIqPQV34uPBpC2Z91bR6TQAorco+uJHGgLQYICKfzxpxehZZTh7IDvxC33
         Ohmw==
X-Forwarded-Encrypted: i=1; AFNElJ+g00XIUQS5qSciVYkmmSKQV9mcETPCKwqRcASqooL25O3ssBSKG0bsA1lW478Ju68TbxGVqXR/+SG1DmeSHg==@lists.infradead.org
X-Gm-Message-State: AOJu0YydiBBbv1FaZBMO/Jdadgl5nBk3OHIkc0RrLtnukyFrD32Qrx2c
	gXWhtpGe1jz9RxgPx8RTyV96OhLBKLDDQ5AdnPuqZGl07b2RxodJpnNI
X-Gm-Gg: Acq92OFNMMs5uwou1QQvsRWnn2xazkqZX1FK4qcK76LMyrc0E1pwoF+Ht9UOMhfE50b
	Hlr3UmW8j0DfNQQxCzanOrI22a+6VkypwYHhDCv45W+8DDbcp8APdgzCGpC7UNd4ordeUQqMK9r
	HR/Zf7snBst9gt8CEAbskzAIWYio1TnGnhv3Z6+UjsvgkOZ5gOLnZKH88bRl9Bzp/V8VuUC2uO7
	3Q8E0LobqBMb1Kuhrx9IXvtSbJDUCH67NkfT3sEI1SXi8Sktr9Mq+O3qi7pzmmT00YoDdSMEeGO
	SVblZdSQGuIn3MGq4Odv0vFvZx3N09QDR1phRb+Yx2jjwwgM4WZo+n7XS5dc2+s2rB7JN3+cUeK
	cbTa0PpvBXhVFbAqDouC8Tewram6+cqQ24BfcZQK7FR69fp31G8eUUE/rykeWSWizdPdV6B3FNz
	SPa8BVF6f6rhfnfXnNGv98kuXTa4sKkSP0GQLhLkK53BhsAi9SJWMp
X-Received: by 2002:a05:600c:4709:b0:490:5057:f5f7 with SMTP id 5b1f17b1804b1-4922007472cmr28836405e9.11.1781333912286;
        Fri, 12 Jun 2026 23:58:32 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492202e5cbasm42917705e9.2.2026.06.12.23.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:58:31 -0700 (PDT)
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
Subject: [RFC PATCH v4 3/9] accel: rocket: Add RK3568 SoC support
Date: Sat, 13 Jun 2026 09:01:10 +0200
Message-Id: <20260613070116.438906-4-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260613070116.438906-1-midgy971@gmail.com>
References: <20260613070116.438906-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_235833_996295_39121861 
X-CRM114-Status: GOOD (  17.67  )
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

The RK3568 has a single core of the same NVDLA-derived NPU IP as the
RK3588, with a 32-bit AXI master.  Add rk3568_soc_data and its
compatible.

Unlike the RK3588, the RK3568 NPU's compute clock is a PVTPLL managed by
TF-A via SCMI; start it from an noc_init callback with a real rate change
(an intermediate rate defeats the clock framework's unchanged-rate
shortcut).  Powering on and de-idling the NPU NoC are left to the power
domain (genpd), which performs them when the IOMMU supplier is resumed,
so the driver does not poke the PMU directly.

If noc_init fails, unwind through rocket_core_fini() so the core is torn
down completely rather than leaking the runtime-PM and IOMMU state.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 drivers/accel/rocket/rocket_core.c |  9 +++++++++
 drivers/accel/rocket/rocket_core.h |  3 +++
 drivers/accel/rocket/rocket_drv.c  | 31 ++++++++++++++++++++++++++++++
 3 files changed, 43 insertions(+)

diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
index 09c445af7de73..779e951596a15 100644
--- a/drivers/accel/rocket/rocket_core.c
+++ b/drivers/accel/rocket/rocket_core.c
@@ -88,6 +88,15 @@ int rocket_core_init(struct rocket_core *core)
 		return err;
 	}
 
+	if (core->soc_data->noc_init) {
+		err = core->soc_data->noc_init(core);
+		if (err) {
+			pm_runtime_put_sync(dev);
+			rocket_core_fini(core);
+			return err;
+		}
+	}
+
 	version = rocket_pc_readl(core, VERSION);
 	version += rocket_pc_readl(core, VERSION_NUM) & 0xffff;
 
diff --git a/drivers/accel/rocket/rocket_core.h b/drivers/accel/rocket/rocket_core.h
index d6421251670dc..5a145ba8c5a92 100644
--- a/drivers/accel/rocket/rocket_core.h
+++ b/drivers/accel/rocket/rocket_core.h
@@ -18,10 +18,13 @@ struct rocket_core;
  * struct rocket_soc_data - per-SoC configuration data
  * @num_cores: Number of NPU cores in this SoC.
  * @dma_bits: Physical address width reachable by the NPU's AXI master.
+ * @noc_init: Optional callback to bring up the NPU before it is reachable.
+ *            Used on RK3568 to start the PVTPLL compute clock via SCMI.
  */
 struct rocket_soc_data {
 	unsigned int num_cores;
 	unsigned int dma_bits;
+	int (*noc_init)(struct rocket_core *core);
 };
 
 #define rocket_pc_readl(core, reg) \
diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index f0beed2d522c7..86484110ad6f0 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -10,6 +10,7 @@
 #include <linux/err.h>
 #include <linux/iommu.h>
 #include <linux/of.h>
+#include <linux/of_clk.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 
@@ -223,12 +224,42 @@ static void rocket_remove(struct platform_device *pdev)
 	}
 }
 
+/*
+ * The NPU compute clock is a PVTPLL managed by TF-A via SCMI; spin it up
+ * with a real rate change (an intermediate rate defeats the clock
+ * framework's unchanged-rate shortcut).  Powering on and de-idling the NPU
+ * NoC are handled by the power domain (genpd) before the NPU is accessed.
+ */
+static int rk3568_noc_init(struct rocket_core *core)
+{
+	struct clk *npu_clk;
+
+	npu_clk = of_clk_get_by_name(core->dev->of_node, "npu");
+	if (IS_ERR(npu_clk))
+		return dev_err_probe(core->dev, PTR_ERR(npu_clk),
+				     "failed to get the NPU SCMI clock\n");
+
+	if (clk_set_rate(npu_clk, 600000000UL) ||
+	    clk_set_rate(npu_clk, 1000000000UL))
+		dev_warn(core->dev, "failed to set the NPU compute clock rate\n");
+	clk_put(npu_clk);
+
+	return 0;
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
