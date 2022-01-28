Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 330C9C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jan 2022 16:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhYzfGWipez2cRdr14oDBetlcv2JeZg7/707OI7NGug=; b=3UlTga7nvqMDx9
	9BnSd7vRtlhBThHZ9QXHGwsr4wBXOzdDCM701XTc0hIdD/XWuQhvnhqe+FIPmCEy7ldKujny/uDU9
	qOC84cL0Ksr0jZKDKG2BIAeBXNpSnHMX5gxbaxb9h2c9SvfiN4rFRiGPPvKTFk4Y40kaNggZO+6ht
	PsJWKfCOdXnAKbkktLRjGQ0cMgQ6hKvYnVkTFiIvqlO2c1RBqUKZkWnGV3x4rGc/w1oOB51InzLf/
	eKfavNnBYgR6boGeqHOlvPgHTItRazYnxtFOoVdEq+48GHTgI/z+/c7eVqg/fUlrnkr1ODcZlfy+K
	HBBm+DwuvI/1iGMhfJEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDUEb-00313O-FA; Fri, 28 Jan 2022 16:36:25 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDUEY-00311K-MN
 for linux-rockchip@lists.infradead.org; Fri, 28 Jan 2022 16:36:24 +0000
Received: by mail-wr1-x429.google.com with SMTP id w11so11939505wra.4
 for <linux-rockchip@lists.infradead.org>; Fri, 28 Jan 2022 08:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=99dERtWOZtbIzdgryv5Ia92S7CWD3+jik7G8TWPvHK4=;
 b=M56W1cYQkxO416lN+jHB1tezGrT0pfoCHG+V30MKezZeGa1pynMj+KMFaFb+TC3xtR
 QMogfQHJDufhRqxBR6KnAJ+xQF7iDAHcaL6BHjZb6W/t92XCBNdgp5zou1XR178MrL4z
 s5FbTVaCgtijqYCITJBmcuM2L2B5PwH9jDR/fAJrnrdt0vx//WVR71e2M8M8NCYLjDbW
 h+w/tXk883nHnYyi9FXF9ylMdrOSRfI7SARFZKXXO11REESQ44wxz971S/YF4HYsH792
 W7EZTGUfv9qcua4OiCgY61fRq35io87LL5TW8Ovtjzq3anlJRGCuSS2YRqLemAlcSh1Q
 I5Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=99dERtWOZtbIzdgryv5Ia92S7CWD3+jik7G8TWPvHK4=;
 b=L4Zwses4PhJP3SvP5rCfXvWsfGq+HDzznSVRRAJa/LcVSggLpkubE6LKIVvxytyZfu
 XkrmI+LtFqwzFwFQREGXudMZGIevUCvrubWuc1DJlzSmL1HBbIWHKi+Vfe9iFJm4zklq
 LVNDG7aTH/JlktxivkKi7kIN13fcQMRj6pYWhhU9U3eMW+GasQx9twDd6E/r52gFj5UM
 r6sYy9wJBtOJTM1vsgKtT0TWfYqwSwmRHvA+kJvXHyDz2hapijuxOnnEWXJagw7i+Clg
 TvLbl3S9jhDFfDLRTLU713Dt98M3TTTJBi1irzHQGw0+yzdYxMyW83AQm0a72XMm+12E
 VxNw==
X-Gm-Message-State: AOAM530/PVG32khvejG34fTRmgpiWdVnHgkupEErkZ2DLKGX8VgurIdm
 X/RuYox//+kFOdhWxPrK8bjvvA==
X-Google-Smtp-Source: ABdhPJwxf8JZPd4soZH8tiFA70PMwbDqUAwzX9iu+50eMktnT6hbnD1to8hEQRhEd71OIDQlFPrA1g==
X-Received: by 2002:adf:f141:: with SMTP id y1mr7683089wro.104.1643387780869; 
 Fri, 28 Jan 2022 08:36:20 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ed2f:f020:f39:b962:8b8e:9851])
 by smtp.gmail.com with ESMTPSA id
 m6sm5734745wrw.54.2022.01.28.08.36.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Jan 2022 08:36:20 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	rjw@rjwysocki.net
Cc: heiko@sntech.de, robh@kernel.org, lukasz.luba@arm.com, arnd@linaro.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v8 5/5] rockchip/soc/drivers: Add DTPM description for rk3399
Date: Fri, 28 Jan 2022 17:35:37 +0100
Message-Id: <20220128163537.212248-6-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220128163537.212248-1-daniel.lezcano@linaro.org>
References: <20220128163537.212248-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220128_083622_762334_F55D721E 
X-CRM114-Status: GOOD (  17.81  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The DTPM framework does support now the hierarchy description.

The platform specific code can call the hierarchy creation function
with an array of struct dtpm_node pointing to their parent.

This patch provides a description of the big / Little CPUs and the
GPU and tie them together under a virtual 'package' name. Only rk3399 is
described now.

The description could be extended in the future with the memory
controller with devfreq.

The description is always a module and it describes the soft
dependencies. The userspace has to load the softdeps module in the
right order.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Reviewed-by; Heiko Stuebner <heiko@sntech.de>
---
Changelog:
   V8:
   - Add '/* sentinel */' in the last array entry
   - Remove Panfrost dependency in the dtpm rockchip module's Kconfig

   V7:
   - No changes

   V6:
   - Made rk3399 always as a module and added module softdeps

   V5:
   - Module creation
---
drivers/soc/rockchip/Kconfig  |  8 +++++
 drivers/soc/rockchip/Makefile |  1 +
 drivers/soc/rockchip/dtpm.c   | 59 +++++++++++++++++++++++++++++++++++
 3 files changed, 68 insertions(+)
 create mode 100644 drivers/soc/rockchip/dtpm.c

diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
index 25eb2c1e31bb..156ac0e0c8fe 100644
--- a/drivers/soc/rockchip/Kconfig
+++ b/drivers/soc/rockchip/Kconfig
@@ -34,4 +34,12 @@ config ROCKCHIP_PM_DOMAINS
 
           If unsure, say N.
 
+config ROCKCHIP_DTPM
+	tristate "Rockchip DTPM hierarchy"
+	depends on DTPM && m
+	help
+	 Describe the hierarchy for the Dynamic Thermal Power
+	 Management tree on this platform. That will create all the
+	 power capping capable devices.
+
 endif
diff --git a/drivers/soc/rockchip/Makefile b/drivers/soc/rockchip/Makefile
index 875032f7344e..05f31a4e743c 100644
--- a/drivers/soc/rockchip/Makefile
+++ b/drivers/soc/rockchip/Makefile
@@ -5,3 +5,4 @@
 obj-$(CONFIG_ROCKCHIP_GRF) += grf.o
 obj-$(CONFIG_ROCKCHIP_IODOMAIN) += io-domain.o
 obj-$(CONFIG_ROCKCHIP_PM_DOMAINS) += pm_domains.o
+obj-$(CONFIG_ROCKCHIP_DTPM) += dtpm.o
diff --git a/drivers/soc/rockchip/dtpm.c b/drivers/soc/rockchip/dtpm.c
new file mode 100644
index 000000000000..ebebb748488b
--- /dev/null
+++ b/drivers/soc/rockchip/dtpm.c
@@ -0,0 +1,59 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2021 Linaro Limited
+ *
+ * Author: Daniel Lezcano <daniel.lezcano@linaro.org>
+ *
+ * DTPM hierarchy description
+ */
+#include <linux/dtpm.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+
+static struct dtpm_node __initdata rk3399_hierarchy[] = {
+	[0]{ .name = "rk3399",
+	     .type = DTPM_NODE_VIRTUAL },
+	[1]{ .name = "package",
+	     .type = DTPM_NODE_VIRTUAL,
+	     .parent = &rk3399_hierarchy[0] },
+	[2]{ .name = "/cpus/cpu@0",
+	     .type = DTPM_NODE_DT,
+	     .parent = &rk3399_hierarchy[1] },
+	[3]{ .name = "/cpus/cpu@1",
+	     .type = DTPM_NODE_DT,
+	     .parent = &rk3399_hierarchy[1] },
+	[4]{ .name = "/cpus/cpu@2",
+	     .type = DTPM_NODE_DT,
+	     .parent = &rk3399_hierarchy[1] },
+	[5]{ .name = "/cpus/cpu@3",
+	     .type = DTPM_NODE_DT,
+	     .parent = &rk3399_hierarchy[1] },
+	[6]{ .name = "/cpus/cpu@100",
+	     .type = DTPM_NODE_DT,
+	     .parent = &rk3399_hierarchy[1] },
+	[7]{ .name = "/cpus/cpu@101",
+	     .type = DTPM_NODE_DT,
+	     .parent = &rk3399_hierarchy[1] },
+	[8]{ .name = "/gpu@ff9a0000",
+	     .type = DTPM_NODE_DT,
+	     .parent = &rk3399_hierarchy[1] },
+	[9]{ /* sentinel */ }
+};
+
+static struct of_device_id __initdata rockchip_dtpm_match_table[] = {
+        { .compatible = "rockchip,rk3399", .data = rk3399_hierarchy },
+        {},
+};
+
+static int __init rockchip_dtpm_init(void)
+{
+	return dtpm_create_hierarchy(rockchip_dtpm_match_table);
+}
+module_init(rockchip_dtpm_init);
+
+MODULE_SOFTDEP("pre: panfrost cpufreq-dt");
+MODULE_DESCRIPTION("Rockchip DTPM driver");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:dtpm");
+MODULE_AUTHOR("Daniel Lezcano <daniel.lezcano@kernel.org");
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
