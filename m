Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCB86C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 16:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSKdGXc1iSGmGSJt/d5zZM7njXuHlB68ypj6T+oKcLQ=; b=EuDMm0u01ykXbK
	+LpJfeN2b+s6MJrbOQAXjk5UkOsVPd0tDt8Ml0e9wYvnJ6lgR77wDYJcVA84YqKNfde5GVuMAfF6u
	alf15IU9akJEWUP3HLUUPfmwH1WIKLCSsgL8PYXCppvzhLLgLQM/4VGuKdFrHrdTz0WElBPTisDrN
	E3h9ciFquTFlBkXgRmay0yZtWurfUFmUkPZ5kA8jywgWaVumAVsSGqKFYe+ORYrmFYBTtHNZ46iuW
	o47yOZlUgekM4TG/BTczfPgn6Wji7TEaX85uQIKkN5GeO4Rh4IXbwLncuWMPRRzpNqPTN7G7kRV3L
	toEpFqvaEhXEflASAFzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1rzl-003Jva-C0; Thu, 16 Jun 2022 16:05:21 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1rzi-003JrP-G4
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 16:05:20 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D38B2898;
	Thu, 16 Jun 2022 18:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655395512;
	bh=kX38/TBN5PynJkSOE6Mnkyb9J7QIpHmpEZAAzRwBL0c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pZNCkeIGgCTJ5V+cxCIHMF7ylq4YdLdCMNtWKST+TxVtMmcskXGwjfcQi80bYVGEq
	 aT4PGvs7+lAfz3PVaueKcU69hD8UPKCY1H/k+RXE5agka/POJzYjYExMiiQvVi4a7B
	 F73NIlkaTm3LkcruyNTDRqf4Zs+HriSAqahh5g+w=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: [PATCH 1/3] media: rockchip: rkisp1: Set DPCC methods enable bits inside loop
Date: Thu, 16 Jun 2022 19:04:54 +0300
Message-Id: <20220616160456.21549-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220616160456.21549-1-laurent.pinchart@ideasonboard.com>
References: <20220616160456.21549-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_090518_784316_A01B58E9 
X-CRM114-Status: UNSURE (   9.22  )
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

The rkisp1_dpcc_config() function looks over methods sets to configure
them, but sets the RKISP1_CIF_ISP_DPCC_METHODS_SET_* registers outside
of the loop with hand-unrolled code. Move this to the loop to simplify
the code.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index c88a9c0fa86e..140012fa18f0 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -18,6 +18,8 @@
 #define RKISP1_ISP_PARAMS_REQ_BUFS_MIN	2
 #define RKISP1_ISP_PARAMS_REQ_BUFS_MAX	8
 
+#define RKISP1_ISP_DPCC_METHODS_SET(n) \
+			(RKISP1_CIF_ISP_DPCC_METHODS_SET_1 + 0x4 * (n))
 #define RKISP1_ISP_DPCC_LINE_THRESH(n) \
 			(RKISP1_CIF_ISP_DPCC_LINE_THRESH_1 + 0x14 * (n))
 #define RKISP1_ISP_DPCC_LINE_MAD_FAC(n) \
@@ -66,13 +68,9 @@ static void rkisp1_dpcc_config(struct rkisp1_params *params,
 	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_SET_USE,
 		     arg->set_use);
 
-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_METHODS_SET_1,
-		     arg->methods[0].method);
-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_METHODS_SET_2,
-		     arg->methods[1].method);
-	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_METHODS_SET_3,
-		     arg->methods[2].method);
 	for (i = 0; i < RKISP1_CIF_ISP_DPCC_METHODS_MAX; i++) {
+		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_METHODS_SET(i),
+			     arg->methods[i].method);
 		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_LINE_THRESH(i),
 			     arg->methods[i].line_thresh);
 		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_LINE_MAD_FAC(i),
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
