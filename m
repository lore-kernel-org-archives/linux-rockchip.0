Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336D1606A326
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 23:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1pCLutid;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lkpbX2s0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/LLV1ZDOI1pouVgnIVOX3JbNHiZEtD8epGPLuV/Efp0=; b=1pCLutidYI5THBM2cBSR18SpHD
	xEtd4HGJXzgLyITo2qmYxFrUN6CJ1SG4nQkYTwOqUt/lFYj/WO03h749xkB5EPoZJhteKLht5uEQU
	1rRoBOS3zHOt99yMxBdP+3zgkS+xh4j5PJgB5UaHIxV2j/ltqZhsZvj4jXErELVlT5BqSUmfCRBge
	JJVMCoPy0+0Cf1s/OOLQW/3VxFup9PNoIdBz+Ve/p+TfuNSnwFl0AaZlfNNVYy34WXcbxqC731D7k
	JYCnXvC4Ue3yamg3zVKWXf0hiibQcRLBd718lSkZ+VvvEG3Xcn2zgIYomypY7X98lAr1GOKfv983E
	/zZoP8qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP6o3-0000000ArWb-2yxU;
	Thu, 05 Nov 2026 23:23:43 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP6o0-0000000ArTB-2MSl
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 23:23:41 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-3b0b8b5d28cso11836a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 15:23:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793921020; x=1794525820; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0qFTCorgq4hyV4vVhWj25+4lzr8cjg0FBjQeaIcgYqM=;
        b=lkpbX2s0EVIflZ9Tvh8njs/SHvIwA46Aiu0ZDBk+WYhjz99Lw/WxZh/4zhfCHRjZSl
         epFmnPGyvBm2eoHvUkq9yAvH0ymqgmsYy733BtfBc/dNgyBNsUOR+uVPplXadC3tiWSD
         25zSKQtBx+Uv/EmgreOvR44WN7GoySinRjKKZhHi9Xo6KImkO2LGJH6gRgVYenoPlgey
         cjre1dyuspUGd97UQwHVeGJ0ZrK1qTCpJOG50F9v8uc8+ihmCy/skge1iIw6xm1ATSO4
         9o2PRivCyeeQr2kXmaiY+OB0jx/RZKFGAsJ/TPK05idxbKMz0Eo2ZuTWtzgD3pa+ckys
         ktqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793921020; x=1794525820;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=0qFTCorgq4hyV4vVhWj25+4lzr8cjg0FBjQeaIcgYqM=;
        b=p5itH4C/0yuGd1NSH1lR8FdlP08gpJAv6k3ebYNZD1MHWXjAysCPefVjilwL5dwVth
         p76U1gSkfKyzaJROZaU3igjoMUfTwDeNpruEXEfwCogGZtS1B6Y6vgJL0KgDL6YsZWd/
         DCSjwjkWCizcoFON+hOmn44zYXm5sNrFNZk8WJMAgy0uTMnpyGR52F6ptVSvwzF1Cqgx
         Vca+Eknk0DiNQzZjVq/weNh52DXKNw4ESJOqHBW0ZO69t8p5QoSipQzFCLYAoOTrlcKb
         9vjlwH1sEDZyNCmMcXJVYpHkrV2J0LHXqbcXvyc5ruIUt0uEBeNhyRXqKZpO0A2ApdlN
         N4bg==
X-Forwarded-Encrypted: i=1; AKwUvBxwYnlPLnMhPGxLmzyxty4xddJDvcHKiAVjchbWdYEfbKG4ACHA14F+g4wcE8oQ7Q4Do5RD5Y1YDO+1P64uBQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8zava2wiSd6uGAnFirOIuCUlZWco4cx5NQNg11w+GD9Jnfl4Xe
	xCuc3CMrbyS/0kRo/2gTVGM5oC9q+a+9UsPvvzFeXJVjCfW0niaJA/yt
X-Gm-Gg: AYBFou3+fobqW5c2SlyRgfOE6Gjxqj0M4eYwQNpl0HOd3A5D0uXS5Ub9w64dxXOyXcM
	vcvcoQqVt8bDkGhXO9B1QYMDBHepaM8QCf2G66Y3WK7d5rSKmKDPV/kMbc14M2XN1bRQEk3+TEi
	dUtikIBUk77zfdyezmxLZ5foIKN5rjGvqj8cUKcWpYPboGKulCSlnTLkJx/gwWQ9EQ5kXN6Hx1b
	PRP001ztYgd5kld5JCjC94cd9pZo4lLufGNvEtnuqF6g7iaJl5gzEwl+I+g3neh+b/NsUjXwpsi
	QnplsuZeHbTkCcVFzs9ams3Sqjr+EIplmlRKxbW6Q072fM4zXRurG63EDmqlRLONS06EZNmnfGE
	WY6RjdaLMas4NpOyXCQLo0nDrSZHVHinp3ojF+ejo+cxypKfJW65sxXXcMueevalWdHwmE/FbGi
	HlqdsWLCxbfqqXztL6iETOC7LhD/9H4F3nEBi3wimAU8LqsRA99aJRYhrebfbmPXhw+Sk2gx9Vt
	TcQ4GW6XMDUSZFPR2e3rlT6dDsgc+JLqM/7APElQDxEKvFgVsiRHPa1WqBPCu4fnMnvH8pquTk5
	xb5tVRC/Mq/lb8eWx5u/GpLIe0nYb/1yZy826PNONpPpl7zSBwrdIEpn1xfr3A==
X-Received: by 2002:a17:90b:1e4f:b0:3ac:9c37:9422 with SMTP id 98e67ed59e1d1-3b0db62690dmr1018448a91.2.1793921019958;
        Thu, 05 Nov 2026 15:23:39 -0800 (PST)
Received: from FAIZEL-KB.. ([2001:569:5b64:e100:f564:53e0:ae9d:9600])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3b0b323cd3csm5317297a91.3.2026.11.05.15.23.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 15:23:39 -0800 (PST)
From: Faizel K B <faizel.kb@gmail.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>,
	Michael Riesch <michael.riesch@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	libcamera-devel@lists.libcamera.org,
	Robert Mader <robert.mader@collabora.com>,
	Faizel K B <faizel.kb@gmail.com>
Subject: [PATCH 2/2] media: rockchip: rkcif: Honour the requested bytesperline on MIPI
Date: Thu,  5 Nov 2026 16:23:10 -0700
Message-ID: <20261105232310.385463-3-faizel.kb@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261105232310.385463-1-faizel.kb@gmail.com>
References: <20261105232310.385463-1-faizel.kb@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_152340_630030_3BE1844C 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The MIPI DMA uses bytesperline as the line stride, which must be a
multiple of 8 bytes, but v4l2_fill_pixfmt_mp() doesn't align it.
Any larger bytesperline requested by userspace is also replaced with
the minimum.

Align bytesperline to 8 bytes and honour a larger requested value, up
to the limit of the line width register. This allows DMA-BUF importers
that need a larger stride alignment to use the buffers directly.

Signed-off-by: Faizel K B <faizel.kb@gmail.com>
---
 .../platform/rockchip/rkcif/rkcif-stream.c    | 22 ++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
index f2a24832a8cf..e50f20e40f7a 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
@@ -23,6 +23,7 @@
 #define CIF_MIN_HEIGHT	 64
 #define CIF_MAX_WIDTH	 8192
 #define CIF_MAX_HEIGHT	 8192
+#define CIF_MAX_BYTESPERLINE 0xffff8 /* VLW: 20 bits, 8-byte aligned */
 
 static inline struct rkcif_buffer *to_rkcif_buffer(struct vb2_v4l2_buffer *vb)
 {
@@ -334,20 +335,39 @@ static const struct vb2_ops rkcif_stream_vb2_ops = {
 	.stop_streaming = rkcif_stream_stop_streaming,
 };
 
+static void rkcif_stream_set_bytesperline(struct v4l2_pix_format_mplane *pix,
+					  u32 req_bpl)
+{
+	u32 min_bpl = ALIGN(pix->plane_fmt[0].bytesperline, 8);
+	u32 max_bpl = min_t(u32, CIF_MAX_BYTESPERLINE,
+			    ALIGN_DOWN(U32_MAX / pix->height, 8));
+	u32 bpl = min_bpl;
+
+	if (req_bpl > min_bpl && req_bpl <= max_bpl)
+		bpl = ALIGN(req_bpl, 8);
+
+	pix->plane_fmt[0].bytesperline = bpl;
+	pix->plane_fmt[0].sizeimage = bpl * pix->height;
+}
+
 static int rkcif_stream_fill_format(struct rkcif_stream *stream,
 				    struct v4l2_pix_format_mplane *pix)
 {
 	const struct rkcif_output_fmt *fmt;
-	u32 height, width;
+	u32 height, width, req_bpl;
 	int ret;
 
 	fmt = rkcif_stream_find_output_fmt(stream, true, pix->pixelformat);
 	height = clamp_t(u32, pix->height, CIF_MIN_HEIGHT, CIF_MAX_HEIGHT);
 	width = clamp_t(u32, pix->width, CIF_MIN_WIDTH, CIF_MAX_WIDTH);
+	req_bpl = pix->plane_fmt[0].bytesperline;
 	ret = v4l2_fill_pixfmt_mp(pix, fmt->fourcc, width, height);
 	if (ret)
 		return ret;
 
+	if (stream->interface->type == RKCIF_IF_MIPI)
+		rkcif_stream_set_bytesperline(pix, req_bpl);
+
 	pix->field = V4L2_FIELD_NONE;
 
 	return 0;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
