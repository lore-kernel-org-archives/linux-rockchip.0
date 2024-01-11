Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97995C47077
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jan 2024 11:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tkdPp4OrSRCUFS+7VNmuHgVHPMxv30uknxFqFWBwiLs=; b=R6ADW5dBCZTaJ1
	WsRn+QeBuDBUXs3uI3ShvOGX+ocdN/ebo2XQObjW1TubW59cJB9Nv0xVRY4+EnoIiR+Tvo43kWLjV
	R6ZlgNa91zCB7gNzSV8WGih5R1xQPkRONviOgNx2s68ImEvsdKQrnrHp5T04ITRxBIBNdIOyMuA+Q
	uXUq5y+B7hikK6ILzrw5HfxiOHhgERwmbB8aR5kZBdR9junNHLjrIThMwa2YtArQrGo4mjKW90S46
	IGVmNTOxAdox9QKLOr1oFHzq9kw11iSx3imhFoKSU3BlZxIKkgdP89zzBwgl6ybISGKHYCc0h0b33
	ynh6wUCUO0egx1jtYKHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYS-00HSfp-0q;
	Thu, 11 Jan 2024 11:49:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYN-00HSab-0r;
	Thu, 11 Jan 2024 11:48:56 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id CA49EC85;
	Thu, 11 Jan 2024 12:47:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1704973666;
	bh=mnfiq9V4ke1JzZzn2ucgUeU305wKiCXWHBl8l5EJxXU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=p4nwgkiyM3xkkviisa4IQY0nMaLohy4OHHeeXujoh2FCqhU5NEgASN6jhxe7QIP4B
	 11F4EQTzukyaHOoXAY/if2VgNPGoicvrnA1mDHsmYJDEhOYQLmEdeLhqv0TfYUfC85
	 8lAvEGOjyFurefD4TKMCYZD593B9R+XthdaqFA5k=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v6 01/11] media: rkisp1: Add and use rkisp1_has_feature() macro
Date: Thu, 11 Jan 2024 20:48:21 +0900
Message-Id: <20240111114831.656736-2-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111114831.656736-1-paul.elder@ideasonboard.com>
References: <20240111114831.656736-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034855_463820_C4D677E5 
X-CRM114-Status: GOOD (  14.00  )
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

Simplify feature tests with a macro that shortens lines.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Tested-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-common.h   |  3 +++
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c  | 12 ++++++------
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index b757f75edecf..be6cb42776b0 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -119,6 +119,9 @@ enum rkisp1_feature {
 	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
 };
 
+#define rkisp1_has_feature(rkisp1, feature) \
+	((rkisp1)->info->features & RKISP1_FEATURE_##feature)
+
 /*
  * struct rkisp1_info - Model-specific ISP Information
  *
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 73cf08a74011..fd35fe76413a 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -207,7 +207,7 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
 		switch (reg) {
 		case 0:
 			/* MIPI CSI-2 port */
-			if (!(rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)) {
+			if (!rkisp1_has_feature(rkisp1, MIPI_CSI2)) {
 				dev_err(rkisp1->dev,
 					"internal CSI must be available for port 0\n");
 				ret = -EINVAL;
@@ -361,7 +361,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 	unsigned int i;
 	int ret;
 
-	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
+	if (rkisp1_has_feature(rkisp1, MIPI_CSI2)) {
 		/* Link the CSI receiver to the ISP. */
 		ret = media_create_pad_link(&rkisp1->csi.sd.entity,
 					    RKISP1_CSI_PAD_SRC,
@@ -413,7 +413,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 
 static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
 {
-	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
+	if (rkisp1_has_feature(rkisp1, MIPI_CSI2))
 		rkisp1_csi_unregister(rkisp1);
 	rkisp1_params_unregister(rkisp1);
 	rkisp1_stats_unregister(rkisp1);
@@ -446,7 +446,7 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
 	if (ret)
 		goto error;
 
-	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
+	if (rkisp1_has_feature(rkisp1, MIPI_CSI2)) {
 		ret = rkisp1_csi_register(rkisp1);
 		if (ret)
 			goto error;
@@ -650,7 +650,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 err_unreg_entities:
 	rkisp1_entities_unregister(rkisp1);
 err_cleanup_csi:
-	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
+	if (rkisp1_has_feature(rkisp1, MIPI_CSI2))
 		rkisp1_csi_cleanup(rkisp1);
 err_unreg_media_dev:
 	media_device_unregister(&rkisp1->media_dev);
@@ -671,7 +671,7 @@ static void rkisp1_remove(struct platform_device *pdev)
 	v4l2_async_nf_cleanup(&rkisp1->notifier);
 
 	rkisp1_entities_unregister(rkisp1);
-	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
+	if (rkisp1_has_feature(rkisp1, MIPI_CSI2))
 		rkisp1_csi_cleanup(rkisp1);
 	rkisp1_debug_cleanup(rkisp1);
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
