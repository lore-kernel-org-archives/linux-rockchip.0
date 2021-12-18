Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C536C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Dec 2021 13:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0wWlhU5KiNNBzvGrmH0AEklEFc4QLLokrca1UQvEP9k=; b=34+L/JQTgwO8w8
	HG1lyez9rRLfnz8/u8CMC9prt53jiqHgLjp9aC6mDSot6IqDMhGsLVx+7Jxst6R6Um0WlxbUv+Iex
	bpMRHivMB+j/dQGJXIqFVyJ7/J6XayATSFTlBac6/3ItsZJIYNgcpiiISVdaZaC0DoDD1aPWxHRr1
	nmtnBM3fQJrFOi86MNQnY5ap09QelryLfDuGguFSuj+srt6gU/vp3LfVZuxzP85JJVPNvDpLqC8Vk
	4slsyKchVA4QsnAcib18aA2R1K5BluSySbIpLsmatFehQ5D/GoH8usXTYD+8wvqQ1NqFy9IBv0YkT
	8E8cKxDY+jr2bT9L5inQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myZKc-00DqAp-4r; Sat, 18 Dec 2021 13:00:58 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myZKO-00Dq7g-PS
 for linux-rockchip@lists.infradead.org; Sat, 18 Dec 2021 13:00:46 +0000
Received: by mail-wr1-x430.google.com with SMTP id t18so9328171wrg.11
 for <linux-rockchip@lists.infradead.org>; Sat, 18 Dec 2021 05:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bFrG3jh1s5lAFnowWpm51QcHRy95WOWLO0hOKfLwkAQ=;
 b=h4X0nR9C/gIczMARHZo3uC+j/8Z2sId88Si8wlDGqCUt4kajYq+3wPntNdZyiy0fIX
 7S/+1HawPe87vjZtswRqbxXlQGZ6n9RT9cHanwSNaXlMvAq5G5qv7DZ+gFSeIV1ybF41
 VO+B5kODFNDtJMvvOax7rQHaSZFN6lVhWrOCWLI2UziVBb58Y+2hHA0yGp0tnr7WzBWE
 fNZPzY/lErvwKC+k1qE+ofcX7MIgLo8PPG66kaNErZrfrFuaR2WeV4aOq1l5vAB5btb3
 nTJgw2lAY55Jee6TEIeLOrWFc45Sd3yXJxxzf5cBYYOwWOFtbX+BT4IJ4nx7gRV+3DeZ
 rQ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bFrG3jh1s5lAFnowWpm51QcHRy95WOWLO0hOKfLwkAQ=;
 b=Y45DISxVhLKq2USzfExzS62sJo98fVuIxSTgIXtkfP9HBQJhltgyNrxoGBmnuClMZ3
 hQ2tzQRgM1Egw/MLgNaujeX5z6SJNbuleerTwX7JfeSKlly8MgmHokLNxwsIEJ9V+ppb
 WCkCDXlx6+OhyPKnanTsJMu84NzYQKxjLGjI10WNVN4XTWyJWGzDbkQN0y0fQ0c921N2
 Rj/x0OaBxkefuxpeq+Ay1g3zDi9/lQdezhmn8mh+vq1hkwi1jO9dgyCD9u583noX9e04
 6wRMF3twSxmTzkU8uybmo1gx1CtjUOnO8hbNpW8HJat8MxqH7Sv3Buax9mOkpFC/kduj
 6gOQ==
X-Gm-Message-State: AOAM533r31F1tRYCJrWb1pw2QJ2cl6xraNenQc8N3S6OFPWUqM0Uw5Ga
 sIp+yejoAXfnBr3FFwd7pGsXzw==
X-Google-Smtp-Source: ABdhPJwQJq2AfoqfQVqk3a7iBERI4zg3RIYnxZCE9RJKE8RaDu3lhZqX9mQXoSWx5OoqfDCBv9GgdQ==
X-Received: by 2002:a05:6000:18ad:: with SMTP id
 b13mr6142117wri.195.1639832441000; 
 Sat, 18 Dec 2021 05:00:41 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ed2f:f020:1f0f:c9b8:ee5c:5c2f])
 by smtp.gmail.com with ESMTPSA id j16sm1465785wms.12.2021.12.18.05.00.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Dec 2021 05:00:40 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	rjw@rjwysocki.net
Cc: lukasz.luba@arm.com, robh@kernel.org, heiko@sntech.de, arnd@linaro.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 ulf.hansson@linaro.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v5 5/6] rockchip/soc/drivers: Add DTPM description for rk3399
Date: Sat, 18 Dec 2021 14:00:13 +0100
Message-Id: <20211218130014.4037640-6-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211218130014.4037640-1-daniel.lezcano@linaro.org>
References: <20211218130014.4037640-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211218_050044_883998_64E37112 
X-CRM114-Status: GOOD (  18.92  )
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

This patch provides a description of the big and Little CPUs and the
GPU and tie them together under a virtual package name. Only rk3399 is
described now.

The description could be extended in the future with the memory
controller with devfreq if it has the energy information.

The hierarchy uses the GPU devfreq with the panfrost driver, and this
one could be loaded as a module. If the hierarchy is created before
the panfrost driver is loaded, it will fail. For this reason the
Kconfig option depends on the panfrost Kconfig's option. If this one
is compiled as a module, automatically the dtpm hierarchy code will be
a module also. Module loading ordering will fix this chicken-egg
problem.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/soc/rockchip/Kconfig  |  8 +++++
 drivers/soc/rockchip/Makefile |  1 +
 drivers/soc/rockchip/dtpm.c   | 56 +++++++++++++++++++++++++++++++++++
 3 files changed, 65 insertions(+)
 create mode 100644 drivers/soc/rockchip/dtpm.c

diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
index 25eb2c1e31bb..a88fe6d3064a 100644
--- a/drivers/soc/rockchip/Kconfig
+++ b/drivers/soc/rockchip/Kconfig
@@ -34,4 +34,12 @@ config ROCKCHIP_PM_DOMAINS
 
           If unsure, say N.
 
+config ROCKCHIP_DTPM
+	tristate "Rockchip DTPM hierarchy"
+	depends on DTPM && DRM_PANFROST
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
index 000000000000..77edc565c110
--- /dev/null
+++ b/drivers/soc/rockchip/dtpm.c
@@ -0,0 +1,56 @@
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
+	[0]{ .name = "rk3399" },
+	[1]{ .name = "package",
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
+	[8]{ .name = "rockchip,rk3399-mali",
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
+late_initcall(rockchip_dtpm_init);
+
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
