Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BE78C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g04FGX790GgF2oZP1+eq1CF0j6mdFrsDU9RBs1MI92w=; b=S3NWGDYFYjDviC
	PFN8gtQ/iwwLavB+MCl/otRpZ6OUOLhN4tvnyf/7uuejdcNPe2K5EwMrNADaPImPhkakpMlc6GO5v
	1AyXyvW3waFSmnThQlqulSVk5nxZzeusblgSFhUQZ6DYTe+um4RZvpiSTGzeCj78a4JvdmzYSquEx
	HHksLWKlYMC5MMC1hrdgGGq514apNvZxvACTGWocle/thuhhTFv05erVNKVEZTi5BUWi+na1ogW3t
	iVx0Ja3IxwTDEV3EYjWfDOenpQmG5fWBMeVCMRYyMrOwFECeZTRNGK9PB9M5lMhCfVcPVVO6zEtYI
	asxjYwNlU/uiHjBCnoig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsyP-001fqR-4W; Mon, 11 Jul 2022 12:57:13 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAslB-001YBA-7J
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:35 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 59A7C1A6C;
	Mon, 11 Jul 2022 14:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543411;
	bh=u2NRLTl62iHTbwNpezxjHr52pS2jNsL+reWPe5YodXc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qX8ppFIlaeGou7koRleN4eR9IjI6HZyPTopRh/ix6+jsYpUkIMgQtPiLry6pi9agW
	 hFoAhgJa889i5vjmKzwG1F2VF36ez8uLb9G9OWod2eqDgdDTRCEa/V2q9uTyv6/xqT
	 +uslqZKtonVLM2/jXu3yMvUjzSV3pVsTGn8iVBgY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 20/46] media: rkisp1: isp: Start CSI-2 receiver before ISP
Date: Mon, 11 Jul 2022 15:42:22 +0300
Message-Id: <20220711124248.2683-21-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054333_466265_6820CA4F 
X-CRM114-Status: GOOD (  10.61  )
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

Make sure the ISP is ready to receive data before starting the CSI-2
receiver by starting it first. Similarly, stop the CSI-2 receiver before
the ISP when stopping streaming.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index c05148dd32c0..81c4eb48baab 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -771,8 +771,9 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 		v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
 				 false);
 
-		rkisp1_isp_stop(rkisp1);
 		rkisp1_mipi_csi2_stop(&rkisp1->csi);
+		rkisp1_isp_stop(rkisp1);
+
 		return 0;
 	}
 
@@ -794,12 +795,14 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 	if (ret)
 		goto mutex_unlock;
 
-	ret = rkisp1_mipi_csi2_start(&rkisp1->csi, rkisp1->active_sensor);
-	if (ret)
-		goto mutex_unlock;
-
 	rkisp1_isp_start(rkisp1);
 
+	ret = rkisp1_mipi_csi2_start(&rkisp1->csi, rkisp1->active_sensor);
+	if (ret) {
+		rkisp1_isp_stop(rkisp1);
+		goto mutex_unlock;
+	}
+
 	ret = v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
 			       true);
 	if (ret) {
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
