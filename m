Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF55DC35FFA
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Mar 2025 14:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVzkC5JbMAHEDloMfMs0iG0S+3I21YsMDMQnro/pHac=; b=WVRoPdUBjhzlH7
	vvnlrIfdv49saaXUX/QlwQFOelKosBO9gbikkqS21BB2aVXUQ1lh2m6ihROQx5i5E3tLc2AIS73WQ
	ZRxIdxMzGdxgG6cS7oHZchGN3P7PhKxaAkS2AKCpD7miu6PlSbPQ7GwhDe7Ecprex2/VRI7I516iX
	qf9DdpNthbplqEN4pcs99Uy1B2mWylMbl8WjfaQjf2pij7K+2FjNpoxwkRDgZhW5aBxUyz9Jv3k8x
	8alZGBRBmpqlTn+VF4B+q9wHGCIYUhT2rZpv5I3MAksi12o81u4HZbRhIWK5TK7yrqXn/J2pbs2/t
	zKlO+306A2TdiYrM4b2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuB8m-00000002r82-3vuV;
	Mon, 17 Mar 2025 14:08:28 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuAri-00000002o1O-2pSl;
	Mon, 17 Mar 2025 13:50:52 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1742219435; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=KleBg1Lq6eaexrFgihaKrlnh0RbCQRygu2SaAqigDVYdr0PTGBvquwZiKELpiAhGqDQ7exjWhglE2qYSuoPe8XIXLe9h+COujTmCnswatWu0O6bq7xmutBs0IwCbQMlYQXQGO6sm2tvptaTqJ03XPBw7yTMvucpg+zpOzdeCRz0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1742219435; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=+BL4sbnqX4su4oOB9SM7aWsMCMWThWHQyYy9TTPI50c=; 
	b=W9LAWtX9l0Y0Jttj1Eju7Ydj5A1Kny2bP9zvHYjwKoVrDldv6mmoUmPk5Ym4QSBXM4rWCrUT/iRGR7FvFshbi+3rx1reNDtfy8tARP1+Pp1+QPHWFQ9YPbC5ao0iZEv0wLpCrKFmVFSbKHGQvoCVw+LW1suJMrrIA55emVWXXyw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1742219435;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=+BL4sbnqX4su4oOB9SM7aWsMCMWThWHQyYy9TTPI50c=;
	b=kDJ5Q4Th5g5scIQ/9hTYdTat9A4BftBEaSuzeyn3U0x6Bggw1okYU78V1zXMwlNI
	41Kok/YbW+PSQamN7PBbTQ4Xva7f/gJhNzYl9k9N2tZUiVKihiT9ivwkNKckqRZwiFp
	oaJ6QPQsQmWht69qpjuoTTEa1ubSiiFC54CLDfBY=
Received: by mx.zohomail.com with SMTPS id 1742219433550257.80612078656725;
	Mon, 17 Mar 2025 06:50:33 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 17 Mar 2025 14:49:29 +0100
Subject: [PATCH v4 4/7] thermal: rockchip: Support RK3576 SoC in the
 thermal driver
MIME-Version: 1.0
Message-Id: <20250317-rk3576-tsadc-upstream-v4-4-c5029ce55d74@collabora.com>
References: <20250317-rk3576-tsadc-upstream-v4-0-c5029ce55d74@collabora.com>
In-Reply-To: <20250317-rk3576-tsadc-upstream-v4-0-c5029ce55d74@collabora.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jonas Karlman <jonas@kwiboo.se>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_065050_785365_B27979F7 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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
Cc: Ye Zhang <ye.zhang@rock-chips.com>, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ye Zhang <ye.zhang@rock-chips.com>

The RK3576 SoC has six TS-ADC channels: TOP, BIG_CORE, LITTLE_CORE,
DDR, NPU and GPU.

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
[ported to mainline, reworded commit message]
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/thermal/rockchip_thermal.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 40c7d234c3ef99f69dd8db4d8c47f9d493c0583d..89e3180667e2a8f0ef5542b0db4d9e19a21a24d3 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1284,6 +1284,28 @@ static const struct rockchip_tsadc_chip rk3568_tsadc_data = {
 	},
 };
 
+static const struct rockchip_tsadc_chip rk3576_tsadc_data = {
+	/* top, big_core, little_core, ddr, npu, gpu */
+	.chn_offset = 0,
+	.chn_num = 6, /* six channels for tsadc */
+	.tshut_mode = TSHUT_MODE_GPIO, /* default TSHUT via GPIO give PMIC */
+	.tshut_polarity = TSHUT_LOW_ACTIVE, /* default TSHUT LOW ACTIVE */
+	.tshut_temp = 95000,
+	.initialize = rk_tsadcv8_initialize,
+	.irq_ack = rk_tsadcv4_irq_ack,
+	.control = rk_tsadcv4_control,
+	.get_temp = rk_tsadcv4_get_temp,
+	.set_alarm_temp = rk_tsadcv3_alarm_temp,
+	.set_tshut_temp = rk_tsadcv3_tshut_temp,
+	.set_tshut_mode = rk_tsadcv4_tshut_mode,
+	.table = {
+		.id = rk3588_code_table,
+		.length = ARRAY_SIZE(rk3588_code_table),
+		.data_mask = TSADCV4_DATA_MASK,
+		.mode = ADC_INCREMENT,
+	},
+};
+
 static const struct rockchip_tsadc_chip rk3588_tsadc_data = {
 	/* top, big_core0, big_core1, little_core, center, gpu, npu */
 	.chn_offset = 0,
@@ -1342,6 +1364,10 @@ static const struct of_device_id of_rockchip_thermal_match[] = {
 		.compatible = "rockchip,rk3568-tsadc",
 		.data = (void *)&rk3568_tsadc_data,
 	},
+	{
+		.compatible = "rockchip,rk3576-tsadc",
+		.data = (void *)&rk3576_tsadc_data,
+	},
 	{
 		.compatible = "rockchip,rk3588-tsadc",
 		.data = (void *)&rk3588_tsadc_data,

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
