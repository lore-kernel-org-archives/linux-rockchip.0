Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BEE5CDB482
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 06:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nsg7BgMIBXkBQS0adTL5GA97mQY7EMtKQlUQWdeR2dc=; b=lD8Nm816WzZ0T8
	AtHKXn4rk8xLaT3nvRuGlUEklOr8uNrAEaraHTrCkSQMPBB+bPh8ar34f+6FN1DT0sxWd8U1OXr57
	j6rbiiXksvmcP912fHeAuM+Sr5q0AX547U+xa4tAHNrwEwvHErzpa9P/0TU2bDcm0evJOumQllAuG
	ybNs7XDuUgzmLFk2vHClIGfxCdYML5d5fPlgQiXQIyw7FsvAlM/FCsheZdbtsxXzYyChJ+F3LLxDV
	Lr3WNJmEu5Y+mDunMLXLZHU33kugojcalgoh5F4gb4EVBXCjPFY2Js8GFqxeoV6ixNN7J/BS5Szv2
	X9CkobMNk2cqpzRhN5OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qszsO-00DtWs-1b;
	Wed, 18 Oct 2023 06:17:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qszry-00DtA0-27
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 06:17:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrx-0001Zy-7m; Wed, 18 Oct 2023 08:17:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrr-002UYZ-7T; Wed, 18 Oct 2023 08:17:19 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrr-00EvjG-0B;
	Wed, 18 Oct 2023 08:17:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Chanwoo Choi <chanwoo@kernel.org>,
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
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: [PATCH v8 19/26] PM / devfreq: rockchip-dfi: add support for RK3588
Date: Wed, 18 Oct 2023 08:17:07 +0200
Message-Id: <20231018061714.3553817-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231018061714.3553817-1-s.hauer@pengutronix.de>
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_231726_862707_8AEA6FA3 
X-CRM114-Status: GOOD (  19.60  )
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

Add support for the RK3588 to the driver. The RK3588 has four DDR
channels with a register stride of 0x4000 between the channel
registers, also it has a DDRMON_CTRL register per channel.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 36 +++++++++++++++++++++++++++-
 include/soc/rockchip/rk3588_grf.h    | 18 ++++++++++++++
 2 files changed, 53 insertions(+), 1 deletion(-)
 create mode 100644 include/soc/rockchip/rk3588_grf.h

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index bf38829a2a4af..794f36e7eebd1 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -26,8 +26,9 @@
 #include <soc/rockchip/rockchip_grf.h>
 #include <soc/rockchip/rk3399_grf.h>
 #include <soc/rockchip/rk3568_grf.h>
+#include <soc/rockchip/rk3588_grf.h>
 
-#define DMC_MAX_CHANNELS	2
+#define DMC_MAX_CHANNELS	4
 
 #define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
 
@@ -723,9 +724,42 @@ static int rk3568_dfi_init(struct rockchip_dfi *dfi)
 	return 0;
 };
 
+static int rk3588_dfi_init(struct rockchip_dfi *dfi)
+{
+	struct regmap *regmap_pmu = dfi->regmap_pmu;
+	u32 reg2, reg3, reg4;
+
+	regmap_read(regmap_pmu, RK3588_PMUGRF_OS_REG2, &reg2);
+	regmap_read(regmap_pmu, RK3588_PMUGRF_OS_REG3, &reg3);
+	regmap_read(regmap_pmu, RK3588_PMUGRF_OS_REG4, &reg4);
+
+	/* lower 3 bits of the DDR type */
+	dfi->ddr_type = FIELD_GET(RK3588_PMUGRF_OS_REG2_DRAMTYPE_INFO, reg2);
+
+	/*
+	 * For version three and higher the upper two bits of the DDR type are
+	 * in RK3588_PMUGRF_OS_REG3
+	 */
+	if (FIELD_GET(RK3588_PMUGRF_OS_REG3_SYSREG_VERSION, reg3) >= 0x3)
+		dfi->ddr_type |= FIELD_GET(RK3588_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3, reg3) << 3;
+
+	dfi->buswidth[0] = FIELD_GET(RK3588_PMUGRF_OS_REG2_BW_CH0, reg2) == 0 ? 4 : 2;
+	dfi->buswidth[1] = FIELD_GET(RK3588_PMUGRF_OS_REG2_BW_CH1, reg2) == 0 ? 4 : 2;
+	dfi->buswidth[2] = FIELD_GET(RK3568_PMUGRF_OS_REG2_BW_CH0, reg4) == 0 ? 4 : 2;
+	dfi->buswidth[3] = FIELD_GET(RK3588_PMUGRF_OS_REG2_BW_CH1, reg4) == 0 ? 4 : 2;
+	dfi->channel_mask = FIELD_GET(RK3588_PMUGRF_OS_REG2_CH_INFO, reg2) |
+			    FIELD_GET(RK3588_PMUGRF_OS_REG2_CH_INFO, reg4) << 2;
+	dfi->max_channels = 4;
+
+	dfi->ddrmon_stride = 0x4000;
+
+	return 0;
+};
+
 static const struct of_device_id rockchip_dfi_id_match[] = {
 	{ .compatible = "rockchip,rk3399-dfi", .data = rk3399_dfi_init },
 	{ .compatible = "rockchip,rk3568-dfi", .data = rk3568_dfi_init },
+	{ .compatible = "rockchip,rk3588-dfi", .data = rk3588_dfi_init },
 	{ },
 };
 
diff --git a/include/soc/rockchip/rk3588_grf.h b/include/soc/rockchip/rk3588_grf.h
new file mode 100644
index 0000000000000..630b35a550640
--- /dev/null
+++ b/include/soc/rockchip/rk3588_grf.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+#ifndef __SOC_RK3588_GRF_H
+#define __SOC_RK3588_GRF_H
+
+#define RK3588_PMUGRF_OS_REG2		0x208
+#define RK3588_PMUGRF_OS_REG2_DRAMTYPE_INFO		GENMASK(15, 13)
+#define RK3588_PMUGRF_OS_REG2_BW_CH0			GENMASK(3, 2)
+#define RK3588_PMUGRF_OS_REG2_BW_CH1                    GENMASK(19, 18)
+#define RK3588_PMUGRF_OS_REG2_CH_INFO                   GENMASK(29, 28)
+
+#define RK3588_PMUGRF_OS_REG3		0x20c
+#define RK3588_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3		GENMASK(13, 12)
+#define RK3588_PMUGRF_OS_REG3_SYSREG_VERSION		GENMASK(31, 28)
+
+#define RK3588_PMUGRF_OS_REG4           0x210
+#define RK3588_PMUGRF_OS_REG5           0x214
+
+#endif /* __SOC_RK3588_GRF_H */
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
