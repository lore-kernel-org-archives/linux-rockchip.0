Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AA33CCA486
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 00:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZPCN5/lXsnrPZ6JW+5BMhwPGbtLVwnrfBQLvKuixic=; b=jAMIXamLukV+zb
	+Zc7PBmGnmbLCcoHho/nb/gTz2aSnmaPfYJVpRC9299ot6bG59ouZwNw4YNltD9jjkue48sDub+Gd
	wSf2RWQ1G6WMymYqsI68Pcyc0hnuIXnhQyeuSyxOlrhTU0AYIiZFtBzMTy3aRFu0cI0A+qbkebh7J
	M3ZjUN0zNw93Z0w0OW/v+xGOjXOczf6Xw+c7R2yJx4O+r+DnbxFFR/gcnGwVHo6BuLv2W+GLYgeul
	rroOgTf93BkLOFn3tjPu3BtGh7f/WzmfTDnWcpobVpElvUDtOOwQwRwsXZl/ICRKEu6bcgWONVKi/
	cIFX6SyQRjAVoOQ411Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74KJ-0028RX-Lo; Fri, 01 Jul 2022 00:16:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GO-0020Iz-5k
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:06 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5D0BD29B2;
	Fri,  1 Jul 2022 01:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630473;
	bh=AKct/CiSG+KhcTaGJq2BwEoCCmWIGtiFQve1sO7uAbg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=n99LlyOQLcLBxtirrwjGmcuJEuvu4eI82CUsuY/IkUVYJLbLNI2XhQCsL+VLigJHU
	 y8oPYqjiqtw7tNnncdrT2CdSfsYdRNzJlbZZu11aWEE4ZNBoU7UmpUuptiA7aLfgBj
	 BBgDKN74qTmdtbDtFyOHYxU7b2Rxbi2yMj0b6LsU=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 25/55] media: rkisp1: csi: Constify argument to rkisp1_csi_start()
Date: Fri,  1 Jul 2022 02:06:43 +0300
Message-Id: <20220630230713.10580-26-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160756_447365_5F22D462 
X-CRM114-Status: GOOD (  10.65  )
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

The sensor argument to rkisp1_csi_start() isn't meant to be modified by
the function. Make it const.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c | 4 ++--
 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index 05b17b946e90..81849c8e9c73 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
@@ -20,7 +20,7 @@
 #include "rkisp1-csi.h"
 
 static int rkisp1_csi_config(struct rkisp1_csi *csi,
-			     struct rkisp1_sensor_async *sensor)
+			     const struct rkisp1_sensor_async *sensor)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	const struct rkisp1_mbus_info *sink_fmt = rkisp1->isp.sink_fmt;
@@ -96,7 +96,7 @@ static void rkisp1_csi_disable(struct rkisp1_csi *csi)
 }
 
 int rkisp1_csi_start(struct rkisp1_csi *csi,
-		     struct rkisp1_sensor_async *sensor)
+		     const struct rkisp1_sensor_async *sensor)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	union phy_configure_opts opts;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
index 7d3f01cfb49f..97ce7e7959ab 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
@@ -18,7 +18,7 @@ int rkisp1_csi_init(struct rkisp1_device *rkisp1);
 void rkisp1_csi_cleanup(struct rkisp1_device *rkisp1);
 
 int rkisp1_csi_start(struct rkisp1_csi *csi,
-		     struct rkisp1_sensor_async *sensor);
+		     const struct rkisp1_sensor_async *sensor);
 void rkisp1_csi_stop(struct rkisp1_csi *csi);
 
 #endif /* _RKISP1_CSI_H */
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
