Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01FCCFA3746
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypH6XtDFhJrjWmpWaazowTiYE7ow5nNzXAVv3/PlG4w=; b=1BMQjNEixTXb9J
	SRNlzXCOnjP+YN0QspfU6IV/MZXi3Xj6Dvxv+4uEskD1Asd3wVJQFJwMjQd249O6jqPcgYwlSnKZd
	fyVBak9FORExHyRflLmAxpQlp5rOnITivguNOQ1Yd/4b4zZ0gOXt89qMxjeE+L4mkqgta7Sqz5Djh
	OkXBP1QniUe8qy/2qJr1/66CKpUy+5LMK0/AsWOXgxRRQ4Zqf2RlDHMZ4RLaeObEvoweEvdnOOYre
	XOH2CbwlGBq8PkgL2W19cA8unTD97h6D8z/UDbW+A/v+oL4BH6qAmuIyN/qPDD5i9Kb4URpLIifZv
	Ef1l1bwXHNYpSntQkVYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYwO-00DVJc-Rj; Mon, 31 Oct 2022 17:51:16 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYwJ-00DVFO-Hu
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 17:51:13 +0000
Received: from jupiter.universe (dyndsl-095-033-157-181.ewe-ip-backbone.de [95.33.157.181])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8817B6602948;
	Mon, 31 Oct 2022 17:51:03 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667238663;
	bh=kGeCW1YTwGhNttEL0JAP5rbTFVI1UH3AbwhQ1VzHwhQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WwSB0Vi3Lb7nP++iI7kmLX9IXeF6EV96YGvhOgFlyjostnFF9O5UvudkathyoVGND
	 SPrk/qjwdnYvvBIThFino+OiEGBADYgwxoQVajMf8omGdWS6wWfKuuDdCIq9+fCkvE
	 PsGjpcwVSNRWHjIlyTkPIXGgfnB9Fjg8oIFa4+2/Z0xe5M62ayZYHIa3AKI/btVlri
	 IBuhp5kMLvNfbhde3lLuunzXrxKmpgh0ezM2UyKP7BYGSSAJEHTWXvFba1Id5u7P6Q
	 RAUOQ/YT0ctizL/yP4b7NCbK17hpIh1tpkl5AGazB8/RZc3gh06NvIn1xllZckkoBG
	 IfX8WAPKDOqng==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5529F4801D1; Mon, 31 Oct 2022 18:50:59 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 5/7] thermal: rockchip: Support dynamic sized sensor array
Date: Mon, 31 Oct 2022 18:50:56 +0100
Message-Id: <20221031175058.175698-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221031175058.175698-1-sebastian.reichel@collabora.com>
References: <20221031175058.175698-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_105111_747590_B9997473 
X-CRM114-Status: GOOD (  11.83  )
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

Dynamically allocate the sensors array based on the amount
of platform sensors in preparation for rk3588 support, which
needs 7 sensors.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/thermal/rockchip_thermal.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index a547e44e2b64..c9d04b58a1e5 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -51,12 +51,6 @@ enum adc_sort_mode {
 
 #include "thermal_hwmon.h"
 
-/**
- * The max sensors is two in rockchip SoCs.
- * Two sensors: CPU and GPU sensor.
- */
-#define SOC_MAX_SENSORS	2
-
 /**
  * struct chip_tsadc_table - hold information about chip-specific differences
  * @id: conversion table
@@ -147,7 +141,7 @@ struct rockchip_thermal_data {
 	struct platform_device *pdev;
 	struct reset_control *reset;
 
-	struct rockchip_thermal_sensor sensors[SOC_MAX_SENSORS];
+	struct rockchip_thermal_sensor *sensors;
 
 	struct clk *clk;
 	struct clk *pclk;
@@ -1367,6 +1361,11 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 	if (!thermal->chip)
 		return -EINVAL;
 
+	thermal->sensors = devm_kcalloc(&pdev->dev, thermal->chip->chn_num,
+					sizeof(*thermal->sensors), GFP_KERNEL);
+	if (!thermal->sensors)
+		return -ENOMEM;
+
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	thermal->regs = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(thermal->regs))
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
