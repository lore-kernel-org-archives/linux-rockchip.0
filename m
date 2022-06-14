Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 710FBC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fwgJKOLrHi7IjEL/WtK3waXlVUXTwkY2YxkDDHmAIk=; b=MK9y/+uoAx5Vnu
	j2pd5CQZPCuHM+dQkQ1xw6wowupfBgSu2xGkMVVOreSoVPWA0DBL9as0OcmpcwB/UIHb1DZkNRTI3
	tK6BUvHGPXRy39kIjj2nWgLGwfA11KdWRyX1RFjag42OW//d+nkux4foXE0cnxWFx+ZH/gjtMcbjF
	1LbjOBuzqZlhvdsiKWWl2cCxau08LzBonGMXyjK54VGjpW4t9sy9Da78YZeNpEqeEjrfY7CwUT/oj
	vmjNjF/Em1KbuzcChiAUd/FQGjLxsr2uKC6bSHsuSqu343WV7b9/JxmGRckHbQpJXqpd3+MC1nnxL
	cOV37F9VN9xEmnrxJCUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bym-00Au3w-73; Tue, 14 Jun 2022 19:13:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Byh-00Atvz-6z
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:13:28 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A2F08825;
	Tue, 14 Jun 2022 21:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234005;
	bh=iIHXQZ2sOYbmnNJklnn0bmABq2AvSYS02MD7fTAEsbg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gMGQsHMOJKveopyLfGGAGqEdJxVmwa5Q10g7yBuzLQz+tV/m3iDZX5xsV8VZNbPm2
	 upB/XuNlAscSDciGZq2/EiGYCHqq2g9+su2kynPWXeC1L5wv7SVkU/uY7WovT/beXt
	 8EiHGkLrR43BQtbUzUtNRJFrGhZsLJSofaW1JC28=
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
Subject: [PATCH 24/55] media: rkisp1: csi: Constify argument to rkisp1_csi_start()
Date: Wed, 15 Jun 2022 04:10:56 +0900
Message-Id: <20220614191127.3420492-25-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121327_445236_DD306D8B 
X-CRM114-Status: GOOD (  10.28  )
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

The sensor argument to rkisp1_csi_start() isn't meant to be modified by
the function. Make it const.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c | 4 ++--
 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index 925274b9a3c4..425a3b014089 100644
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
@@ -95,7 +95,7 @@ static void rkisp1_csi_disable(struct rkisp1_csi *csi)
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
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
