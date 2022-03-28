Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04130C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 20:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wXvQqQrAC9id8fZGH7O67EHYFBID45QbLWPreOuEc0I=; b=wdNpUMfmdZSRDz
	adKZF4+Zl3Xq1TmDXeUe1q83b+YP/dPmQ8PVpBIkhfEjswPe0utrYyquvZLN+shnGrRfcvq9AUlmo
	1A099CECinfV673XOo3u42WADJGkRRGb1RVSmh1MFAlrBDlatY+M0h/OxhmsHQvBVuNyJzRPnrEEy
	P9NigpXeg+bPMJO5eO8ODavY7s2H3nPYfYlRdvETj2RIbAwyOE7jN+KHVwYRs16s3sYMsgGAHl/XL
	t7UWu/45mSFGgP4zlhIuK5A3Kr+w3lgROxE+JnJB4mvY6rvumqgV4BSjXj7kpcc16lmxqq3JzpjRR
	TurvAVT0XUvWufdbZLFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYvXE-009zMM-77; Mon, 28 Mar 2022 20:00:16 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYvXA-009zGZ-5P
 for linux-rockchip@lists.infradead.org; Mon, 28 Mar 2022 20:00:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 062B51F43877
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648497611;
 bh=Lmej6mvr+yQMSxRRbj/l26Dv68B/G/B0rXWK3YrsMjQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NV+GhHpYnjMTzN1hs6yJQSwtbapQ3u3ipCkqaruCnWaRBKOX6wpA+9sdVbOnVVA7W
 XbykfN1mo93fX2n4O1yO0dGBLJG75otXwHXqq+oJklmAippFbWtHQh5QiaESJKStC6
 NRakJe2iit1+dSJUvmOe1nuYUV2BzFF9WDQ32TJtpojG0Zi+reYJjLL6k2wirrtxfY
 ZN2Fmcmr+htAVoXAy+x6k+fscpoSJFZAIWnocQWnBw9fDX/97Bf4nI1S1UUa8JSs8B
 5wBi3ZLfwJV6UgwnRChOoTtH8xIYLW/8j6kjEhYAVUeo67bClTHK10JcPbsigf5w5F
 RBWgqWq9CTqlQ==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 15/24] media: rkvdec: Enable capture buffer holding for H264
Date: Mon, 28 Mar 2022 15:59:27 -0400
Message-Id: <20220328195936.82552-16-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_130012_382343_001A9551 
X-CRM114-Status: GOOD (  11.96  )
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

In order to support interlaced video decoding, the driver must
allow holding the capture buffer so that the second field can
be decoded into it.

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 4 ++++
 drivers/staging/media/rkvdec/rkvdec.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 2df8cf4883e2..05824f1997f7 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -138,6 +138,7 @@ static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
 		.ops = &rkvdec_h264_fmt_ops,
 		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_vp9_decoded_fmts),
 		.decoded_fmts = rkvdec_h264_vp9_decoded_fmts,
+		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_VP9_FRAME,
@@ -394,6 +395,9 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
 	cap_fmt->fmt.pix_mp.ycbcr_enc = f->fmt.pix_mp.ycbcr_enc;
 	cap_fmt->fmt.pix_mp.quantization = f->fmt.pix_mp.quantization;
 
+	/* Enable format specific queue feature */
+	vq->subsystem_flags |= desc->subsystem_flags;
+
 	return 0;
 }
 
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index 2f4ea1786b93..e37f1a015fa0 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -81,6 +81,7 @@ struct rkvdec_coded_fmt_desc {
 	const struct rkvdec_coded_fmt_ops *ops;
 	unsigned int num_decoded_fmts;
 	const u32 *decoded_fmts;
+	u32 subsystem_flags;
 };
 
 struct rkvdec_dev {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
