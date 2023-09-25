Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CBADCE7A94
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 00:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+ILEMzR2HkkG/qs2a5vuTJIDij1XHI8VIPYKWfhJjk=; b=RpYB2i/3LPTped
	sJpQl7vRtiX2rG9laZQLRropkbOzrljqtLZ/rNzRNShvsvxQichk+OWiW2FmLrM52fLjKkeBeEfDT
	nMTo1+2jfdOot4+bPV2OBJf41axL+n0IIDqJuAeQulsNdUiDaAVQ9fTr1cmqMgPlf5Kki8Z0wFs1q
	KGI58qxh8teyZwB4yvFxZ4LfAnO2S6rpZBe89OKjyEafFyVw0qNSuN62vaJdBxAXE+TbwnWn5NkM5
	8Zx3MlXWARF18Q0p5pHwcx/EN1qutGONqmyuo34DneClG5GOu2CqjgCK1fvXsvAQzVYNnJTs2yOXa
	hg3Q/TuwRTs66cfg32ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZf9-00D249-0k;
	Mon, 25 Sep 2023 00:41:23 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZf5-00D20C-11
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 00:41:20 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5B3993358;
	Mon, 25 Sep 2023 02:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695602378;
	bh=GMG0fHmv3KmpKFs8+vm/LTPQOMfBr81TMHT49rF7ZQE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QFBf4nhn0MPUMMPvrJMjXxmFfgnf3/dVPlFHw0AiyTtK5Dh5uMaYYg1kkUp/hYJp9
	 t34GmOhLpgs+ShZFNNBqU6JaWtL5OyOvdMD9AlYq7YdNIkq+yv73CG/voCEVojjPMV
	 Y3VT9zM0yhEVxI61yeovNu/GTEWc+OvoiNttHltY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 11/14] media: rkisp1: resizer: Use v4l2_area instead of v4l2_rect to store size
Date: Mon, 25 Sep 2023 03:41:09 +0300
Message-ID: <20230925004112.22797-12-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
References: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_174119_511323_12AF63F9 
X-CRM114-Status: UNSURE (   8.35  )
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

The rkisp1_rsz_config() and rkisp1_rsz_config_regs() functions use a
v4l2_rect to pass frame sizes, leaving the top and left members unused
and uninitialized. Use v4l2_area instead.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index 26f9c16ccc3e..8700be7d19aa 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -208,8 +208,8 @@ static void rkisp1_rsz_disable(struct rkisp1_resizer *rsz,
 static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
 				   const struct v4l2_rect *sink_y,
 				   const struct v4l2_rect *sink_c,
-				   const struct v4l2_rect *src_y,
-				   const struct v4l2_rect *src_c,
+				   const struct v4l2_area *src_y,
+				   const struct v4l2_area *src_c,
 				   enum rkisp1_shadow_regs_when when)
 {
 	u32 ratio, rsz_ctrl = 0;
@@ -272,7 +272,8 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 	const struct rkisp1_rsz_yuv_mbus_info *sink_yuv_info, *src_yuv_info;
 	const struct v4l2_mbus_framefmt *src_fmt, *sink_fmt;
 	const struct v4l2_rect *sink_crop;
-	struct v4l2_rect sink_y, sink_c, src_y, src_c;
+	struct v4l2_rect sink_y, sink_c;
+	struct v4l2_area src_y, src_c;
 
 	sink_fmt = v4l2_subdev_get_pad_format(&rsz->sd, sd_state,
 					      RKISP1_RSZ_PAD_SINK);
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
