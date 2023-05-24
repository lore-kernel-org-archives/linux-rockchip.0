Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FFEDC77B73
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 08:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYr14Aptwu8i4fX4HV3Wl0+t5DX0KRC5P2uwwvTNJeI=; b=HkZin0K6FdUrJv
	pO6eC3ccj+SzecRC42DNsG2F8LJ9Se77vichZqZfjFI0pgKNAr37lsVGPWNpfMZcJipw0dkH0b25B
	1l42LhWOiu28mHCGkXLiVpgu4PzyLNw71eKhlk7WP7XvL5VKN6IAZi+JFvlddx9pbUWUUkFVC1r6/
	+PbFdX0Pn4xr52zno64SSv9ZkZ/LUzHqcHiEmIc4Zs/T5vWj2vePuRVvRGiXS5tz6GWVUGfR4CNV2
	PSn9cM//Pmw6vwqf6oslmtOtLJjVD+LOShIqHvKhTVsgJRUm61FuQnFOtvFoVnG58+CsVT7cUxuVc
	9K0ByO4RAGmhZmEHcfRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1jwr-00Cnvb-22;
	Wed, 24 May 2023 08:34:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1jwp-00Cnt6-08
	for linux-rockchip@bombadil.infradead.org;
	Wed, 24 May 2023 08:34:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=eI4+PvQ8wJHFLjyWwBbPk81PRsHdngY9uD9XeDUAZk8=; b=mehM1PzLdcxMLmxL3aJBYHJTT8
	Cj2cVKpk8gKeqfWobjBoyO/jBbrKTGgLSd4oNJbOnZXT1CGGGwyEyrqVTc0Flg5dyEFwStos/zwip
	kwzBO3bFN9omH7kgZtPrl9vE/kuDd4OJusdqbS4hitsKZ0D3L0ijuWsleuUzNyNEvp1cjR/qhVPRo
	Wbz4KkCaUWqldcOX3SkRkfsMwJOwEJ55BBL3RPujUX/TYP2YDGwLoBZJIQee/T81SRHfYA9EDmxMi
	qTGzZ7/EmmaOtkOhQOZY5mXMt8Lx4hkZVUDBGXPGvOCq0EWXZE4QZ7wmJrrR+cD2+0krU2imU9wwi
	1rRFsgjg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1juk-004wTl-1k
	for linux-rockchip@lists.infradead.org;
	Wed, 24 May 2023 08:34:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1jua-0002n8-Jw; Wed, 24 May 2023 10:32:00 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juZ-002Ra5-9g; Wed, 24 May 2023 10:31:59 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juW-009jAe-LU; Wed, 24 May 2023 10:31:56 +0200
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
Subject: [PATCH v5 11/25] PM / devfreq: rockchip-dfi: Handle LPDDR2 correctly
Date: Wed, 24 May 2023 10:31:39 +0200
Message-Id: <20230524083153.2046084-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230524083153.2046084-1-s.hauer@pengutronix.de>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_093411_223053_C682B80A 
X-CRM114-Status: GOOD (  13.89  )
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

According to the downstream driver the DDRMON_CTRL_LPDDR23 bit must be
set for both LPDDR2 and LPDDR3. Add the missing LPDDR2 case and while
at it turn the if/else if/else into switch/case which makes it easier
to read.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
---
 drivers/devfreq/event/rockchip-dfi.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 261d112580c9e..16cd5365671f7 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -82,12 +82,19 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
 		       DDRMON_CTRL_HARDWARE_EN), dfi_regs + DDRMON_CTRL);
 
 	/* set ddr type to dfi */
-	if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR3)
+	switch (dfi->ddr_type) {
+	case ROCKCHIP_DDRTYPE_LPDDR2:
+	case ROCKCHIP_DDRTYPE_LPDDR3:
 		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK),
 			       dfi_regs + DDRMON_CTRL);
-	else if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR4)
+		break;
+	case ROCKCHIP_DDRTYPE_LPDDR4:
 		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
 			       dfi_regs + DDRMON_CTRL);
+		break;
+	default:
+		break;
+	}
 
 	/* enable count, use software mode */
 	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
