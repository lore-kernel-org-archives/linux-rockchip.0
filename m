Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83CA4C4167D
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 23:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vucrutz/e4yRvLBcv4YCt27WB3TWhzltFWNWOghXFBw=; b=0SdctLcFdAJJ5C
	1Ux2XkkTAxRB5DyN1ITENG6aW3/XpzRETA6mvBaQlat8CSDWrOyNsfkB0N0axQzgFIB/SoQFQXIND
	lm7YNztkpmV66WXDTWUiMX2FoCZFww4I5WCOSonYqNBRahTO49rUUvcsTwRM4Z6i3+MaY7AfwAXPo
	0j85EEPggZDOmqR3Rjs/7K0KfOJDMv2tHBetXzuof/E+C7Xklt4V4TbObEykIw1rissBkzm84N36c
	+W/e9LrYRguN9hb+3yCs1NE7CsDye1eEtADh09O5g7OVd4QO4zD7c8VGIp7/6aeF/ADGjWPdDimo9
	L4u9HBG+YVASkZ6hTi4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhgRt-00FNul-Nq; Thu, 21 Apr 2022 23:42:57 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhgRn-00FNoY-8c
 for linux-rockchip@lists.infradead.org; Thu, 21 Apr 2022 23:42:52 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 52C978F1;
 Fri, 22 Apr 2022 01:42:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1650584567;
 bh=EKwBdOKXYBSAZo7eHku3+WttxLQM6TlB105HlkuT1PU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=T2OriKuvVSp8YK8Y2KIadOJECuDJ5CKXUPaVT8HoryUTKBVNMyAhkjXKCdSBL1UL/
 qI49P7vati9KyjM1YMd9JAuooNXQhMO4Zu6Q7SqlN+1yZEqXh49wbpGG+Ax933HgEQ
 SYz5GnjYA9yh6jyAL4afxBqqLyBuke2Iz7TsFVNA=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 06/21] media: rkisp1: stats: Simplify (un)registration
Date: Fri, 22 Apr 2022 02:42:25 +0300
Message-Id: <20220421234240.1694-7-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_164251_519291_66FA88DC 
X-CRM114-Status: UNSURE (   8.33  )
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

Simplify error handling at registration time as media_entity_cleanup()
can be called on an uninitialized entity, and make
rkisp1_stats_unregister() safe to be called on an unregistered stats
node to prepare for simplification of error handling at probe time.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
index be5777c65bfb..26ef3bbe43d0 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
@@ -463,21 +463,21 @@ int rkisp1_stats_register(struct rkisp1_device *rkisp1)
 	node->pad.flags = MEDIA_PAD_FL_SINK;
 	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
 	if (ret)
-		goto err_mutex_destroy;
+		goto error;
 
 	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
 	if (ret) {
 		dev_err(&vdev->dev,
 			"failed to register %s, ret=%d\n", vdev->name, ret);
-		goto err_cleanup_media_entity;
+		goto error;
 	}
 
 	return 0;
 
-err_cleanup_media_entity:
+error:
 	media_entity_cleanup(&vdev->entity);
-err_mutex_destroy:
 	mutex_destroy(&node->vlock);
+	stats->rkisp1 = NULL;
 	return ret;
 }
 
@@ -487,6 +487,9 @@ void rkisp1_stats_unregister(struct rkisp1_device *rkisp1)
 	struct rkisp1_vdev_node *node = &stats->vnode;
 	struct video_device *vdev = &node->vdev;
 
+	if (!stats->rkisp1)
+		return;
+
 	vb2_video_unregister_device(vdev);
 	media_entity_cleanup(&vdev->entity);
 	mutex_destroy(&node->vlock);
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
