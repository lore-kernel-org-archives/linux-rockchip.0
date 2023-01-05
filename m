Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A16A0C3DA7D
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jan 2023 20:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIY9yIObdQfnyCPncyjaZHFDi1VPThEDJQM3JTkAChg=; b=GjhOhtZknhbS3v
	dqS0IC9fa0ybglcLS6EKcjB5vArhsLdFxp/M72LUXKtcHzMTCpXlCxD2BTVKoPfI16VPpyuGnT2I1
	thRLjZ9ZZ9qYH1btpZbGJLwMDYw2+ZSDCevepK6cfUwgpc4m0lk1nRqEmwIIIjP+roNz18GKWCJTG
	feB28saOPM4GwL3LY5o4/3msP4DvyO0AeLo9axcsbb2/SIP9EE04Fk8DmPf8FYeMfpC8MBwxsfIMT
	lLfQTX4x+ntElpcXmmau9RdEinenr0079dRC+yURejESMsgxXifLvkwPvZbQZlgHSI5mhQH/8mzGj
	t1AJx7Enq+BRuuheBa/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDX8e-00EjMW-Br; Thu, 05 Jan 2023 20:47:00 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDUaq-00DJ87-FR
	for linux-rockchip@lists.infradead.org; Thu, 05 Jan 2023 18:03:58 +0000
Received: from jupiter.universe (dyndsl-085-016-198-020.ewe-ip-backbone.de [85.16.198.20])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D2D1E6602D35;
	Thu,  5 Jan 2023 18:03:47 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1672941827;
	bh=CMD2O/f303Ik9opLVvnEYNOZzTeK6AZzuQ+9TPeDUFM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OrfpiZz7xC1AQpWQZL8Eq8JI6bfPpdW9jGMfsiFdl2j3vYTMEEiEnIfaG4h+SZmc5
	 OE0jpcHbwFIl3ryjBqLOkR/QHE1/quXEqxk6RZq4UR9/Qwu4ql4rkZtVbjhOwpOm2L
	 QCVqfjms9IgJT1a2JsR5d1nZKUnDddnKl2F/B919kTcLLySjsaiVviR8bskWCqJmJ+
	 g1Qkr31GLv4y9BG6iLnQII/3yev+LH/tlyFdU1inbqwWUsTkQgIBUMe4O5TgrTIItz
	 XY1ZxGxpPlP8276u/DpqNilGRUDxvAnFwOjjSYYaKRCEig5Vp/b2MLeGxHisZa/qY/
	 5ork/bJzGDDJQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id ABB4F48011C; Thu,  5 Jan 2023 19:03:42 +0100 (CET)
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
Subject: [PATCHv3 5/7] thermal: rockchip: Support dynamic sized sensor array
Date: Thu,  5 Jan 2023 19:03:38 +0100
Message-Id: <20230105180340.29140-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230105180340.29140-1-sebastian.reichel@collabora.com>
References: <20230105180340.29140-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_100356_811219_B5CF6CCC 
X-CRM114-Status: GOOD (  12.48  )
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

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/thermal/rockchip_thermal.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 2c8a8b365c80..c104c60faafd 100644
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
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
