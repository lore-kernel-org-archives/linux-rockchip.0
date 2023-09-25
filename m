Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08FEDCE7A95
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 00:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZyJqlSAXdzexeECScjgut5N8Xx5htBBqwBCcaRSmY4=; b=ajxDLTIopppr7U
	q+WSB/ojdBjzGRV3Cbf1sBSJgzbeu8cSJpaoleM7VLhbUuQdLTe8lbSpefFTLJvfOPH6vNgddE1mI
	1xchRp6Cxp9Wge8u9JftWunQ3n2sAg7Ey6EDVXbfgnhcDb+pxwLr+oLmTh5UU8GmHBygfwtW3Z0cf
	RdM38Ogqsv1ryK23rt2wt+LhHaBz2c9JkmMzrJ7Lw1oicxu2jbyqDVTuqrMBfXNBWLe6Gweiump+K
	4/lLano8cTgac4c7Wt66UXub1EzDdeMzP0RfKAirdE02sGVyl1spmmYXQaYAs0pjTnXHqE6L3Jm1T
	FPUYq3/+Fcs/C32p7bVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZf8-00D22r-01;
	Mon, 25 Sep 2023 00:41:22 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZf2-00D1xW-1G
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 00:41:17 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8025D1B70;
	Mon, 25 Sep 2023 02:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695602375;
	bh=0A4fLySmfS29cqsduJAheAN/d88DT6dkQYkH8WFGnGQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=wHeXuVdO2rLj6X8OgGZ108eZmEtolMoGuvmdEl+Bo56WMk9wCqUNU8dLjDPUhuxZk
	 2Rg28bzmvUEQtx2ROeirLvcjzyAeO6Vqh/wul1aniIraA/SuJtr6cbinamFyNJHpc8
	 uOLpPOARYH3FRinvqnVVwMuAupyK0kEdwBCAqSP8=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 09/14] media: rkisp1: Program RKISP1_CIF_MI_SP_Y_PIC_SIZE register
Date: Mon, 25 Sep 2023 03:41:07 +0300
Message-ID: <20230925004112.22797-10-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
References: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_174116_572290_E87E52C9 
X-CRM114-Status: UNSURE (   8.38  )
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

The self path has a Y_PIC_SIZE register that needs to be programmed to
the total number of pixels, including the stride. This isn't done by the
driver, fix it.

While at it, reorder the register write order to sort them by address.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 3c1e2c1a8bbe..c6d7e01c8949 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -479,9 +479,11 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
 	rkisp1_write(rkisp1, cap->config->mi.cr_size_init,
 		     rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CR));
 
+	rkisp1_write(rkisp1, RKISP1_CIF_MI_SP_Y_LLENGTH, cap->sp_y_stride);
 	rkisp1_write(rkisp1, RKISP1_CIF_MI_SP_Y_PIC_WIDTH, pixm->width);
 	rkisp1_write(rkisp1, RKISP1_CIF_MI_SP_Y_PIC_HEIGHT, pixm->height);
-	rkisp1_write(rkisp1, RKISP1_CIF_MI_SP_Y_LLENGTH, cap->sp_y_stride);
+	rkisp1_write(rkisp1, RKISP1_CIF_MI_SP_Y_PIC_SIZE,
+		     cap->sp_y_stride * pixm->height);
 
 	rkisp1_irq_frame_end_enable(cap);
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
