Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCFD9C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 08:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TopM1V4KCDpkhKckKW/EBrpeYLNk6bDh95tC8p3P70A=; b=RBB2k2BvXXPEIt
	mw01D4TEazEyggnUZSHI58J4VAR11agHXmPiEfSob8Y/a5vY1AkxJXRzhXXoUSOjQ/PrO4OpsmS61
	7S9P6NCbRrvhTjKgcwvLOHXoYkFLUUqmV50l3bTbsyKNPixPJ63tK8G5KVIk7tdismbuISPFHh81M
	QXaeIxZNDM/+cMJzXgHVdC1R2+oUt7xi2oa2WFmQb0KAznp/1msa2VTAF44ZeVZbV30WjoT2jX/3u
	4eO2RFF8ziTJd2iY0srGRx1wMQOOFHXK+NWQe53k0qXi/STt4j4NAZWXc/ptviiYd7vxIEBLyYSSa
	G7tlAM1kXeqFPScIRwkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovaWO-00BmIP-H4; Thu, 17 Nov 2022 08:45:20 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovaTu-00Bkme-86; Thu, 17 Nov 2022 08:42:47 +0000
Received: from pyrite.tail37cf.ts.net (h175-177-042-159.catv02.itscom.jp [175.177.42.159])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0EF48E86;
	Thu, 17 Nov 2022 09:42:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668674556;
	bh=FRk1HlQxJCg/bMBCI0emDkc9se4S4LTHyPJceYD/tbs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TDzTqsj63t6K/a/B4DMs5kSyJXF3EcecH0lSSATrtir5oC+kSwDXVlYcqHjI4vTd4
	 ilx19LRZ6IgMjw0gucOqzf2J4rMnoJn6biezg75wBvlYQSqHmVDhtfFqBT+7IM1uRP
	 I2UigdVHCbTciydjJrN4d8k7ALpXqdNQn1+Y/N5M=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] media: rkisp1: Add NV16M and NV61M to output formats
Date: Thu, 17 Nov 2022 17:42:15 +0900
Message-Id: <20221117084217.3892680-2-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
References: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_004246_451918_C210241E 
X-CRM114-Status: GOOD (  12.50  )
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
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index d4540684ea9a..7695ef134908 100644
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
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
