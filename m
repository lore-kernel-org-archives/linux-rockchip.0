Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00B38C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 23:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EciSUO263z+imLo4FW8RMaeOzXcKm14dFHeNIQ8vbZo=; b=dYUpZE4XkRCure
	EBeKobzfCUNY5WEkiO23PFpol3awexcXHBAabfzfBGoG/xdIWpfJFTFcjeftnHjzHjpGYpGe6r+Ak
	JK4FsuyK3QbLX9wySxutRTMQqjpeePe9NzKKbofgX6BHjmoKmwr/nGSCePOwlR2o2vu1gGtBFylBv
	t//m9kCj/yUCsjQ9RgYbhayuGREiPmoF+5iTxGXQj3pIwnGGv53JhSGtqZ+ybRxxspHOdEHI4CsOw
	9EJKvD5y2yRFJ25/u7/+WlYd+DDj2IGFzn85ns/SlGFd3N7XC2xBNDzwRS+iDzzwBc0vFNLfFcgTC
	YrV3++5Is1LAQ85GbU0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhgRs-00FNtd-9X; Thu, 21 Apr 2022 23:42:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhgRl-00FNn3-L9
 for linux-rockchip@lists.infradead.org; Thu, 21 Apr 2022 23:42:51 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D4D0789F;
 Fri, 22 Apr 2022 01:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1650584566;
 bh=uZPujRp7E7W/iQCSCQ3gxv5X2Ebp3Ib+BLDqmiEubbc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=utA6a7K/VKXCg+1FpKdxhc56B8dCunkj7Nw6gFQ22pvT80dVEJcvjZHSqt7Joq6e+
 7XT7TlvrDAs/dPoIHNcY5mwY4r/0HSHQwy5MYsYRpmW7LYywrQMKOH9QRTJhkFsfMz
 TbILlfbdNOjIYlpgJp9w+jKEq6CvW6NeVohwrY0s=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 04/21] media: rkisp1: resizer: Fix and simplify
 (un)registration
Date: Fri, 22 Apr 2022 02:42:23 +0300
Message-Id: <20220421234240.1694-5-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_164249_876649_A98E5B7B 
X-CRM114-Status: GOOD (  12.83  )
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
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
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
