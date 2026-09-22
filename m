Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBF4FC982FF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDQ5MwY1tjBs21bdGUm2vczMpkjeuT5bN7lxccjTx+E=; b=XB4Kfh1lY0G00g
	jABwH/VkAjC6OXSe5NQJqGsCJGDov2HJjUua0PqFbq5g/mwm/FVZgzZCkax1Fzk7ZQLmyGawXwVds
	vqNnFq05HLQSaas06Yv9UiWHTugQmr6fwQx6jY2NCy2RQN+sYfQV3654Dlmz3hIGZBgskydnID9+n
	7WB6kbpzZ2lc6ZXRa+uuSCNU2myJc4eYGtOQ7oRAT+xi7u/iJTd9ueyC/zq14nFLG1mbmuKJjqcbl
	nJwMrV9xWtRt6hVgQ7tQsQR1nLNyRRaI4DaWDjOhMtJOZ70XSjHHFdtIjczojj528GkttTgUas0Iy
	OP4MiIvrLtQuH3u7mYAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vSG-00000004amQ-1UNf;
	Tue, 22 Sep 2026 08:02:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vRe-00000004aKY-1Fad
	for linux-rockchip@bombadil.infradead.org;
	Tue, 22 Sep 2026 08:01:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YqiXccAHsUrIMDsLkLXR6P0dTgO5nQzYlI6kaXLWWHg=; b=Iy+1BGtMLDKaMtoRWCO1appBXy
	sOY64TnoO3HvZpwI3LtauIcuyZPJH8w3lTZVlja0SKmVf6WRptRF5/mbgVDIrI6HGIs+O3Jo6KmVd
	LkuC+FvMfnbYRgO5q1ucZuIvjYW7kNLumwMAX90TWR9H5dlYoaAKjpBDLTbdnlR12TKwJa+NIqeN5
	vu9KEx1+ml/dJiYBy99ho1WFupUklEvlV3mGa/xPizLIXgBhSLhGpJDcyhOSr2dtyg8I30XFI7gO3
	CMWMnsniwNpn6kmdRdCF3uCOQYL/Mr+fA5Ubeg2nZeemLaQrwJbqiGtKFn5xGyCnmm/+WXvqdU8ZY
	e24HjwUA==;
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8vRZ-0000000DEgk-3aoH
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 08:01:40 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49fbca514f8so2712825e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 01:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790064097; x=1790668897; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YqiXccAHsUrIMDsLkLXR6P0dTgO5nQzYlI6kaXLWWHg=;
        b=UZGIkju60Z7DhGvdwcRcr6y/NU4pO6qVoyFTRWzLsU6tvK33TuvORv/mBiHbOYqIog
         gKZ42jeGVH2DEdF8ZafC4HuZGB5s9bwav30DVKCQTM+TKMv45/axopQT0SFvVl/JH/s1
         r8SN8BXCrYwad5ZCNirTmGnjxQgFirvrpn5u8DzAwFiVflC4WdwjHRAWgRIt/59e+Ko9
         hPMD5QdeG3kNIlolXPJKZLXFJRZsYvO/4WW6ZQy4jOC6u/ar02+xm/rnBZjYFln6eHc2
         t/KuMUL4ZJQhPb+BZQ9K2/RJa0pLi6xfJovcEbmdQFuZs1qdP4QIzaLO45z1hTBJQjFf
         0rcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790064097; x=1790668897;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YqiXccAHsUrIMDsLkLXR6P0dTgO5nQzYlI6kaXLWWHg=;
        b=A45tNusBKXKJs+psJj6dVA3B37sM6oGt4F2F9R7nBs6yRYfvKoOTzj9OV4fhsMulVO
         hd6A4CfUOu2WKpFhi76OQlu2k7IbyZHhjWrYgKfXCl2ja7amj3lSEhfoY3jW5lvcE8x4
         OkJjxM2c5qLFmm3hwR/T8vms108lQZ9bt5+8ccyw2gtkY+9ql7a9pgK+TKiwXJLdpDg8
         Vbn5J5iDHYGNMmZu93txPke6gxwBgvYpOKursd8Rb6aI/xQK4UyUo00u1vxvHRhzJNVb
         Kj81iBheWEt/Tar7ktm4xGWJmXNAj9ST7JcdFv7Fqg5g4rij7x6g69x/aFeuJncmet7C
         bn+A==
X-Forwarded-Encrypted: i=1; AKwUvBzulVxu9EH8IMjIl5QrJYI/wU8UfpeJLAqta5FnL/qNcHu/Q6dZPdcRVTAFRthGQhwLfpe4qJPImEcLYbFJYQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mr+xXYQ8SGQSNLqJP8FlMF6K7RQWbMGMueUZCw1Qu526MBvMlg
	SOfIW34nySx3zfz856LaIcb46R9o3fMi16CRnBya+9Wnk1Hd+1DqAup0
X-Gm-Gg: AYBFou1bkTYonirbTlLe3uRhqsyFjDYln+IoXq1y6fVYHI6J1pdn+h57/nbZPLP7QLy
	oKsqW89snRGR4VUNfV05h5+/3UIqgJkiAnEAZvfNX6WtyjTwCeuIynrx5mNPGcKSrYV9SDEyHKj
	v1j64t3IxfrmGCLbNzWnuhjYsuIv3/N+4JEEUMvueCSgn79kDpzWGlhbFaSTvZ1uKrFe4bfJaCd
	sA041n8x+BXKxGizP7Yv5uHW7pdghZAs90XsMeGJd0qoWyS+d6e8ayaLguM8DOSMOunNWRPyTQw
	d3egQwh4Xqj972t0Yqb5ZHehdomBcfO8ReZyO2Uqe1EAXuW3D950tuTOKXmGn8Ogkl2+FvuRloV
	ObJNt5D3IabCbUA2IIvGHwpcpaJccZL1PqTQxo5nv/XOY+LSqOKeMx3IfruJN1jcMzNsxJEz508
	tEK8S233Ak6v1y9wCEbfBJRvx0RMAcK/QIULliV/gbrhn5zkueyGHiDMrexDGqn5MZJuGBzPx2/
	Rn3Vvrx/5sUvbUZdSrwkf27FeNF95bIuPkXLyJdzzP6E3te7g01UpH62/phxGi1SzmPccoiHGnc
	PEE=
X-Received: by 2002:a05:600c:3b99:b0:49e:6683:d227 with SMTP id 5b1f17b1804b1-49fc7bbfe4bmr199180665e9.0.1790064096621;
        Tue, 22 Sep 2026 01:01:36 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B80530056971C6280202175.dsl.pool.telekom.hu. [2001:4c4e:1b80:5300:5697:1c62:8020:2175])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fdaaf97e2sm18248625e9.2.2026.09.22.01.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 01:01:36 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	=?UTF-8?q?H=C3=BCseyin=20BIYIK?= <boogiepop@gmx.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v2 08/11] accel/rocket: restore the NPU clock boot rate before powering the cores down
Date: Tue, 22 Sep 2026 10:01:11 +0200
Message-ID: <20260922080114.44662-9-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260922080114.44662-1-royalnet026@gmail.com>
References: <20260922080114.44662-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_090138_090014_6B942F69 
X-CRM114-Status: GOOD (  35.48  )
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

The compute clock is generated by a PVTPLL that lives inside the NPU power
island. Powering an island up while that clock is above the rate the
bootloader left it at does not work: the domain never acks the power-on,
and the first register access into it afterwards takes an asynchronous
SError. So the rate has to be back down before the last core goes away.

Nothing in the driver raises the clock today, which makes this a no-op on
its own, but it is the guard that has to be in the tree before anything
does, and the next patches do. The .shutdown hook is the same guard for the
handover: once devfreq is driving the clock, a kexec would otherwise pass
the raised rate to the next kernel, which powers the islands up before it
looks at it. What this cannot do is rescue a rate it did not set - the rate
read at probe is taken as the boot rate whatever it is.

The rate is read at probe rather than hardcoded. Mainline pins the RK3588
cores at 200 MHz with assigned-clock-rates, but that is a devicetree
property, not a property of the hardware, and a SoC whose devicetree does
not set it would be left running at a rate this driver had invented.

All three cores share the clock, so only the last core to suspend may lower
it; the others just drop the count. Lowering it is safe with the islands
already down as long as the boot rate is one the firmware serves from GPLL,
which on the RK3588 is the 200 MHz the devicetree pins: for that rate the
firmware writes only CRU clock selectors, never a register inside the NPU.

Assisted-by: LLM sparse checkpatch
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
v2: v1 of this patch kept a struct clk handle in struct rocket_device,
taken from the devres of the first core to probe, and used it from the
runtime suspend of whichever core went down last. Unbinding the cores
freed the handle underneath it: KASAN reported a slab-use-after-free in
clk_set_rate() during a ten-round unbind/rebind test on this board after
v1 was posted. No handle is kept any more; the callback uses the handle of
the core it runs for, which is bound for as long as the call lasts.
"A reboot" is dropped from the kexec sentence and the comment: whether the
clock selectors survive the global reset the firmware does on reboot has
not been checked. The argument that lowering the rate is safe is now
limited to a boot rate the firmware serves from GPLL, which on the RK3588
is the 200 MHz the devicetree pins.

 drivers/accel/rocket/rocket_core.c   | 10 ++++++
 drivers/accel/rocket/rocket_device.h | 15 +++++++++
 drivers/accel/rocket/rocket_drv.c    | 47 ++++++++++++++++++++++++++++
 3 files changed, 72 insertions(+)

diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
index 5dd260bacbff6..c736537cf28f6 100644
--- a/drivers/accel/rocket/rocket_core.c
+++ b/drivers/accel/rocket/rocket_core.c
@@ -12,6 +12,7 @@
 #include <linux/reset.h>
 
 #include "rocket_core.h"
+#include "rocket_device.h"
 #include "rocket_job.h"
 
 int rocket_core_init(struct rocket_core *core)
@@ -36,6 +37,15 @@ int rocket_core_init(struct rocket_core *core)
 	if (err)
 		return dev_err_probe(dev, err, "failed to get clocks for core %d\n", core->index);
 
+	/*
+	 * Record what the compute clock was running at before anything here
+	 * touched it, on the first core to probe. Reading it rather than
+	 * hardcoding a rate keeps this working on a SoC whose devicetree does
+	 * not pin the clock with assigned-clock-rates.
+	 */
+	if (!core->rdev->npu_boot_rate)
+		core->rdev->npu_boot_rate = clk_get_rate(core->clks[2].clk);
+
 	core->pc_iomem = devm_platform_ioremap_resource_byname(pdev, "pc");
 	if (IS_ERR(core->pc_iomem)) {
 		dev_err(dev, "couldn't find PC registers %ld\n", PTR_ERR(core->pc_iomem));
diff --git a/drivers/accel/rocket/rocket_device.h b/drivers/accel/rocket/rocket_device.h
index abb88a254e569..ba7c977cd6951 100644
--- a/drivers/accel/rocket/rocket_device.h
+++ b/drivers/accel/rocket/rocket_device.h
@@ -22,6 +22,21 @@ struct rocket_device {
 	unsigned int num_cores;
 	/* Slot capacity (DT core count); slots with a NULL .dev are free. */
 	unsigned int max_cores;
+
+	/*
+	 * The cores have no clock of their own: one clock feeds all of them,
+	 * so any core's handle refers to the same thing. No handle is kept
+	 * here: each one belongs to the devres of the core that asked for it
+	 * and dies with that core's unbind, while this structure outlives any
+	 * single core. Whoever needs the clock uses the handle of the core it
+	 * was called for, which is bound for as long as the call lasts.
+	 *
+	 * npu_boot_rate is the rate the clock was left at before the driver
+	 * touched it, and active_cores counts the cores that are runtime
+	 * resumed right now.
+	 */
+	unsigned long npu_boot_rate;
+	atomic_t active_cores;
 };
 
 struct rocket_device *rocket_device_init(struct platform_device *pdev,
diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index b9b36c578db20..8f03de1af488c 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -297,6 +297,30 @@ static int find_core_for_dev(struct device *dev)
 	return -1;
 }
 
+/*
+ * Put the compute clock back where the bootloader had it. The cores share
+ * this clock, so this is only correct once none of them is running any more.
+ *
+ * Lowering the rate is safe with the power islands down as long as the boot
+ * rate is one the firmware serves from GPLL, which on the RK3588 is the
+ * 200 MHz the devicetree pins: for that rate the firmware touches only the
+ * CRU clock selectors, none of the NPU's own registers.
+ */
+static void rocket_npu_restore_boot_rate(struct rocket_core *core)
+{
+	struct rocket_device *rdev = core->rdev;
+	int err;
+
+	if (!rdev->npu_boot_rate)
+		return;
+
+	err = clk_set_rate(core->clks[2].clk, rdev->npu_boot_rate);
+	if (err)
+		dev_warn(core->dev,
+			 "failed to restore the NPU boot rate of %lu Hz: %d\n",
+			 rdev->npu_boot_rate, err);
+}
+
 static int rocket_device_runtime_resume(struct device *dev)
 {
 	struct rocket_device *rdev = dev_get_drvdata(dev);
@@ -312,6 +336,8 @@ static int rocket_device_runtime_resume(struct device *dev)
 		return err;
 	}
 
+	atomic_inc(&rdev->active_cores);
+
 	return 0;
 }
 
@@ -328,6 +354,9 @@ static int rocket_device_runtime_suspend(struct device *dev)
 
 	clk_bulk_disable_unprepare(ARRAY_SIZE(rdev->cores[core].clks), rdev->cores[core].clks);
 
+	if (atomic_dec_and_test(&rdev->active_cores))
+		rocket_npu_restore_boot_rate(&rdev->cores[core]);
+
 	return 0;
 }
 
@@ -336,9 +365,27 @@ EXPORT_GPL_DEV_PM_OPS(rocket_pm_ops) = {
 	SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)
 };
 
+/*
+ * A kexec hands the next kernel whatever rate is set here, and that kernel
+ * will power the islands up before it looks at the clock.
+ */
+static void rocket_shutdown(struct platform_device *pdev)
+{
+	struct rocket_device *rdev = dev_get_drvdata(&pdev->dev);
+	int core;
+
+	if (!rdev)
+		return;
+
+	core = find_core_for_dev(&pdev->dev);
+	if (core >= 0)
+		rocket_npu_restore_boot_rate(&rdev->cores[core]);
+}
+
 static struct platform_driver rocket_driver = {
 	.probe = rocket_probe,
 	.remove = rocket_remove,
+	.shutdown = rocket_shutdown,
 	.driver	 = {
 		.name = "rocket",
 		.pm = pm_ptr(&rocket_pm_ops),
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
