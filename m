Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED5E7C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jul 2022 07:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8hygqfZRfKM/IylOKGf9USD8BDMRBkYud87jOCp6X9s=; b=RaBDBJi4CFwCEI
	MOOOrpcsbyYXEdYiwnzc7xoYpHKU6JTUxKJiQvn4QWZ/KYbu4qS6jhMTbtUeKF09/kM4fpWfjnY7+
	w0R7bn5pBiFSjU5DELa7GlckQNIoCidIyw20vql/uUpo25Is00XMcwcppcKMvqvi99gPkAJj6bajw
	g1A1pcnnR7iKNIoPAkdw4lj9mSIdF/2SMStv67ycvsgdT1PCtvt1V/G4SSx42jlcaEY8rGNa3ZiI1
	kamCS8v4UF04XOQ7gWtLi5aZTMl54rcLc8HlNvFBo4C5nVTMuOYnT2zOVgtt8ysJCVGYEuXsnaGUK
	3H21Tl0wesTPv8IsWm5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBWkc-001DMg-QF; Wed, 13 Jul 2022 07:25:38 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBWkN-001Cvc-NU; Wed, 13 Jul 2022 07:25:25 +0000
Received: from pyrite.rasen.tech (softbank036240121080.bbtec.net [36.240.121.80])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8678D305;
	Wed, 13 Jul 2022 09:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657697112;
	bh=kpKSLkSAtifBucJ91Ca2MJ/v5rKPQruTpgccCyXjOFI=;
	h=From:To:Cc:Subject:Date:From;
	b=JcrassM3+cqM+b2cEGRf1HMevxMIcT/mxQwRUaCvspOokb0bybwuOahJJ4VdwfwyK
	 q93cFgzVqnUvn65xHocPGhQ2VCdNts4Hy7DdKXlyrXuFPWhUkC86qNRbC2DFfI/4qG
	 4kS0bW68VrP3u2uEn4hj8vmV+IE5bZjQ9IJ0MY0s=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH] media: rkisp1: Add NV16M and NV61M to output formats
Date: Wed, 13 Jul 2022 16:24:58 +0900
Message-Id: <20220713072458.3425576-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_002523_967032_4BF94A69 
X-CRM114-Status: GOOD (  10.26  )
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

Add support for NV16M and NV61M as output formats. As NV16, NV61, NV12M
and NV21M are already supported, the infrastructure is already in place
to support NV16M and NV61M, so it is sufficient to simply add relevant
entries to the list of output formats.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index fee2aaacb26b..43547ab55fab 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -110,6 +110,16 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
+	}, {
+		.fourcc = V4L2_PIX_FMT_NV16M,
+		.uv_swap = 0,
+		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
+	}, {
+		.fourcc = V4L2_PIX_FMT_NV61M,
+		.uv_swap = 1,
+		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU422M,
 		.uv_swap = 1,
@@ -237,6 +247,18 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
+	}, {
+		.fourcc = V4L2_PIX_FMT_NV16M,
+		.uv_swap = 0,
+		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
+		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
+	}, {
+		.fourcc = V4L2_PIX_FMT_NV61M,
+		.uv_swap = 1,
+		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
+		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU422M,
 		.uv_swap = 1,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
