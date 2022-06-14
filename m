Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42C13C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qW6l9k2swLLwVtndOk4Z3MOLbR9JRq7lPMYZQEiNq7k=; b=Nu+OtT99+cAadG
	6hDtvGwxjdWqBOe5s32VPEpi0S7K260Tr+oFXtDAa7VK7rzAVp1+qAdkqy74VHASS95bvigtaQDcJ
	v7wstZO9ek+FfuCT/1n7xwm2oDQ1owSf83N974f5AUZfvpZOgFpRXZWNxXsFzimajUMIFfaT1znqT
	JMCdkT4YSBs2rlJizWEK/aOzVcnEEozXnEG9ugX9O5QYUXZhAhqFWjTpT0blqDu2X05eSd6oyssfF
	tpFiFSoYMOFwaSzPjFW11f8tkgqZ1HrcoNHv2euFduGeuaYJmPCVJZ5GBOCdt1CV/GLzC0Zyg7IGl
	KWB2rtceTDUWPbAolDsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1C0A-00AvUQ-Au; Tue, 14 Jun 2022 19:14:58 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1C07-00AvRX-Mj
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:14:57 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 43A4B825;
	Tue, 14 Jun 2022 21:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234094;
	bh=EG0U4nHqxwGlJmaOm9q7pgjmOJ4qGSCMRWmGBWC+C8E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Q86Xja8JKk2RFys5yEk+mzSSX1efewrDVQThh8bG/sO0zFE6ACbSfMU5E9wO0N9ZV
	 VvqNCfBpTNGyBtsXdzWjTpTtG35+bQC8WHex2Uw1tP8/DCGGu7KQgiEa7uf1eJvCpm
	 NecY0+H1wdgesO8NO2cHo5yl9iDjQzPyuYpCPiew=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 46/55] media: rkisp1: Make the internal CSI-2 receiver optional
Date: Wed, 15 Jun 2022 04:11:18 +0900
Message-Id: <20220614191127.3420492-47-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121455_930384_AEC40682 
X-CRM114-Status: GOOD (  12.13  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Not all ISP versions integrate a MIPI CSI-2 receiver.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 50 +++++++++++++------
 1 file changed, 34 insertions(+), 16 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 8ccd4042f3f3..62fa2bd275fe 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -195,6 +195,14 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
 
 		switch (reg) {
 		case 0:
+			/* MIPI CSI-2 port */
+			if (!(rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)) {
+				dev_err(rkisp1->dev,
+					"internal CSI must be available for port 0\n");
+				ret = -EINVAL;
+				break;
+			}
+
 			vep.bus_type = V4L2_MBUS_CSI2_DPHY;
 			break;
 
@@ -320,13 +328,16 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 	unsigned int i;
 	int ret;
 
-	/* Link the CSI receiver to the ISP. */
-	ret = media_create_pad_link(&rkisp1->csi.sd.entity, RKISP1_CSI_PAD_SRC,
-				    &rkisp1->isp.sd.entity,
-				    RKISP1_ISP_PAD_SINK_VIDEO,
-				    MEDIA_LNK_FL_ENABLED);
-	if (ret)
-		return ret;
+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
+		/* Link the CSI receiver to the ISP. */
+		ret = media_create_pad_link(&rkisp1->csi.sd.entity,
+					    RKISP1_CSI_PAD_SRC,
+					    &rkisp1->isp.sd.entity,
+					    RKISP1_ISP_PAD_SINK_VIDEO,
+					    MEDIA_LNK_FL_ENABLED);
+		if (ret)
+			return ret;
+	}
 
 	/* create ISP->RSZ->CAP links */
 	for (i = 0; i < 2; i++) {
@@ -369,7 +380,8 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 
 static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
 {
-	rkisp1_csi_unregister(rkisp1);
+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
+		rkisp1_csi_unregister(rkisp1);
 	rkisp1_params_unregister(rkisp1);
 	rkisp1_stats_unregister(rkisp1);
 	rkisp1_capture_devs_unregister(rkisp1);
@@ -401,9 +413,11 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
 	if (ret)
 		goto error;
 
-	ret = rkisp1_csi_register(rkisp1);
-	if (ret)
-		goto error;
+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
+		ret = rkisp1_csi_register(rkisp1);
+		if (ret)
+			goto error;
+	}
 
 	ret = rkisp1_create_links(rkisp1);
 	if (ret)
@@ -566,9 +580,11 @@ static int rkisp1_probe(struct platform_device *pdev)
 		goto err_unreg_v4l2_dev;
 	}
 
-	ret = rkisp1_csi_init(rkisp1);
-	if (ret)
-		goto err_unreg_media_dev;
+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
+		ret = rkisp1_csi_init(rkisp1);
+		if (ret)
+			goto err_unreg_media_dev;
+	}
 
 	ret = rkisp1_entities_register(rkisp1);
 	if (ret)
@@ -585,7 +601,8 @@ static int rkisp1_probe(struct platform_device *pdev)
 err_unreg_entities:
 	rkisp1_entities_unregister(rkisp1);
 err_cleanup_csi:
-	rkisp1_csi_cleanup(rkisp1);
+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
+		rkisp1_csi_cleanup(rkisp1);
 err_unreg_media_dev:
 	media_device_unregister(&rkisp1->media_dev);
 err_unreg_v4l2_dev:
@@ -603,7 +620,8 @@ static int rkisp1_remove(struct platform_device *pdev)
 	v4l2_async_nf_cleanup(&rkisp1->notifier);
 
 	rkisp1_entities_unregister(rkisp1);
-	rkisp1_csi_cleanup(rkisp1);
+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
+		rkisp1_csi_cleanup(rkisp1);
 	rkisp1_debug_cleanup(rkisp1);
 
 	media_device_unregister(&rkisp1->media_dev);
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
