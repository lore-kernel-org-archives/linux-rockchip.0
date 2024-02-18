Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8163FC48BF6
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 20:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2dlSGNzoe/JMMOfLzYg0Hl4dBBtJxGq/EWCvUDKmjc=; b=u87he3l7Fg7FdN
	d9fdG01M5kw0jtfv33FElUvMpDfkj5OEwkB3Zq6G9cW1K5/ub99uUAhe2y9zW2vIF4Gp0R0XVB5h0
	5am0A0nWt+MxrFa1orlX9+Kj7r8ad2VkV/cwQ55JHCoTCgAFrYQguPDYnIAmRNs5B7I33MyvmQHWY
	6kzO9bJ+ZOKq8mwkRTsaZiclbR1v4lMoBUNVipfv1ZXhNBal4cxHergfFADn+usaYH1ryBTvJKHyp
	ireckQkK0jEiNHoZfyfvktSc8aDJ1dVeTI4UNxkkq6yj0nF9aVapE44C2+1d+KLQU6Vo3eAiQ5I3z
	3przw6ndv3H62N4FvCAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbo0v-00000008PHH-01wA;
	Sun, 18 Feb 2024 20:43:53 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbo0r-00000008PFi-2A8B
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Feb 2024 20:43:50 +0000
Received: from pendragon.ideasonboard.com (89-27-53-110.bb.dnainternet.fi [89.27.53.110])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2E65D975;
	Sun, 18 Feb 2024 21:43:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708289022;
	bh=nYwlcrqQfizYjqofWOElZLJpuZsgQNEg9TxVtChzC84=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fu2xM6CyaS1KYp4LLjOu5uCnScyZ6TEBbMR3k1zg5a/pVluYLMdg1Jl/fgmaKI3jS
	 XgK8trIaEPMTncLvQzSQ6FaoVPIJKyNoSOFrXggCFd2C8F3es/Q+FyEjyAEJQa5guu
	 XfrT558yrLooHYqgVLhUL+nGCHmzOECBtyNilIFc=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Adam Ford <aford173@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v13 01/12] media: rkisp1: Add and use rkisp1_has_feature() macro
Date: Sun, 18 Feb 2024 22:43:39 +0200
Message-ID: <20240218204350.10916-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240218204350.10916-1-laurent.pinchart@ideasonboard.com>
References: <20240218204350.10916-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_124349_719735_BB68E5EC 
X-CRM114-Status: GOOD (  12.47  )
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
index 4b6b28c05b89..35efdabf9db1 100644
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
index f96f821a7b50..8c1040ca02a3 100644
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
@@ -339,7 +339,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 	unsigned int i;
 	int ret;
 
-	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
+	if (rkisp1_has_feature(rkisp1, MIPI_CSI2)) {
 		/* Link the CSI receiver to the ISP. */
 		ret = media_create_pad_link(&rkisp1->csi.sd.entity,
 					    RKISP1_CSI_PAD_SRC,
@@ -391,7 +391,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 
 static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
 {
-	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
+	if (rkisp1_has_feature(rkisp1, MIPI_CSI2))
 		rkisp1_csi_unregister(rkisp1);
 	rkisp1_params_unregister(rkisp1);
 	rkisp1_stats_unregister(rkisp1);
@@ -424,7 +424,7 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
 	if (ret)
 		goto error;
 
-	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
+	if (rkisp1_has_feature(rkisp1, MIPI_CSI2)) {
 		ret = rkisp1_csi_register(rkisp1);
 		if (ret)
 			goto error;
@@ -628,7 +628,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 err_unreg_entities:
 	rkisp1_entities_unregister(rkisp1);
 err_cleanup_csi:
-	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
+	if (rkisp1_has_feature(rkisp1, MIPI_CSI2))
 		rkisp1_csi_cleanup(rkisp1);
 err_unreg_media_dev:
 	media_device_unregister(&rkisp1->media_dev);
@@ -649,7 +649,7 @@ static void rkisp1_remove(struct platform_device *pdev)
 	v4l2_async_nf_cleanup(&rkisp1->notifier);
 
 	rkisp1_entities_unregister(rkisp1);
-	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
+	if (rkisp1_has_feature(rkisp1, MIPI_CSI2))
 		rkisp1_csi_cleanup(rkisp1);
 	rkisp1_debug_cleanup(rkisp1);
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
