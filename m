Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C595CCA485
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptp+mCs1f8PVP9x98KuTVClJWAiGq7uPA9H3oI+7b0A=; b=gsIWBYks0Ruvcc
	u90eVzhb5dna1QLF4xpngmeScidzvyA/hzMwji8z0dr2eHmGxdS0gzOB+WI4GcECdIbBX6c9S6Ukr
	iJy/PjzQH/PuNn5+LM+QBh1TTk7E/fsrdsEhMA/AGkZh6OK5COYg3FpAgCgIavf1Obme3+8SqgEc7
	DLsgHBrfBP3gARvGF2xIi04AVN6yOGZrhHRBEFxQ89MHjG1wTRplsuBjFKXfim8Ty1EnUJa9fwGWb
	h25ENMbD05pLVlYTHLr+wI/eDSWZ3/lLwgXu5MaW84HJcsQAZ4iETmSJ+rN/8D7pGRBygZryasqeY
	D3W9OwH8l5yoO5YYd53w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Byf-00Attw-3X; Tue, 14 Jun 2022 19:13:25 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ByZ-00AtkD-9y
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:13:20 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A311B825;
	Tue, 14 Jun 2022 21:13:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233998;
	bh=ej2B32tUERRKgixONq9ekw2odpbfaviOoKuWtBeOUfM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hHnEHCFEDVGpBuPuxhDZwIjWIkCJzJyviV/rmkj8Jm4mgRDpwuyjunJxPJF5SvdMp
	 LxVq3ac5JWXR5UMw1ioWxip28itSeMXVP3fKBWblumlq7A+49qv5c9OzFExpOOtry7
	 YpHYUaevxOIb0x4ReeoxvTWkg/atVgjfs3hiu3dI=
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
Subject: [PATCH 22/55] media: rkisp1: csi: Move start delay to rkisp1_csi_start()
Date: Wed, 15 Jun 2022 04:10:54 +0900
Message-Id: <20220614191127.3420492-23-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121319_566970_D47A1E54 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
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

The delay in rkisp1_isp_start() is related to to the CSI-2 receiver and
the camera sensor. Move it where it belongs, to rkisp1_csi_start().

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c | 7 +++++++
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 6 ------
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index c1bb8c05543d..fcaffffd371b 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
@@ -9,6 +9,7 @@
  * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
  */
 
+#include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/phy/phy.h>
 #include <linux/phy/phy-mipi-dphy.h>
@@ -120,6 +121,12 @@ int rkisp1_csi_start(struct rkisp1_csi *csi,
 
 	rkisp1_csi_enable(csi);
 
+	/*
+	 * CIF spec says to wait for sufficient time after enabling
+	 * the MIPI interface and before starting the sensor output.
+	 */
+	usleep_range(1000, 1200);
+
 	return 0;
 }
 
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index ecb8ca0ad670..3ea0deb6b792 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -365,12 +365,6 @@ static void rkisp1_isp_start(struct rkisp1_device *rkisp1)
 	       RKISP1_CIF_ISP_CTRL_ISP_ENABLE |
 	       RKISP1_CIF_ISP_CTRL_ISP_INFORM_ENABLE;
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_CTRL, val);
-
-	/*
-	 * CIF spec says to wait for sufficient time after enabling
-	 * the MIPI interface and before starting the sensor output.
-	 */
-	usleep_range(1000, 1200);
 }
 
 /* ----------------------------------------------------------------------------
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
