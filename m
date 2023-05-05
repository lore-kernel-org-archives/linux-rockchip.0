Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 824D3C77B7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 May 2023 11:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04AkfLveScp3sXgpBZlezLocl7zRy9NbeJIsAoCajlM=; b=DrU/JiSF5Mxo7T
	HZjdE5WyddwgyoQujSKK9GEUIZtEozcLFzpSE6mFuME0LrhW1urJdwpbvqbMT+An+zu6PLlpsXwFF
	3uDz4dSfQpnAGgFakZTE3ORgUwy3o+e8hqnW1Tvs5j/676H7+pZ2TSIBtgho3LlvLAvhZ6fzERV7T
	lNvzhPZnda9Osi3lTq+NlwCof8ueAwiwp/XD91tC/60zr3xntw+JeXldXgdLOhtYyHbEndsxyXand
	eY+WH0xowRsOD4VpXHGKEH+EGH9o+nWvf7BUxS5eajHv8jH+dT0TiTHJ5tLFbPvRCSr4NgZhPYfsz
	LFjuYibkazFnDw4DDsVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1putmY-00AjAP-2Q;
	Fri, 05 May 2023 11:39:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putmL-00Aj0w-0O
	for linux-rockchip@lists.infradead.org;
	Fri, 05 May 2023 11:39:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1putmB-0001Vg-NC; Fri, 05 May 2023 13:39:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putmA-001Hbf-Sl; Fri, 05 May 2023 13:39:02 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putm8-003RpX-Ds; Fri, 05 May 2023 13:39:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v4 18/21] PM / devfreq: rockchip-dfi: add support for RK3588
Date: Fri,  5 May 2023 13:38:53 +0200
Message-Id: <20230505113856.463650-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230505113856.463650-1-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_043913_272258_D9B3BCFC 
X-CRM114-Status: GOOD (  18.47  )
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

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 34 +++++++++++++++++++++++++++-
 include/soc/rockchip/rk3588_grf.h    | 18 +++++++++++++++
 2 files changed, 51 insertions(+), 1 deletion(-)
 create mode 100644 include/soc/rockchip/rk3588_grf.h

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 74d69153e6386..3630981505c6d 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -25,8 +25,9 @@
 #include <soc/rockchip/rockchip_grf.h>
 #include <soc/rockchip/rk3399_grf.h>
 #include <soc/rockchip/rk3568_grf.h>
+#include <soc/rockchip/rk3588_grf.h>
 
-#define DMC_MAX_CHANNELS	2
+#define DMC_MAX_CHANNELS	4
 
 #define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
 
@@ -616,6 +617,32 @@ static int rk3568_dfi_init(struct rockchip_dfi *dfi)
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
+	dfi->ddr_type = FIELD_GET(RK3588_PMUGRF_OS_REG2_DRAMTYPE_INFO, reg2);
+
+	if (FIELD_GET(RK3588_PMUGRF_OS_REG3_SYSREG_VERSION, reg3) >= 0x3)
+		dfi->ddr_type |= FIELD_GET(RK3588_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3, reg3) << 3;
+
+	dfi->buswidth[0] = FIELD_GET(RK3588_PMUGRF_OS_REG2_BW_CH0, reg2) == 0 ? 4 : 2;
+	dfi->buswidth[1] = FIELD_GET(RK3588_PMUGRF_OS_REG2_BW_CH1, reg2) == 0 ? 4 : 2;
+	dfi->buswidth[2] = FIELD_GET(RK3568_PMUGRF_OS_REG2_BW_CH0, reg4) == 0 ? 4 : 2;
+	dfi->buswidth[3] = FIELD_GET(RK3588_PMUGRF_OS_REG2_BW_CH1, reg4) == 0 ? 4 : 2;
+	dfi->channel_mask = FIELD_GET(RK3588_PMUGRF_OS_REG2_CH_INFO, reg2) |
+			    FIELD_GET(RK3588_PMUGRF_OS_REG2_CH_INFO, reg4) << 2;
+
+	dfi->ddrmon_stride = 0x4000;
+
+	return 0;
+};
+
 struct rockchip_dfi_devtype_data {
 	int (*init)(struct rockchip_dfi *dfi);
 };
@@ -628,9 +655,14 @@ static struct rockchip_dfi_devtype_data rk3568_devtype_data = {
 	.init = rk3568_dfi_init,
 };
 
+static struct rockchip_dfi_devtype_data rk3588_devtype_data = {
+	.init = rk3588_dfi_init,
+};
+
 static const struct of_device_id rockchip_dfi_id_match[] = {
 	{ .compatible = "rockchip,rk3399-dfi", .data = &rk3399_devtype_data },
 	{ .compatible = "rockchip,rk3568-dfi", .data = &rk3568_devtype_data },
+	{ .compatible = "rockchip,rk3588-dfi", .data = &rk3588_devtype_data },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, rockchip_dfi_id_match);
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
