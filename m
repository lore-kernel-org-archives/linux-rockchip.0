Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50A1BC43217
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QqlR5lbEY89bnVjsbd3uxriPKMWvJIMKTuaKBlC+3DE=; b=xyIU6neXsP60XG
	Vk9X+g/5iF6OaZu2c2wZRGMjchskfAX6lo/M/FDvX+TXYsqGbaOf9Iw+EovLNpmEYfxEten7sQYIr
	LWWZ5oC/al6kNgQFPBTnY/ApLdYpe/T+yrarMt6y4warzWsP5KnClRbqjUsqmjT2dQkCNERp9esAL
	yCU4pf66rhgfBnW5QiM8V7AdyeGwvnx5gQPx0Bv7tZsKiVIrpOiFdyhaP79cyYRPcgVEvkzrxlQ8b
	l3Bhdg5Jl2IMKHc7P7TQaLDUHH7u8qHZ2kB5RKCWTnkJd93I9yPnKKZNY4LfY5HyIV5jm+KQKjG8X
	dHGseNyKIXoOALXH2gDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxtV-003ASs-Ir; Fri, 18 Nov 2022 09:42:45 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxr1-0038tr-PH; Fri, 18 Nov 2022 09:40:13 +0000
Received: from pyrite.tail37cf.ts.net (h175-177-042-159.catv02.itscom.jp [175.177.42.159])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id EDB8CD86;
	Fri, 18 Nov 2022 10:40:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668764410;
	bh=jLWKPDvahA72+6my7QI+4fN+/6XCNTeixQVAgTHpBm0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=c0R+RN5nydfIE6XpLjo0EF88+omALvuOIrLNjfPrAvFlo58nlUHyVLoax5OW9GQ0b
	 H5I9S3goFd3N0+JgXl425lqX22Z8+v+e1OIKrFAn+tAXVkMK2Gh0F/yPFpDqkmsmxE
	 +kB/3zi9UdzM+oOp3Kqgu1JVEdyWpGAnGe5GvkVw=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 07/14] media: rkisp1: Add and set registers for output size config on i.MX8MP
Date: Fri, 18 Nov 2022 18:39:24 +0900
Message-Id: <20221118093931.1284465-8-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_014012_003126_F6F3919B 
X-CRM114-Status: GOOD (  19.51  )
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

The ISP version in the i.MX8MP has a set of registers currently not
handled by the driver for output size configuration. Add a feature flag
to determine if the ISP requires this, and set the registers based on
that.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v2:

- Document the RKISP1_FEATURE_MAIN_STRIDE bit
- Use the rkisp1_has_feature() macro
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 8 ++++++++
 drivers/media/platform/rockchip/rkisp1/rkisp1-common.h  | 2 ++
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c     | 3 ++-
 drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h    | 9 +++++++++
 4 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index d4540684ea9a..5c6299ab0f78 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -420,6 +420,14 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
 	rkisp1_write(rkisp1, cap->config->mi.cr_size_init,
 		     rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CR));
 
+	if (rkisp1_has_feature(rkisp1, MAIN_STRIDE)) {
+		rkisp1_write(rkisp1, RKISP1_CIF_MI_MP_Y_LLENGTH, pixm->width);
+		rkisp1_write(rkisp1, RKISP1_CIF_MI_MP_Y_PIC_WIDTH, pixm->width);
+		rkisp1_write(rkisp1, RKISP1_CIF_MI_MP_Y_PIC_HEIGHT, pixm->height);
+		rkisp1_write(rkisp1, RKISP1_CIF_MI_MP_Y_PIC_SIZE,
+			     pixm->width * pixm->height);
+	}
+
 	rkisp1_irq_frame_end_enable(cap);
 
 	/* set uv swapping for semiplanar formats */
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index d8851dca026f..047c670b2310 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -105,6 +105,7 @@ enum rkisp1_isp_pad {
  * @RKISP1_FEATURE_MIPI_CSI2: The ISP has an internal MIPI CSI-2 receiver
  * @RKISP1_FEATURE_DUAL_CROP: The ISP has the dual crop block at the resizer input
  * @RKISP1_FEATURE_RSZ_CROP: The ISP supports cropping in the resizer
+ * @RKISP1_FEATURE_MAIN_STRIDE: The ISP supports configurable stride on the main path
  *
  * The ISP features are stored in a bitmask in &rkisp1_info.features and allow
  * the driver to implement support for features present in some ISP versions
@@ -114,6 +115,7 @@ enum rkisp1_feature {
 	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
 	RKISP1_FEATURE_DUAL_CROP = BIT(1),
 	RKISP1_FEATURE_RSZ_CROP = BIT(2),
+	RKISP1_FEATURE_MAIN_STRIDE = BIT(3),
 };
 
 #define rkisp1_has_feature(rkisp1, feature) \
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 4fca4db091c8..1a3ea5a4af05 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -515,7 +515,8 @@ static const struct rkisp1_info imx8mp_isp_info = {
 	.isrs = imx8mp_isp_isrs,
 	.isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
 	.isp_ver = IMX8MP_V10,
-	.features = RKISP1_FEATURE_RSZ_CROP,
+	.features = RKISP1_FEATURE_RSZ_CROP
+		  | RKISP1_FEATURE_MAIN_STRIDE,
 };
 
 static const struct of_device_id rkisp1_of_match[] = {
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index cd6ce66945c4..ed34c752be99 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -1012,6 +1012,15 @@
 #define RKISP1_CIF_MI_SP_CB_BASE_AD_INIT2	(RKISP1_CIF_MI_BASE + 0x00000140)
 #define RKISP1_CIF_MI_SP_CR_BASE_AD_INIT2	(RKISP1_CIF_MI_BASE + 0x00000144)
 #define RKISP1_CIF_MI_XTD_FORMAT_CTRL		(RKISP1_CIF_MI_BASE + 0x00000148)
+#define RKISP1_CIF_MI_MP_HANDSHAKE_0		(RKISP1_CIF_MI_BASE + 0x0000014C)
+#define RKISP1_CIF_MI_MP_Y_LLENGTH		(RKISP1_CIF_MI_BASE + 0x00000150)
+#define RKISP1_CIF_MI_MP_Y_SLICE_OFFSET		(RKISP1_CIF_MI_BASE + 0x00000154)
+#define RKISP1_CIF_MI_MP_C_SLICE_OFFSET		(RKISP1_CIF_MI_BASE + 0x00000158)
+#define RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT	(RKISP1_CIF_MI_BASE + 0x0000015C)
+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE	(RKISP1_CIF_MI_BASE + 0x00000160)
+#define RKISP1_CIF_MI_MP_Y_PIC_WIDTH		(RKISP1_CIF_MI_BASE + 0x00000164)
+#define RKISP1_CIF_MI_MP_Y_PIC_HEIGHT		(RKISP1_CIF_MI_BASE + 0x00000168)
+#define RKISP1_CIF_MI_MP_Y_PIC_SIZE		(RKISP1_CIF_MI_BASE + 0x0000016C)
 
 #define RKISP1_CIF_SMIA_BASE			0x00001A00
 #define RKISP1_CIF_SMIA_CTRL			(RKISP1_CIF_SMIA_BASE + 0x00000000)
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
