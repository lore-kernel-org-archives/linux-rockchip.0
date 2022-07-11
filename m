Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4859CCA47B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktqbR7dAB4e4od6jbEs/LV/uYrbIBWNBuog3+yYNya8=; b=UkS4s+GJdeMawF
	DBlz72nSizt3njP86CXMNCrQGYCs2AdQSwmPeQ2QTGBzldXWFg7EYHQ/qxvn3HNAxBI9UZ8ClNokC
	b6rjHY5WYgYgMxCVyfBzeDV/vBXQvdpM+l3spd94ySgm0N2tw2GpI+e1AWzxIF7wkgVDlbn8kE8j6
	ktX02OI2OXGoDbzzYjmw7aheuGF+VMBeLX42f/bGVliJFS5j/Uky6P6bWa5fkR58uZBBvGBBhPlnT
	rDy95J48ntDXrm3rTAOCwQfkN2JoZo3sTqdHFL6rdDdpmIX/iW0y9lhLu6dMMYkVSJ3zvCaTFhPpZ
	tPlSQaVqVr+sdxzrZGBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAszt-001hKH-5C; Mon, 11 Jul 2022 12:58:45 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAslO-001YL3-93
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:48 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5B61A3070;
	Mon, 11 Jul 2022 14:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543424;
	bh=1HAfhP33oj61ch5OfO00FZQqZOYFnGE64Hf3Et9QcEw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UIk4PNZYFtA5VCME/hGpvKQOy9VqKgA0kyHS0EvxzpzKmdErVjHxstKc8QeKN86iU
	 3Mz9FTB6MV5l+jRTLSSGvnh6rNyPWjZQIll35pdDBVEFIhH/dLuZCjw7wMEhCEPr1j
	 +Eb/u9t7VerUhqv+V9MbJEUrkOq3Z6UVwyPE6Eno=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 41/46] media: rkisp1: Use fwnode_graph_for_each_endpoint
Date: Mon, 11 Jul 2022 15:42:43 +0300
Message-Id: <20220711124248.2683-42-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054346_538211_3BF099CC 
X-CRM114-Status: GOOD (  12.69  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

When registering the notifier, replace the manual while loop with
fwnode_graph_for_each_endpoint. This simplifies error handling.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 44 +++++++++----------
 1 file changed, 20 insertions(+), 24 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index c3a7ab70bbef..0eb37ba557ce 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -168,29 +168,28 @@ static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops =
 static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
 {
 	struct v4l2_async_notifier *ntf = &rkisp1->notifier;
-	unsigned int next_id = 0;
+	struct fwnode_handle *fwnode = dev_fwnode(rkisp1->dev);
+	struct fwnode_handle *ep;
 	unsigned int index = 0;
-	int ret;
+	int ret = 0;
 
 	v4l2_async_nf_init(ntf);
 
-	while (1) {
+	ntf->ops = &rkisp1_subdev_notifier_ops;
+
+	fwnode_graph_for_each_endpoint(fwnode, ep) {
 		struct v4l2_fwnode_endpoint vep = {
 			.bus_type = V4L2_MBUS_CSI2_DPHY
 		};
 		struct rkisp1_sensor_async *rk_asd;
-		struct fwnode_handle *source = NULL;
-		struct fwnode_handle *ep;
-
-		ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(rkisp1->dev),
-						     0, next_id,
-						     FWNODE_GRAPH_ENDPOINT_NEXT);
-		if (!ep)
-			break;
+		struct fwnode_handle *source;
 
 		ret = v4l2_fwnode_endpoint_parse(ep, &vep);
-		if (ret)
-			goto err_parse;
+		if (ret) {
+			dev_err(rkisp1->dev, "failed to parse endpoint %pfw\n",
+				ep);
+			break;
+		}
 
 		source = fwnode_graph_get_remote_endpoint(ep);
 		if (!source) {
@@ -198,14 +197,15 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
 				"endpoint %pfw has no remote endpoint\n",
 				ep);
 			ret = -ENODEV;
-			goto err_parse;
+			break;
 		}
 
 		rk_asd = v4l2_async_nf_add_fwnode(ntf, source,
 						  struct rkisp1_sensor_async);
 		if (IS_ERR(rk_asd)) {
+			fwnode_handle_put(source);
 			ret = PTR_ERR(rk_asd);
-			goto err_parse;
+			break;
 		}
 
 		rk_asd->index = index++;
@@ -216,27 +216,23 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
 
 		dev_dbg(rkisp1->dev, "registered ep id %d with %d lanes\n",
 			vep.base.id, rk_asd->lanes);
+	}
 
-		next_id = vep.base.id + 1;
-
-		fwnode_handle_put(ep);
-
-		continue;
-err_parse:
+	if (ret) {
 		fwnode_handle_put(ep);
-		fwnode_handle_put(source);
 		v4l2_async_nf_cleanup(ntf);
 		return ret;
 	}
 
-	if (next_id == 0)
+	if (!index)
 		dev_dbg(rkisp1->dev, "no remote subdevice found\n");
-	ntf->ops = &rkisp1_subdev_notifier_ops;
+
 	ret = v4l2_async_nf_register(&rkisp1->v4l2_dev, ntf);
 	if (ret) {
 		v4l2_async_nf_cleanup(ntf);
 		return ret;
 	}
+
 	return 0;
 }
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
