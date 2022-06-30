Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55B93C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjjk4jAi5OKs6bYLELSIbplpAWi0uWzy08VG88TU1bQ=; b=IGpV3me8n87yes
	0Somplibj/QqCSXSlLlAMcETK9qqMSmHC/NEN2l2j1KlmzbiUwhNYScyq1a+r9LM75teRhuqEoD8h
	/zdwH6rc1R31KMH4XCczjLA+VpY2B4TkXx1IOeoZZ6ywXySgDhHu0pAOe/PywXfanv1OUmmY1Byk/
	F/rNMo5Y4geeS2nSqzmFxD1QDl3IqtirMlnqtBISvKenysfi5aFDWS7SttHoRozIixWqNAOQBrD1N
	D6kYhhjONrJwZAGkCX06hDSG+Lgx4PgTV1A1D0LNc7zVy7tyPFpJRgrmJr+u//jePSaN3d/c0rxsa
	sjRfG1JcFfGdTnoJ+3Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73HV-0021ba-UZ; Thu, 30 Jun 2022 23:09:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73H7-0020yT-90
	for linux-rockchip@bombadil.infradead.org; Thu, 30 Jun 2022 23:08:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=a82rKactN/E5Dzfhql9Bg10Z9nO8aZsdLgqixcVih9w=; b=J2VlD2f0te8C0bmIOrd1TkbsAT
	TU8N9eb2He9oh/vQunHO5D4lPrPrUdccT/PCdJoB+8qxtBrNmRpxdoAcgU610XXrW37bgTougAcjx
	QFkyn9y3lFcAbtfvPA/cM/p0V12j1cL7mrz3eH9Fw/WqZuWWu1VK+qcXbB1zCA4hmIznV5MlfLvgm
	mXB3+U7RuzzsjXPbZbRLinjv18kHkxhrPuOEW76OEmXa1b09oU2ada+rLtsNqOiv6v5M02+avaqbK
	5riYKukJoKe2Kxkw5HqiQEM3QWipKVKveDHzAPNZP+2L7wsC2H5ibchyKWNehkR1hE0rOnh0gjcky
	wqHuZ3Mw==;
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73Gp-00FRLf-92
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:38 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7EAE2121C;
	Fri,  1 Jul 2022 01:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630490;
	bh=EsWGCSDRz8gK1mjKhrZbiW/xXEow3S9R7Q4MOjd5cFQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KbvH3dsF9XXgZeqx8kC7VdF9HLmHL/Anut0e7n8mwZZhtGywuqsGvJuVdF01Eu7D2
	 SD/Vxb2ENsedENRG9zOLTCauLoWWFVJJPZXrhNuuu0SH9LuGex78dqv8ypYmDIQpXp
	 nasR8mk0by0pmLhDZX2TPMELgjpJdoqMWS+XY6xE=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 51/55] media: rkisp1: Add and set registers for output size config on i.MX8MP
Date: Fri,  1 Jul 2022 02:07:09 +0300
Message-Id: <20220630230713.10580-52-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_000832_417506_B6869C15 
X-CRM114-Status: GOOD (  14.49  )
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

The ISP version in the i.MX8MP has a set of registers currently not
handled by the driver for output size configuration. Add a feature flag
to determine if the ISP requires this, and set the registers based on
that.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 8 ++++++++
 drivers/media/platform/rockchip/rkisp1/rkisp1-common.h  | 1 +
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c     | 3 ++-
 drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h    | 9 +++++++++
 4 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index d5904c96ff3f..3c1ade601bf4 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -420,6 +420,14 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
 	rkisp1_write(rkisp1, cap->config->mi.cr_size_init,
 		     rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CR));
 
+	if (rkisp1->info->features & RKISP1_FEATURE_MAIN_STRIDE) {
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
index 18a48ecda173..6ce92b5fd465 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -112,6 +112,7 @@ enum rkisp1_feature {
 	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
 	RKISP1_FEATURE_DUAL_CROP = BIT(1),
 	RKISP1_FEATURE_RSZ_CROP = BIT(2),
+	RKISP1_FEATURE_MAIN_STRIDE = BIT(3),
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 003bd7db54b9..a9c93191020f 100644
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
index 1fc54ab22b6d..5c2195019723 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -1013,6 +1013,15 @@
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
