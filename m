Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96676C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 09:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=naSsNz/51IL+0rmHm0r4v8/npqU8GnjYp6GyBdYw6Wo=; b=f9fsYeLjZIXj8R
	ox8+XeX3bk6Gz1qrXebG8v3lbxf2XUitaGBtSOyU4BateILgMhskkqyT+dd5C8z5oW5FbtjhlldZd
	ppZK6W38/M1temgqTUJzmTxEKeupPcuH8mGZ8/SSbAtwq7vyC1+g9t0ustC3IzUZqkFW8/Rnwvwe/
	xC7BadVj78IDx4t2luPVZTOUNdlBxwGZNT0NdvEMM79XBkajW6sWJDHRwHFp8jBeXwXkwBoyXxsA4
	4Ps6RSK34OcGp1mBcrC2/YehmkNv9KyKXftwbBWqmmMcL9iYye/Yr1mftBO4lmTm6KIMpmkReM4JI
	CJ/P4V5cyYnoIDvzFj/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxy1-003Cqg-Gg; Fri, 18 Nov 2022 09:47:25 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxrU-0039CN-MT; Fri, 18 Nov 2022 09:40:42 +0000
Received: from pyrite.tail37cf.ts.net (h175-177-042-159.catv02.itscom.jp [175.177.42.159])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B79A8CE1;
	Fri, 18 Nov 2022 10:40:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668764439;
	bh=rsTVUhZ7ZI6UsQMfahLSuxDlhDEF5B7vCEr3t98B15M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BPWRwwZkjC9FzC+D3DSeZl54u6MeB1z2XeCJFsY2ndTK8H+9+X2beUZESLC/LkFiT
	 z+G0NshynQOO6YZZQKpi6YgMG51M6YnN9ac94/xCHe3t5dmmnhhra/nsrDBrwxpHDd
	 SX+nixP1/dIw/u9vGWRhmz7zlsyaaMXsK6+kVFKA=
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
Subject: [PATCH v3 14/14] media: rkisp1: Add UYVY as an output format
Date: Fri, 18 Nov 2022 18:39:31 +0900
Message-Id: <20221118093931.1284465-15-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_014040_935157_EB44FF30 
X-CRM114-Status: GOOD (  14.81  )
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

Add support for UYVY as an output format. The uv_swap bit in the
MI_XTD_FORMAT_CTRL register that is used for the NV formats does not
work for packed YUV formats. Thus, UYVY support is implemented via
byte-swapping. This method clearly does not work for implementing
support for YVYU and VYUY.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 29565440b6e7..8a6a5d25a3b8 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -97,6 +97,12 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 		.uv_swap = 0,
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
+	}, {
+		.fourcc = V4L2_PIX_FMT_UYVY,
+		.uv_swap = 0,
+		.yc_swap = 1,
+		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV422P,
 		.uv_swap = 0,
@@ -221,6 +227,13 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
+	}, {
+		.fourcc = V4L2_PIX_FMT_UYVY,
+		.uv_swap = 0,
+		.yc_swap = 1,
+		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
+		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	}, {
 		.fourcc = V4L2_PIX_FMT_YUV422P,
 		.uv_swap = 0,
@@ -442,6 +455,20 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
 		rkisp1_write(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL, reg);
 	}
 
+	/*
+	 * U/V swapping with the MI_XTD_FORMAT_CTRL register only works for
+	 * NV12/NV21 and NV16/NV61, so instead use byte swap to support UYVY.
+	 * YVYU and VYUY cannot be supported with this method.
+	 */
+	if (rkisp1->info->features & RKISP1_FEATURE_MI_OUTPUT_ALIGN) {
+		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT);
+		if (cap->pix.cfg->yc_swap)
+			reg |= RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_BYTES;
+		else
+			reg &= ~RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_BYTES;
+		rkisp1_write(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT, reg);
+	}
+
 	rkisp1_mi_config_ctrl(cap);
 
 	reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_CTRL);
@@ -483,6 +510,20 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
 		rkisp1_write(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL, reg);
 	}
 
+	/*
+	 * U/V swapping with the MI_XTD_FORMAT_CTRL register only works for
+	 * NV12/NV21 and NV16/NV61, so instead use byte swap to support UYVY.
+	 * YVYU and VYUY cannot be supported with this method.
+	 */
+	if (rkisp1->info->features & RKISP1_FEATURE_MI_OUTPUT_ALIGN) {
+		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT);
+		if (cap->pix.cfg->yc_swap)
+			reg |= RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_BYTES;
+		else
+			reg &= ~RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_BYTES;
+		rkisp1_write(rkisp1, RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT, reg);
+	}
+
 	rkisp1_mi_config_ctrl(cap);
 
 	mi_ctrl = rkisp1_read(rkisp1, RKISP1_CIF_MI_CTRL);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
