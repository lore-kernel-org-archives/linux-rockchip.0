Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE018C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 16:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRp39DUnM9isfwAymkpcEwb3FoQN1Z1REyl67Y+YLUA=; b=nQyqMlIIoHpO16
	B8UeRMjHjtswV9bF3pVzWNZfRFxMyf5pW7neT69lei8Wv2lju67kY5hbgcXwE8jffFLsShaW5MMZQ
	ftPEpOvpmfQ8WbNQChSn2uXEQosgiUSdHQxaWiHX7D+/ao4TI+7qJa1lYA2h9D8DT2iRlBtczX9Wo
	FcN4+NXHTBx8hb+atmxayxN+J9BgsiMEev+8WWQOFkDJBNQWr5EARgUNeHoR6TNAb40fK1JcY37xq
	7mgNHN297twTrBVCwIccrEkQxyc/qGjNQ7iNmgCHF6q3nG7Mdz++MNk451BYkKnvlM7Z4OW4lY9bD
	ihYMJd4moUN2e8vC/VLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOLza-009dJp-8J; Sun, 27 Feb 2022 16:01:50 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOLzR-009dAp-Ec
 for linux-rockchip@lists.infradead.org; Sun, 27 Feb 2022 16:01:44 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id ED12721D0;
 Sun, 27 Feb 2022 17:01:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1645977697;
 bh=+I21XNPnxfBFcrpJBAdDAPtZrSNDC7LAAxQbMXt9Tcc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=p8O1HvJWpZ7SyKjNeh/0S7d/jZtaciIo4d+bF5/FRvdSQSNkRh3eMCGBJfI/kc0qC
 QxZH4O79jWActKlVi2T80r50IrwW4LTRfjfPOkWGI3jMWTQKXAqS6mAgK0eju1GKXa
 BnvkKiMAi0lHKptOpeXtMsJoBCcft7b5ds7cvMLc=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 09/16] media: rkisp1: regs: Rename CCL,
 ICCL and IRCL registers with VI_ prefix
Date: Sun, 27 Feb 2022 18:01:09 +0200
Message-Id: <20220227160116.18556-10-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220227160116.18556-1-laurent.pinchart@ideasonboard.com>
References: <20220227160116.18556-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_080141_746836_D11C3624 
X-CRM114-Status: GOOD (  12.05  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The documentation names the CCL, ICCL and IRCL registers with a VI_
prefix, like the VI_ID and VI_DPCL registers. Fix the macro names
accordingly.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 19 +++---
 .../platform/rockchip/rkisp1/rkisp1-params.c  |  8 +--
 .../platform/rockchip/rkisp1/rkisp1-regs.h    | 60 +++++++++----------
 3 files changed, 44 insertions(+), 43 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index f84e53b60ee1..e8abb57fb728 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -523,20 +523,21 @@ static void rkisp1_isp_stop(struct rkisp1_device *rkisp1)
 	readx_poll_timeout(readl, rkisp1->base_addr + RKISP1_CIF_ISP_RIS,
 			   val, val & RKISP1_CIF_ISP_OFF, 20, 100);
 	rkisp1_write(rkisp1,
-		     RKISP1_CIF_IRCL_MIPI_SW_RST | RKISP1_CIF_IRCL_ISP_SW_RST,
-		     RKISP1_CIF_IRCL);
-	rkisp1_write(rkisp1, 0x0, RKISP1_CIF_IRCL);
+		     RKISP1_CIF_VI_IRCL_MIPI_SW_RST |
+		     RKISP1_CIF_VI_IRCL_ISP_SW_RST,
+		     RKISP1_CIF_VI_IRCL);
+	rkisp1_write(rkisp1, 0x0, RKISP1_CIF_VI_IRCL);
 }
 
 static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
 {
-	u32 val = RKISP1_CIF_ICCL_ISP_CLK | RKISP1_CIF_ICCL_CP_CLK |
-		  RKISP1_CIF_ICCL_MRSZ_CLK | RKISP1_CIF_ICCL_SRSZ_CLK |
-		  RKISP1_CIF_ICCL_JPEG_CLK | RKISP1_CIF_ICCL_MI_CLK |
-		  RKISP1_CIF_ICCL_IE_CLK | RKISP1_CIF_ICCL_MIPI_CLK |
-		  RKISP1_CIF_ICCL_DCROP_CLK;
+	u32 val = RKISP1_CIF_VI_ICCL_ISP_CLK | RKISP1_CIF_VI_ICCL_CP_CLK |
+		  RKISP1_CIF_VI_ICCL_MRSZ_CLK | RKISP1_CIF_VI_ICCL_SRSZ_CLK |
+		  RKISP1_CIF_VI_ICCL_JPEG_CLK | RKISP1_CIF_VI_ICCL_MI_CLK |
+		  RKISP1_CIF_VI_ICCL_IE_CLK | RKISP1_CIF_VI_ICCL_MIPI_CLK |
+		  RKISP1_CIF_VI_ICCL_DCROP_CLK;
 
-	rkisp1_write(rkisp1, val, RKISP1_CIF_ICCL);
+	rkisp1_write(rkisp1, val, RKISP1_CIF_VI_ICCL);
 
 	/* ensure sp and mp can run at the same time in V12 */
 	if (rkisp1->media_dev.hw_revision == RKISP1_V12) {
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index d41823c861ca..7a172d47d475 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -1058,8 +1058,8 @@ static void rkisp1_ie_config(struct rkisp1_params *params,
 static void rkisp1_ie_enable(struct rkisp1_params *params, bool en)
 {
 	if (en) {
-		rkisp1_param_set_bits(params, RKISP1_CIF_ICCL,
-				      RKISP1_CIF_ICCL_IE_CLK);
+		rkisp1_param_set_bits(params, RKISP1_CIF_VI_ICCL,
+				      RKISP1_CIF_VI_ICCL_IE_CLK);
 		rkisp1_write(params->rkisp1, RKISP1_CIF_IMG_EFF_CTRL_ENABLE,
 			     RKISP1_CIF_IMG_EFF_CTRL);
 		rkisp1_param_set_bits(params, RKISP1_CIF_IMG_EFF_CTRL,
@@ -1067,8 +1067,8 @@ static void rkisp1_ie_enable(struct rkisp1_params *params, bool en)
 	} else {
 		rkisp1_param_clear_bits(params, RKISP1_CIF_IMG_EFF_CTRL,
 					RKISP1_CIF_IMG_EFF_CTRL_ENABLE);
-		rkisp1_param_clear_bits(params, RKISP1_CIF_ICCL,
-					RKISP1_CIF_ICCL_IE_CLK);
+		rkisp1_param_clear_bits(params, RKISP1_CIF_VI_ICCL,
+					RKISP1_CIF_VI_ICCL_IE_CLK);
 	}
 }
 
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index 9e786de23480..4e2b73227e61 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -210,7 +210,7 @@
 #define RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP	BIT(1)
 #define RKISP1_CIF_MI_XTD_FMT_CTRL_DMA_CB_CR_SWAP	BIT(2)
 
-/* CCL */
+/* VI_CCL */
 #define RKISP1_CIF_CCL_CIF_CLK_DIS			BIT(2)
 /* VI_ISP_CLK_CTRL */
 #define RKISP1_CIF_CLK_CTRL_ISP_RAW			BIT(0)
@@ -241,32 +241,32 @@
 #define RKISP1_CIF_CLK_CTRL_RSZS			BIT(25)
 #define RKISP1_CIF_CLK_CTRL_MIPI			BIT(26)
 #define RKISP1_CIF_CLK_CTRL_MARVINMI			BIT(27)
-/* ICCL */
-#define RKISP1_CIF_ICCL_ISP_CLK				BIT(0)
-#define RKISP1_CIF_ICCL_CP_CLK				BIT(1)
-#define RKISP1_CIF_ICCL_RES_2				BIT(2)
-#define RKISP1_CIF_ICCL_MRSZ_CLK			BIT(3)
-#define RKISP1_CIF_ICCL_SRSZ_CLK			BIT(4)
-#define RKISP1_CIF_ICCL_JPEG_CLK			BIT(5)
-#define RKISP1_CIF_ICCL_MI_CLK				BIT(6)
-#define RKISP1_CIF_ICCL_RES_7				BIT(7)
-#define RKISP1_CIF_ICCL_IE_CLK				BIT(8)
-#define RKISP1_CIF_ICCL_SIMP_CLK			BIT(9)
-#define RKISP1_CIF_ICCL_SMIA_CLK			BIT(10)
-#define RKISP1_CIF_ICCL_MIPI_CLK			BIT(11)
-#define RKISP1_CIF_ICCL_DCROP_CLK			BIT(12)
-/* IRCL */
-#define RKISP1_CIF_IRCL_ISP_SW_RST			BIT(0)
-#define RKISP1_CIF_IRCL_CP_SW_RST			BIT(1)
-#define RKISP1_CIF_IRCL_YCS_SW_RST			BIT(2)
-#define RKISP1_CIF_IRCL_MRSZ_SW_RST			BIT(3)
-#define RKISP1_CIF_IRCL_SRSZ_SW_RST			BIT(4)
-#define RKISP1_CIF_IRCL_JPEG_SW_RST			BIT(5)
-#define RKISP1_CIF_IRCL_MI_SW_RST			BIT(6)
-#define RKISP1_CIF_IRCL_CIF_SW_RST			BIT(7)
-#define RKISP1_CIF_IRCL_IE_SW_RST			BIT(8)
-#define RKISP1_CIF_IRCL_SI_SW_RST			BIT(9)
-#define RKISP1_CIF_IRCL_MIPI_SW_RST			BIT(11)
+/* VI_ICCL */
+#define RKISP1_CIF_VI_ICCL_ISP_CLK			BIT(0)
+#define RKISP1_CIF_VI_ICCL_CP_CLK			BIT(1)
+#define RKISP1_CIF_VI_ICCL_RES_2			BIT(2)
+#define RKISP1_CIF_VI_ICCL_MRSZ_CLK			BIT(3)
+#define RKISP1_CIF_VI_ICCL_SRSZ_CLK			BIT(4)
+#define RKISP1_CIF_VI_ICCL_JPEG_CLK			BIT(5)
+#define RKISP1_CIF_VI_ICCL_MI_CLK			BIT(6)
+#define RKISP1_CIF_VI_ICCL_RES_7			BIT(7)
+#define RKISP1_CIF_VI_ICCL_IE_CLK			BIT(8)
+#define RKISP1_CIF_VI_ICCL_SIMP_CLK			BIT(9)
+#define RKISP1_CIF_VI_ICCL_SMIA_CLK			BIT(10)
+#define RKISP1_CIF_VI_ICCL_MIPI_CLK			BIT(11)
+#define RKISP1_CIF_VI_ICCL_DCROP_CLK			BIT(12)
+/* VI_IRCL */
+#define RKISP1_CIF_VI_IRCL_ISP_SW_RST			BIT(0)
+#define RKISP1_CIF_VI_IRCL_CP_SW_RST			BIT(1)
+#define RKISP1_CIF_VI_IRCL_YCS_SW_RST			BIT(2)
+#define RKISP1_CIF_VI_IRCL_MRSZ_SW_RST			BIT(3)
+#define RKISP1_CIF_VI_IRCL_SRSZ_SW_RST			BIT(4)
+#define RKISP1_CIF_VI_IRCL_JPEG_SW_RST			BIT(5)
+#define RKISP1_CIF_VI_IRCL_MI_SW_RST			BIT(6)
+#define RKISP1_CIF_VI_IRCL_CIF_SW_RST			BIT(7)
+#define RKISP1_CIF_VI_IRCL_IE_SW_RST			BIT(8)
+#define RKISP1_CIF_VI_IRCL_SI_SW_RST			BIT(9)
+#define RKISP1_CIF_VI_IRCL_MIPI_SW_RST			BIT(11)
 
 /* C_PROC_CTR */
 #define RKISP1_CIF_C_PROC_CTR_ENABLE			BIT(0)
@@ -687,11 +687,11 @@
 /*                            CIF Registers                            */
 /* =================================================================== */
 #define RKISP1_CIF_CTRL_BASE			0x00000000
-#define RKISP1_CIF_CCL				(RKISP1_CIF_CTRL_BASE + 0x00000000)
+#define RKISP1_CIF_VI_CCL			(RKISP1_CIF_CTRL_BASE + 0x00000000)
 #define RKISP1_CIF_VI_ID			(RKISP1_CIF_CTRL_BASE + 0x00000008)
 #define RKISP1_CIF_VI_ISP_CLK_CTRL_V12		(RKISP1_CIF_CTRL_BASE + 0x0000000C)
-#define RKISP1_CIF_ICCL				(RKISP1_CIF_CTRL_BASE + 0x00000010)
-#define RKISP1_CIF_IRCL				(RKISP1_CIF_CTRL_BASE + 0x00000014)
+#define RKISP1_CIF_VI_ICCL			(RKISP1_CIF_CTRL_BASE + 0x00000010)
+#define RKISP1_CIF_VI_IRCL			(RKISP1_CIF_CTRL_BASE + 0x00000014)
 #define RKISP1_CIF_VI_DPCL			(RKISP1_CIF_CTRL_BASE + 0x00000018)
 
 #define RKISP1_CIF_IMG_EFF_BASE			0x00000200
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
