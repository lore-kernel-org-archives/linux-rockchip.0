Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9B8606A31F
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 08:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MLYoXduF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=IozfyvXV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hAjHI90nkE4iy8QgXbBsR9QE9cpF0/V7L0x4UjtlJnI=; b=MLYoXduFG1tT2qOo3pz5dt96NY
	M38QSTein1VKT3bF8F+dmbKYSV4jodGDo3zEWzIQgtZ2skbxBKb9OvBtrPhXEFK7wEGoA4DuHLEh/
	JdJzN9TP25WmzSvN3LUsBI1+i6gII3QQjaqE6XBJsO+X/iDPXk6kdb4mRPl0x4roQTz7s8TXAq9l/
	rM6yy+y0e9iarQRL7lVgUNnvhdwHzoGqYuBOyo7Iz5PaPBIykJkLNKSSo1ahPD1P7gGJCs5nAj3cM
	L/CTohk1YzYj1JdqKBa4GjcR4VsXme9zXkGmGdt6wzkTle+z7Sen7vbg1kN1zH5PPs8nLjBgVU6sH
	tknz8Eyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVm9-0000000HFVR-3GCt;
	Sun, 15 Nov 2026 08:39:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVm8-0000000HFUg-1Z26
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 08:39:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2618744D79;
	Sun, 15 Nov 2026 08:39:48 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794731988;
	b=b5tDf2iDAM4oQae7RM4UGpLb6ZFUdygCowIpMLaVsuvhUTUSNTrzT0eDPZGpNcmezfOq
	 mz8LTBC8F5rQBC9BpkGg0VZH7GCzEs8OWXwD9Ou4bZrgX7Y2F8KoWIShD4DLlvSeOugL0
	 +k/8VCRiW/ndZgULA/ggLXHPOaIxZc+xIPSDyRTPyKwGFvAe1UYyPYEUxR6xcz8EHDlmQ
	 QUTVVipXXNUplnUoWcDZyffWzEqs+cTyA0nn/FBkNcZ2RT1+nJviGisjnaoM3wfq7o9Hk
	 nLbViaRdO35dSkb5SdK4bebULxjKUOiNObYni0lCbghCJkaLnNALToj8xn2iRiljl7w==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794731988;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=JY/FtvnbeWaI1QKi92CxrV6qsuJlktrDi2pzojSwSOY=;
	b=iLbqWVOksLcHjf5RzMhOuMtoKEr5zevLaXQnYIFJNPxa/P1s2XXyH7/OoW7lE/J88qVN
	 fP3mlP4KQVL33TUMBzBNAFGRL9Qz56rbE0s71iRqCUSeHmU4WBPkLW3q83CnH73zEMD7c
	 fuk2xyfFBULIQo3CoY0GGQrZ3RzboDCYYpT+bHsUuVF9geoNmKBZ08dzPDiiSsVXEN/Ad
	 nC9U6NEAmDQsZUlZlJ40/VLzqUwHTcPsE5iD+t2DWeDQg4WR+37L9/yjuv26o7ciyqFyO
	 VOuQg6j5Zcz8VY4I9F0Im3Q2x5dd/b5sk6qz2KqU3FANeH620AALpQP5LAc6r1YvL3w==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 1BC541F000C7;
	Sun, 15 Nov 2026 08:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794731988;
	bh=JY/FtvnbeWaI1QKi92CxrV6qsuJlktrDi2pzojSwSOY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=IozfyvXVZCZSXCJ9zYEr1W0ocKGn5zGW+qrvvX13bkk+F70c+KejIS1FOJLVzBM7q
	 4rJDQN129zXH4gPrpSgiZIQC551xyqpUrfxSaxxMTRYZjxopSHZey9Hx5IXS+isPl7
	 InFcHFCYBryACuiGwtGXMAzck0eODqOelvxPMHiITfUPNUiY8tKd2Z7F/F1gHdicFL
	 xszq0OgH5BhLvR+oF2DWSVZhkLp7bTz2VST7thEEDWZfVqc5q8eN5Gd58XNt5kja7o
	 N/qvB6zZg81qkC+7tNrM4qMsGjhWEf5WSbQfWtSxRVW7UKZktdxFzrYnZodyB4590S
	 Xf2+7zifBGEbA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 98E7949FF6;
	Sun, 15 Nov 2026 08:39:46 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Sun, 15 Nov 2026 08:39:48 +0000
Subject: [PATCH v2 3/4] media: verisilicon: Keep the CAPTURE format at the
 stream's bit depth
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261115-hantro-fixes-v2-3-bfecfb07a3e7@gmail.com>
References: <20261115-hantro-fixes-v2-0-bfecfb07a3e7@gmail.com>
In-Reply-To: <20261115-hantro-fixes-v2-0-bfecfb07a3e7@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 Hans Verkuil <hverkuil@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Arun Iyengar <aiyengar1990@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794731985; l=1385;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=yJzxOk5vcQF9E3Uzonthp07livyt1mzW4G+NIv6HiPY=;
 b=mPY8kAs5S/pR9Ol5PTZS6E+Nb6sk3g4K5WVCpvAajwvWIsAYY+/t/nbHQZPQNxVGxO58fjQ9v
 o66M/JkxPwkA8ENXjWa5bMGLE2mJVVuoeAkuRnQW8K+ajtZGBS6XFcD
X-Developer-Key: i=aiyengar1990@gmail.com; a=ed25519;
 pk=zXpRgUTrhaFe6jLyPqbBy3ccfkj04w0g2690Wv3mg+0=
X-Endpoint-Received: by B4 Relay for aiyengar1990@gmail.com/20261110 with
 auth_id=1480
X-Original-From: Arun Iyengar <aiyengar1990@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: aiyengar1990@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Arun Iyengar <aiyengar1990@gmail.com>

S_FMT and TRY_FMT on the decoder CAPTURE queue accept formats ENUM_FMT
hides: an 8-bit format for a 10-bit stream, which the decoder overruns,
or a native format while the post-processor is needed. Replace such a
format with the stream's default one.

Fixes: 8d03c2ab881b ("media: hantro: Support format filtering by depth")
Fixes: 80c7373a456e ("media: verisilicon: Conditionally ignore native formats")
Cc: stable@vger.kernel.org
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 5939fffc350d..450775664742 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -342,6 +342,15 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 		pix_mp->pixelformat = fmt->fourcc;
 	}
 
+	if (!coded && !ctx->is_encoder &&
+	    (!hantro_check_depth_match(fmt, ctx->bit_depth) ||
+	     (ctx->need_postproc && !fmt->postprocessed))) {
+		fmt = hantro_get_default_fmt(ctx, false, ctx->bit_depth, ctx->need_postproc);
+		if (!fmt)
+			return -EINVAL;
+		pix_mp->pixelformat = fmt->fourcc;
+	}
+
 	if (coded) {
 		pix_mp->num_planes = 1;
 		vpu_fmt = fmt;

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
