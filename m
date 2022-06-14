Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9A50C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3iIIstgTh+R6ydbFbSwFyaD6v8Z3p0MfoOpu6atuP8=; b=KHRPUUaKr9Q3Dd
	WLCH02IACCgrYyJO1v4wDHa5xWhILo3QH8Sr1YZAGZdb7Tm6pgohtYr6orXAEBYl3kGx0YUADf9WP
	vNDem3Tbu4hkiytXT5Fcbv4CT/RyNqD0ElnINX9nOfJLnFjIGYWB14txRIIs3LFhW0BP/OKW01moZ
	ahfB0mufh3JCTCoHdI8LqwEX46oAhB0b8gJKsup/0eJetU4Zdvz2yxvOwwC8xtKR0Rb3ugxSSZ6DF
	KySjWGnyMpOe6cf3sMnz7grMSVrv0uQ9vNDu6+W6oz8lYsNnHZhNaTEBQmKow0ori7GPUnp5CQz3U
	n8PNSKPsHdX6yBTmiVMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzS-00Auqt-4o; Tue, 14 Jun 2022 19:14:14 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzP-00Aumu-1Q
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:14:12 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 26666D96;
	Tue, 14 Jun 2022 21:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234049;
	bh=RtSAScxUk0/fbQ2CmcZYEaFy40LrLwy8r9dzgWI2z2I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=O4wZyXbeUAI0woo1zZumyaAQoGJVm9qC5G7B/X8Tq4QROjmVjKnE5/508F/jj+FSo
	 nVSIIwxaMs2Y2pZFSvjlRLVdM8fDVa/Wi9u9YSqILSF8fq9TmNwaOZQr/Fk8O3Ome0
	 4nfazw9x3R3Fds/rCzOpN+tru6v6MPlGvHhdEpNE=
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
Subject: [PATCH 35/55] media: rkisp1: isp: Constify various local variables
Date: Wed, 15 Jun 2022 04:11:07 +0900
Message-Id: <20220614191127.3420492-36-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121411_273002_CAA85F29 
X-CRM114-Status: GOOD (  10.65  )
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

A set of local variables point to structure that are not meant to be
modified. Constify them.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 86d496855374..91b37f2dca91 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -113,7 +113,7 @@ rkisp1_isp_get_pad_crop(struct rkisp1_isp *isp,
  */
 static void rkisp1_config_ism(struct rkisp1_isp *isp)
 {
-	struct v4l2_rect *src_crop =
+	const struct v4l2_rect *src_crop =
 		rkisp1_isp_get_pad_crop(isp, NULL,
 					RKISP1_ISP_PAD_SOURCE_VIDEO,
 					V4L2_SUBDEV_FORMAT_ACTIVE);
@@ -146,8 +146,8 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, acq_prop = 0;
 	const struct rkisp1_mbus_info *sink_fmt = isp->sink_fmt;
 	const struct rkisp1_mbus_info *src_fmt = isp->src_fmt;
-	struct v4l2_mbus_framefmt *sink_frm;
-	struct v4l2_rect *sink_crop;
+	const struct v4l2_mbus_framefmt *sink_frm;
+	const struct v4l2_rect *sink_crop;
 
 	sink_frm = rkisp1_isp_get_pad_fmt(isp, NULL,
 					  RKISP1_ISP_PAD_SINK_VIDEO,
@@ -557,7 +557,7 @@ static void rkisp1_isp_set_sink_crop(struct rkisp1_isp *isp,
 				     struct v4l2_rect *r, unsigned int which)
 {
 	struct v4l2_rect *sink_crop, *src_crop;
-	struct v4l2_mbus_framefmt *sink_fmt;
+	const struct v4l2_mbus_framefmt *sink_fmt;
 
 	sink_crop = rkisp1_isp_get_pad_crop(isp, sd_state,
 					    RKISP1_ISP_PAD_SINK_VIDEO,
@@ -742,7 +742,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 {
 	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
 	struct rkisp1_device *rkisp1 = isp->rkisp1;
-	struct rkisp1_sensor_async *asd;
+	const struct rkisp1_sensor_async *asd;
 	int ret;
 
 	if (!enable) {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
