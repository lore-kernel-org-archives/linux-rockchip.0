Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15088C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 16:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U9A9fZTxLjbeLmgtyxX7QGzuYnvq7d2D99eE541esVM=; b=dCeT9NHWkTjbLl
	qIktEt0Y234CaNdluBSiPnOnUtHS8xMqmw6M4zb7b3dF4xR1ZDkCNjTycDAX6ToF1wp35g3SnJiYM
	hTya3p8sw9GSnNBZNzcyV2wcjTglSOObFoR5KDA+qHBR5QdwadhA87k32TIQPnmgyDj0gWyOeM2mn
	yGQJ8XxxlAVe8r+iF6BrIA9QWZ5hliTbPbwU2OZ7C/5lQaHxJljG9WmaUmnIyLWn20yw2tBEE3zsx
	CCqNTiU4cq7d3LNj6qgptF8sirAoysxoiNhcwuOKaZvIs155vWpHxhKoQYxpkAFPFAxK5YhG22Bv6
	6iBE+Po8+V7fH6sUo8vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scS8f-0000000Bp3c-157B;
	Fri, 09 Aug 2024 16:06:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scS8b-0000000Bp0v-2VfX
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Aug 2024 16:06:47 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1scS8Y-0003Fl-Lx; Fri, 09 Aug 2024 18:06:42 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 09 Aug 2024 18:06:30 +0200
Subject: [PATCH v2] media: rockchip: rga: fix field in OUTPUT buffers
MIME-Version: 1.0
Message-Id: <20240528-rk3568-rga-v2-1-c8052f5af10c@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAIU+tmYC/22OQQ6DIBBFr2JYl4ooWrvqPRoXCINOmgABamyMd
 y+66aarnzeZl/83EiEgRHIvNhJgwYjOZuCXgqhZ2gko6syEM94wwW80vGrR5pgkNcZUWjPFVSd
 IFkYZgY5BWjUfioU1lcl5VOVPOv58AIPrWfocMs8Ykwufc8NSHde/dUtFGR37pgUhdK/r7uHBT
 u8UnMX1qoEM+75/AUz7CwjRAAAA
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>
Cc: Michael Tretter <m.tretter@pengutronix.de>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 kernel@pengutronix.de
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_090645_678159_9D2BA9B7 
X-CRM114-Status: GOOD (  12.33  )
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

Returned buffers shouldn't contain V4L2_FIELD_ANY as field. Set the
field to V4L2_FIELD_NONE, if it isn't set.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Fix the Streaming ioctl tests reported by v4l2-compliance for the
Rockchip RGA driver.

The remaining Patch 1 fixes the field of the returned buffers. Other
patches from the series have already been applied.
---
Changes in v2:
- Drop already applied Patch 2
- Remove v4l2_err() to avoid spamming the log with invalid user input
- Link to v1: https://lore.kernel.org/r/20240528-rk3568-rga-v1-0-b946e55d9d37@pengutronix.de
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index 70808049d2e8..9e87ac79e8c6 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -119,6 +119,13 @@ static int rga_buf_prepare(struct vb2_buffer *vb)
 	if (IS_ERR(f))
 		return PTR_ERR(f);
 
+	if (V4L2_TYPE_IS_OUTPUT(vb->vb2_queue->type)) {
+		if (vbuf->field == V4L2_FIELD_ANY)
+			vbuf->field = V4L2_FIELD_NONE;
+		if (vbuf->field != V4L2_FIELD_NONE)
+			return -EINVAL;
+	}
+
 	for (i = 0; i < vb->num_planes; i++) {
 		vb2_set_plane_payload(vb, i, f->pix.plane_fmt[i].sizeimage);
 

---
base-commit: 812765cd69540b1e3ed5f02e25ccb9904f6a82f7
change-id: 20240528-rk3568-rga-fff1dd0c2c75

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
