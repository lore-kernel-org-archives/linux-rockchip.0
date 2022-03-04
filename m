Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29AE3C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 17:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbwutM2luNpHPNKW2NagHOByO+PGCIki0pXW1LbgdAM=; b=YydkXX9vBGbs/6
	N0MkPfRc49ll/VFe+LMH+IW8nxc16lyeXmE99FKlitsIN8OT2kDQpR4VqFKzm9clvF1MiWR7A0Ne1
	nIm3DB/t6mnTWzDSeYsmt05BBQAwLYtqRc/tQ2tIMOs+mdyQwyk7istrBB+pw7EZFjMakMNs+Y9Zd
	DiyicKFtuM0cXMG421lyepq2NUrpTibvlPb68aiZAQw7aAL72CHzNhydeHLpBQkvsrROFjFgITcl8
	PXY3MDPxr1eilfczrVQxIj6Wk5rspM6Uj4g0Ih9kYbw3Hga4myB0RBjf20U/o2sXLGCs5mRKpOx7c
	xzXV0UopyOMT7bGw1kcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQBdG-00BHGf-4t; Fri, 04 Mar 2022 17:22:22 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQBah-00BFb6-OM
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 17:19:46 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 409A41027;
 Fri,  4 Mar 2022 18:19:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1646414381;
 bh=XAy4l+u3O29ccEZRhIHqhldSK5JJ1M68c+15tp62Ric=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nDyAeZgSAB2dzgo+S47HvQbTJLlXMIittwF050CH8OdFPQ9lAwRxxykFmR8X7TxeM
 OSZsz2JliJug/StYkLdVPDZtKl9xVrTyPO9zdl24byoJneR8jiMUV9iqMJ1BUbXVas
 lhZ7g3PYzJ0HnjsYkmk42uxINVg+mbeoT4Vcxm+E=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 01/17] media: rkisp1: capture: Initialize entity before
 video device
Date: Fri,  4 Mar 2022 19:19:09 +0200
Message-Id: <20220304171925.1592-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
References: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_091943_985203_0CB5504A 
X-CRM114-Status: UNSURE (   9.64  )
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

The media_entity embedded in the video_device needs to be initialized
before registering the video_device. Do so.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c   | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index c95c00a91180..9c11f2b8e5f5 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1372,22 +1372,25 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
 
 	vdev->queue = q;
 
+	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
+	if (ret)
+		return ret;
+
 	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
 	if (ret) {
 		dev_err(cap->rkisp1->dev,
 			"failed to register %s, ret=%d\n", vdev->name, ret);
-		return ret;
+		goto error;
 	}
+
 	v4l2_info(v4l2_dev, "registered %s as /dev/video%d\n", vdev->name,
 		  vdev->num);
 
-	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
-	if (ret) {
-		video_unregister_device(vdev);
-		return ret;
-	}
-
 	return 0;
+
+error:
+	media_entity_cleanup(&vdev->entity);
+	return ret;
 }
 
 static void
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
