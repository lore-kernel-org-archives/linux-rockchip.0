Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B04C0C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPNvKwU5V79RfU1Gp//JDCLYV7PqMyHPfMrcHMR5sPs=; b=vy9sy4lwmOwQfB
	KVWGxpKcIIyVEcjviWl4IqZvaZPxZ/wVrEaFh2mM24LPCjm4D2/Jqdu/unEeBZGJxI34teFG1G/sl
	R+t8u2ZZzaMPPT6NFcEARs1odo8U+cFI7LRQr+LvlfhU+1aofOQeA5Ee7T+Y7y8YHJDnnhX/o4OJk
	g0yuKMfSMcPG64I5+fPkhrMy1qImGyJTm1ceXhehYXHG2XsoG53GQSNAW/zjadRgc6h3mCVb8fXjW
	qitFiJ1bKNWsm2Jtj4LRC8FYYmdmxf24O8eNyIU+4VFLBb5MEeeq3n+pJoV59DUfLDnlHFPpyEVuD
	rwYgk9M4j6nip9MUb3fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Byh-00Atwk-3n; Tue, 14 Jun 2022 19:13:27 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Byd-00Atq5-BI
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:13:24 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A2DB79E5;
	Tue, 14 Jun 2022 21:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234002;
	bh=kU4BvR4gtyLqWIj3HHrrQsSfcQk7hfRJpaJgG5KXHIQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JjLOFLnu+q3ZwerYd7hdC5eqHgRPJGBwOY8rfiubCo2Se3Ctmx1vhDUq4RQdKB2qb
	 ZMpesyGQWTv7ic19+IT/myL9wb64LdKH/j4bDk6hkdTFO0OthdKsaxhkQwB4eEem5S
	 VDBO1Th7sUG0p1tbsctWXnaqaGy/7irWMOrducmU=
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
Subject: [PATCH 23/55] media: rkisp1: csi: Pass sensor pointer to rkisp1_csi_config()
Date: Wed, 15 Jun 2022 04:10:55 +0900
Message-Id: <20220614191127.3420492-24-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121323_562760_356BB546 
X-CRM114-Status: UNSURE (   9.19  )
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

To prepare for the removal of the active_sensor field from the
rkisp1_device structure, pass the sensor pointer to the
rkisp1_csi_config() function instead of accessing it through
active_sensor.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index fcaffffd371b..925274b9a3c4 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
@@ -19,11 +19,12 @@
 #include "rkisp1-common.h"
 #include "rkisp1-csi.h"
 
-static int rkisp1_csi_config(struct rkisp1_csi *csi)
+static int rkisp1_csi_config(struct rkisp1_csi *csi,
+			     struct rkisp1_sensor_async *sensor)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	const struct rkisp1_mbus_info *sink_fmt = rkisp1->isp.sink_fmt;
-	unsigned int lanes = rkisp1->active_sensor->lanes;
+	unsigned int lanes = sensor->lanes;
 	u32 mipi_ctrl;
 
 	if (lanes < 1 || lanes > 4)
@@ -102,7 +103,7 @@ int rkisp1_csi_start(struct rkisp1_csi *csi,
 	s64 pixel_clock;
 	int ret;
 
-	ret = rkisp1_csi_config(csi);
+	ret = rkisp1_csi_config(csi, sensor);
 	if (ret)
 		return ret;
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
