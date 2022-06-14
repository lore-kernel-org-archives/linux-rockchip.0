Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 483B7C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Sj6mSS/rHCsQoPSUUgaxgmXLclGsU6zppWPz+Ftuqw=; b=peamJq03TFdaoN
	PCeY2T6Mn7sx6dr1B2kywceP4LqgexZeJA0f7mlEue8GfEGc27i+Tspp+8qqgB38YHVuB59vP0R5i
	G2Upa93JsciqmqaXcjFrSigTA2jIa6OlgB+LUzXXAa6l2wgn6F9TJsjaTrBrDRglcS2Xwr4iEAb2r
	iawR/Ozx0oQB4gPp4v8u92VMbJZc8Wf+j85DaEEaQph9M14Dum3Uz2WK2yG3AzGL6I3naXXchSFhc
	eqSZHhDifFZ7HcrDv3g2xawDIvX31JPgt5FXftcZ7HbZbM7xw00iYljfVWy12q19LNQ5HxVso8uvk
	Qxi/mJFN23bIXSK+wCTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Byd-00AtrO-9s; Tue, 14 Jun 2022 19:13:23 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ByN-00AtgH-9h
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:13:08 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A2D22825;
	Tue, 14 Jun 2022 21:13:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233986;
	bh=eSmCMdUtxHqbgRDuGNxkbYgoA5HVwiupuRMK0U0lEW4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AAKigp01AQ9Qpy0H5Afbl6B52sZ2askUtzATYvZSvTsKya/a/e3UVnEAHqTg+9Vmw
	 U60DaSpK5cws2Bv8bhuCQYAEKoMzf2pqCCHEH+Na/o1ZfCLkcQtyGMG01WZCvz5eOh
	 5nNXIw46JEZYzotaLddFhNIBAvYhmOui4q95IL2A=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 19/55] media: rkisp1: isp: Start CSI-2 receiver before ISP
Date: Wed, 15 Jun 2022 04:10:51 +0900
Message-Id: <20220614191127.3420492-20-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121307_530695_5E2A37BC 
X-CRM114-Status: UNSURE (   8.83  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Make sure the ISP is ready to receive data before starting the CSI-2
receiver by starting it first. Similarly, stop the CSI-2 receiver before
the ISP when stopping streaming.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 5eabb321e320..0e68c8d53404 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -771,8 +771,9 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 		v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
 				 false);
 
-		rkisp1_isp_stop(rkisp1);
 		rkisp1_mipi_csi2_stop(&rkisp1->csi);
+		rkisp1_isp_stop(rkisp1);
+
 		return 0;
 	}
 
@@ -794,11 +795,13 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 	if (ret)
 		goto mutex_unlock;
 
+	rkisp1_isp_start(rkisp1);
+
 	ret = rkisp1_mipi_csi2_start(&rkisp1->csi, rkisp1->active_sensor);
-	if (ret)
+	if (ret) {
+		rkisp1_isp_stop(rkisp1);
 		goto mutex_unlock;
-
-	rkisp1_isp_start(rkisp1);
+	}
 
 	ret = v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
 			       true);
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
