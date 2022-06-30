Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0539DCCA485
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p54PMLWE9COdUthMYkWIdBoSt7xABNWyhk3bSb8KwuI=; b=jo4jAfbjziB4GJ
	WSobVw61tki9fx5VAiy1pPKgk/x0pezY5zwSeU0QxR5oK46s4RGd2meemv3mnwa6ntMqzc93BdgKh
	9FHjMbz2CFze/5gqpsmXAnWwz/IsJ+hrkeSHWIJVAbLL4YA8sHc4BWozjAQzXkQSsywdMAXA9jK0D
	E8ZvfzNlEWZnSRPWesbeyv6uEg2dtNMXJDXMoZ/a3OEKIlRWHmI4CSiCJ0R0S8q4OKFUA34zoL4j7
	n1kp/3sPa2S3ITLRFKEr/SyL9L9bg2M/YWgpHpv6ouvr6PIAGoH4WM+xn42RabLWhvIVHCSOVO2/G
	BVANby0HIA+RD1ctRPLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73Gw-0020j0-Vy; Thu, 30 Jun 2022 23:08:31 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GU-0020PC-98
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:14 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 745F529F5;
	Fri,  1 Jul 2022 01:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630480;
	bh=XD6clsK9KPXg3dG8jB/BN5HedvdeIhuKVgeBfjCIkOc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MOC8yDoNsyXbCuMcel3VdAFJyG7Gi45YMem2obaTlvvFPLaO6scsqNuL1YAFsR4Ql
	 cz1cwFWpK5vq9DxDM1iu97YdqL182AIzCSnW1xhJXg8A+KqCZCWPU5X4a51/jNqle/
	 tdMXFz7f0kq3z571MZwSLP3ZxZBaVuuq752UR4PM=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 36/55] media: rkisp1: isp: Constify various local variables
Date: Fri,  1 Jul 2022 02:06:54 +0300
Message-Id: <20220630230713.10580-37-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160802_562604_F8C70651 
X-CRM114-Status: GOOD (  11.28  )
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

A set of local variables point to structure that are not meant to be
modified. Constify them.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 944d7bfa9b41..2ba227b2f6a1 100644
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
