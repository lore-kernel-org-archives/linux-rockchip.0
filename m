Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 210EEC25B0E
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Aug 2022 02:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P3d9gYk/B7ZQGtHoasmkxq+WNFiBHFXQxJtrAGn6DXQ=; b=enW60w9RCtcMdL
	dIgHpL/RdCsWfkwXIf8+nIwLBmwS4jlMeb2Ihkb2BC7IGdIPUzz+IjLtPKaaitbOUY99Cq3djkohH
	YeCUxSjhc9zwDsbkAmPwoaJgBLPuwBCUpe538gOE1hch9Guk9BE9ic4GLbV1wcDj8w6No8PYCj4YN
	bgJFt1Lo11nOHJel87c5bHP4n54ixAZX9f5TVTuueeK676GCA5m6KupAyC+IapBowPLZ3ikz88O7N
	EBKmJ4JCs4P5i1oLaNWjC+5NEgCMMfMRgnt5C1eZsLop3BiAhBhP+Lk9MboqWa9U46PjjQ4EMrl5O
	U96dLi00FaRy1V0zIYbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO8eL-0090ub-Gw; Wed, 17 Aug 2022 02:19:17 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oO8eH-0090p5-9F
	for linux-rockchip@lists.infradead.org; Wed, 17 Aug 2022 02:19:15 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id CD682576;
	Wed, 17 Aug 2022 04:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1660702750;
	bh=GRsmUqeN0NdIzCEoMZvI1nIX8Z32+/auiLQxaogUViE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lBSOiFX26InxIfrQZvykZVD7Q443gm7n6j2QuusHyDKDeDONV1A7nThpwCsNippQy
	 HMfw63AYSh8i3YJM+pdAlURtlo150khhpAUeFP3eTmwZkp7nXh3s2uw0diV4LynJKY
	 k2A8XngijjJUeEnoQ7J6dNEGwmneUUohmr2UtFyo=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: [PATCH 4/5] media: rkisp1: Use RKISP1_CIF_ISP_LSC_GRAD_SIZE() for gradient registers
Date: Wed, 17 Aug 2022 05:18:49 +0300
Message-Id: <20220817021850.20460-5-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
References: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_191913_498546_5907D92B 
X-CRM114-Status: UNSURE (   9.98  )
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

The rkisp1_lsc_config() function incorrectly uses the
RKISP1_CIF_ISP_LSC_SECT_SIZE() macro for the gradient registers. Replace
it with the correct RKISP1_CIF_ISP_LSC_GRAD_SIZE() macro. This doesn't
cause any functional change as the two macros are defined identically
(the size and gradient registers store fields in the same number of bits
at the same positions).

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index aa6efa4c6e9e..421ade177b2d 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -334,7 +334,7 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XSIZE(i), data);
 
 		/* program x grad tables */
-		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->x_grad_tbl[i * 2],
+		data = RKISP1_CIF_ISP_LSC_GRAD_SIZE(arg->x_grad_tbl[i * 2],
 						    arg->x_grad_tbl[i * 2 + 1]);
 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XGRAD(i), data);
 
@@ -344,7 +344,7 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YSIZE(i), data);
 
 		/* program y grad tables */
-		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->y_grad_tbl[i * 2],
+		data = RKISP1_CIF_ISP_LSC_GRAD_SIZE(arg->y_grad_tbl[i * 2],
 						    arg->y_grad_tbl[i * 2 + 1]);
 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YGRAD(i), data);
 	}
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
