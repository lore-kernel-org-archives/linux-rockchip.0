Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B33CC001B5
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Nov 2023 16:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CoRWY5g/RAsMieUIA+/dW2SxNLfxLyD2aNhM/4V/sgw=; b=igbSdiR3JSPX5g
	a0211sX0gkmyjpv076K3HS8gIwjko7qNv9l2vEmr70Ua7qEa/KFEry3G5CPIaLxqfy4LS6Q9ocbi7
	KFRaRzsToDhAcOz9doeFBZBhCUsqNQMPNZXa/ToIvvii6WniWkiRuS0a1FdCAJBf5hGC20fFU7lvA
	jmS35LSeY7fysrg/uN61qjdcj0etCKolv4JI4fuGCHTjvHeEHy88nevMQmS/3dTMi2AgI3mSaAIIr
	L9BW1WatdsQj5bhG2U4MQK+iLXHYjglQtkw2STjKmvkCsCQKChaweofYztZRrZoyNzjDR/y7zOuJz
	28NsIUAGXRf6irqOinMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzgPm-00FJ8N-17;
	Sun, 05 Nov 2023 16:55:58 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzgPj-00FJ6u-1t
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Nov 2023 16:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1699203351; bh=eOQ3o+VKmQncWFPGxsnugYz9IoSdcHeasfArhQJpc8A=;
 b=DxSazXkmvBaYEXuEfUZTO2CrIiKkwVLyRvf+CutflUqddjZ4lu9V1QaDKwHxPC/KnpomVLB/z
 wP0RVGihxRnMmONsgqV7RLCUZFP1U/EyG4zUYMwM5teK2RpY4trsrGiRX7wwbH1KsJiZ/GHnotH
 JWTMsOeokFfQ9dt0Q/RPoHt32/zJciZjvwr3Q3UN6xL0TWgg+AlweSo2bi45hwk6SV/CQVWGl0E
 STWBOr6lOhYkdkyXL4Mu8dKb0VOhjfU6eKaWBNdqlktBK5jFo6ep3Smt0aEZnQWrdE5T/QMuc6h
 LF6bqgyHkpIzskFFblPBoYmMAXhSB3XBVMnzwpZVC40g==
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 06/11] media: rkvdec: Extract rkvdec_fill_decoded_pixfmt into helper
Date: Sun,  5 Nov 2023 16:55:05 +0000
Message-ID: <20231105165521.3592037-7-jonas@kwiboo.se>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231105165521.3592037-1-jonas@kwiboo.se>
References: <20231105165521.3592037-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6547c91742ad2f8d15246928
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231105_085555_664916_2F55E304 
X-CRM114-Status: UNSURE (   9.69  )
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

Extract call to v4l2_fill_pixfmt_mp() and ajusting of sizeimage into a
helper. Replace current code with a call to the new helper.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v4:
- Do not reset pix_mp->field in rkvdec_fill_decoded_pixfmt()

v3:
- No changes

 drivers/staging/media/rkvdec/rkvdec.c | 27 ++++++++++++++-------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 84a41792cb4b..0570c790ad08 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -27,6 +27,16 @@
 #include "rkvdec.h"
 #include "rkvdec-regs.h"
 
+static void rkvdec_fill_decoded_pixfmt(struct rkvdec_ctx *ctx,
+				       struct v4l2_pix_format_mplane *pix_mp)
+{
+	v4l2_fill_pixfmt_mp(pix_mp, pix_mp->pixelformat,
+			    pix_mp->width, pix_mp->height);
+	pix_mp->plane_fmt[0].sizeimage += 128 *
+		DIV_ROUND_UP(pix_mp->width, 16) *
+		DIV_ROUND_UP(pix_mp->height, 16);
+}
+
 static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 {
 	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
@@ -192,13 +202,9 @@ static void rkvdec_reset_decoded_fmt(struct rkvdec_ctx *ctx)
 
 	rkvdec_reset_fmt(ctx, f, ctx->coded_fmt_desc->decoded_fmts[0]);
 	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
-	v4l2_fill_pixfmt_mp(&f->fmt.pix_mp,
-			    ctx->coded_fmt_desc->decoded_fmts[0],
-			    ctx->coded_fmt.fmt.pix_mp.width,
-			    ctx->coded_fmt.fmt.pix_mp.height);
-	f->fmt.pix_mp.plane_fmt[0].sizeimage += 128 *
-		DIV_ROUND_UP(f->fmt.pix_mp.width, 16) *
-		DIV_ROUND_UP(f->fmt.pix_mp.height, 16);
+	f->fmt.pix_mp.width = ctx->coded_fmt.fmt.pix_mp.width;
+	f->fmt.pix_mp.height = ctx->coded_fmt.fmt.pix_mp.height;
+	rkvdec_fill_decoded_pixfmt(ctx, &f->fmt.pix_mp);
 }
 
 static int rkvdec_enum_framesizes(struct file *file, void *priv,
@@ -264,12 +270,7 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
 				       &pix_mp->height,
 				       &coded_desc->frmsize);
 
-	v4l2_fill_pixfmt_mp(pix_mp, pix_mp->pixelformat,
-			    pix_mp->width, pix_mp->height);
-	pix_mp->plane_fmt[0].sizeimage +=
-		128 *
-		DIV_ROUND_UP(pix_mp->width, 16) *
-		DIV_ROUND_UP(pix_mp->height, 16);
+	rkvdec_fill_decoded_pixfmt(ctx, pix_mp);
 	pix_mp->field = V4L2_FIELD_NONE;
 
 	return 0;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
