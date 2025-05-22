Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 542D6C54ED0
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 15:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OzEN2EbTVWeMlI2xhO0KpJw8MbhhTMSKWXwpm7GtVcU=; b=GyCdVTOftul1kb
	rSO/tfUsw5iUnWWZtD4VICVdMZai0rpcIFRLAiu0ZZFxCus7IYLEwJ7E71/Qsy/X0FEtqt235a3Y/
	UXA2094jY1m0TJsp9nRTQMN3TAewHoRj3xWVXcW5mgXzAuCxYwUk6fH8yoG/zBB1AMHhf0/RD1yLz
	+7qnIkiYXakpQCS0wsWV9oIs2XxFZ6DaTmDy1NWBrK0Tpgk8T6ueTRf/kJu2Vp+FW1xiSlwRKOXaK
	BHosE04WMFLjXQDgr5yOSOhDQRX3NyjNWTIl5QGHnb2/a+gnght5ZDzHshtitzsnQqO1lwDYFVCp0
	p4vNUPQ5s3Mj5vC71wzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI83g-00000001TW9-1HOF;
	Thu, 22 May 2025 15:42:12 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI7as-00000001OuG-1i1v;
	Thu, 22 May 2025 15:12:27 +0000
Received: from ideasonboard.com (unknown [IPv6:2a00:6020:448c:6c00:30c3:8bbb:632f:b0c9])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 93D028FA;
	Thu, 22 May 2025 17:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1747926720;
	bh=pO5u+KDpqe/wtFtfltLT6eyTFZ/IqJJk8xm76d512/8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GpshNTa9JHOJDRZHdtsC84v5/P02ueCLeCQNUEXgf3AzyBEwFBJjx7BkybbR65VBY
	 4pinIoeT8j5g1t1nZ6S9AwRdsXXgvB22AKWLW/N2mRlqLJc6Dzcx6DLwe2sfwcWHe/
	 P4tiv1afJ09/DpY5KEXmVW7dJjqqK6p0d3MIJEQk=
From: Stefan Klug <stefan.klug@ideasonboard.com>
To: linux-media@vger.kernel.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Stefan Klug <stefan.klug@ideasonboard.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] media: rkisp1: Cleanup error handling
Date: Thu, 22 May 2025 17:08:38 +0200
Message-ID: <20250522150944.400046-3-stefan.klug@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250522150944.400046-2-stefan.klug@ideasonboard.com>
References: <20250522150944.400046-2-stefan.klug@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_081226_581095_7D680EDA 
X-CRM114-Status: UNSURE (   8.50  )
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

Do not call media_entity_cleanup() when media_entity_pads_init() fails.
As a drive-by fix handle an (very unlikely) error in
rkisp1_params_init_vb2_queue().

Signed-off-by: Stefan Klug <stefan.klug@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-params.c    | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index b28f4140c8a3..918eb06c7465 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -2763,7 +2763,9 @@ int rkisp1_params_register(struct rkisp1_device *rkisp1)
 	vdev->queue = &node->buf_queue;
 	vdev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_META_OUTPUT;
 	vdev->vfl_dir = VFL_DIR_TX;
-	rkisp1_params_init_vb2_queue(vdev->queue, params);
+	ret = rkisp1_params_init_vb2_queue(vdev->queue, params);
+	if (ret)
+		goto err_mutex;
 
 	params->metafmt = &rkisp1_params_formats[RKISP1_PARAMS_FIXED];
 
@@ -2777,19 +2779,20 @@ int rkisp1_params_register(struct rkisp1_device *rkisp1)
 	node->pad.flags = MEDIA_PAD_FL_SOURCE;
 	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
 	if (ret)
-		goto error;
+		goto err_mutex;
 
 	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
 	if (ret) {
 		dev_err(rkisp1->dev,
 			"failed to register %s, ret=%d\n", vdev->name, ret);
-		goto error;
+		goto err_media;
 	}
 
 	return 0;
 
-error:
+err_media:
 	media_entity_cleanup(&vdev->entity);
+err_mutex:
 	mutex_destroy(&node->vlock);
 	return ret;
 }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
