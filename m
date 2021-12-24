Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78AA4C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Dec 2021 08:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Of6L+8kXpoXGN3aptDUg6l11pDXdOvLdWthaNbkYWNw=; b=xQBCvopXcLOtRW
	cdZ/7SVLTsnLXQDjQbl/zd42sPELUZW8/PoLv71nPfC2clSybJozYq6RcuJE/sSWi1Ij2rM89/HIs
	8pxBM82CVEKqVUUcuNcMIcJpT1Unwr+J8kz3W7VBudrFSBBnnZM+1moDheweFBGboO4kO2qWfH39F
	3mcPIXNcWLsTGkrQrQ9SSKeymT/K+RkSPeBaWZLBdw0u7A3Wg3ZEcIsJir7Mr5tuDuWr67a1ouAh/
	dCFcprgkyHQ3yD+5PHYw1i7Bs4L5yZWzh5qwaAS9J86oEl1C8UAJYaqAYfIWtGmMo7ej/IOG0b+G1
	OVhjwVWQhlWC6YYEBRRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0gAo-00Dwk2-K7; Fri, 24 Dec 2021 08:43:34 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0gAl-00Dwfu-NE
 for linux-rockchip@lists.infradead.org; Fri, 24 Dec 2021 08:43:33 +0000
Received: by mail-pj1-x1031.google.com with SMTP id
 rj2-20020a17090b3e8200b001b1944bad25so7860271pjb.5
 for <linux-rockchip@lists.infradead.org>; Fri, 24 Dec 2021 00:43:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h+Fh/qAuMn5CdjDLnYjyrqGITfKBSqt/cZsobAY6JEc=;
 b=CA6zjrhwXkkgRb/m1JYwPl/QSP10VHx89RbzeBKbGYf92y4v78Co10GSZ2WJWclqOX
 UUhBgFdbdJslb2b0q9ca4mimZLvlgTWBgnvkLiUJD8VFG7cecMWukGKCW8j+TwwpUb3E
 S8OpRmnQAdBzzqcdIzmawhHe0Eg6v1C94dG68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h+Fh/qAuMn5CdjDLnYjyrqGITfKBSqt/cZsobAY6JEc=;
 b=NLa6NSbpYTJJH5BDxwC46Pcm+3A1EJ8nrrzqIkub5pXShXPjLXHDJOdBnqKEx+/CMu
 mjnDSEqbbmzzaq7gwtyFI3dY5AmqoUg8OxDayN8XvpgS56zX+aQHlvXwDL1ItHcvveka
 0EUFknT11vCgQ8hx3wkb8hwKq+jyN/Lk2dhmVGU6We1wLQiapI2D2UbAGLtPXnhPgezE
 ltY5VUgoYaZJqYRjCQ3j7MBRItXGpVUL6Q8CKoDTFC6WuedkaLQ1wynWv8kWRvYsHHjv
 YeCArSW6Z+ve7cVbSgG3p/IPidCukzJzVQXG2Wx4GqCUDg9zcodu5BUJ9opRU8beosde
 y6tw==
X-Gm-Message-State: AOAM531MgraMQy2WA3NFwmY74HdB9nhAfaOhW7GdG5dKmjdaURcmvTCd
 70toSOH2EYhSAejt32CTdTjYow==
X-Google-Smtp-Source: ABdhPJy2kPiDpVLrzhjIwpHjW68Llg7zXf8Fj6vB99LCVDNqz4QNyABP30EHnthg9er6mH8NjVRd6Q==
X-Received: by 2002:a17:902:7785:b0:149:5945:40ac with SMTP id
 o5-20020a170902778500b00149594540acmr3576627pll.35.1640335411024; 
 Fri, 24 Dec 2021 00:43:31 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:fd40:cbd0:c42a:3c26])
 by smtp.gmail.com with ESMTPSA id p13sm436369pgl.23.2021.12.24.00.43.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Dec 2021 00:43:30 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Tomasz Figa <tfiga@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH RFT 6/7] media: hantro: Implement V4L2_CID_JPEG_ACTIVE_MARKER
 control
Date: Fri, 24 Dec 2021 16:42:47 +0800
Message-Id: <20211224084248.3070568-7-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.448.ga2b2bfdf31-goog
In-Reply-To: <20211224084248.3070568-1-wenst@chromium.org>
References: <20211224084248.3070568-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211224_004331_783099_175231E5 
X-CRM114-Status: GOOD (  13.01  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The Hantro JPEG encoder driver adds various segments to the JPEG header.
While it would be quite complicated to make these segments selectable
to userspace, given that the driver has to fill in various fields in
these segments, and also take care of alignment, it would be nice if
the driver could signal to userspace what segments are included.

Implement the V4L2_CID_JPEG_ACTIVE_MARKER control, and make it always
return the set of segments that the driver adds.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/staging/media/hantro/hantro_drv.c | 31 +++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 6a51f39dde56..33232479dcb7 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -280,6 +280,26 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 	return 0;
 }
 
+#define HANTRO_JPEG_ACTIVE_MARKERS	(V4L2_JPEG_ACTIVE_MARKER_APP0 | \
+					 V4L2_JPEG_ACTIVE_MARKER_COM | \
+					 V4L2_JPEG_ACTIVE_MARKER_DQT | \
+					 V4L2_JPEG_ACTIVE_MARKER_DHT)
+
+static int hantro_jpeg_try_ctrl(struct v4l2_ctrl *ctrl)
+{
+	switch (ctrl->id) {
+	case V4L2_CID_JPEG_COMPRESSION_QUALITY:
+		break;
+	case V4L2_CID_JPEG_ACTIVE_MARKER:
+		ctrl->val = HANTRO_JPEG_ACTIVE_MARKERS;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int hantro_jpeg_s_ctrl(struct v4l2_ctrl *ctrl)
 {
 	struct hantro_ctx *ctx;
@@ -293,6 +313,8 @@ static int hantro_jpeg_s_ctrl(struct v4l2_ctrl *ctrl)
 	case V4L2_CID_JPEG_COMPRESSION_QUALITY:
 		ctx->jpeg_quality = ctrl->val;
 		break;
+	case V4L2_CID_JPEG_ACTIVE_MARKER:
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -325,6 +347,7 @@ static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
 };
 
 static const struct v4l2_ctrl_ops hantro_jpeg_ctrl_ops = {
+	.try_ctrl = hantro_jpeg_try_ctrl,
 	.s_ctrl = hantro_jpeg_s_ctrl,
 };
 
@@ -343,6 +366,14 @@ static const struct hantro_ctrl controls[] = {
 			.def = 50,
 			.ops = &hantro_jpeg_ctrl_ops,
 		},
+	}, {
+		.codec = HANTRO_JPEG_ENCODER,
+		.cfg = {
+			.id = V4L2_CID_JPEG_ACTIVE_MARKER,
+			.max = HANTRO_JPEG_ACTIVE_MARKERS,
+			.def = HANTRO_JPEG_ACTIVE_MARKERS,
+			.ops = &hantro_jpeg_ctrl_ops,
+		},
 	}, {
 		.codec = HANTRO_MPEG2_DECODER,
 		.cfg = {
-- 
2.34.1.448.ga2b2bfdf31-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
