Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 554B0C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Mar 2022 16:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2CyRq6A/0i/8LO9tjDhC1nBTJVA5NW2+atv3p+NhBM=; b=qjzlScnhTgkpw+
	dkqd+896ZnmMZWtWdoIY2kMbUO14jR2hFX2MD5WudFJIhAqtbSzSpvgj84vjlLRYsOLOW2DEHn8Os
	WKl63Kctws68MyVsDuzruTWCfP+twVkc/gG+X/Hve/KAZ+i1gMf2miLaDTCFcXP2r+M+hmCTSin04
	KTB3XE1DDfMxNWAtiyMpUlYn/iXyTYoJBTJYZh+lRucw8newsON6c2a/dFhvImUCi7DjnmsHqE3Dy
	n2J3rhoBBix643tURyXaUf0s51mTxdQvXAm3ZglQqc153FJpjt8nRcNNxac/ckupF3kCELpbOJG1n
	zFJuPb+KftoauPqijb/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVbzJ-0042kz-3d; Sat, 19 Mar 2022 16:31:33 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVbzG-0042j9-EZ
 for linux-rockchip@lists.infradead.org; Sat, 19 Mar 2022 16:31:31 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 79D0126E2;
 Sat, 19 Mar 2022 17:31:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1647707487;
 bh=TZYcik4dG+rSsCkPCQkOBQpcllM4Z18+HB9vK0XUl5U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qrlFXGDK0VWGQQdHhcvdERYfG7ms6xhtHdDJSopcYm/CjV1lUi275VOBUbU5s7Jfn
 mQSCaM4wzW1/qVIdKYgqvy1QJvbsEVLEsiH/+n4i6WJyVhrytyhWeb/C8zncSo4kxe
 mf0426RB1mO7U6JN4l9LYnXdnz/bIGGQroZmKPkY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v3 03/17] media: rkisp1: isp: Fix and simplify (un)registration
Date: Sat, 19 Mar 2022 18:30:46 +0200
Message-Id: <20220319163100.3083-4-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
References: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_093130_665877_31B86953 
X-CRM114-Status: GOOD (  11.28  )
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
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 20 ++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

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
