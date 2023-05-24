Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30C80C7EE2E
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 08:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWLAdb6yKTaRQOOeOHvJYphyOJEp00Cbtz91zu41Efw=; b=C2kf0fLCEu3uoR
	XBSKITwOc8wL9O9HG2v1sFkfYgQCIbK4A644QVs/Fex0MW9uQd3nhVwdPzy5tdWTDdOOAi9sHAUWU
	6WdaWHGR0mok2zh6v4MsCvpc1xtWNKz/90iTZc0JQwHqfwL5n2bxhF99/CET+dTJNI8xvYk/6FTOW
	pqlPJ9TCmfOtiEYYN34Qowuvm2adIiedn3YqD5BfRPJ5cvYYTie/dFO7VpOi4oLLFo5ZCK/plupBy
	AFTTf3gBIkMnYV1fsAth4S+9+Ew+NDHz1sZHgHm01bZCUPC9TIFxrw0Q/EYIDjNW3BQzfW0tQndfY
	hbP8IudW52h+Vfcqp6Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1kGc-00Cr8h-2J;
	Wed, 24 May 2023 08:54:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1kGU-00Cr2Z-0k
	for linux-rockchip@bombadil.infradead.org;
	Wed, 24 May 2023 08:54:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=BfdWfFL82Sj9v9lVmFzp1Ri6VF6v4IEwdYbB7ZQI4LY=; b=EfJ1puQ1LUYy2ShPPW7br6D9et
	dZAYquTZZdwnw6xiovThTtD+3otl9ZUla7e3ITsg8taaPlDWXcpnopwOR7F4jvn6djYSCanUOojvg
	aEPSNp3azos/HI8zRmTFJqlwqVg+Fp5GFL8kALA+oHBvbdS38fgJeWdMuOTCiZNlTKVNvPEQwgjCl
	7uu3p/37S8Nl041lsOta0lG6X9Myp08hNxArg0PgKjwStm+RhB+p40QjmjZ8u20jIoF0lRZU3vIsa
	bwwE/wMEYA+tL58nJ3mPCV3NMM8D8U4IOofqxka+H5uTRYJBbtaN/n7WRtiB/HNbNCO0OhkdJ+QD9
	4D7Y05JQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1q1juj-00B1AC-H0
	for linux-rockchip@lists.infradead.org; Wed, 24 May 2023 08:32:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juY-0002lD-UF; Wed, 24 May 2023 10:31:58 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juY-002RZc-0T; Wed, 24 May 2023 10:31:58 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juW-009j9f-JA; Wed, 24 May 2023 10:31:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v5 10/25] PM / devfreq: rockchip-dfi: Add RK3568 support
Date: Wed, 24 May 2023 10:31:38 +0200
Message-Id: <20230524083153.2046084-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230524083153.2046084-1-s.hauer@pengutronix.de>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_093209_711262_66794811 
X-CRM114-Status: GOOD (  17.82  )
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

This adds RK3568 support to the DFI driver.  Only iniitialization
differs from the currently supported RK3399.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 21 +++++++++++++++++++++
 include/soc/rockchip/rk3568_grf.h    | 12 ++++++++++++
 2 files changed, 33 insertions(+)
 create mode 100644 include/soc/rockchip/rk3568_grf.h

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 6b3ef97b3be09..261d112580c9e 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -23,6 +23,7 @@
 
 #include <soc/rockchip/rockchip_grf.h>
 #include <soc/rockchip/rk3399_grf.h>
+#include <soc/rockchip/rk3568_grf.h>
 
 #define DMC_MAX_CHANNELS	2
 
@@ -209,10 +210,30 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
 	return 0;
 };
 
+static int rk3568_dfi_init(struct rockchip_dfi *dfi)
+{
+	struct regmap *regmap_pmu = dfi->regmap_pmu;
+	u32 reg2, reg3;
+
+	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG2, &reg2);
+	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG3, &reg3);
+
+	dfi->ddr_type = FIELD_GET(RK3568_PMUGRF_OS_REG2_DRAMTYPE_INFO, reg2);
+
+	if (FIELD_GET(RK3568_PMUGRF_OS_REG3_SYSREG_VERSION, reg3) >= 0x3)
+		dfi->ddr_type |= FIELD_GET(RK3568_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3, reg3) << 3;
+
+	dfi->channel_mask = 1;
+
+	return 0;
+};
+
 static const struct of_device_id rockchip_dfi_id_match[] = {
 	{ .compatible = "rockchip,rk3399-dfi", .data = rk3399_dfi_init },
+	{ .compatible = "rockchip,rk3568-dfi", .data = rk3568_dfi_init },
 	{ },
 };
+
 MODULE_DEVICE_TABLE(of, rockchip_dfi_id_match);
 
 static int rockchip_dfi_probe(struct platform_device *pdev)
diff --git a/include/soc/rockchip/rk3568_grf.h b/include/soc/rockchip/rk3568_grf.h
new file mode 100644
index 0000000000000..575584e9d8834
--- /dev/null
+++ b/include/soc/rockchip/rk3568_grf.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+#ifndef __SOC_RK3568_GRF_H
+#define __SOC_RK3568_GRF_H
+
+#define RK3568_PMUGRF_OS_REG2		0x208
+#define RK3568_PMUGRF_OS_REG2_DRAMTYPE_INFO		GENMASK(15, 13)
+
+#define RK3568_PMUGRF_OS_REG3		0x20c
+#define RK3568_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3		GENMASK(13, 12)
+#define RK3568_PMUGRF_OS_REG3_SYSREG_VERSION		GENMASK(31, 28)
+
+#endif /* __SOC_RK3568_GRF_H */
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
