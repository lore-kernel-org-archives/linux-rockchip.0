Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59FC2CDB485
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 06:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6C42hNk3yM38Hie6D8Lu706CO82bHStf7XbC7i8o0qw=; b=tbML+NznLg6orA
	Wek/yCvCZ7iGDO5i9lGExOeF8VPsNDPbqKmSyxqwyXQO1p9zj6+unI4SPoo5ZAyqE3bDr9sbrPJO1
	snIOHjpqaMVNCMzoQ1ln9iY67fF2gH+UOwV4eSzm+u4sN30X+tHdzaHWmJfgT3iMr2DUDTq1B9MOi
	I4XI5YqzMA7fuQlE9uNP3BjI3Hf39o8iIX6EEF08G2JtYtyu2hlXobmY5pRNPBlEhaZgKIYzMk9Nw
	6xM+hN4HPLlPBUHo1/XfDBvOP3ZkTZbDlVYSMehuIGv3aB7IcziQy0mLfMdSdZWQkMHbhxkueZnss
	CaOsAB/X0ogOd9rQFCDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qszt3-00Du7Y-21;
	Wed, 18 Oct 2023 06:18:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qszs7-00DtIW-2H
	for linux-rockchip@bombadil.infradead.org;
	Wed, 18 Oct 2023 06:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=wFqAtGjEvCicHT0s3lqohL/GXN43uV2DMMR+JQPIDw0=; b=Oefp4RnnXqQYyEW9k6pDrfwccL
	clWmAVHEqKIAEEm/YBzeTznRacUFElgX6iJO9u0hy1VPlDp5RvL/7J5mwJZ1b7WazINygjWgyAKRF
	7bZWOeHBQM6/3kDKAJfED/lEVMkvwr95bptV8+1zT/9OA43emEiWypPMuf/C1G3XaeWzi9L7SwSYi
	Ddzl9umPP4cz+ntJYbm3tfWGgFpMtYBpI8CGr8yslSuDKmTnd1OlbwuL7lwW87szASoQLRkTnlRK/
	ugjLp/wsNS1LoH5LxeDBCi9lxztpTI2Q2/JNeO5UAXNwttD/LN0kXxxXRPYORTfmHXFJCYa4IAxB+
	d8nf9wqA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qszs0-007uBY-2S
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 06:17:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrx-0001Zp-7b; Wed, 18 Oct 2023 08:17:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrq-002UY3-Qg; Wed, 18 Oct 2023 08:17:18 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrq-00EviL-2J;
	Wed, 18 Oct 2023 08:17:18 +0200
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
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v8 07/26] PM / devfreq: rockchip-dfi: introduce channel mask
Date: Wed, 18 Oct 2023 08:16:55 +0200
Message-Id: <20231018061714.3553817-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231018061714.3553817-1-s.hauer@pengutronix.de>
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_071728_940931_3AD414D7 
X-CRM114-Status: GOOD (  18.31  )
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

Different Rockchip SoC variants have a different number of channels.
Introduce a channel mask to make the number of channels configurable
from SoC initialization code.

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v7:
     - Loop only over channels present on a SoC

 drivers/devfreq/event/rockchip-dfi.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 126bb744645b6..28c18bbf6baa5 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -18,10 +18,11 @@
 #include <linux/list.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/bits.h>
 
 #include <soc/rockchip/rk3399_grf.h>
 
-#define RK3399_DMC_NUM_CH	2
+#define DMC_MAX_CHANNELS	2
 
 /* DDRMON_CTRL */
 #define DDRMON_CTRL	0x04
@@ -44,7 +45,7 @@ struct dmc_count_channel {
 };
 
 struct dmc_count {
-	struct dmc_count_channel c[RK3399_DMC_NUM_CH];
+	struct dmc_count_channel c[DMC_MAX_CHANNELS];
 };
 
 /*
@@ -61,6 +62,8 @@ struct rockchip_dfi {
 	struct regmap *regmap_pmu;
 	struct clk *clk;
 	u32 ddr_type;
+	unsigned int channel_mask;
+	unsigned int max_channels;
 };
 
 static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
@@ -95,7 +98,9 @@ static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dm
 	u32 i;
 	void __iomem *dfi_regs = dfi->regs;
 
-	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
+	for (i = 0; i < dfi->max_channels; i++) {
+		if (!(dfi->channel_mask & BIT(i)))
+			continue;
 		count->c[i].access = readl_relaxed(dfi_regs +
 				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
 		count->c[i].total = readl_relaxed(dfi_regs +
@@ -145,9 +150,14 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
 	rockchip_dfi_read_counters(edev, &count);
 
 	/* We can only report one channel, so find the busiest one */
-	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
-		u32 a = count.c[i].access - last->c[i].access;
-		u32 t = count.c[i].total - last->c[i].total;
+	for (i = 0; i < dfi->max_channels; i++) {
+		u32 a, t;
+
+		if (!(dfi->channel_mask & BIT(i)))
+			continue;
+
+		a = count.c[i].access - last->c[i].access;
+		t = count.c[i].total - last->c[i].total;
 
 		if (a > access) {
 			access = a;
@@ -185,6 +195,9 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
 	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
 			RK3399_PMUGRF_DDRTYPE_MASK;
 
+	dfi->channel_mask = GENMASK(1, 0);
+	dfi->max_channels = 2;
+
 	return 0;
 };
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
