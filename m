Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99DD6C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUk/reGLW3AqRXF6EtTXCyBnGtpb0eOmf8qOkF1HPLo=; b=LMotL0CMMavrrM
	3WK1KgFPkox9B77f1LS58liwK7/I8/WJYgtj58jBsh2++/X37iZxB49Lhg6hAgH8gukv+T67ilNLh
	NPDbzpFp8Qsyi6i0Y259gNeGH8Jera/Vd1/Y8kJ/sZTnfYs7qZWTSka8CRqJkKP8ZSccxtWHfk9Ak
	O7ri4X0Y3j6DewjQNbvNSvHfmowrwIt5nT8vrGnE2HqGxoGyQ0y10bKIu9ws/uI5oYxHrnGGDEMOt
	QsDGd2cmhszrlUPN61Qnm3HcuPIK58Sb7CUsZsy1r3bwi8to4VQQCbGv/NTeP6aVVtanKIdFyvMOA
	14dRQ/RfKPF3Fqin9+zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bzu-00AvHR-R4; Tue, 14 Jun 2022 19:14:42 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bzs-00AvE8-4X
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:14:41 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4B32AD96;
	Tue, 14 Jun 2022 21:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234078;
	bh=KDwDrnorXMslawjormLxIyDw9bPVJZXe9XsdxnbPr/k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PpL4s2SDYMgXlHEZ97eD37Buy9iav1AECyETYFBjKdI/RmWrZUA4WyJidJUu8L/Cn
	 3C58NC+QpUeOlOvJYPQa0KwFVgrarQS5auQ5uXETjFUAZ2C+bzqYkkPMXyIA+9OSoO
	 x/i2iZeKOkrO8LmeOM/flAX6xOnUyax+r/AQh9TE=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	laurent.pinchart@ideasonboard.com,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 42/55] media: rkisp1: Use fwnode_graph_for_each_endpoint
Date: Wed, 15 Jun 2022 04:11:14 +0900
Message-Id: <20220614191127.3420492-43-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121440_365980_849A14A7 
X-CRM114-Status: GOOD (  11.97  )
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

When registering the notifier, replace the manual while loop with
fwnode_graph_for_each_endpoint. This simplifies error handling.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 44 +++++++++----------
 1 file changed, 20 insertions(+), 24 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index a3e182c86bdd..00ace8224575 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -158,29 +158,28 @@ static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops =
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
@@ -188,14 +187,15 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
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
@@ -206,27 +206,23 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
 
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
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
