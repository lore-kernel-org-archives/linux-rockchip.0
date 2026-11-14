Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9DD760A261F
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 00:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=i3Dy8GgF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=AkrayVJU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xRl/Xa0Q6eey5bl0yKuPJDoBDZdNJLCPDoTbg1+qBHU=; b=i3Dy8GgFpWdge93jfQygleN0Qs
	iIMdPvBfiCIm+z52bSAm7STFF8mB5YDEyUxDl6/AxnfuVZwugbifyoNV1SbYZZ64VqgdMZeaI4BKZ
	33YtvvthBRzBN22oFfA9dRUAuYw5ZhSCVsU07SDKJjJpE121s9As4GxP2g7OTkR10e0tmu+WxpxyB
	RtqSsrVgZMVBSZNvNTDQcowWqWMrQwpWq5WVDkkrdKhYDStI760aibUCs/+4mzPII+kAzUmWH++lT
	IFKrAEDshbpMnu1bjLIKoiy4IAqh81J/LacmPlMrU0fLCFMCp46+phnirzX00sCmR6Ji6Y+8p77QK
	17RrADBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS1PN-0000000EsH5-2mq2;
	Sat, 14 Nov 2026 00:14:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS1PM-0000000EsEh-1BHv
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 00:14:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E425644FF4;
	Sat, 14 Nov 2026 00:14:15 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794615255;
	b=N8/GDuWvezJuoFG1dTFBQ9d/BuoT5Rxkke86oucdqjBieXf0wlaMvmY4Bx6IeoOEvqgj
	 /aG70sGChyhVMnVphWkjglCn0UpHptbII5uel36bvX8g0RqcAZX0MJml7Fm58xYjyOiyp
	 3JwRNP+N4275rDwxIQYuGpih5h0+HyE8hzhBE+PlKOdxBlrBvQeQb3XWq+kRizif6gUQe
	 OJqGaSMzfUrovmt6Ic8mlie/oQxzV7gPxVnv0uodxhMHYy/u2So6ou0m5QmOBzkNUZkvZ
	 v6ZRdjYNuQ2qxlcIZJGBZ82DwYc4A+zJl5WNJ8MZfGMrA9Avx+ud0k0HTfte7Hgl04w==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794615255;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=YXWqWTsUvzu6GfTNAs76N9VFY+Z2orZHnwJxeJ8LOlE=;
	b=UJli94+zetiwthuvgbm/D2KZdDd4AKMji4Z4Cbe8uJntJTmNaZeWHR/WYshm18jtU0Ze
	 4djCjWWYgdsPmwuunXFMebHdIfXYr/GZbUzw0kb2k1bryeF3Svv+C41Xisf3t5tbdvpPa
	 oXfiSQuZ5UAuV+ETud54tiYARlsGY6TDRg0dDg+HcrFXB5n5A/AhSzNFYpGjonzBC5urm
	 RAaeTANX3S6XkivgDPhIWrDQWwqb3ugCHX3ZN5NmeEivdzaJxdNDWTkpce4L/JRVbaEZ9
	 +yOYe+ON7CTHOAqk+XUtmUQFmzh0Ci8R21KABYA6e0HmYO0XGiR5yNMupm2h7SKmbSA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 04DCA1F000C9;
	Sat, 14 Nov 2026 00:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794615255;
	bh=YXWqWTsUvzu6GfTNAs76N9VFY+Z2orZHnwJxeJ8LOlE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=AkrayVJUUEioWGqXReZaaN9DSSs9XCb2sIBGMD36JUI3kAXLqoFz8UBdZ6XW7qaYD
	 XqBLsQD8J4NjwSfgk/h6XLa6QbGFFmQ+WQr4dgTlfxGNK8MkNRWrbuzWiLjT7CeL2A
	 alodGjdvV8CrqBkRB7nkgLxHOK5Q5tJQnH+7xEQyalZUQO7p+nNclMPIhvlWom7rjc
	 20P8VQqZ+VTulS2VZdAyRpmKnM3yBAP/CeRRZ3vURAQb1qnPHUh4q2+xbBPq5rnrCD
	 29yPE1AcoWMWvtq559cKUmsINFLJ/wRhrLxscuGBetF8Pj0QxiNRRNFQOv5k/DXoaW
	 vJXNS6fU/JI6g==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 8A85549BBF;
	Sat, 14 Nov 2026 00:14:12 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Sat, 14 Nov 2026 00:14:13 +0000
Subject: [PATCH 2/4] media: verisilicon: Set need_postproc before resetting
 the CAPTURE format
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-hantro-fixes-v1-2-abb78264801e@gmail.com>
References: <20261114-hantro-fixes-v1-0-abb78264801e@gmail.com>
In-Reply-To: <20261114-hantro-fixes-v1-0-abb78264801e@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 Hans Verkuil <hverkuil@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Arun Iyengar <aiyengar1990@gmail.com>, 
 stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794615252; l=2134;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=K/OBfhFLZqelp4gN8EoRryPycBadFZf1ehuMruueJ3I=;
 b=K1Tm3Mg18Zf0xKACgdOObktcPQmZDw2LPUWDZZU4RmQjvmOo0nhAqHCKKwf2Cmh9SwV1NuYuw
 WHOKYE30lRXCA2c0N2BNt/yRi8N/w0JFlNf3RaOA43xllqFKr6SuasZ
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

hantro_reset_raw_fmt() stores need_postproc only after
hantro_set_fmt_cap(), so hantro_try_fmt() sizes the new format with the
old value. When an AV1 stream drops film grain, the post-processor goes
away but the CAPTURE format still lacks the motion vector area the
decoder then writes after the picture.

Set the bit depth and need_postproc first and restore them on error.
The next patch needs the bit depth set there too.

Found by Sashiko in its review of hantro-dec-size-check v1.

Fixes: 80c7373a456e ("media: verisilicon: Conditionally ignore native formats")
Cc: stable@vger.kernel.org
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 83af9fa1ce94..2baab4cf3bbf 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -449,6 +449,8 @@ hantro_reset_raw_fmt(struct hantro_ctx *ctx, int bit_depth, bool need_postproc)
 {
 	const struct hantro_fmt *raw_vpu_fmt;
 	struct v4l2_pix_format_mplane raw_fmt, *encoded_fmt;
+	bool old_need_postproc = ctx->need_postproc;
+	int old_bit_depth = ctx->bit_depth;
 	int ret;
 
 	raw_vpu_fmt = hantro_get_default_fmt(ctx, false, bit_depth, need_postproc);
@@ -465,14 +467,18 @@ hantro_reset_raw_fmt(struct hantro_ctx *ctx, int bit_depth, bool need_postproc)
 	hantro_reset_fmt(&raw_fmt, raw_vpu_fmt);
 	raw_fmt.width = encoded_fmt->width;
 	raw_fmt.height = encoded_fmt->height;
+
+	/* hantro_try_fmt() uses these. */
+	ctx->bit_depth = bit_depth;
+	ctx->need_postproc = need_postproc;
 	if (ctx->is_encoder)
 		ret = hantro_set_fmt_out(ctx, &raw_fmt, need_postproc);
 	else
 		ret = hantro_set_fmt_cap(ctx, &raw_fmt);
 
-	if (!ret) {
-		ctx->bit_depth = bit_depth;
-		ctx->need_postproc = need_postproc;
+	if (ret) {
+		ctx->bit_depth = old_bit_depth;
+		ctx->need_postproc = old_need_postproc;
 	}
 
 	return ret;

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
