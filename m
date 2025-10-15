Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B916CCD185
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 07:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nRNNSBDEQDYsIYcgJkx/Kj/udqR8v75lS2VUYy9Fio=; b=bkPeWcjBMp+auB
	fZ5+d2BUikz35IbP+kh8/176PjrPQEwCE+H8qD5OAXg71SeGilXbtY6unxbweTcnLiKhTTYI6uKuG
	yt+cFZjL9uTSOlLTuV5YeiS7jQpUbrhKwaG5ddltuNYoWART9ezOEvc8ecL5X2AkBWiBmqf2GdIkF
	4Qjp07QMc1ec5FSrhwps3c/vlyVmQraLambCmVpnMLvO/DUztx0aUzSr9uHQ3B8+nZ6nmmuuzVkuG
	qWQcRONd+z5KxF3fFKUbR/XVIReofceal9LQkJ62djZDipm14ARNGzdy+0YeJ5ONrLiBkPpB/tdgr
	nKCMcNSigZ7DklZY2odQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wLJ-00000000p4C-0Qcj;
	Wed, 15 Oct 2025 07:54:41 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wLG-00000000ozA-0cTw;
	Wed, 15 Oct 2025 07:54:39 +0000
Received: from pendragon.ideasonboard.com (87-94-110-32.bb.dnainternet.fi [87.94.110.32])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 91491190D;
	Wed, 15 Oct 2025 09:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1760514777;
	bh=APf+o1EB+8Y+xNYzSvnwoyhc4elOahLrs0+JLOUypAA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=m86t6wiQLdIms3WRcFe8sPhq/JDAxlQhZJaFtri0x8oxLz8rjyREdhbjRHdlV6PyW
	 RJ8QEaKcNARsRryIFZHPWAA6wrNpVXRi/czuXu99dWqibZmetsd4FmsyQtydOYWFN3
	 0E9jDG/T7ns/Kq8QvZ4KOVDRfsMvXN/kHtjJW76I=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 19/25] media: platform: rga: Drop unneeded v4l2_m2m_get_vq() NULL check
Date: Wed, 15 Oct 2025 10:53:42 +0300
Message-ID: <20251015075353.22625-20-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251015075353.22625-1-laurent.pinchart@ideasonboard.com>
References: <20251015075353.22625-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_005438_328551_06B745E4 
X-CRM114-Status: GOOD (  11.53  )
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

The v4l2_m2m_get_vq() function never returns NULL. The check was
probably intended to catch invalid format types, but that's not needed
as the V4L2 core picks the appropriate VIDIOC_G_FMT ioctl handler based
on the format type, so the type can't be incorrect. Drop the unneeded
return value check and, as the return value is not used for other
purposes and the function has no side effect, the function call as well.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rga/rga.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 776046de979a..eb9c556a105c 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -463,12 +463,8 @@ static int vidioc_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
 {
 	struct v4l2_pix_format_mplane *pix_fmt = &f->fmt.pix_mp;
 	struct rga_ctx *ctx = file_to_rga_ctx(file);
-	struct vb2_queue *vq;
 	struct rga_frame *frm;
 
-	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
-	if (!vq)
-		return -EINVAL;
 	frm = rga_get_frame(ctx, f->type);
 	if (IS_ERR(frm))
 		return PTR_ERR(frm);
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
