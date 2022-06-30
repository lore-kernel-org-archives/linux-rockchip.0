Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8DB1CCA473
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 00:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tyyr5SVNo2zoavG1BNk3mWzpYMWcjHnQ+7LUXE3Dc+Y=; b=nBJK/uADC0maeB
	eajqDgX6o7uWTbKcRXMbHNFOHltZJcAhWHcxCgM8YS1GuOy8+rKHpaYbOlPIPiGapmzX/g7ayV9f9
	nX0iNJaG0JimkD4P20PFv7gJaSSJEV0inhrJF/k+/BRYP2xrLJz00W4HDJRC0vzo+wU/cJZDWKPML
	idD0tI6rzy5lOHTKJeikAC9PJK+C4QofOvYteYbxxnLmcKgBDL7zPB9LQHCJe7ejR7WJ0SKDYTEPQ
	dY6+OdGSZ3dmliJum9SEXn5fiIfH8aWW9PMvqMYdWk6bnkeAtMpWNux1y/prtU7Gsp3pSFm3sDpz0
	Kzs75tZ0dtJoTGpdaJJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74KI-0028Pz-Oa; Fri, 01 Jul 2022 00:16:02 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GO-0020Im-46
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:06 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B9F642901;
	Fri,  1 Jul 2022 01:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630473;
	bh=9wIlRgMeYpLlyMUMEPfXzSsM3EZNx5mAPL7gMlnwP9w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QKeu78e781N3wV+ZgUfUQL9Pq6siwohlW+Z2nu0ZTvDGQ5bs/ymM1EavbqieCq8MO
	 F6wzrFNszLaGW159L26SywofUUuL2xv68u1VKY2D5wqEDw49O5k5azt7sgNzS9ckr7
	 1S39SkGVJv4H/EA/Afau7SVOEBcTm1kxiPhan/7Q=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 24/55] media: rkisp1: csi: Pass sensor pointer to rkisp1_csi_config()
Date: Fri,  1 Jul 2022 02:06:42 +0300
Message-Id: <20220630230713.10580-25-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160756_355483_6E61B609 
X-CRM114-Status: UNSURE (   9.84  )
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

To prepare for the removal of the active_sensor field from the
rkisp1_device structure, pass the sensor pointer to the
rkisp1_csi_config() function instead of accessing it through
active_sensor.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index 749ad473b877..05b17b946e90 100644
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
@@ -103,7 +104,7 @@ int rkisp1_csi_start(struct rkisp1_csi *csi,
 	s64 pixel_clock;
 	int ret;
 
-	ret = rkisp1_csi_config(csi);
+	ret = rkisp1_csi_config(csi, sensor);
 	if (ret)
 		return ret;
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
