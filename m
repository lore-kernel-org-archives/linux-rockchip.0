Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0640AECE587
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 19:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYXs7W8EAa9qYQh+KKAJVeZjudD/oTS5cLux4uz4L8U=; b=2niTnHMMkwwHZY
	ao5pkcVeKuaRCJ0QVS4Ky1uLupm7CQ00LKOTU2ZiO1QlJkBP+0/oWFywlt1LS7Ek4+UHtWG98tLgj
	cA9E9/hbvsrWfPJM5rnrknSAsKiANAE+ErQt/fQbYkvpWUoz6nFzuJpqqQmfH/VQd36fIYDqp/iYF
	I7rKx/qv1yFdfpIXeKQt88/iAoQnkfcOhSv+NaSVwDoDAukkJfyx/DNmBQpQv7kVQmVA6PVJGPB/W
	/w3PcTd7Y/52XGesh5DP2FCyEWYGoTNXvMpfhMx7EzQz8vyYQltS1C0t3hdVZT/DRX6hHVXc5lWea
	KPulYreUuxfVo65opeEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snk1h-0000000355L-3Ayc;
	Mon, 09 Sep 2024 19:26:17 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snk1f-0000000353i-2rjf
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Sep 2024 19:26:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1725909965; bh=1XPfZdWEVhjIGMhqhg2f2J8FpThlVEHreHUtrk5OF2U=;
 b=bUhtETlvsGC67tmnXJtHeE4ddtpgiSNtes3CsW4ftezW3JJYGtVOag1WN2apDW39E1vhp/8sQ
 2Ah0s4iVnhAGfgspxSmkMmB4Vsw6h+nve3H/FL6yTSHqLtqlB/RTU82mdEwa2NXCjFtH8uIEvJm
 YbiS5uIv+ZT3gR10HJcUs2TDk8/O/H4lu6J+WcmBa5PEK7jSDxmMijNyMWeW7UGxJSnb1X4AJ5g
 8GBdr4zS+/NFHQL1VmeP/nb1/mfkCGgpah0w1kHV3EWf1LHmsYMrqJk+oWZ5Ow0E4tX7GntKfH3
 vAruK1x1YIywfIZFrlGXzhSujsSMIW7y9SQwmFR4L4SQ==
From: Jonas Karlman <jonas@kwiboo.se>
To: Sebastian Fricke <sebastian.fricke@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v6 06/11] media: rkvdec: Move rkvdec_reset_decoded_fmt helper
Date: Mon,  9 Sep 2024 19:25:04 +0000
Message-ID: <20240909192522.1076704-7-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240909192522.1076704-1-jonas@kwiboo.se>
References: <20240909192522.1076704-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 66df4bccc680cb8b7d2dc1ed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_122615_881522_D9202E75 
X-CRM114-Status: UNSURE (   9.67  )
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

Move rkvdec_reset_decoded_fmt() and the called rkvdec_reset_fmt() helper
functions in preparation for adding a new caller in an upcoming patch.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Christopher Obbard <chris.obbard@collabora.com>
---
v6:
- No change

v5:
- Collect r-b and t-b tags

v4:
- No change

v3:
- New patch
---
 drivers/staging/media/rkvdec/rkvdec.c | 46 +++++++++++++--------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index d1087519d218..7e59db3fc24d 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -37,6 +37,29 @@ static void rkvdec_fill_decoded_pixfmt(struct rkvdec_ctx *ctx,
 		DIV_ROUND_UP(pix_mp->height, 16);
 }
 
+static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f,
+			     u32 fourcc)
+{
+	memset(f, 0, sizeof(*f));
+	f->fmt.pix_mp.pixelformat = fourcc;
+	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
+	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709;
+	f->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
+	f->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
+	f->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
+}
+
+static void rkvdec_reset_decoded_fmt(struct rkvdec_ctx *ctx)
+{
+	struct v4l2_format *f = &ctx->decoded_fmt;
+
+	rkvdec_reset_fmt(ctx, f, ctx->coded_fmt_desc->decoded_fmts[0]);
+	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
+	f->fmt.pix_mp.width = ctx->coded_fmt.fmt.pix_mp.width;
+	f->fmt.pix_mp.height = ctx->coded_fmt.fmt.pix_mp.height;
+	rkvdec_fill_decoded_pixfmt(ctx, &f->fmt.pix_mp);
+}
+
 static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 {
 	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
@@ -169,18 +192,6 @@ rkvdec_find_coded_fmt_desc(u32 fourcc)
 	return NULL;
 }
 
-static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f,
-			     u32 fourcc)
-{
-	memset(f, 0, sizeof(*f));
-	f->fmt.pix_mp.pixelformat = fourcc;
-	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
-	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709;
-	f->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
-	f->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
-	f->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
-}
-
 static void rkvdec_reset_coded_fmt(struct rkvdec_ctx *ctx)
 {
 	struct v4l2_format *f = &ctx->coded_fmt;
@@ -196,17 +207,6 @@ static void rkvdec_reset_coded_fmt(struct rkvdec_ctx *ctx)
 		ctx->coded_fmt_desc->ops->adjust_fmt(ctx, f);
 }
 
-static void rkvdec_reset_decoded_fmt(struct rkvdec_ctx *ctx)
-{
-	struct v4l2_format *f = &ctx->decoded_fmt;
-
-	rkvdec_reset_fmt(ctx, f, ctx->coded_fmt_desc->decoded_fmts[0]);
-	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
-	f->fmt.pix_mp.width = ctx->coded_fmt.fmt.pix_mp.width;
-	f->fmt.pix_mp.height = ctx->coded_fmt.fmt.pix_mp.height;
-	rkvdec_fill_decoded_pixfmt(ctx, &f->fmt.pix_mp);
-}
-
 static int rkvdec_enum_framesizes(struct file *file, void *priv,
 				  struct v4l2_frmsizeenum *fsize)
 {
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
