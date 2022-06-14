Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DB5CC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0wQcR64g1EweCShyKSUjlNW69ZiRnEvKwyWbgHGcod0=; b=VaG+upkXwikdFE
	G32STzB4Q4qOnhB5tiR3IFAi6neYBt7Y6kX8kfJxiMfNjaDKi9woD2OWkuA369jj64oTMv9UtN29R
	HyndHKbk32T5im/KfrRCX3bw8tDmdjSNimJrrnbqEsx7yM0FLJ4ETpvrY15NJwiGgH2M3Q9P3UJbx
	itJC/LM24q5DLy08sUjwYO+5MNNeasqGzUWV3+VvzsgFLa+4B8hWtSSMA02ad1OKKBMIDRkMSNtoE
	jEwhVsLgzSH5E34eZqCO3gXIlWg7hqwMOFz7I2ddzu3aWv6pPra0RwBjo2T47Kz/t/NyuYXC6RZYD
	QlTMEuHmKDPxnK1ipTTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1C0a-00AvqY-QC; Tue, 14 Jun 2022 19:15:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1C0X-00Avn3-Rx
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:15:23 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B660B9E5;
	Tue, 14 Jun 2022 21:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234120;
	bh=Ol8ROY2bg9Y0528MwuNfAdTwhTIluFw4lunzEUd7gvI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mD7AmA4JhsreyI3ME50ReppWnzKv8dJtfx7OFLr4Q6TzXPtkV1HVWoLeuC6xZ06PD
	 Lsei1h+C98rAUY8ySQeyFz/T+JiOKdpWzlkc7Q1ZiO+dmmokBz2LYuMJ69Y+wYi8yn
	 Cnd8gj0WfNvGMv8fSj06Q8aUoTBfNunPneNkjWnM=
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
Subject: [PATCH 52/55] media: rkisp1: Add i.MX8MP-specific registers for MI and resizer
Date: Wed, 15 Jun 2022 04:11:24 +0900
Message-Id: <20220614191127.3420492-53-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121522_107636_2D2E3AC1 
X-CRM114-Status: UNSURE (   7.09  )
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

Add register definitions for resizer format conversion control and for
the memory interface output that are specific to the ISP version in the
i.MX8MP.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-regs.h    | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index 5c2195019723..dd63ae13e603 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -171,6 +171,23 @@
 /* RSZ_CROP_[XY]_DIR */
 #define RKISP1_CIF_RSZ_CROP_XY_DIR(start, end)		((end) << 16 | (start) << 0)
 
+/* RSZ_FORMAT_CONV_CTRL */
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_INPUT_FORMAT_YCBCR_400	(0 << 0)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_INPUT_FORMAT_YCBCR_420	(1 << 0)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_INPUT_FORMAT_YCBCR_422	(2 << 0)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_INPUT_FORMAT_YCBCR_444	(3 << 0)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_OUTPUT_FORMAT_YCBCR_400	(0 << 2)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_OUTPUT_FORMAT_YCBCR_420	(1 << 2)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_OUTPUT_FORMAT_YCBCR_422	(2 << 2)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_OUTPUT_FORMAT_YCBCR_444	(3 << 2)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_CFG_Y_FULL			BIT(5)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_CFG_CBCR_FULL			BIT(6)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_CFG_422NOCOSITED		BIT(7)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_DATA_WIDTH_10_BIT_ENABLE	BIT(8)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_DATA_WIDTH_10_BIT_METHOD	BIT(9)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_PACK_FORMAT_PLANAR		(0 << 10)
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_PACK_FORMAT_SEMI_PLANAR	(1 << 10)
+
 /* MI_IMSC - MI_MIS - MI_RIS - MI_ICR - MI_ISR */
 #define RKISP1_CIF_MI_FRAME(stream)			BIT((stream)->id)
 #define RKISP1_CIF_MI_MBLK_LINE				BIT(2)
@@ -212,6 +229,22 @@
 #define RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP	BIT(0)
 #define RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP	BIT(1)
 #define RKISP1_CIF_MI_XTD_FMT_CTRL_DMA_CB_CR_SWAP	BIT(2)
+/* MI_OUTPUT_ALIGN_FORMAT */
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_LSB_ALIGNMENT			BIT(0)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_BYTES		BIT(1)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_WORDS		BIT(2)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_DWORDS		BIT(3)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_BYTES		BIT(4)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_WORDS		BIT(5)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_DWORDS		BIT(6)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_DMA_BYTE_SWAP_BYTES		BIT(7)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_DMA_BYTE_SWAP_WORDS		BIT(8)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_DMA_BYTE_SWAP_DWORDS		BIT(9)
+/* MI_MP_OUTPUT_FIFO_SIZE */
+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE_OUTPUT_FIFO_DEPTH_FULL	(0 << 0)
+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE_OUTPUT_FIFO_DEPTH_HALF	(1 << 0)
+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE_OUTPUT_FIFO_DEPTH_QUARTER	(2 << 0)
+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE_OUTPUT_FIFO_DEPTH_EIGHT	(3 << 0)
 
 /* VI_CCL */
 #define RKISP1_CIF_CCL_CIF_CLK_DIS			BIT(2)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
