Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DA66D3B7EA
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 12:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSlntB8sQSnbX/lNkk+ln17rmHThX/vw5y5oL5uINEw=; b=Q5IVljYm5GrnyM
	aHTNvyNNZyeFU5kj58cxxEUMP1IJYRCMhre5hH+s5jHvxgToExfZkyokSH5mk73Si4LC3hMSFXYFK
	OzHDTsCSXHb45HAAZ5TGDQNKXyKbPBsLFJOcI/z40efNBMZoCbULW6gjygxAcgNvhgQGfxZvqjMvc
	K4Mx4TmKbJbltCuYTYUq7bzR1TRQoClxruc7ul2IRWBDoZIJuPZVygOhW1pQ0WZDefAxSJL1OS8gr
	3W1EoERKccL9/WzFc9QbKK67nXzrpiYeJ41Xdty1MXt637di5yO1fperKVRqnRiUf9RJwyka79psN
	iExkgpTlq+FzuIbTtedA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSwss-0000000EFPn-3iNg;
	Tue, 09 Dec 2025 12:32:02 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSwsm-0000000EFI0-3DVY;
	Tue, 09 Dec 2025 12:31:57 +0000
Received: from isaac-ThinkPad-T16-Gen-2.infra.iob (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 25841833;
	Tue,  9 Dec 2025 13:31:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1765283514;
	bh=NyyRdDX2WZbA0znUhmAwrClOIgKwPmzzc+lI7uMT9ME=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LbGvufnGVH2wQu9qgZByAVecRcIA5mdtZAPfjoOssxgDH+TdY+/N1Le8aNXN5TUoW
	 bcOO4u0kBROqsaO+C9mHd5MU+m/zy+B/FCDLUTv6uV9HwA5P+yaxhmHeVf5UnGuszA
	 F+9UQlZvYiWKPXZuoT+OeKML/OD1VjJCP4CUUcyM=
From: Isaac Scott <isaac.scott@ideasonboard.com>
To: dafna@fastmail.com
Cc: laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Isaac Scott <isaac.scott@ideasonboard.com>
Subject: [RFC PATCH 3/6] media: rkisp1-isp: Add target_format
Date: Tue,  9 Dec 2025 12:31:33 +0000
Message-ID: <20251209123136.273938-4-isaac.scott@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209123136.273938-1-isaac.scott@ideasonboard.com>
References: <20251209123136.273938-1-isaac.scott@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_043156_960656_BF324BBD 
X-CRM114-Status: GOOD (  10.75  )
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

In passthough mode, we want to make sure the output format of the ISP is
identical to the input format. Add logic to ensure the format we
configure the output of the ISP with is the sink format when we are in
bypass, and the source format if we are not.

Signed-off-by: Isaac Scott <isaac.scott@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 7f0802ae3dcc..7c844e00808a 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -175,9 +175,10 @@ static void rkisp1_gasket_disable(struct rkisp1_device *rkisp1)
 static void rkisp1_config_ism(struct rkisp1_isp *isp,
 			      const struct v4l2_subdev_state *sd_state)
 {
-	const struct v4l2_rect *src_crop =
+	const struct v4l2_rect *target_crop =
 		v4l2_subdev_state_get_crop(sd_state,
-					   RKISP1_ISP_PAD_SOURCE_VIDEO);
+			(isp->rkisp1->in_bypass ?
+				RKISP1_ISP_PAD_SINK_VIDEO : RKISP1_ISP_PAD_SOURCE_VIDEO));
 	struct rkisp1_device *rkisp1 = isp->rkisp1;
 	u32 val;
 
@@ -185,10 +186,10 @@ static void rkisp1_config_ism(struct rkisp1_isp *isp,
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_MAX_DX, 0);
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_MAX_DY, 0);
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_DISPLACE, 0);
-	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_H_OFFS, src_crop->left);
-	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_V_OFFS, src_crop->top);
-	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_H_SIZE, src_crop->width);
-	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_V_SIZE, src_crop->height);
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_H_OFFS, target_crop->left);
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_V_OFFS, target_crop->top);
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_H_SIZE, target_crop->width);
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_V_SIZE, target_crop->height);
 
 	/* IS(Image Stabilization) is always on, working as output crop */
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_CTRL, 1);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
