Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C618C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 17:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdpCKlhmp9lYudT0Oi80zVMj/uTONAoiMw+r7XOrmNM=; b=BXbwkFj31Aro9V
	XvliXljGJ8GJVa//EDyFD8zrstftyp8ElfUNkeKa8f1oZc67lwfl5dJQux+Blv+BLvx43j8ukmyCr
	NPatv21Vtymz6+VlS8HdYy2MUK5yjEc0c+MD4xf/wnj1z+oqt/olLNDM/DUX4LO0WFIJ7HMoRhnFd
	kUZXNggXKpruokumUO4wUZL1jwePh+KejXjbvOSxp9FCUoX6VWE2wr7MjFVahDf+8vFC/ebCY+arO
	imGUrqoqztp4l/xNKfTOnmzw1FvHR1WpuLkm5tYGyTXYJwjXLB25d9hskWQawKpzlZDrhMyP5mfUF
	T8phVLx4eU4xPTTdY30A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQBdQ-00BHNZ-GQ; Fri, 04 Mar 2022 17:22:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQBai-00BFbe-JK
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 17:19:47 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 98F371858;
 Fri,  4 Mar 2022 18:19:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1646414383;
 bh=8gzY6lDCQ60Au340BxDAxGxG8EXcExhgQejq7Vb848M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YCP/5u9DRyE20U4IeIc3Z8Td3+Y5ZWPSHlnwBfmgQumr2JOQ8rzfzrf1+LueTzAMR
 egw2qasDoxuIiVtW7e25ZAxzrzocEaxkpX5s+4N3oU8ONYOCkHFEB02az3PsuuLpbm
 EFIEmYNFmKr2GDFcOm42hS5rKd4dfjGQ4Y+jgBWo=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 03/17] media: rkisp1: isp: Fix and simplify (un)registration
Date: Fri,  4 Mar 2022 19:19:11 +0200
Message-Id: <20220304171925.1592-4-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
References: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_091944_810137_D14814BB 
X-CRM114-Status: GOOD (  12.71  )
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
 .../platform/rockchip/rkisp1/rkisp1-capture.c |  4 ++--
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 20 ++++++++++++-------
 2 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 96a7e6c0a622..eedf4bb1c74c 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1371,14 +1371,14 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
 	if (ret) {
 		dev_err(cap->rkisp1->dev,
 			"vb2 queue init failed (err=%d)\n", ret);
-		return ret;
+		goto error;
 	}
 
 	vdev->queue = q;
 
 	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
 	if (ret)
-		return ret;
+		goto error;
 
 	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
 	if (ret) {
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 2a35bf24e54e..f84e53b60ee1 100644
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
+	isp->sd.flags = 0;
 	return ret;
 }
 
 void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
 {
-	struct v4l2_subdev *sd = &rkisp1->isp.sd;
+	struct rkisp1_isp *isp = &rkisp1->isp;
 
-	v4l2_device_unregister_subdev(sd);
-	media_entity_cleanup(&sd->entity);
+	if (!isp->sd.flags)
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
