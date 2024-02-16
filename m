Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D214C48260
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 09:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7mzivMrkKiyOOANoZ3V2bq+4BZ1TEvazdISznwcaVo=; b=h7qDkhNVmJhE/S
	FzCYttgTX07aGgEdPMACB8aXE47VnJi9Gqxsb1LlIln+2TA00+UYBFrp/1aSm5NW0VeslfvkjSx3q
	lTDMm4PbgLvMlc5k1G0idNE85YJYJu94Q1QRzmUnFJPQFcHCf2+bdweAipj9aZtxOH4Q9Z4IYsJwD
	k4NlcYnoLQANjsAShphDqdMvSdFpe3WElhj9xA0nz7N6RqaX11ryM/RjXhD/vOnAXvl4ZrjfQ5A9g
	U9EWB8LcwMXhGwdjbSGnJ1Hu0E6O+7mLCXZv4dGaIGo2bzOwN9encop8uzYY+0NrybkT7kCLtiipJ
	jfVmHvaJVMPdxVG+h7Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rauxs-00000001r2F-45N3;
	Fri, 16 Feb 2024 09:57:05 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raux4-00000001qXt-3Amp;
	Fri, 16 Feb 2024 09:56:19 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 526B316F9;
	Fri, 16 Feb 2024 10:56:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708077369;
	bh=0uitzXNPR3WGGnKk4Q2OjIs4W+uL0CRWwfysBdL20y8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TTCSXmE9HNYDKAAW2CArO9nJHcvKgd6Gc6RUFzxRT1TxRwZ0twECHSDmwn2BvjlFH
	 JoxDh5i2WUMZcjBrn77Lrb3y6JITuwTyrQqcV4cbvouKQcTne+4+UnHyB82xnKrt/r
	 7z3ZPYptgymtpZvrZG01ESf7eL2gyrP3cQ8mxjqU=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v12 11/12] media: rkisp1: Fix endianness on raw streams on i.MX8MP
Date: Fri, 16 Feb 2024 18:54:57 +0900
Message-Id: <20240216095458.2919694-12-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240216095458.2919694-1-paul.elder@ideasonboard.com>
References: <20240216095458.2919694-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_015615_272521_2ED55780 
X-CRM114-Status: GOOD (  16.18  )
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

The i.MX8MP has extra register fields in the memory interface control
register for setting the output format, which work with the output
alignment format register for byte-swapping and LSB/MSB alignment.

With processed and 8-bit raw streams, it doesn't cause any problems to
not set these, but with raw streams of higher bit depth the endianness
is swapped and the data is not aligned properly.

Add support for settings these registers and plumb them in to fix this.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
Changes in v12:
- replace MP_OUTPUT_FORMAT feature flag with MAIN_STRIDE

New in v6
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 93 ++++++++++++++-----
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  8 ++
 2 files changed, 78 insertions(+), 23 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 64b1d1104e20..28a99b31581b 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -48,16 +48,20 @@ enum rkisp1_plane {
  * @fmt_type: helper filed for pixel format
  * @uv_swap: if cb cr swapped, for yuv
  * @yc_swap: if y and cb/cr swapped, for yuv
+ * @byte_swap: if byte pairs are swapped, for raw
  * @write_format: defines how YCbCr self picture data is written to memory
- * @output_format: defines sp output format
+ * @output_format_mp: defines mp output format
+ * @output_format_sp: defines sp output format
  * @mbus: the mbus code on the src resizer pad that matches the pixel format
  */
 struct rkisp1_capture_fmt_cfg {
 	u32 fourcc;
 	u32 uv_swap : 1;
 	u32 yc_swap : 1;
+	u32 byte_swap : 1;
 	u32 write_format;
-	u32 output_format;
+	u32 output_format_mp;
+	u32 output_format_sp;
 	u32 mbus;
 };
 
@@ -96,42 +100,50 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_YUYV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_UYVY,
 		.uv_swap = 0,
 		.yc_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV422P,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV16,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV61,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV16M,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV61M,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU422M,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	},
 	/* yuv400 */
@@ -139,6 +151,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_GREY,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV400,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	},
 	/* yuv420 */
@@ -146,81 +159,107 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_NV21,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV21M,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12M,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV420,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU420,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	},
 	/* raw */
 	{
 		.fourcc = V4L2_PIX_FMT_SRGGB8,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW8,
 		.mbus = MEDIA_BUS_FMT_SRGGB8_1X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGRBG8,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW8,
 		.mbus = MEDIA_BUS_FMT_SGRBG8_1X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGBRG8,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW8,
 		.mbus = MEDIA_BUS_FMT_SGBRG8_1X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SBGGR8,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW8,
 		.mbus = MEDIA_BUS_FMT_SBGGR8_1X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SRGGB10,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW10,
 		.mbus = MEDIA_BUS_FMT_SRGGB10_1X10,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGRBG10,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW10,
 		.mbus = MEDIA_BUS_FMT_SGRBG10_1X10,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGBRG10,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW10,
 		.mbus = MEDIA_BUS_FMT_SGBRG10_1X10,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SBGGR10,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW10,
 		.mbus = MEDIA_BUS_FMT_SBGGR10_1X10,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SRGGB12,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW12,
 		.mbus = MEDIA_BUS_FMT_SRGGB12_1X12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGRBG12,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW12,
 		.mbus = MEDIA_BUS_FMT_SGRBG12_1X12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGBRG12,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW12,
 		.mbus = MEDIA_BUS_FMT_SGBRG12_1X12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SBGGR12,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format_mp = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW12,
 		.mbus = MEDIA_BUS_FMT_SBGGR12_1X12,
 	},
 };
@@ -235,50 +274,50 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_YUYV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_UYVY,
 		.uv_swap = 0,
 		.yc_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV422P,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV16,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV61,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV16M,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV61M,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU422M,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	},
 	/* yuv400 */
@@ -286,19 +325,19 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_GREY,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	},
 	/* rgb */
 	{
 		.fourcc = V4L2_PIX_FMT_XBGR32,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_RGB565,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	},
 	/* yuv420 */
@@ -306,37 +345,37 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_NV21,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV21M,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12M,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV420,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU420,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
+		.output_format_sp = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	},
 };
@@ -484,10 +523,12 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
 	 */
 	if (rkisp1_has_feature(rkisp1, MAIN_STRIDE)) {
 		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT);
-		if (cap->pix.cfg->yc_swap)
+		if (cap->pix.cfg->yc_swap || cap->pix.cfg->byte_swap)
 			reg |= RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_BYTES;
 		else
 			reg &= ~RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_BYTES;
+
+		reg |= RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_LSB_ALIGNMENT;
 		rkisp1_write(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT, reg);
 	}
 
@@ -554,7 +595,7 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
 	mi_ctrl &= ~RKISP1_MI_CTRL_SP_FMT_MASK;
 	mi_ctrl |= cap->pix.cfg->write_format |
 		   RKISP1_MI_CTRL_SP_INPUT_YUV422 |
-		   cap->pix.cfg->output_format |
+		   cap->pix.cfg->output_format_sp |
 		   RKISP1_CIF_MI_SP_AUTOUPDATE_ENABLE;
 	rkisp1_write(rkisp1, RKISP1_CIF_MI_CTRL, mi_ctrl);
 }
@@ -946,6 +987,7 @@ static void rkisp1_cap_stream_enable(struct rkisp1_capture *cap)
 	struct rkisp1_device *rkisp1 = cap->rkisp1;
 	struct rkisp1_capture *other = &rkisp1->capture_devs[cap->id ^ 1];
 	bool has_self_path = rkisp1_has_feature(rkisp1, SELF_PATH);
+	u32 reg;
 
 	cap->ops->set_data_path(cap);
 	cap->ops->config(cap);
@@ -965,8 +1007,13 @@ static void rkisp1_cap_stream_enable(struct rkisp1_capture *cap)
 	 */
 	if (!has_self_path || !other->is_streaming) {
 		/* force cfg update */
-		rkisp1_write(rkisp1, RKISP1_CIF_MI_INIT,
-			     RKISP1_CIF_MI_INIT_SOFT_UPD);
+		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_INIT);
+
+		if (rkisp1_has_feature(rkisp1, MAIN_STRIDE))
+			reg |= cap->pix.cfg->output_format_mp;
+
+		reg |= RKISP1_CIF_MI_INIT_SOFT_UPD;
+		rkisp1_write(rkisp1, RKISP1_CIF_MI_INIT, reg);
 		rkisp1_set_next_buf(cap);
 	}
 	spin_unlock_irq(&cap->buf.lock);
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index 3b19c8411360..762243016f05 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -144,6 +144,14 @@
 /* MI_INIT */
 #define RKISP1_CIF_MI_INIT_SKIP				BIT(2)
 #define RKISP1_CIF_MI_INIT_SOFT_UPD			BIT(4)
+#define RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV400		(0 << 5)
+#define RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV420		(1 << 5)
+#define RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422		(2 << 5)
+#define RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV444		(3 << 5)
+#define RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW12		(4 << 5)
+#define RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW8		(5 << 5)
+#define RKISP1_CIF_MI_INIT_MP_OUTPUT_JPEG		(6 << 5)
+#define RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW10		(7 << 5)
 
 /* MI_CTRL_SHD */
 #define RKISP1_CIF_MI_CTRL_SHD_MP_IN_ENABLED		BIT(0)
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
