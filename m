Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2370EC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 07:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lYmQoYjiYPTogScUo6zQiRIhdw2jmqlkJmrW0IkmWpU=; b=p8hzkCR97gGtiOaYB6p7bzoJEg
	woL+3Zu1oIKo1Ovg514cmwHH7EjaoqKldoAZOt/EpSPmBAjUTuAzlfjm0DnoVkpq/5uNxm8mZaRtp
	EXW+utSgeeKqwUsi4CUtTEEr6KkmJAUQ0b6QGsZaOQPa2RDNA2pMxM3MoqWf+tVWWHtZXqBfhHzxb
	SX0blyoCmtSpZa9iXxX89KjPgXcfwKIeODd7VDAa2g2l2/xtlW7RZpNT1/WUY/+jdxAsF1HcGxqHw
	yYc1G5i5Nvl0kdGiwQBvX9I/mTc6beHXU8TEntWM7fvdroybBuFwtLKxLlexMChMvtW6JpPF0/vHZ
	rH99s1fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZSsG-00Ech8-0U; Wed, 30 Mar 2022 07:36:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZSsA-00EceO-1H
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 07:36:10 +0000
Received: from localhost (unknown [IPv6:2a02:3030:d:7e3f:91e1:4be5:4001:fd80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 71E2F1F4438B;
 Wed, 30 Mar 2022 08:36:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648625764;
 bh=UTGb39eNA/52bA/avUqa1vAIsS16AGDE3+w7kh3a6og=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QC4vZngr3Uf9QXAtUMWbst6zGquCSCpyytNiKEzxsZj3KX7YkpTaAlCupEzhztCPu
 gBJtGKKFaTKzt3tRoPoeRVPScGQU6tLJ3nNxXts+psMN6kB80q6gPkLi0cJ47e9Wux
 FoP6RuXDpcKGL6XkQNuVDQdjEiZC3Myw5SRjrwZBXc4IiO4iMFIB+5VVSpQZH9cFCH
 /O69NoNP4PL9lKjX9l5WRAA0dyC2KAbdhPyezJ3MGtESVdfvlM0FviZ5YEgKxgh2GP
 5GfogVIFouwXZUdf+uMedRxRRsUGa28HYlOLVEOnJr2+m4ftNFyRC8GNrKw+8plX2c
 zxWeWiR1hOXww==
Date: Wed, 30 Mar 2022 09:36:00 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 20/24] media: hantro: Enable HOLD_CAPTURE_BUF for H.264
Message-ID: <20220330073600.crbi5wqlp4rimx2a@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-21-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328195936.82552-21-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_003606_238338_8B3504BA 
X-CRM114-Status: GOOD (  17.76  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Nicolas,

On 28.03.2022 15:59, Nicolas Dufresne wrote:
>This is needed to optimizing field decoding. Each field will be

s/is needed to optimizing/is needed to optimize/

>decoded in the same capture buffer, so to make use of the queues

s/in the same/into the same/

>we need to be able to ask the driver to keep the capture buffer.

How about:
"""
During field decoding each field will be decoded into the same capture
buffer. Optimise this mode by asking the driver to hold the buffer until
all fields are written into it.
"""

>
>Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

>---
> drivers/staging/media/hantro/hantro_v4l2.c | 25 ++++++++++++++++++++++
> 1 file changed, 25 insertions(+)
>
>diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
>index 67148ba346f5..50d636678ff3 100644
>--- a/drivers/staging/media/hantro/hantro_v4l2.c
>+++ b/drivers/staging/media/hantro/hantro_v4l2.c
>@@ -409,6 +409,30 @@ hantro_update_requires_request(struct hantro_ctx *ctx, u32 fourcc)
> 	}
> }
>
>+static void
>+hantro_update_requires_hold_capture_buf(struct hantro_ctx *ctx, u32 fourcc)
>+{
>+	struct vb2_queue *vq;
>+
>+	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
>+			     V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
>+
>+	switch (fourcc) {
>+	case V4L2_PIX_FMT_JPEG:
>+	case V4L2_PIX_FMT_MPEG2_SLICE:
>+	case V4L2_PIX_FMT_VP8_FRAME:
>+	case V4L2_PIX_FMT_HEVC_SLICE:
>+	case V4L2_PIX_FMT_VP9_FRAME:
>+		vq->subsystem_flags &= ~(VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF);
>+		break;

Out of curiosity, why would it be bad for the other codecs to have
support for that feature activated? As this doesn't actually hold the
buffers but only makes sure that they could be held.

>+	case V4L2_PIX_FMT_H264_SLICE:
>+		vq->subsystem_flags |= VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;

I think it is worth it to highlight with a comment why only this one
receives support for holding the buffer. As it is quite confusing
without background info and just the code.

How about:
```
/*
  * During field decoding in H264, all fields are written into the
  * same capture buffer, thus we need to be able to hold the buffer
  * until all fields are written to it
  */
```

>+		break;
>+	default:

The only other decoding formats remaining are:
- V4L2_PIX_FMT_NV12_4L4
- V4L2_PIX_FMT_NV12

Both have codec mode HANTRO_MODE_NONE.

My thought is:
If we don't care for these two, the we might as well disable buffer holding
support for them as well. So, we could make this simplier
(but a bit less descriptive):

```
/*
  * During field decoding in H264, all fields are written into the
  * same capture buffer, thus we need to be able to hold the buffer
  * until all fields are written to it
  */
if (fourcc == V4L2_PIX_FMT_H264_SLICE)
     vq->subsystem_flags |= VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
else 
		vq->subsystem_flags &= ~(VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF);
```

Greetings,
Sebastian

>+		break;
>+	}
>+}
>+
> static int hantro_set_fmt_out(struct hantro_ctx *ctx,
> 			      struct v4l2_pix_format_mplane *pix_mp)
> {
>@@ -472,6 +496,7 @@ static int hantro_set_fmt_out(struct hantro_ctx *ctx,
> 	ctx->dst_fmt.quantization = pix_mp->quantization;
>
> 	hantro_update_requires_request(ctx, pix_mp->pixelformat);
>+	hantro_update_requires_hold_capture_buf(ctx, pix_mp->pixelformat);
>
> 	vpu_debug(0, "OUTPUT codec mode: %d\n", ctx->vpu_src_fmt->codec_mode);
> 	vpu_debug(0, "fmt - w: %d, h: %d\n",
>-- 
>2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
