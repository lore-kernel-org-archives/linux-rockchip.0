Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 421CBEB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jul 2023 09:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mImOZ7Csv6gkzJDbJ/8d26WPZop3AJU465OrRi1RwOU=; b=ZpWpvtKFYUcpOo
	FpQ239f3n/fN/k5pQDVfl+yHt5s+720m264HJddmCbH/TEECR2M4FN/f/qBMoUySQrYm8aAWJdZ1R
	I/zQBIiSSFkxmFdF46onsCFDvHIpxVEH2G2IdEq8v6yu8JrQ7w2tnI+iPlT0FeIoj1Q9qXxulx7M0
	k+N3PqSG43l6oGIzb/xzMqchOMZ6zdua332Hertp6fgY1avJ4FgIwQ34L1V46dLw2VyCzAipKQzSD
	83mdvMvUXelEPLYwXM4wJgG6MeGDJSmk2kwG9K2c6UvxIF7RWEdI/UoJev1r56neBpEmhlth4lg8Y
	aKPMSKwFc4Yng2P4FUGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcPr-00Cjok-2O;
	Tue, 04 Jul 2023 09:33:47 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcPJ-00CjBp-0R
	for linux-rockchip@bombadil.infradead.org;
	Tue, 04 Jul 2023 09:33:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6l0HT7a6rJZNYfPPc8pxtL/Cx53sW4xoZ3iu+8PtrQU=; b=ETojCWjLBZva6PO5SqYui/cP7t
	8BZdiNP6hDEkXVAJzgPfXqxGom3AIpVDhqjPBOS3Z0KfLmXo1JkZlgrIu3ceriKlU7YTd496niLFR
	8FLp2scQtWSZ2W8v2L3LL1apw3vUCFVyYiH5FwTyuZXHE/c58th3AYlSaKTT5s35l2cuxMSG9/2rc
	oUhAm2cMXlvS8G6eobHNxaBmpYinkBlVJsgHOcbY1wWfoLhAf0kHeGOd4+BUO8yxcCgPaYukSVifM
	RYz41UbqzSHufgZVIpY7gafFWgvHjnMRR3l05vLKY6Exjs7TMqO0/nIKrTkU8krs9A/c15aOfGw+q
	xv2n4aGw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qGcP9-0091JQ-4H
	for linux-rockchip@lists.infradead.org; Tue, 04 Jul 2023 09:33:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOx-0006yZ-Fd; Tue, 04 Jul 2023 11:32:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOw-00C0Ay-Oa; Tue, 04 Jul 2023 11:32:50 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOr-002TyF-6d; Tue, 04 Jul 2023 11:32:45 +0200
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
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: [PATCH v7 12/26] PM / devfreq: rockchip-dfi: Handle LPDDR4X
Date: Tue,  4 Jul 2023 11:32:28 +0200
Message-Id: <20230704093242.583575-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230704093242.583575-1-s.hauer@pengutronix.de>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_103303_410613_E22CEC53 
X-CRM114-Status: GOOD (  13.26  )
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

In the DFI driver LPDDR4X can be handled in the same way as LPDDR4. Add
the missing case.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 1 +
 include/soc/rockchip/rockchip_grf.h  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 16cd5365671f7..0a568c5551699 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -89,6 +89,7 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
 			       dfi_regs + DDRMON_CTRL);
 		break;
 	case ROCKCHIP_DDRTYPE_LPDDR4:
+	case ROCKCHIP_DDRTYPE_LPDDR4X:
 		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
 			       dfi_regs + DDRMON_CTRL);
 		break;
diff --git a/include/soc/rockchip/rockchip_grf.h b/include/soc/rockchip/rockchip_grf.h
index dde1a9796ccb5..e46fd72aea8d1 100644
--- a/include/soc/rockchip/rockchip_grf.h
+++ b/include/soc/rockchip/rockchip_grf.h
@@ -12,6 +12,7 @@ enum {
 	ROCKCHIP_DDRTYPE_LPDDR2	= 5,
 	ROCKCHIP_DDRTYPE_LPDDR3	= 6,
 	ROCKCHIP_DDRTYPE_LPDDR4	= 7,
+	ROCKCHIP_DDRTYPE_LPDDR4X = 8,
 };
 
 #endif /* __SOC_ROCKCHIP_GRF_H */
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
