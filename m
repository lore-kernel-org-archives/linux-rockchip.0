Return-Path: <SRS0=hzxT=DT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D098DC433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 354E12076E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Y3lcErWj";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="k6YflmQU"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 354E12076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T60f3qYDQZXVCv2cGtEGxmPkaljqcrH8m0E73e9Xqqg=; b=Y3lcErWjTXv4Ne8tv7CompJTH
	QEsLpiuIeI5G+Xnrr6F6yEx8stNPT/126+/5uV/TVfVQX4CCEbpIEIteF2Gmjhakq7LEG2DRrCRO5
	DbatyeNm1LEQDk1uF2IfSaZXy00VbnE+3EJ53SplPrakIaPyKZ63sV9o1OOiBz7fIJ2Ro1WUwaNid
	uvtHkUNhTgfxlP+/niOheuUT9N9MJHoW/QLfstKgCr2IM0zNpJqeiFiT/uUcqnReMC8qjzVs+WiYK
	ZNaBxk5LhH3whleriNqDyOOayURA16dIwqAUSK5MwOWd0VS6LOdDbafXEqnaRzHHTYWk9+6hK+8yy
	kHXUIU8yw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS5FD-0008AC-El; Mon, 12 Oct 2020 21:20:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS5FB-00083L-FD
 for linux-rockchip@merlin.infradead.org; Mon, 12 Oct 2020 21:20:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=FhmH9QQbf8hwTJM1nDuShLZfTx/UNk92VKviyHVkFng=; b=k6YflmQUkeYmVb3l0N6AWk85Nj
 NAxmPX6c9hEVQjSkz2kEGouOT+cSYUYAZmEqYSKPSTzyHEUjEKi1nEEY+I4TNYL0l3PIjAuSiB68P
 tXr7YMdzFLBmFNcmNJZPrXqibkTRSoRuNOGR2YO9gPPhFkToAIBXcIADy/wgJspNGGRAyfRTJXMrx
 Zbr+8ZfKpOn7+c0ZMcHBHy4gspR6xpGzgO8UM8oh5lZfNUpuHN75nQ4q0FEluffbnBt3SETA6FSMS
 pt+LCD28/1802aqxXwiPOwFdMt2XU1q4kOMHjSjcG4UB/cIegbKFUW4unufJV/aHijdcdJ3Ax0q25
 AMCjpbVQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uJ-0004if-TY
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id CCE311F44C34
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 05/18] media: hantro: prepare clocks before variant inits are
 run
Date: Mon, 12 Oct 2020 23:59:44 +0300
Message-Id: <20201012205957.889185-6-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_215900_211442_1388C514 
X-CRM114-Status: GOOD (  11.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 kuhanh.murugasen.krishnan@intel.com, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The fundamental idea is: clocks are prepared in the driver probe() then
each use-case will enable/disable them as needed.

Some variants like imx8mq need to have the clocks enabled during the
HW init phase, so they will benefit from having the clocks prepared
before the variant init callback to avoid duing a full prepare_enable/
unprepare_disable, so move the clk prepare a bit earlier.

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/hantro/hantro_drv.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index c2ea54552ce9..3734efa80a7e 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -813,22 +813,22 @@ static int hantro_probe(struct platform_device *pdev)
 		}
 	}
 
+	ret = clk_bulk_prepare(vpu->variant->num_clocks, vpu->clocks);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to prepare clocks\n");
+		return ret;
+	}
+
 	ret = vpu->variant->init(vpu);
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to init VPU hardware\n");
-		return ret;
+		goto err_clk_unprepare;
 	}
 
 	pm_runtime_set_autosuspend_delay(vpu->dev, 100);
 	pm_runtime_use_autosuspend(vpu->dev);
 	pm_runtime_enable(vpu->dev);
 
-	ret = clk_bulk_prepare(vpu->variant->num_clocks, vpu->clocks);
-	if (ret) {
-		dev_err(&pdev->dev, "Failed to prepare clocks\n");
-		return ret;
-	}
-
 	ret = v4l2_device_register(&pdev->dev, &vpu->v4l2_dev);
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to register v4l2 device\n");
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
