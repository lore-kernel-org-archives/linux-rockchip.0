Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AD50C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Mar 2022 16:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vucrutz/e4yRvLBcv4YCt27WB3TWhzltFWNWOghXFBw=; b=hD/etieO+m8XPM
	KtuMwKJqzeVPNzvmGP/BuN8DaUyJmgLijBtmEz1cqM7oXco48ThY4ldVgFeXi/dae0MRXwq1BIV7D
	H4zfgsgh8KfzVVf4dYLNrhtOT3Bw+49x9aUvdJjaoKlLdFkO7Ljb9GZPICG6S8GhyLJrsQWcvQGmd
	cTcpqr+/rGAmyLr4WlU0uezvjmPwU7VpuCK6H2EUF3eYLOnxv9trB4l+F/FGmC0mZ5kq9tMGnn7b8
	IAjqsDZ3Q61kPfKehksm96F5wySd4ZmoMMvZ28K5gLbpLzRY6hAcxYcYjt9aQiomXLRxTjOMykmUx
	JdxNJ3OrwYYXy2L5OM9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVbzQ-0042qL-Gj; Sat, 19 Mar 2022 16:31:40 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVbzJ-0042kr-7K
 for linux-rockchip@lists.infradead.org; Sat, 19 Mar 2022 16:31:35 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id AEE9F2A45;
 Sat, 19 Mar 2022 17:31:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1647707489;
 bh=EKwBdOKXYBSAZo7eHku3+WttxLQM6TlB105HlkuT1PU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=T///xcAWBSzLLqLqNYp+FFhj4RQrrJDq+Lv9+hUtNEvPFcXqsy+PSPAkN4P4vmCNZ
 //rHzwb3csbBGLA0U+6QZ3l8AbCwk+idPL74jXYLKupkXwqo3W8rB6aMxPKh2XXbVc
 z2rwR6gHUdfod9lgLWFN+MYrMWEBCWHiOT18gIy4=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v3 06/17] media: rkisp1: stats: Simplify (un)registration
Date: Sat, 19 Mar 2022 18:30:49 +0200
Message-Id: <20220319163100.3083-7-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
References: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_093133_467181_88B3EB5D 
X-CRM114-Status: UNSURE (   9.66  )
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
