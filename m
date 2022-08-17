Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAD38C32774
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Aug 2022 02:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fp0hJd3Lz6s5PHqvw4g5dCAiAOaJlVWauL/Oo6ll+0c=; b=VfVZP07O0CSL2L
	bY5CmESl0VnIdAKugRfY9F6s23H+fFAo5C6BA5/p+LFgaWDe7gfdvohEZNRJ3R86lr6fsSAzvpXBG
	1ricmY1yaUI6BIE2KOCw/7VeiDTdvuScpA3CT0TIIm8v1tOtpQEUrALbKgrwPglrmfvVkhyhlOQwQ
	ZcbaKcvrcXg9ywYQyBKG2a9n9tGLgzyXAO4tS+pLJdKJaOrTucxV7m9r+65MT9IDDb8Xi/77GPIy9
	DIiweKHNbDdA8OAxn3NE/VfyXqkCO0642pKBrUB42R1YWZ1BN/aFmMf9V7Vf9T+ExafCoEYls8zVO
	ZFLC9eWxCf6BkDjhE9xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO8eI-0090rd-To; Wed, 17 Aug 2022 02:19:14 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO8eG-0090p3-8u
	for linux-rockchip@lists.infradead.org; Wed, 17 Aug 2022 02:19:13 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9132951C;
	Wed, 17 Aug 2022 04:19:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1660702748;
	bh=rgKGhFvMOhYEVy89iQJFS+d2M6ZdOcI2C+7YBIHcpDo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Gb9ARV6yuhp0eVAZ0lpkx6MPtZnpPqqI75LSiaQtrPdpU2R26JOVSaoI5WlgoqOCY
	 et2p8o3XNgNVv+npMDk2qLNQqx/mEogIH79ZNMuhznDRDfWWxyibOECCjJxtas55vd
	 XbbLJr4w4OoKjDo9e+u3zifHMXrmnr2OOt+aNYY4=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: [PATCH 3/5] media: rkisp1: Simplify LSC x/y size and grad register macros
Date: Wed, 17 Aug 2022 05:18:48 +0300
Message-Id: <20220817021850.20460-4-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
References: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_191912_508767_621826DC 
X-CRM114-Status: UNSURE (   9.15  )
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

The LSC module x/y size and grad configuration is stored in a set of 4
indexed registers each. The rkisp1-regs.h header defines all those
registers, but only the first one in each set is used, with manual
calculation of addresses of subsequent registers. Simplifies this by
merging all 4 register macros into one that takes the index as a
parameter. No functional change intended.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-params.c  |  8 ++++----
 .../platform/rockchip/rkisp1/rkisp1-regs.h    | 20 ++++---------------
 2 files changed, 8 insertions(+), 20 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index dbe826fd02d2..aa6efa4c6e9e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -331,22 +331,22 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
 		/* program x size tables */
 		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->x_size_tbl[i * 2],
 						    arg->x_size_tbl[i * 2 + 1]);
-		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XSIZE_01 + i * 4, data);
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XSIZE(i), data);
 
 		/* program x grad tables */
 		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->x_grad_tbl[i * 2],
 						    arg->x_grad_tbl[i * 2 + 1]);
-		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XGRAD_01 + i * 4, data);
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XGRAD(i), data);
 
 		/* program y size tables */
 		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->y_size_tbl[i * 2],
 						    arg->y_size_tbl[i * 2 + 1]);
-		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YSIZE_01 + i * 4, data);
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YSIZE(i), data);
 
 		/* program y grad tables */
 		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->y_grad_tbl[i * 2],
 						    arg->y_grad_tbl[i * 2 + 1]);
-		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YGRAD_01 + i * 4, data);
+		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YGRAD(i), data);
 	}
 
 	/* restore the lsc ctrl status */
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index 044af3d6e4f3..2ad24deedec8 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -1162,22 +1162,10 @@
 #define RKISP1_CIF_ISP_LSC_GR_TABLE_DATA	(RKISP1_CIF_ISP_LSC_BASE + 0x00000018)
 #define RKISP1_CIF_ISP_LSC_B_TABLE_DATA		(RKISP1_CIF_ISP_LSC_BASE + 0x0000001C)
 #define RKISP1_CIF_ISP_LSC_GB_TABLE_DATA	(RKISP1_CIF_ISP_LSC_BASE + 0x00000020)
-#define RKISP1_CIF_ISP_LSC_XGRAD_01		(RKISP1_CIF_ISP_LSC_BASE + 0x00000024)
-#define RKISP1_CIF_ISP_LSC_XGRAD_23		(RKISP1_CIF_ISP_LSC_BASE + 0x00000028)
-#define RKISP1_CIF_ISP_LSC_XGRAD_45		(RKISP1_CIF_ISP_LSC_BASE + 0x0000002C)
-#define RKISP1_CIF_ISP_LSC_XGRAD_67		(RKISP1_CIF_ISP_LSC_BASE + 0x00000030)
-#define RKISP1_CIF_ISP_LSC_YGRAD_01		(RKISP1_CIF_ISP_LSC_BASE + 0x00000034)
-#define RKISP1_CIF_ISP_LSC_YGRAD_23		(RKISP1_CIF_ISP_LSC_BASE + 0x00000038)
-#define RKISP1_CIF_ISP_LSC_YGRAD_45		(RKISP1_CIF_ISP_LSC_BASE + 0x0000003C)
-#define RKISP1_CIF_ISP_LSC_YGRAD_67		(RKISP1_CIF_ISP_LSC_BASE + 0x00000040)
-#define RKISP1_CIF_ISP_LSC_XSIZE_01		(RKISP1_CIF_ISP_LSC_BASE + 0x00000044)
-#define RKISP1_CIF_ISP_LSC_XSIZE_23		(RKISP1_CIF_ISP_LSC_BASE + 0x00000048)
-#define RKISP1_CIF_ISP_LSC_XSIZE_45		(RKISP1_CIF_ISP_LSC_BASE + 0x0000004C)
-#define RKISP1_CIF_ISP_LSC_XSIZE_67		(RKISP1_CIF_ISP_LSC_BASE + 0x00000050)
-#define RKISP1_CIF_ISP_LSC_YSIZE_01		(RKISP1_CIF_ISP_LSC_BASE + 0x00000054)
-#define RKISP1_CIF_ISP_LSC_YSIZE_23		(RKISP1_CIF_ISP_LSC_BASE + 0x00000058)
-#define RKISP1_CIF_ISP_LSC_YSIZE_45		(RKISP1_CIF_ISP_LSC_BASE + 0x0000005C)
-#define RKISP1_CIF_ISP_LSC_YSIZE_67		(RKISP1_CIF_ISP_LSC_BASE + 0x00000060)
+#define RKISP1_CIF_ISP_LSC_XGRAD(n)		(RKISP1_CIF_ISP_LSC_BASE + 0x00000024 + (n) * 4)
+#define RKISP1_CIF_ISP_LSC_YGRAD(n)		(RKISP1_CIF_ISP_LSC_BASE + 0x00000034 + (n) * 4)
+#define RKISP1_CIF_ISP_LSC_XSIZE(n)		(RKISP1_CIF_ISP_LSC_BASE + 0x00000044 + (n) * 4)
+#define RKISP1_CIF_ISP_LSC_YSIZE(n)		(RKISP1_CIF_ISP_LSC_BASE + 0x00000054 + (n) * 4)
 #define RKISP1_CIF_ISP_LSC_TABLE_SEL		(RKISP1_CIF_ISP_LSC_BASE + 0x00000064)
 #define RKISP1_CIF_ISP_LSC_STATUS		(RKISP1_CIF_ISP_LSC_BASE + 0x00000068)
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
