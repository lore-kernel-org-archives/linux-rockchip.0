Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CF6AC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 17:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dT+yvCsa37RhFondiGXnTZsnumwP0Ykjl/SK8hJtRE=; b=dtRkU4Y655Tvp2
	si3C5bP7VGhB9VE971XrevFQTrx1eZVvrz/s749bvh06evkDtr+El5NCFhtOmCjIMIb885radD5Jo
	Y+qT5CQ4agCaW1m6zEVrhs3oAxARGG15x4yFLFDa9w5j2UuzuURYK0qG+AtudSJjknpGF3ZTBhqDE
	4ricJxa+tQ3NxR140GoTu7tq0Za1lEDRn3f3s6Y9XoYALNJoFO96ilEJIO7cCKJzxAyo3tfAfT454
	p0bC9YgaJRTKUjQAhu/SdfLMzR21nTVMnSPDA9YT7ItIuwBLYMVWHWXkbKHbSDuXMG1Tyswo4w99U
	yY3FH/J2RaLYWLVDgXvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQBdL-00BHK7-Se; Fri, 04 Mar 2022 17:22:27 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQBaj-00BFcS-5W
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 17:19:47 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 46F331870;
 Fri,  4 Mar 2022 18:19:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1646414383;
 bh=tLZBOFv4Sua4nht15QHP+PeXEWtGdX9eu22/SW0N0NY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DEuX4DLm18LPAZunE+iKMFc9QHLbiYJ5/jWXLr/9A4i7yEsmYEY47smpD4G97wklo
 mcUYaIHq0+CtRbofNDVqSqNwzKldQT8gpoQvSORYB40Q8sXW88iXKYjUmP8fMWes9V
 yhe/WZlxsuoiDGLaCtRfswFqfwpExlzXiVcofF/s=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 04/17] media: rkisp1: resizer: Fix and simplify
 (un)registration
Date: Fri,  4 Mar 2022 19:19:12 +0200
Message-Id: <20220304171925.1592-5-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
References: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_091945_418708_AC7DAD1D 
X-CRM114-Status: GOOD (  14.38  )
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

The rkisp1_rsz_register() and rkisp1_rsz_unregister() functions don't
destroy the mutex (in the error path for the former). Fix this, simplify
error handling at registration time as media_entity_cleanup() can be
called on an uninitialized entity, and make rkisp1_rsz_unregister() and
rkisp1_resizer_devs_unregister() safe to be called on an unregistered
resizer subdev to prepare for simplification of error handling at probe
time.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v1:

- Reset rsz->rkisp1 in rkisp1_resizer_devs_register()
---
 .../platform/rockchip/rkisp1/rkisp1-resizer.c | 34 +++++++++----------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index 2070f4b06705..df2beee1be99 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -782,8 +782,12 @@ static const struct v4l2_subdev_ops rkisp1_rsz_ops = {
 
 static void rkisp1_rsz_unregister(struct rkisp1_resizer *rsz)
 {
+	if (!rsz->rkisp1)
+		return;
+
 	v4l2_device_unregister_subdev(&rsz->sd);
 	media_entity_cleanup(&rsz->sd.entity);
+	mutex_destroy(&rsz->ops_lock);
 }
 
 static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
@@ -821,47 +825,43 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
 	mutex_init(&rsz->ops_lock);
 	ret = media_entity_pads_init(&sd->entity, RKISP1_RSZ_PAD_MAX, pads);
 	if (ret)
-		return ret;
+		goto error;
 
 	ret = v4l2_device_register_subdev(&rsz->rkisp1->v4l2_dev, sd);
 	if (ret) {
 		dev_err(sd->dev, "Failed to register resizer subdev\n");
-		goto err_cleanup_media_entity;
+		goto error;
 	}
 
 	rkisp1_rsz_init_config(sd, &state);
 	return 0;
 
-err_cleanup_media_entity:
+error:
 	media_entity_cleanup(&sd->entity);
-
+	mutex_destroy(&rsz->ops_lock);
 	return ret;
 }
 
 int rkisp1_resizer_devs_register(struct rkisp1_device *rkisp1)
 {
-	struct rkisp1_resizer *rsz;
-	unsigned int i, j;
+	unsigned int i;
 	int ret;
 
 	for (i = 0; i < ARRAY_SIZE(rkisp1->resizer_devs); i++) {
-		rsz = &rkisp1->resizer_devs[i];
+		struct rkisp1_resizer *rsz = &rkisp1->resizer_devs[i];
+
 		rsz->rkisp1 = rkisp1;
 		rsz->id = i;
+
 		ret = rkisp1_rsz_register(rsz);
-		if (ret)
-			goto err_unreg_resizer_devs;
+		if (ret) {
+			rsz->rkisp1 = NULL;
+			rkisp1_resizer_devs_unregister(rkisp1);
+			return ret;
+		}
 	}
 
 	return 0;
-
-err_unreg_resizer_devs:
-	for (j = 0; j < i; j++) {
-		rsz = &rkisp1->resizer_devs[j];
-		rkisp1_rsz_unregister(rsz);
-	}
-
-	return ret;
 }
 
 void rkisp1_resizer_devs_unregister(struct rkisp1_device *rkisp1)
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
