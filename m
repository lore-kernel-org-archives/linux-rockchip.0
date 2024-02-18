Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A8D7C48BF8
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 20:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZtwKGyDwWU1m9zLj/ttyDVNmSin45IWy1aTvrDd9Lgo=; b=NYgnKO48dpgwd2
	T6io+/x2idoLYTbJ7IqAeRZskRH6AziBV8Pw82sowRWfH6xm8S6Q/OjzvcdEO7L+C4gqhuaEC3hV+
	eYeobZJrswC7e8OuLnaQkd5VbAqIfniQ18joYvrISb6xAE+77hPJtC7vNcJdYQFEPpRP6OzoxzqPt
	qbh9NHxWfYIAd8NEer0pgNJV+QHT1enBVcN+8dNUGKRLbTa0vbVp6uEQZDz1aZp+h0DHc1jWSWsHg
	N+2Zpy/cevbyle2sDvgdr/rqo6b1EYxVeGJd/E58opKFdR2gCkMuIubzrBF/0JnSpgYpSn7ORMf4b
	DEk8m0QjUuyQ9pJqOV6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbo1G-00000008PZ6-0LNX;
	Sun, 18 Feb 2024 20:44:14 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbo14-00000008POZ-2ZCO
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Feb 2024 20:44:07 +0000
Received: from pendragon.ideasonboard.com (89-27-53-110.bb.dnainternet.fi [89.27.53.110])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 59174975;
	Sun, 18 Feb 2024 21:43:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708289035;
	bh=MFfpZMyP89XI5Ok1y6Yo8qD26Mr196fkENb5a5Ouo+4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NrRzxD4b/dICChj/QK1Tt9o8JvkQZZ+9o+k4ny4TCynxoLPZknrMmaS+sclsJUjjf
	 Xu4eJ9lyzBLE9+btUcavMa41eyujKdAgSKU8tEzIXpUX7QyZfzqny2OKdVZ8yHJy/S
	 VnQvzE3S50/irkF9rOyW6FU514MB2NJtaQyJHeac=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Adam Ford <aford173@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v13 11/12] media: rkisp1: Fix endianness on raw streams on i.MX8MP
Date: Sun, 18 Feb 2024 22:43:49 +0200
Message-ID: <20240218204350.10916-12-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240218204350.10916-1-laurent.pinchart@ideasonboard.com>
References: <20240218204350.10916-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_124403_175926_FB25C66D 
X-CRM114-Status: GOOD (  16.39  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

The i.MX8MP has extra register fields in the memory interface control
register for setting the output format, which work with the output
alignment format register for byte-swapping and LSB/MSB alignment.

With processed and 8-bit raw streams, it doesn't cause any problems to
not set these, but with raw streams of higher bit depth the endianness
is swapped and the data is not aligned properly.

Add support for setting these registers and plumb them in to fix this.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v12:

- Merge the output_format_mp and output_format_sp fields
- Set the MP output format in rkisp1_mp_config()
- Fix typo in commit message

Changes since v6:

- replace MP_OUTPUT_FORMAT feature flag with MAIN_STRIDE

New in v6
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 52 +++++++++++++++++--
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  8 +++
 2 files changed, 56 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 0efdf8513de0..accc16ad1432 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -48,14 +48,17 @@ enum rkisp1_plane {
  * @fmt_type: helper filed for pixel format
  * @uv_swap: if cb cr swapped, for yuv
  * @yc_swap: if y and cb/cr swapped, for yuv
+ * @byte_swap: if byte pairs are swapped, for raw
  * @write_format: defines how YCbCr self picture data is written to memory
- * @output_format: defines sp output format
+ * @output_format: defines the output format (RKISP1_CIF_MI_INIT_MP_OUTPUT_* for
+ *	the main path and RKISP1_MI_CTRL_SP_OUTPUT_* for the self path)
  * @mbus: the mbus code on the src resizer pad that matches the pixel format
  */
 struct rkisp1_capture_fmt_cfg {
 	u32 fourcc;
 	u32 uv_swap : 1;
 	u32 yc_swap : 1;
+	u32 byte_swap : 1;
 	u32 write_format;
 	u32 output_format;
 	u32 mbus;
@@ -96,42 +99,50 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_YUYV,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_UYVY,
 		.uv_swap = 0,
 		.yc_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV422P,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV16,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV61,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV16M,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV61M,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU422M,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	},
 	/* yuv400 */
@@ -139,6 +150,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_GREY,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV400,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	},
 	/* yuv420 */
@@ -146,81 +158,107 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_NV21,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV21M,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_NV12M,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV420,
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YVU420,
 		.uv_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	},
 	/* raw */
 	{
 		.fourcc = V4L2_PIX_FMT_SRGGB8,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW8,
 		.mbus = MEDIA_BUS_FMT_SRGGB8_1X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGRBG8,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW8,
 		.mbus = MEDIA_BUS_FMT_SGRBG8_1X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGBRG8,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW8,
 		.mbus = MEDIA_BUS_FMT_SGBRG8_1X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SBGGR8,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW8,
 		.mbus = MEDIA_BUS_FMT_SBGGR8_1X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SRGGB10,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW10,
 		.mbus = MEDIA_BUS_FMT_SRGGB10_1X10,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGRBG10,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW10,
 		.mbus = MEDIA_BUS_FMT_SGRBG10_1X10,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGBRG10,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW10,
 		.mbus = MEDIA_BUS_FMT_SGBRG10_1X10,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SBGGR10,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW10,
 		.mbus = MEDIA_BUS_FMT_SBGGR10_1X10,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SRGGB12,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW12,
 		.mbus = MEDIA_BUS_FMT_SRGGB12_1X12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGRBG12,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW12,
 		.mbus = MEDIA_BUS_FMT_SGRBG12_1X12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SGBRG12,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW12,
 		.mbus = MEDIA_BUS_FMT_SGBRG12_1X12,
 	}, {
 		.fourcc = V4L2_PIX_FMT_SBGGR12,
+		.byte_swap = 1,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
+		.output_format = RKISP1_CIF_MI_INIT_MP_OUTPUT_RAW12,
 		.mbus = MEDIA_BUS_FMT_SBGGR12_1X12,
 	},
 };
@@ -484,10 +522,12 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
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
 
@@ -557,6 +597,8 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
 		   cap->pix.cfg->output_format |
 		   RKISP1_CIF_MI_SP_AUTOUPDATE_ENABLE;
 	rkisp1_write(rkisp1, RKISP1_CIF_MI_CTRL, mi_ctrl);
+
+	rkisp1_write(rkisp1, RKISP1_CIF_MI_INIT, cap->pix.cfg->output_format);
 }
 
 static void rkisp1_mp_disable(struct rkisp1_capture *cap)
@@ -943,6 +985,7 @@ static void rkisp1_cap_stream_enable(struct rkisp1_capture *cap)
 	struct rkisp1_device *rkisp1 = cap->rkisp1;
 	struct rkisp1_capture *other = &rkisp1->capture_devs[cap->id ^ 1];
 	bool has_self_path = rkisp1_has_feature(rkisp1, SELF_PATH);
+	u32 reg;
 
 	cap->ops->set_data_path(cap);
 	cap->ops->config(cap);
@@ -962,8 +1005,9 @@ static void rkisp1_cap_stream_enable(struct rkisp1_capture *cap)
 	 */
 	if (!has_self_path || !other->is_streaming) {
 		/* force cfg update */
-		rkisp1_write(rkisp1, RKISP1_CIF_MI_INIT,
-			     RKISP1_CIF_MI_INIT_SOFT_UPD);
+		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_INIT);
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
