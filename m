Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 082B0C8303C
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jul 2025 15:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jiX1uqVj0xG5tAR+l/aUfVner6EleOx3fs1fZZKwSgc=; b=iNP75wkiJ3U59k
	rhGSjVnbG9lmO3KbmhTsFJH7A4uVH/cLzze4u8dpoZeHmjfmYaxciiSI77K0c4usqAKcyPc9oz+t9
	ulDel2gT6s6/+Bd6u6+ZpWzL1WaFIMxaQFkaOXTZ2TCRR7Qqh0pg7TrRho7cq2U2dpAiBFHYkBo20
	HgCipfIdScaZFgpV8pF5KrkMPL5/K/zAzBt9CNZkfMFq4rbBC8Pf0NZU+aHG4aqEbuQXDTq7qqEIX
	V14FWJ7WMChvNgV7Xqx1IS8leZKpFQwDLBeEiZqzGFojWh01tIzNHGMNVBzaBYcKkjeQYlnDs6hH3
	m/Ap8m9vsXGRHLSIc4Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZAdx-00000005syo-2uTP;
	Tue, 08 Jul 2025 15:54:05 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZA78-00000005lj2-29Vv;
	Tue, 08 Jul 2025 15:20:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1751988009;
	bh=LYygY91czIbkvc6soyleR5SakPIvRqwABdBq/w7chXw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aSGmu49+SS62+4CIEWlRimfkv+73jtQp/+8fibJhUmTzg7TX4v+12KosPDsSymmYi
	 qcHJG8w3Opc9kaDOJbg5RZ3f8UnN8LB5q/vuJkLnJC4vmgsdNjQflU7GUITX0lOkXT
	 MZ/xMYG0JvFf53f/cd7sxTv/cBbaYh1vyAAj4iyXVaZu1ptmrDzTRKfDrD0x+0W7RU
	 EZrGnYO5nr201V6oLCGoVU9nRCoZdKI1Etnf8w1R3DkzYri2Cz8MPyyqK63DWX9uzx
	 etgJkaFc7i7NcKLCP+P8Ig4OBAXfoR3yylKqQY6t99u3ADzCAxvih0obRxaWt+i03k
	 tPBD9Uok1ddvw==
Received: from trenzalore.hitronhub.home (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AF61717E11EC;
	Tue,  8 Jul 2025 17:20:07 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 08/12] media: rkvdec: Enable all clocks without naming them
Date: Tue,  8 Jul 2025 11:19:41 -0400
Message-ID: <20250708151946.374349-9-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250708151946.374349-1-detlev.casanova@collabora.com>
References: <20250708151946.374349-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_082010_744223_0A8F668A 
X-CRM114-Status: GOOD (  16.91  )
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
Cc: Detlev Casanova <detlev.casanova@collabora.com>, kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

For other variants, the clock names and number will differ.

There is no need to keep track of the clock names in the driver so drop
them to avoid having a list for each variant.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../media/platform/rockchip/rkvdec/rkvdec.c   | 24 +++++--------------
 .../media/platform/rockchip/rkvdec/rkvdec.h   |  1 +
 2 files changed, 7 insertions(+), 18 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index d5d69ee56cb62..aee26a9a9dcc2 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -1161,14 +1161,9 @@ static const struct of_device_id of_rkvdec_match[] = {
 };
 MODULE_DEVICE_TABLE(of, of_rkvdec_match);
 
-static const char * const rkvdec_clk_names[] = {
-	"axi", "ahb", "cabac", "core"
-};
-
 static int rkvdec_probe(struct platform_device *pdev)
 {
 	struct rkvdec_dev *rkvdec;
-	unsigned int i;
 	int ret, irq;
 
 	rkvdec = devm_kzalloc(&pdev->dev, sizeof(*rkvdec), GFP_KERNEL);
@@ -1183,19 +1178,12 @@ static int rkvdec_probe(struct platform_device *pdev)
 	rkvdec->config =
 		(struct rkvdec_config *)of_device_get_match_data(rkvdec->dev);
 
-	rkvdec->clocks = devm_kcalloc(&pdev->dev, ARRAY_SIZE(rkvdec_clk_names),
-				      sizeof(*rkvdec->clocks), GFP_KERNEL);
-	if (!rkvdec->clocks)
-		return -ENOMEM;
-
-	for (i = 0; i < ARRAY_SIZE(rkvdec_clk_names); i++)
-		rkvdec->clocks[i].id = rkvdec_clk_names[i];
-
-	ret = devm_clk_bulk_get(&pdev->dev, ARRAY_SIZE(rkvdec_clk_names),
-				rkvdec->clocks);
-	if (ret)
+	ret = devm_clk_bulk_get_all_enabled(&pdev->dev, &rkvdec->clocks);
+	if (ret < 0)
 		return ret;
 
+	rkvdec->clk_count = ret;
+
 	rkvdec->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(rkvdec->regs))
 		return PTR_ERR(rkvdec->regs);
@@ -1269,7 +1257,7 @@ static int rkvdec_runtime_resume(struct device *dev)
 {
 	struct rkvdec_dev *rkvdec = dev_get_drvdata(dev);
 
-	return clk_bulk_prepare_enable(ARRAY_SIZE(rkvdec_clk_names),
+	return clk_bulk_prepare_enable(rkvdec->clk_count,
 				       rkvdec->clocks);
 }
 
@@ -1277,7 +1265,7 @@ static int rkvdec_runtime_suspend(struct device *dev)
 {
 	struct rkvdec_dev *rkvdec = dev_get_drvdata(dev);
 
-	clk_bulk_disable_unprepare(ARRAY_SIZE(rkvdec_clk_names),
+	clk_bulk_disable_unprepare(rkvdec->clk_count,
 				   rkvdec->clocks);
 	return 0;
 }
diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.h b/drivers/media/platform/rockchip/rkvdec/rkvdec.h
index 679de66df2479..af47f16cb417d 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.h
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.h
@@ -117,6 +117,7 @@ struct rkvdec_dev {
 	struct v4l2_m2m_dev *m2m_dev;
 	struct device *dev;
 	struct clk_bulk_data *clocks;
+	unsigned int clk_count;
 	void __iomem *regs;
 	struct mutex vdev_lock; /* serializes ioctls */
 	struct delayed_work watchdog_work;
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
