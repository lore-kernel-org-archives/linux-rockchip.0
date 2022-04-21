Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02A4DC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 23:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gR2HF2GoZGEai42p8gK3kmfW68F01nzgOvnXZE8sbDw=; b=DJ7jdwKgI/NzBT
	Z69u5vABuyyQMFrIRxTRGyUGlRgZP9MGTen54fdggrQl6dV2P16qFRpVeFls4ohHrKLOVopR82b4p
	1BBCL9vNGJvIIQ2G41DsD/h9H1mLvRNjeFHMg8G6UoQpPzSMMmMc0QpruegeVbXzxlZHdyZm1WSxJ
	cwHHDcyxlcRZEKgA7dUNwMgB/3OSRfAWF3IbR1oO6gcmumvLnOKoNz9R+XFKMv6trCgucuID9mV94
	Np5msjcrPwEJAnvz+1NWHCF93EwwyZUvMfbDt3iDcRuhCJAfYLAsqoNGdHiQwyc4srLGaCFgRf7tK
	GmE9ox169DUVrzs7KUHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhgSV-00FOjj-Kp; Thu, 21 Apr 2022 23:43:35 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhgRu-00FNus-JE
 for linux-rockchip@lists.infradead.org; Thu, 21 Apr 2022 23:43:02 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C6BB1FD6;
 Fri, 22 Apr 2022 01:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1650584577;
 bh=shLN6M/uEqPbsMqqd12FBZcjLJb90vKIGT7a+RTEros=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=H/5md3P0eVWj/EpZ+d4b+/5S9t8/savD5pTDC1Wc94c+ZI4ZKyzNV4G6+EdwQlrWv
 6DhHNAiEK10BlYTwYum8Gnii58lJO91AzAl/QWsQF3TyPywarez+0yUpzy2qkbxWlr
 KU02xY8VuT9qMTd4zeo/zdBMV9ty3eQ06vBluI68=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 20/21] media: rkisp1: Align macro definitions
Date: Fri, 22 Apr 2022 02:42:39 +0300
Message-Id: <20220421234240.1694-21-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_164258_842755_C5239438 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
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

Make the code more readable by using the same alignment for all macros
in rkisp1-common.h.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index a7ffe2830fa8..4243ff5e2197 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -29,14 +29,14 @@ struct dentry;
  * flags on the 'direction' field in struct 'rkisp1_isp_mbus_info' that indicate
  * on which pad the media bus format is supported
  */
-#define RKISP1_ISP_SD_SRC BIT(0)
-#define RKISP1_ISP_SD_SINK BIT(1)
+#define RKISP1_ISP_SD_SRC			BIT(0)
+#define RKISP1_ISP_SD_SINK			BIT(1)
 
 /* min and max values for the widths and heights of the entities */
-#define RKISP1_ISP_MAX_WIDTH		4032
-#define RKISP1_ISP_MAX_HEIGHT		3024
-#define RKISP1_ISP_MIN_WIDTH		32
-#define RKISP1_ISP_MIN_HEIGHT		32
+#define RKISP1_ISP_MAX_WIDTH			4032
+#define RKISP1_ISP_MAX_HEIGHT			3024
+#define RKISP1_ISP_MIN_WIDTH			32
+#define RKISP1_ISP_MIN_HEIGHT			32
 
 #define RKISP1_RSZ_MP_SRC_MAX_WIDTH		4416
 #define RKISP1_RSZ_MP_SRC_MAX_HEIGHT		3312
@@ -46,20 +46,20 @@ struct dentry;
 #define RKISP1_RSZ_SRC_MIN_HEIGHT		16
 
 /* the default width and height of all the entities */
-#define RKISP1_DEFAULT_WIDTH		800
-#define RKISP1_DEFAULT_HEIGHT		600
+#define RKISP1_DEFAULT_WIDTH			800
+#define RKISP1_DEFAULT_HEIGHT			600
 
-#define RKISP1_DRIVER_NAME	"rkisp1"
-#define RKISP1_BUS_INFO		"platform:" RKISP1_DRIVER_NAME
+#define RKISP1_DRIVER_NAME			"rkisp1"
+#define RKISP1_BUS_INFO				"platform:" RKISP1_DRIVER_NAME
 
 /* maximum number of clocks */
-#define RKISP1_MAX_BUS_CLK	8
+#define RKISP1_MAX_BUS_CLK			8
 
 /* a bitmask of the ready stats */
-#define RKISP1_STATS_MEAS_MASK		(RKISP1_CIF_ISP_AWB_DONE |	\
-					 RKISP1_CIF_ISP_AFM_FIN |	\
-					 RKISP1_CIF_ISP_EXP_END |	\
-					 RKISP1_CIF_ISP_HIST_MEASURE_RDY)
+#define RKISP1_STATS_MEAS_MASK			(RKISP1_CIF_ISP_AWB_DONE |	\
+						 RKISP1_CIF_ISP_AFM_FIN |	\
+						 RKISP1_CIF_ISP_EXP_END |	\
+						 RKISP1_CIF_ISP_HIST_MEASURE_RDY)
 
 /* enum for the resizer pads */
 enum rkisp1_rsz_pad {
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
