Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC6D5C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 14:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4ITLytvl8kFHv/fvOp1YN7AJv3o/RQqDAzglBtvBOhI=; b=INX60nwoWZy3QM
	vJDNta0vWaJYNC81V47WPQCmcYbs3co0TiYgyXtm5BbfdIvaow7vUccRVp8eovaHufUeW7o7zaLJ9
	JDPiRFeXb1WLirGjJZ9sx+RFyKKfs2YAHZY0CEVp/cVjxA2yLxWyRbeMIx6qIMpln4eu8B3+yogLs
	WB4xlaiaM9gUu+0JimRn4WBz9wHgfl+TbjTv2+abN2QqLEhE5nWFE4tmlzG+i3ofS7XFLoOdnYxsv
	Azmagyax5uv+rFt2MPBzOCBrfBwMGN9CroasvEeK58N3R3RY4idhuO68P8SP5FTmcpS8diHR4984V
	u2PPAOt70A/ZqfK2fe+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8isL-008mTj-KB; Fri, 23 Dec 2022 14:18:17 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8iry-008mDP-ID; Fri, 23 Dec 2022 14:17:56 +0000
Received: from whitebuilder.lan (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6EDC46602C63;
	Fri, 23 Dec 2022 14:17:47 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671805068;
	bh=kNVQbxn69+Njf/SzKoCvE7MwgqiKoIbf3XHvNZ9lSLw=;
	h=From:To:Cc:Subject:Date:From;
	b=GgOM9L6ePc7sRxS8r2hgqspVcNc7fqE/xxiM2ZsVezUO7bZ+rt/GX5VBc93zPYQni
	 zXq/cWnKu+GZegtF2D/Ksve5af/HRznz4DlHGKlRtORLpvqIZR04dor4ly2sDOdbPW
	 606hFFP9PcYLmOSMdzYP7I/QHRwQ5nB+z00UVQ5wzlsM7nMsT73kJYGu+fo27RnJBt
	 8l1apl4MASqPQ8ibMzqNJFoQfSYhd0Jvlu1Wt7vKCjN3UPXFkc2fQu8wpCJrbMDjUI
	 mKGYn89Oiyyy7TNAE3roKUJwFHjaXmr1EV2lfCABfQECDtfb6zy5pfcoDt8LyqVMoJ
	 dD6slQj+YND/Q==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: kernel@collabora.com,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Robert Mader <robert.mader@collabora.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] hantro: Fix JPEG encoder ENUM_FRAMESIZE on RK3399
Date: Fri, 23 Dec 2022 09:16:44 -0500
Message-Id: <20221223141644.703088-1-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_061754_779360_2F4E9BB6 
X-CRM114-Status: GOOD (  10.63  )
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

The frmsize structure was left initialize to 0, as side effect, the driver was
reporting an invalid frmsize.

  Size: Stepwise 0x0 - 0x0 with step 0/0

Fix this by replicating the constraints in the raw formats too. This fixes
taking picture in Gnome Cheese Software, or any software using GSteamer
encodebin feature.

Fixes: 775fec69008d30 ("media: add Rockchip VPU JPEG encoder driver")
Reported-by: Robert Mader <robert.mader@collabora.com>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 .../platform/verisilicon/rockchip_vpu_hw.c    | 22 ++++++++++++-------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
index 8de6fd2e8eefa..7e65b5c3aa03c 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
@@ -21,40 +21,46 @@
  * Supported formats.
  */
 
+#define ROCKCHIP_VPU_JPEG_ENC_FRMSIZE {\
+                        .min_width = 96, \
+                        .max_width = 8192,\
+                        .step_width = MB_DIM, \
+                        .min_height = 32, \
+                        .max_height = 8192,\
+                        .step_height = MB_DIM, \
+		     }
+
 static const struct hantro_fmt rockchip_vpu_enc_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_YUV420M,
 		.codec_mode = HANTRO_MODE_NONE,
 		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_YUV420P,
+		.frmsize = ROCKCHIP_VPU_JPEG_ENC_FRMSIZE,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_NV12M,
 		.codec_mode = HANTRO_MODE_NONE,
 		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_YUV420SP,
+		.frmsize = ROCKCHIP_VPU_JPEG_ENC_FRMSIZE,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_YUYV,
 		.codec_mode = HANTRO_MODE_NONE,
 		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_YUYV422,
+		.frmsize = ROCKCHIP_VPU_JPEG_ENC_FRMSIZE,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_UYVY,
 		.codec_mode = HANTRO_MODE_NONE,
 		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_UYVY422,
+		.frmsize = ROCKCHIP_VPU_JPEG_ENC_FRMSIZE,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_JPEG,
 		.codec_mode = HANTRO_MODE_JPEG_ENC,
 		.max_depth = 2,
 		.header_size = JPEG_HEADER_SIZE,
-		.frmsize = {
-			.min_width = 96,
-			.max_width = 8192,
-			.step_width = MB_DIM,
-			.min_height = 32,
-			.max_height = 8192,
-			.step_height = MB_DIM,
-		},
+		.frmsize = ROCKCHIP_VPU_JPEG_ENC_FRMSIZE,
 	},
 };
 
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
