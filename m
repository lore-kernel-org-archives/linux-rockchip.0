Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6C6CC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZBZh42beAz9kn9Xak5T2MWFNX/9o7lLP0fPLC5j/ns=; b=rkLeoEC/7OdCBS
	TiFeZAjBf36zQ4MrkLjpfcWmSsxBCrspAF6J1USmqeSkWIyGJx5hw8nSm02X3yYzGZngAFpqwq50v
	HVN+PU7yXZ1aowDcyxF8kZBYug2QrA2trOmtZBCf+LKSN2bYDj3kkOYMEolnyYggowgmYEN1TigA8
	dXGl3R6+Vh6V7FUzdvhXtQAObmRtfyf8AviXcHWGCrcboKPkUTMZf8AGBQ6nUPDC1tj/9qBegTT/Y
	AKdU/QL9iSo/KXBNer56xtoPunWxDTzBxzoJiG9aoKWQ/Q62dDaRGIS4ofc3Xf4d70BN9GKvcjmAv
	oy6rc3c1DBm2q7L2XauA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ByY-00Atkd-U7; Tue, 14 Jun 2022 19:13:18 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bxq-00AtV6-NO
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:12:36 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D3985D96;
	Tue, 14 Jun 2022 21:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233953;
	bh=k8FRBbwpvIHe8zOUzbxn54nhYIrUq6aIGOgT/YnXUxg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TXd/O2C3MN/Un/SQgTfm55tjOsb36YLeoWVMOXhyyNk/Ym/QLhQRd3ovUmObvxM8e
	 0uXe2CC0QjTS+eCnBMyb3qj5Xzlv8XC8h4mr3Z0tlBbcA681nZdAzGxZ6PFF24zdx8
	 CZbSaxnyb09UgFemrzlz0xOiL0h+ksG0C9dTb8Nc=
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
Subject: [PATCH 11/55] media: rkisp1: Move sensor .s_stream() call to ISP
Date: Wed, 15 Jun 2022 04:10:43 +0900
Message-Id: <20220614191127.3420492-12-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121234_961525_B80D732B 
X-CRM114-Status: GOOD (  10.68  )
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

Move the calls to the active sensor's .s_stream() operation to the ISP
subdev's .s_stream(). This groups all handling of the active sensor in
one place, preparing for a rework of that code.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-capture.c  | 12 +-----------
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c  | 11 +++++++++++
 2 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 94a0d787a312..9edaa95fa44c 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -926,11 +926,8 @@ static void rkisp1_pipeline_stream_disable(struct rkisp1_capture *cap)
 	 * If the other capture is streaming, isp and sensor nodes shouldn't
 	 * be disabled, skip them.
 	 */
-	if (rkisp1->pipe.streaming_count < 2) {
-		v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
-				 false);
+	if (rkisp1->pipe.streaming_count < 2)
 		v4l2_subdev_call(&rkisp1->isp.sd, video, s_stream, false);
-	}
 
 	v4l2_subdev_call(&rkisp1->resizer_devs[cap->id].sd, video, s_stream,
 			 false);
@@ -966,15 +963,8 @@ static int rkisp1_pipeline_stream_enable(struct rkisp1_capture *cap)
 	if (ret)
 		goto err_disable_rsz;
 
-	ret = v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
-			       true);
-	if (ret)
-		goto err_disable_isp;
-
 	return 0;
 
-err_disable_isp:
-	v4l2_subdev_call(&rkisp1->isp.sd, video, s_stream, false);
 err_disable_rsz:
 	v4l2_subdev_call(&rkisp1->resizer_devs[cap->id].sd, video, s_stream,
 			 false);
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 89577119b571..58cf6d21f1eb 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -857,6 +857,9 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 	int ret = 0;
 
 	if (!enable) {
+		v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
+				 false);
+
 		rkisp1_isp_stop(rkisp1);
 		rkisp1_mipi_csi2_stop(rkisp1->active_sensor);
 		return 0;
@@ -886,6 +889,14 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 
 	rkisp1_isp_start(rkisp1);
 
+	ret = v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
+			       true);
+	if (ret) {
+		rkisp1_isp_stop(rkisp1);
+		rkisp1_mipi_csi2_stop(rkisp1->active_sensor);
+		goto mutex_unlock;
+	}
+
 mutex_unlock:
 	mutex_unlock(&isp->ops_lock);
 	return ret;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
