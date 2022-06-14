Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 354ACC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8Fjc3N87oTkSbORaap+4flbtMymPxhD9HJtZviRoOE=; b=S13ecy6bYFPUhL
	NRTmelkdBllcdyE+dJ/T0RqapDsTkYIRGF72wvnj6hwpc+rQ6noZsw+GdhnbwgaqI0gG7Gc4b0pEb
	j9yDul1urgcOE+dq8uMTvmRXdEXid8a/JL3DCkD1g+LHil/8lEy7RsC2bY2gZoZVCi4Bq1Rl0MlYe
	hcOzbC5UYgHBm0tVObBRgwBZ6K/FI8dMyKnAVd0LmIG1GqqQqENpapn2eQThBvyB6PPvIuBK6ToD2
	HVezg49UaUKtUxGiTrvaiBYW1+vPyPDPWB3is1dIdT1pjt5c1il1dPO+iRvGmVDi9y28CsgLVBF57
	BqUGECKyZ4ihNHQDy/Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1C0k-00Avxc-K0; Tue, 14 Jun 2022 19:15:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1C0g-00Avtt-K9
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:15:33 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id AB80B9E5;
	Tue, 14 Jun 2022 21:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234129;
	bh=InAoFYTpv2IR4VgCX+XR+7V60n9zC0NurDrDkBszFNs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=To9UAGv4xtLOhYvgXaRz7LOmW0tGgm6kTycU3gdOZcGC2TAdkdGU5Q8608V1CX+xI
	 nA4SderMP4y2DBrYW5HdmKImKeki2PSxsFfk0EJ+KK8+XBkVd0wvR66FIo0qZtOU8j
	 1cqmXh+2omD5UNRSRp58ZSVCpfFuE/uJkVpG/9NQ=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	laurent.pinchart@ideasonboard.com,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 54/55] media: rkisp1: Add register definitions for the test pattern generator
Date: Wed, 15 Jun 2022 04:11:26 +0900
Message-Id: <20220614191127.3420492-55-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121530_851767_64107EDE 
X-CRM114-Status: UNSURE (   5.87  )
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

Add register definitions and value macros for the test pattern generator
block in the ISP.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-regs.h    | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index dd63ae13e603..34f4fe09c88d 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -717,6 +717,27 @@
 #define RKISP1_CIF_ISP_DPF_SPATIAL_COEFF_MAX		0x1F
 #define RKISP1_CIF_ISP_DPF_NLL_COEFF_N_MAX		0x3FF
 
+/* TPG */
+#define RKISP1_CIF_ISP_TPG_CTRL_ENA			BIT(0)
+#define RKISP1_CIF_ISP_TPG_CTRL_IMG_3X3_COLOR_BLOCK	(0 << 1)
+#define RKISP1_CIF_ISP_TPG_CTRL_IMG_COLOR_BAR		(1 << 1)
+#define RKISP1_CIF_ISP_TPG_CTRL_IMG_GRAY_BAR		(2 << 1)
+#define RKISP1_CIF_ISP_TPG_CTRL_IMG_HIGHLIGHT_GRID	(3 << 1)
+#define RKISP1_CIF_ISP_TPG_CTRL_IMG_RAND		(4 << 1)
+#define RKISP1_CIF_ISP_TPG_CTRL_CFA_RGGB		(0 << 4)
+#define RKISP1_CIF_ISP_TPG_CTRL_CFA_GRBG		(1 << 4)
+#define RKISP1_CIF_ISP_TPG_CTRL_CFA_GBRB		(2 << 4)
+#define RKISP1_CIF_ISP_TPG_CTRL_CFA_BGGR		(3 << 4)
+#define RKISP1_CIF_ISP_TPG_CTRL_DEPTH_8			(0 << 6)
+#define RKISP1_CIF_ISP_TPG_CTRL_DEPTH_10		(1 << 6)
+#define RKISP1_CIF_ISP_TPG_CTRL_DEPTH_12		(2 << 6)
+#define RKISP1_CIF_ISP_TPG_CTRL_DEF_SYNC		BIT(8)
+#define RKISP1_CIF_ISP_TPG_CTRL_MAX_SYNC		BIT(9)
+#define RKISP1_CIF_ISP_TPG_CTRL_SOL_1080P		(0 << 10)
+#define RKISP1_CIF_ISP_TPG_CTRL_SOL_720P		(1 << 10)
+#define RKISP1_CIF_ISP_TPG_CTRL_SOL_4K			(2 << 10)
+#define RKISP1_CIF_ISP_TPG_CTRL_SOL_USER_DEFINED	(3 << 10)
+
 /* =================================================================== */
 /*                            CIF Registers                            */
 /* =================================================================== */
@@ -912,6 +933,17 @@
 #define RKISP1_CIF_ISP_SH_DELAY			(RKISP1_CIF_ISP_SH_BASE + 0x00000008)
 #define RKISP1_CIF_ISP_SH_TIME			(RKISP1_CIF_ISP_SH_BASE + 0x0000000C)
 
+#define RKISP1_CIF_ISP_TPG_BASE			0x00000700
+#define RKISP1_CIF_ISP_TPG_CTRL			(RKISP1_CIF_ISP_TPG_BASE + 0x00000000)
+#define RKISP1_CIF_ISP_TPG_TOTAL_IN		(RKISP1_CIF_ISP_TPG_BASE + 0x00000004)
+#define RKISP1_CIF_ISP_TPG_ACT_IN		(RKISP1_CIF_ISP_TPG_BASE + 0x00000008)
+#define RKISP1_CIF_ISP_TPG_FP_IN		(RKISP1_CIF_ISP_TPG_BASE + 0x0000000C)
+#define RKISP1_CIF_ISP_TPG_BP_IN		(RKISP1_CIF_ISP_TPG_BASE + 0x00000010)
+#define RKISP1_CIF_ISP_TPG_W_IN			(RKISP1_CIF_ISP_TPG_BASE + 0x00000014)
+#define RKISP1_CIF_ISP_TPG_GAP_IN		(RKISP1_CIF_ISP_TPG_BASE + 0x00000018)
+#define RKISP1_CIF_ISP_TPG_GAP_STD_IN		(RKISP1_CIF_ISP_TPG_BASE + 0x0000001C)
+#define RKISP1_CIF_ISP_TPG_RANDOM_SEED_IN	(RKISP1_CIF_ISP_TPG_BASE + 0x00000020)
+
 #define RKISP1_CIF_C_PROC_BASE			0x00000800
 #define RKISP1_CIF_C_PROC_CTRL			(RKISP1_CIF_C_PROC_BASE + 0x00000000)
 #define RKISP1_CIF_C_PROC_CONTRAST		(RKISP1_CIF_C_PROC_BASE + 0x00000004)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
