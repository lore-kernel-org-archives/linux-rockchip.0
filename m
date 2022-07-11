Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 131BEC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZhyx3rvYRw3bRmHEtg9WP7Q3LtLawM+Zica3eNphdM=; b=ksr5KF6hVxBscg
	v7iW5NmkFFTpyKVt9EjcPNMkJ310TpVjFUw2l3c7mneDH7Zt3bprQ5adZulafEsDy974icvSz4T+M
	evxSi6uq4bmPDoeO0S5wJkYR9o+SFQ/mQK385FIWT0FhdMVS7/LmaHLgqYSGok3d9RFPARV40XK9e
	uWpYxdeLkl+v+jL5AAR1BMPd73Q/5/guZh9G5L7K9bjbGkx/EA2MGxTxfcM99/f5oUYIFMRkk2LBR
	jUmZuGyK13ViBYWrFRnFYpflSscdL6hS73Sf1TlbjV/FtGu/QPIsrY3Kt0ROZbdfpauRdLTx0ELmT
	4KX6oJMiQRBkxe1dHG+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAszW-001gvA-7c; Mon, 11 Jul 2022 12:58:22 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAslJ-001YHf-Uq
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:44 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id F1FE42719;
	Mon, 11 Jul 2022 14:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543420;
	bh=UPJ5XRznE8cv1wBcVUOUFQDm95EI3a0AXC/nNFTTE8U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PEK0yW8lSsF1HhztAw/YIBASa+OvMjVjn+I9BI9oc6TsAYyX6CRHJGBxXPp1bUVWj
	 Y5YvePPAY8mFD7/FLSTMYNAp0b0w0Xu9PdC247SoIxpvtrcHQFjUp35Of/iwfRojmA
	 7FpksrkIS9e8i07uZWZ5KLzwwxU0BkI/z4WPSNoc=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 34/46] media: rkisp1: isp: Initialize some variables at declaration time
Date: Mon, 11 Jul 2022 15:42:36 +0300
Message-Id: <20220711124248.2683-35-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054342_205572_AE57FD14 
X-CRM114-Status: UNSURE (   8.94  )
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

Initialize the src_fmt and sink_fmt variable when declaring them in
rkisp1_config_isp().

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
---
Changes since v1:

- Fix typo in commit message
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 938541ce52ce..53f0516594ef 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -142,12 +142,11 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 {
 	struct rkisp1_device *rkisp1 = isp->rkisp1;
 	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, acq_prop = 0;
-	const struct rkisp1_mbus_info *src_fmt, *sink_fmt;
+	const struct rkisp1_mbus_info *sink_fmt = isp->sink_fmt;
+	const struct rkisp1_mbus_info *src_fmt = isp->src_fmt;
 	struct v4l2_mbus_framefmt *sink_frm;
 	struct v4l2_rect *sink_crop;
 
-	sink_fmt = isp->sink_fmt;
-	src_fmt = isp->src_fmt;
 	sink_frm = rkisp1_isp_get_pad_fmt(isp, NULL,
 					  RKISP1_ISP_PAD_SINK_VIDEO,
 					  V4L2_SUBDEV_FORMAT_ACTIVE);
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
