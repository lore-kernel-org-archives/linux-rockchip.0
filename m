Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 688FEC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 08:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdMiZgElTxtEb1I+LLu0/VZZ1/Q4hGfc1YZkP/tCIFM=; b=UX1aE/tn+aYfla
	/Vjo/DBLfmccb5aCbJsxZfW09zmqYPuCipTBj9oKvY3eg122IcsO62rdR68OyOIrOuqMpFcXw8k4g
	BttSXl0sdz02gjhHpgVoYNFfe9njyu20FBPhOMnrin0lEKNGgDK2avQJPlU0u0EoGhXOh5srxxFL/
	Rt3jhGyEfCvfkd7xyJccGo0cN/YVSs0kPc9IfzktqDXonY75xzGVARYs2z5QDHoEMBEO8JLuW9w9H
	ajiKnJbYC+7G3ZRxjM8yyi8XfNHVyillKoPaBTDe9WwirPIHMx44VmGkvwWXgmqjhB8iX+KapqzDl
	jU2wE1Xrm2a15t9YXEaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA6nL-004Q4M-KA; Wed, 19 Jan 2022 08:58:19 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA6nI-004Q28-G9
 for linux-rockchip@lists.infradead.org; Wed, 19 Jan 2022 08:58:18 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 25-20020a05600c231900b003497473a9c4so12676173wmo.5
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jan 2022 00:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WvX/s8bbTEktU4nVsA2bYW4MFssxw4eAYf+UAFIZXJk=;
 b=MrImzy9uu0iUhs/Xqm9UKJkxbxm5+Qqi8tQgEMF2ucgXP8LfgYA5r003iQkJ03ngW0
 T6EAqMxa+jwHT2kUV4UkZbAa9mPEmb2UJTiKGvT3X1Vqx/hDuUZFm3duOzuXEkaCtTg8
 Qhcakxx3behCG7oNL681AM7jxCA2D4LcsQ8j/2hVCjUWGBBZqn6iBdlEuaZRzfPJ2eXj
 Z9cWb20P7X0gv1LaQqIvqfHJTEMufI/VwH6OXs7HspX72zdeKrIiWS2iHify/xaKdI1j
 6qlonQq2+YjufnyKlRx7rn7ccCHjWdBHikstr8PneqP3fgB2Jl0YmTvTvDsUdfzsbCt9
 IZUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WvX/s8bbTEktU4nVsA2bYW4MFssxw4eAYf+UAFIZXJk=;
 b=XXDRuZ8zCvyni3uORwHdnsTl7kterf7USdZN8pLhcNt/fbG4lq8jTYVv2/5CrNOaaw
 SmzzDW+iQAPgd/utKSaTU+ozhy/kTp6nE0CUGEbwfL+NRIH42uao2QaYJpvgxCQJaTSw
 RyaDoSvE6yalZ+Ac/Ij5wT32vEChSDvJwKdxIITYUTelfrbnAII/WBFJgBzd+SP9vBH5
 kkHJi4OPxC8GLfCOFhKMonRchhMLbcet+z89HG6/fMAHCUvvPdkA7oJE0Va5aRMXHY4R
 WGEmtpgMxbvEFmwOm2LxPtv0O6jZoVU0OZwj8b5a7XJ/YpKtXSV+hJ9X3Z8M+ljFCZ+M
 1Opw==
X-Gm-Message-State: AOAM531FwEwjOqCnjQ3a6WAj/ZpwiAIIE9/iV8yld10Sl7rhxTlNcsfw
 tRvACKRg/S1DDQbhCELV0SPVBA==
X-Google-Smtp-Source: ABdhPJzS/HE6TlLSUbXmGDVdnyNVZFx19twADA65K11Gxt6VSWu7Z06pl2DSyoxEbb76fETADXeCTw==
X-Received: by 2002:a1c:7914:: with SMTP id l20mr2394454wme.26.1642582694514; 
 Wed, 19 Jan 2022 00:58:14 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ed2f:f020:ef34:de48:dc4e:ad87])
 by smtp.gmail.com with ESMTPSA id 10sm4491454wmc.44.2022.01.19.00.58.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Jan 2022 00:58:13 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	rjw@rjwysocki.net
Cc: robh@kernel.org, lukasz.luba@arm.com, heiko@sntech.de, arnd@linaro.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v6 5/5] rockchip/soc/drivers: Add DTPM description for rk3399
Date: Wed, 19 Jan 2022 09:57:19 +0100
Message-Id: <20220119085719.1357874-6-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220119085719.1357874-1-daniel.lezcano@linaro.org>
References: <20220119085719.1357874-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_005816_577457_2E35B66C 
X-CRM114-Status: GOOD (  17.98  )
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
---
 drivers/soc/rockchip/Kconfig  |  8 +++++
 drivers/soc/rockchip/Makefile |  1 +
 drivers/soc/rockchip/dtpm.c   | 59 +++++++++++++++++++++++++++++++++++
 3 files changed, 68 insertions(+)
 create mode 100644 drivers/soc/rockchip/dtpm.c

diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
index 25eb2c1e31bb..6dc017f02431 100644
--- a/drivers/soc/rockchip/Kconfig
+++ b/drivers/soc/rockchip/Kconfig
@@ -34,4 +34,12 @@ config ROCKCHIP_PM_DOMAINS
 
           If unsure, say N.
 
+config ROCKCHIP_DTPM
+	tristate "Rockchip DTPM hierarchy"
+	depends on DTPM && DRM_PANFROST && m
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
index 000000000000..0b73a9cba954
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
+	[9]{ },
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
