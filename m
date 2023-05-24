Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74D18C7EE2E
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 08:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etMW8rAByAM5tNRxPSLzVZIJNzJa9/WWOYx72DtRUVA=; b=dP6MnVyiq9EyRY
	2k9F8k502N0Mpm9edGlxhlUWcrkE8pl+ea7kub4JeA+ynUMsQO0ESidWiV6rZUEnPIzeaWU2VXCqM
	ayuFMRcOMVpXBaN1WN4Zc1FSscX8eXvtIphf5JRAuCtsJnnfuQ7JRuoHNmOje3h70nluvHHb6rkmQ
	UEd6O43+5zMlmzR0Ike0mSq6mAk3BQ68jiZq9EnKoiibJGONCH+h78Wjzc0d/Js6IBM1Re3AmiGqC
	xGiHUwCIiZcsVPA3PfCh0nDPhIVjd+oqIB1gpupSNrIIL4rANOFIwIQvLRjHJQjpKcEk9dhaXQiGX
	ClPTvNIOniMDAP+XdsxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1kHP-00CrgP-2Z;
	Wed, 24 May 2023 08:55:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1kGZ-00Cr2Z-11
	for linux-rockchip@bombadil.infradead.org;
	Wed, 24 May 2023 08:54:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ifsY8Q5OpLlsPL+EiUrm6vtNbb2qMkp0oYUaH3KVk2U=; b=FPrF9TGPHo23gh+Vwhd5iBedvA
	/SrBloPOsk3aQ7dTT7CoPJaImIFK9VHSPbZKH2gqk+BTOUGPo2vCOFipCpHLXyDkq48/UyOujNiox
	8uapzdviMqpXJPpumsBLzno2dFSabl5g1aB/tsmKfvcv7xiC6XFF2+Xw9rQ2+sBhJMjK1Jn+8HjoE
	T/CrgFdO2TNXZBpdFuES+H/o8P4cAUJD90apjy9L9+Bnefyx6SBeyIDyYpgc09jAvFzOdCHs++sIq
	nUdHGKAem2f/9gaEiqhnbk90yBgvA1a3yr0GPFzrGMoEkquZ65KClaaOxoFAQqxbrnvE45TmQzrta
	2DjrEz+A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1q1jui-00B18C-Ss
	for linux-rockchip@lists.infradead.org; Wed, 24 May 2023 08:32:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1jub-0002sI-Ql; Wed, 24 May 2023 10:32:01 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1jua-002Rae-On; Wed, 24 May 2023 10:32:00 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juX-009jHl-9L; Wed, 24 May 2023 10:31:57 +0200
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
	Sascha Hauer <s.hauer@pengutronix.de>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: [PATCH v5 17/25] PM / devfreq: rockchip-dfi: make register stride SoC specific
Date: Wed, 24 May 2023 10:31:45 +0200
Message-Id: <20230524083153.2046084-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230524083153.2046084-1-s.hauer@pengutronix.de>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_093209_056048_2A9EB4D5 
X-CRM114-Status: GOOD (  14.17  )
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

The currently supported RK3399 has a stride of 20 between the channel
specific registers. Upcoming RK3588 has a different stride, so put
the stride into driver data to make it configurable.
While at it convert decimal 20 to hex 0x14 for consistency with RK3588
which has a register stride 0x4000 and we want to write that in hex
as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
---
 drivers/devfreq/event/rockchip-dfi.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 88145688e3d9c..a872550a7caf5 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -112,6 +112,7 @@ struct rockchip_dfi {
 	int active_events;
 	int burst_len;
 	int buswidth[DMC_MAX_CHANNELS];
+	int ddrmon_stride;
 };
 
 static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
@@ -189,13 +190,13 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
 		if (!(dfi->channel_mask & BIT(i)))
 			continue;
 		c->c[i].read_access = readl_relaxed(dfi_regs +
-				DDRMON_CH0_RD_NUM + i * 20);
+				DDRMON_CH0_RD_NUM + i * dfi->ddrmon_stride);
 		c->c[i].write_access = readl_relaxed(dfi_regs +
-				DDRMON_CH0_WR_NUM + i * 20);
+				DDRMON_CH0_WR_NUM + i * dfi->ddrmon_stride);
 		c->c[i].access = readl_relaxed(dfi_regs +
-				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
+				DDRMON_CH0_DFI_ACCESS_NUM + i * dfi->ddrmon_stride);
 		c->c[i].clock_cycles = readl_relaxed(dfi_regs +
-				DDRMON_CH0_COUNT_NUM + i * 20);
+				DDRMON_CH0_COUNT_NUM + i * dfi->ddrmon_stride);
 	}
 }
 
@@ -661,6 +662,8 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
 	dfi->buswidth[0] = FIELD_GET(RK3399_PMUGRF_OS_REG2_BW_CH0, val) == 0 ? 4 : 2;
 	dfi->buswidth[1] = FIELD_GET(RK3399_PMUGRF_OS_REG2_BW_CH1, val) == 0 ? 4 : 2;
 
+	dfi->ddrmon_stride = 0x14;
+
 	return 0;
 };
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
