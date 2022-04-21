Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABF56C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 23:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2WDI0SRo7wQbBIR2YhDdpWifjYxPvKTrDthyN+nmBs=; b=BJg1ZKT+Cpc8gB
	5kyuM8Vf+VyPKv+3+Lu9K9lWvspWg5hmwM2mYCfNbZ/Wo/vKjlY95AthbvwpcZT6HOGVviHr8dtoJ
	j3SKrGB3rKZgb4gg+2ATKQ6IwqWu2Lgm1VQQxj8LC1HkqxoiCFAc4jpH44xT+nZd0msz0lbV0j9yv
	+9OeAXFmDbVqwOOPWjLuVvAB+y2pozZhuCS5eU7RVYu73fN4c/KxJiIJgkFLZBI2610tddUILutv1
	nnGwYr3hlcr3+ZzBJFumoscjF276yAx3Gx0b2swn9mCgejXRY6eXDizt0+RD4MDlL3oWcMaQ8Viq3
	HGiy3fqGRW1sWdiIFKLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhgRx-00FNy6-7I; Thu, 21 Apr 2022 23:43:01 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhgRn-00FNoX-8S
 for linux-rockchip@lists.infradead.org; Thu, 21 Apr 2022 23:42:53 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id AA7F48EF;
 Fri, 22 Apr 2022 01:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1650584567;
 bh=YPQIRGVNsWPVkyQMTYuyOKEuf0FJFRZ/wSLmqQxjVFg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Td/RhJ5j1MGiist9jyC7deDPqhUzgnFZoHLwrRkOJhom2yxNRrooYiLYoHgmTIcZq
 aFVdD+CINAL9zGsKY4s2KABKXqviwdWX/igwmA+uN+xJvOAg9+8jRjNuWGQ2VwC0Gp
 Hjo2SstOQhOFNDmovJeKNi0IJo98V0sFkMpS6KR0=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 05/21] media: rkisp1: params: Fix and simplify
 (un)registration
Date: Fri, 22 Apr 2022 02:42:24 +0300
Message-Id: <20220421234240.1694-6-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_164251_513464_72015EAF 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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

The rkisp1_params_register() and rkisp1_params_unregister() functions
don't destroy the mutex (in the error path for the former). Fix this,
simplify error handling at registration time as media_entity_cleanup()
can be called on an uninitialized entity, and make
rkisp1_params_unregister() safe to be called on an unregistered params
node to prepare for simplification of error handling at probe time.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v3:

- Use video_is_registered() for registration test
---
 .../media/platform/rockchip/rkisp1/rkisp1-params.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index 8f62f09e635f..f6da2571b55f 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -1844,16 +1844,20 @@ int rkisp1_params_register(struct rkisp1_device *rkisp1)
 	node->pad.flags = MEDIA_PAD_FL_SOURCE;
 	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
 	if (ret)
-		return ret;
+		goto error;
+
 	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
 	if (ret) {
 		dev_err(rkisp1->dev,
 			"failed to register %s, ret=%d\n", vdev->name, ret);
-		goto err_cleanup_media_entity;
+		goto error;
 	}
+
 	return 0;
-err_cleanup_media_entity:
+
+error:
 	media_entity_cleanup(&vdev->entity);
+	mutex_destroy(&node->vlock);
 	return ret;
 }
 
@@ -1863,6 +1867,10 @@ void rkisp1_params_unregister(struct rkisp1_device *rkisp1)
 	struct rkisp1_vdev_node *node = &params->vnode;
 	struct video_device *vdev = &node->vdev;
 
+	if (!video_is_registered(vdev))
+		return;
+
 	vb2_video_unregister_device(vdev);
 	media_entity_cleanup(&vdev->entity);
+	mutex_destroy(&node->vlock);
 }
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
