Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D955DCCA47F
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 00:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Urd5nsxF6wOEkcp49fflK+W/01Hkbh++iDrZoa2hbQ=; b=VnMoH2tUbYJ/6J
	h4lIf8uhGmV4HBXt7Urmo4CxZVDivl4dAFHFhpGQOEN72ibsrj7GfXahZLvnllyXiryC3qRQi8hgv
	U6nL1EQEXkGPWZ8teXW3t53NZ6Mc+v40wMya21JxQ7/E7rzoGqYEbMk4MAJLptgehDyf4pGyP+I8e
	zWc1pEGa8pbgMnisPjcIUrNzYgOX19MaiE8glNSA9tJium6axtPpsFuOcdOLsidWmEZFcUqfZuqOL
	OSWAOsQnQQ78pRhi4QeHZEBRwO2pkzTnrOXJGFyN/N4mbQCY7bE6tVrkG0exAH3nFRrzBaLSj6LEe
	H17f08yziUI7LsLk8LHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74KD-0028Ie-1F; Fri, 01 Jul 2022 00:15:57 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GK-0020Dm-8F
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:07:54 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 850D513D2;
	Fri,  1 Jul 2022 01:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630466;
	bh=CcUfvAct5/5GJBHNQ078nWfb82MLDDivX7HvbSE8q4k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=k1wn6AeWG6NHVBzVM7ixYQ5IZ/t6CzTZzlSgHu1wBw0OSTWsZ052bLJtk8Ndy3UA/
	 ScG552Hg1p34djZmKWsKz4XvMUoF1NjANIpkRKsUElioui7plF5lE35CFr0g7Z0dVW
	 CbsxN6oEjki2toKPclyh+ylN8oXzise9bHtNIW4U=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 13/55] media: rkisp1: Move sensor .s_stream() call to ISP
Date: Fri,  1 Jul 2022 02:06:31 +0300
Message-Id: <20220630230713.10580-14-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160752_635498_F42F06AE 
X-CRM114-Status: GOOD (  11.27  )
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

Move the calls to the active sensor's .s_stream() operation to the ISP
subdev's .s_stream(). This groups all handling of the active sensor in
one place, preparing for a rework of that code.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-capture.c  | 12 +-----------
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c  | 11 +++++++++++
 2 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index fb14c8aa154c..d5904c96ff3f 100644
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
index 8aa4c0b85510..689885ac2e84 100644
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
