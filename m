Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CED25C43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 00:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g04FGX790GgF2oZP1+eq1CF0j6mdFrsDU9RBs1MI92w=; b=qPTGnn+ETh3u1y
	aGvH5ewyroLc3TaOvzhclz4R7xz2ARZuIJxy/p0erEqXhkz5G+09uv2t+J+gWdlOWYTTeoJ1ifyuA
	UPnq6q17y1XkUSVYHZqcEwC48BK7FIlzJWaN1/Vq/iYDtu1rRI2sfY88+M9X3E2bvw6hQqtDZVg2U
	v7OyCaFJSTv68AgpSo6vHg2nZ5yf+5m7GuSkiZeVGMPBucYrUuioKe6GAOS+XD0arbdh8sLp6S2Fi
	g21aMotAifKbl3xap/T20zCe4fAz6PR3yOfhBHL1UyLwhtZmXWVIQZKzjX623d+D+UDJbate5QlmS
	G7i5e46O6vyijWGb68BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74KG-0028Mp-B1; Fri, 01 Jul 2022 00:16:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GM-0020GH-IE
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:02 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 263392731;
	Fri,  1 Jul 2022 01:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630470;
	bh=u2NRLTl62iHTbwNpezxjHr52pS2jNsL+reWPe5YodXc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dPtoOcGA+p6BZtdggCGzDbCa1f5kTONZ5yy/WALexV+9xzc9CdcpdvWSMIaCy4gZW
	 720W6UvQMiFBfBehRWtrqu6MgHznldNwRGw5JNQCOHdTqQwLL3gvWQ0pLjRO+7tZc8
	 Lz6d0QyIzldJUzMybUSFwVILEr2WDQ8u8eq3O9P4=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 20/55] media: rkisp1: isp: Start CSI-2 receiver before ISP
Date: Fri,  1 Jul 2022 02:06:38 +0300
Message-Id: <20220630230713.10580-21-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160754_874648_832C0958 
X-CRM114-Status: GOOD (  10.56  )
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
