Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 667E0C43217
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 23:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JV6t9xEddMXW7eInHVU082QDsuIwO9AFhcRJceZ01IU=; b=ZwFSM2Rzvai8Er
	/5MLibukH2gZVoDaA18L59gor9mb7N9BI3tqvAB7ztnNzGsi7yGDs/7OqyvFcqflaSX2t6/U9ClXh
	YRvFmweaMiJdK8GfvE5qs8QkGqfniqqWzIcu5pS6UIUK1iuc5jnaxP37HYv9gEc1yAgefUlR8B/Lq
	8U/kwzcn1jN9BSermbtht5vwLDP0IOkzjWxa/zGXE5NDcot1aRuBCf2c5m49dKylSxOttV+cHdsje
	L5IOKO+9ZOfOSFGewMg5nUQ+Zfy//Tl6PHKu1CiTd+ToG3cbaeXaAW1gYEHFVT4nVIlPgjIR7dPf8
	Ibr60U7ywrkZGFPGaJ5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhgRr-00FNsi-4i; Thu, 21 Apr 2022 23:42:55 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhgRk-00FNn1-RZ
 for linux-rockchip@lists.infradead.org; Thu, 21 Apr 2022 23:42:51 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 32394596;
 Fri, 22 Apr 2022 01:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1650584565;
 bh=pCjqQadjjgctbvIbQ9W/gPt1zL/ONR90qr1IVYDbMdE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Z3u9peiBIa+IYIuumA2wh20q68Uc1Xt3jX73xkIuGX/swe/tY32M1temUsWSNAmDh
 MBXLNWNZDaZaYYKAOOhGCIu45bpiq7tcohQ4pzZs4EWm4adCuINwI9x2mEpE8jFhqv
 wWzpT6VhCJYMtZRxCPtYdxYJxIYnM6wgoIFvC4MU=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 03/21] media: rkisp1: isp: Fix and simplify (un)registration
Date: Fri, 22 Apr 2022 02:42:22 +0300
Message-Id: <20220421234240.1694-4-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_164249_076113_5EAB34AF 
X-CRM114-Status: GOOD (  10.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The rkisp1_isp_register() and rkisp1_isp_unregister() functions don't
destroy the mutex (in the error path for the former). Fix this, simplify
error handling at registration time as media_entity_cleanup() can be
called on an uninitialized entity, and make rkisp1_isp_unregister() and
safe to be called on an unregistered isp subdev to prepare for
simplification of error handling at probe time.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v3:

- Use isp->sd.v4l2_dev instead of isp->sd.flags for registration test
---
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 20 ++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 2a35bf24e54e..4f7b2157b8cc 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -1090,29 +1090,35 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1)
 	mutex_init(&isp->ops_lock);
 	ret = media_entity_pads_init(&sd->entity, RKISP1_ISP_PAD_MAX, pads);
 	if (ret)
-		return ret;
+		goto error;
 
 	ret = v4l2_device_register_subdev(&rkisp1->v4l2_dev, sd);
 	if (ret) {
 		dev_err(rkisp1->dev, "Failed to register isp subdev\n");
-		goto err_cleanup_media_entity;
+		goto error;
 	}
 
 	rkisp1_isp_init_config(sd, &state);
+
 	return 0;
 
-err_cleanup_media_entity:
+error:
 	media_entity_cleanup(&sd->entity);
-
+	mutex_destroy(&isp->ops_lock);
+	isp->sd.v4l2_dev = NULL;
 	return ret;
 }
 
 void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
 {
-	struct v4l2_subdev *sd = &rkisp1->isp.sd;
+	struct rkisp1_isp *isp = &rkisp1->isp;
 
-	v4l2_device_unregister_subdev(sd);
-	media_entity_cleanup(&sd->entity);
+	if (!isp->sd.v4l2_dev)
+		return;
+
+	v4l2_device_unregister_subdev(&isp->sd);
+	media_entity_cleanup(&isp->sd.entity);
+	mutex_destroy(&isp->ops_lock);
 }
 
 /* ----------------------------------------------------------------------------
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
