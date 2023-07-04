Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55374EB64DD
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jul 2023 09:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1EkdCVXdt2gkrIHRqEKZ7r7yT8olZOawsxpq+lnAPVs=; b=n1kZwUvJrfNTrB
	9jYqq7QCf2BSkkCRORmlsLcvHojWulUzR+hTcM+pSF81pFtXdcOet4ZLl5TcLi3q03dvejCeeuU0G
	I0J9ouQF0Y78z640lRiu5qUIPNkoW81lCrQzZNXXPBh+kAhitzbGJ/8V8WdqaxyOie5efWCide26X
	DhxQpCBJthe5EPbDyxA/ApnT1Pbnn+5ysgAh6c8y7xcHnzfDEjJYVi/Q8hvXY4SoaYVwO5DoFKEhm
	XtLmcc4P9hsEUUwyMDq329kKDLEJEOeqgNfUHm0H7zfvcpLa6oPONm0tiYqd0qn37u+Z6ihkVkVUO
	whM4Zzlyxb7wtbPehqbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcPy-00Cjvv-2r;
	Tue, 04 Jul 2023 09:33:54 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcPI-00CjAO-0I
	for linux-rockchip@bombadil.infradead.org;
	Tue, 04 Jul 2023 09:33:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Skqxx2SkxTDa7rkcKNx5uX0PmbhQ6Nr0tLQEjoXCmwI=; b=XxDCX3W3SuHPN8RhSb7Sp9Er98
	69ubjrl1u7nFVUrJmGdfXwdXK2K0lHafSv3ULABKdsTcMgZgL6ekVEm3tipSFPzPuC8KKvfsVGZO2
	qdV4NS+okAxTratw7Gv+rXkLiHPdXgXzc/PXhO3fUal1NpPDbDTBBt6I8F021JK1hFhfRlAKOl0j+
	TDi53m5rsuf8gfIYWh2RKCgznQi2BSG/JFrH2IbzkmThnaeffaHOB+O4bzsB3O5h6Pf3/cZ37Zopm
	TT/OawaXjhZBCsDeA0uTz6so6lWjES6UoCLLqaomQBmlYJQjt+QxjW6WdD84y1gQiMK6/9LptjaF6
	Njs9+qBg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qGcPD-0091Kv-FD
	for linux-rockchip@lists.infradead.org; Tue, 04 Jul 2023 09:33:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOw-0006u1-0c; Tue, 04 Jul 2023 11:32:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOv-00C0A7-3d; Tue, 04 Jul 2023 11:32:49 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOr-002Tye-BB; Tue, 04 Jul 2023 11:32:45 +0200
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
Subject: [PATCH v7 17/26] PM / devfreq: rockchip-dfi: make register stride SoC specific
Date: Tue,  4 Jul 2023 11:32:33 +0200
Message-Id: <20230704093242.583575-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230704093242.583575-1-s.hauer@pengutronix.de>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_103307_527312_9417E0CA 
X-CRM114-Status: GOOD (  13.82  )
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

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 969b62f071b83..85ec93fd41858 100644
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
 
@@ -664,6 +665,8 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
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
