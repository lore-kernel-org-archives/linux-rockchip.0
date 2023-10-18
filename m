Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CE4DCDB484
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 06:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzLvVryKZaCbdfT251Zc2iWWl/DCMiwHD56ce8q7owk=; b=NUtdVE0IiqAOQO
	ZqGZhTGyIq2BCsqkE8D9H5dvjK1PKLQ0x8k976Nj8g96146QZyfa68bNopBSjG4m7RdhZAG/faUmI
	CgCxTtg6/lTFtYj/tGVkUGb6EOfobu52PjKsGhZK01KEdoBZIt2AMgRtljAJEMAGt/y4KtTgmSHGT
	CX2C939zSQH1OYjRxZoGmjwBBEy9KdhI+12KnJezcbNIU5ueHi9QsliX3YsdZxkDRSRQxj1JobCv7
	mj2lghx6C3fYoGOxT47mQSDBBtvLgMnvVtLYLoP6Gn7UQPTWywjbi5A5geUwsaVmJ7sHlLb7uYlI5
	O+VYAR84OZZE1at/5AcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsztI-00DuPY-29;
	Wed, 18 Oct 2023 06:18:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qszsB-00DtLw-35
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 06:17:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qszru-0001Zt-CO; Wed, 18 Oct 2023 08:17:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrq-002UYJ-Vy; Wed, 18 Oct 2023 08:17:19 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrq-00Evim-2p;
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
	Sascha Hauer <s.hauer@pengutronix.de>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v8 13/26] PM / devfreq: rockchip-dfi: Pass private data struct to internal functions
Date: Wed, 18 Oct 2023 08:17:01 +0200
Message-Id: <20231018061714.3553817-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231018061714.3553817-1-s.hauer@pengutronix.de>
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_231740_017408_AA76E7A3 
X-CRM114-Status: GOOD (  15.07  )
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

The internal functions do not need the struct devfreq_event_dev *,
so pass them the struct rockchip_dfi *. This is a preparation for
adding perf support later which doesn't have a struct devfreq_event_dev *.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index bdf421b248df9..d56a33d03db4c 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -73,9 +73,8 @@ struct rockchip_dfi {
 	unsigned int max_channels;
 };
 
-static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
+static void rockchip_dfi_start_hardware_counter(struct rockchip_dfi *dfi)
 {
-	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
 	void __iomem *dfi_regs = dfi->regs;
 
 	/* clear DDRMON_CTRL setting */
@@ -103,18 +102,16 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
 		       dfi_regs + DDRMON_CTRL);
 }
 
-static void rockchip_dfi_stop_hardware_counter(struct devfreq_event_dev *edev)
+static void rockchip_dfi_stop_hardware_counter(struct rockchip_dfi *dfi)
 {
-	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
 	void __iomem *dfi_regs = dfi->regs;
 
 	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
 		       dfi_regs + DDRMON_CTRL);
 }
 
-static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dmc_count *count)
+static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_count *count)
 {
-	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
 	u32 i;
 	void __iomem *dfi_regs = dfi->regs;
 
@@ -132,7 +129,7 @@ static int rockchip_dfi_disable(struct devfreq_event_dev *edev)
 {
 	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
 
-	rockchip_dfi_stop_hardware_counter(edev);
+	rockchip_dfi_stop_hardware_counter(dfi);
 	clk_disable_unprepare(dfi->clk);
 
 	return 0;
@@ -149,7 +146,7 @@ static int rockchip_dfi_enable(struct devfreq_event_dev *edev)
 		return ret;
 	}
 
-	rockchip_dfi_start_hardware_counter(edev);
+	rockchip_dfi_start_hardware_counter(dfi);
 	return 0;
 }
 
@@ -167,7 +164,7 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
 	u32 access = 0, total = 0;
 	int i;
 
-	rockchip_dfi_read_counters(edev, &count);
+	rockchip_dfi_read_counters(dfi, &count);
 
 	/* We can only report one channel, so find the busiest one */
 	for (i = 0; i < dfi->max_channels; i++) {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
