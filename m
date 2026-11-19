Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DA5606A32A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 04:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RiNAKTWX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Yt8Lo/Km
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Vbu1wHVwhAjBRp+LqEezGMU2b++Uyqwp9f6NbjeB3yQ=; b=RiNAKTWXwKDS++IwB/gxY9Rpm5
	QPWhxLF2rgaLukaYUQ7xVbY2RLfMZPJ1v+OxMTFxnsdlr+qoGSPw6mlz1vxIpLwM6k0FnqdpFJ/2Y
	XUQrkACq6Dqdd9M2IBMc5nGV1gxFwandv0Ja6D0A1IqjHzrUxH/UWuAFrxxV3Ng/R0jR3KpoU31to
	8G1lmQ0qYeXiLGY28H7/qi36H8wXdjufh6aeQMrWvDEEOjFbuG+Hs5aq23xRAu/bY6UkSI0od/WpG
	dv+T+prlnMwskCZIWJp4FhMycf3uKkET0Zp6c5l3/Nb5AW876s1XWNIsUdTE11Rp2YoQHnB9QXqFo
	5rDbltbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTtwR-0000000Aq3G-1E5D;
	Thu, 19 Nov 2026 04:40:11 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTtwP-0000000Aq2A-2Du5;
	Thu, 19 Nov 2026 04:40:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0D9054585F;
	Thu, 19 Nov 2026 04:40:09 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1795063208;
	b=hM0P1CoCmOxndJLu8P6OaciNg9sEWdwaxdFGfF+luBekgd/qrgEsDSgchO+H5m+kpzWY
	 1gjGNfA5LwICnyaY/aGXMt/ve+IWTJNPtoysQ0eIJYMyUqsdl7iu0AZOWJl2349pQ9tgt
	 wq6dm3vzaJJV8ig9aAiTulFoZ4zuw0gVshNvDAyzHIyMJ52vftd/dORqeHat3Krny64x+
	 CwYYqbPdwlxNuIfunla5N9OcS0jMMiqo+qXaqTHRVDGEXKOOMhAjCTzDD3YR/cqaAn37Y
	 dTSOvwo/MIenMPsDkbUcm7JZ3GitGQ8Ky3dqiDdBC+eFhSbMvg8o2xDd7vpjbYf3CcQ==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1795063208;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=xYL1KZ42xOkHUH44B4GkVUfmlTrnkWZLD2iTvQvO8g8=;
	b=p1U8C8HESm+VigG84nqeaU6e06rva6XRFIAafsZCO5alXkTIR7BC5yTSICr9t7f3dNGw
	 DMqHU70nWLWq2p1jl12bBkIBah2x+IVCOpWEKR9NTYdKlDbk0LE1l32j2X+mQNDDRCNxS
	 GtJpJpXEDLlFQgHyTXbPqh6ZlPpjkTckt6g1mY506zNdCeb3y9DDMi/CJoUS49WJJ1Xa8
	 TwcD6GWpMvpNk0Ry7rw5+erTfaZjamRneIITNTRHiUD6/vdKR9EzvJsjhHTMrFxFfkmVo
	 MW5Q+eUacA03k/OXtXifNv75cpDC6s7mGAXBIySRgoX07+F/b22w0yWZF8Gl89qd+kw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id D26101F000C6;
	Thu, 19 Nov 2026 04:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795063208;
	bh=xYL1KZ42xOkHUH44B4GkVUfmlTrnkWZLD2iTvQvO8g8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=Yt8Lo/KmCtphyGE/mxcwuFjEnJgwcR7e55xMH1aY9XQq6S+Ma9omhzqr8/2ur0iZV
	 xa3AVwAOhqYBp0Gp6K9P5uMAp8XF3qYaLfdABNXxWMl71PMYqUkFla4TX0TNSEm85p
	 t38lQaMBd0Zq8WZrKJvAbIlYgSvPBi0/iJq6ptLPjJe5bhqly5xWz2e4Z2hdqdWr+j
	 laKXauRC6MJ9FB+NLISApcu43HXdJ01/VzKwrTJgUY740shutR+7OPUlXYx56y5G0b
	 fpadIfH1niZK7c3lJZwI+kU5g/W/eG/h40ZWrOv2ZYmhF3u0ty/nyZFtAzRngjN3Zd
	 E8Ry07WIpLLWQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 5F1E04B0E8;
	Thu, 19 Nov 2026 04:40:07 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Thu, 19 Nov 2026 04:40:08 +0000
Subject: [PATCH v2 2/2] media: verisilicon: av1: Read the segmentation map
 at the reference's offset
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261119-b4-vpu981-av1-refs-v2-2-7c270158b20e@gmail.com>
References: <20261119-b4-vpu981-av1-refs-v2-0-7c270158b20e@gmail.com>
In-Reply-To: <20261119-b4-vpu981-av1-refs-v2-0-7c270158b20e@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 stable@vger.kernel.org, Arun Iyengar <aiyengar1990@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795063206; l=2044;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=M5VkkkdflunTVyGr1Nz/gUu/uiqdpj4/jtKjFiX6La8=;
 b=PfK2nx60qvDot3pPQb8sNiCu7mL5/ewrHcGUlIufCanfGvZ8XhvDNrx0yefrmEzuRKSNZUrUH
 Ixd6+x30474A9F/JgkuxopzmZSIhV5QmLK6it7TPuRYw7xa3sJjGH/q
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

The segmentation map of the primary reference is read at the motion
vector offset of the current CAPTURE format. After a switch to a larger
format, that is past the end of a reference held in a smaller buffer.

Use the reference's own offset, and skip the map of a reference of
another size (the spec then uses segment 0, load_previous_segment_ids()
in section 6.8.2).

Fixes: 727a400686a2 ("media: verisilicon: Add Rockchip AV1 decoder")
Cc: stable@vger.kernel.org
Reviewed-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
index b331ff234878..21a97a57328a 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
@@ -910,13 +910,15 @@ static void rockchip_vpu981_av1_dec_set_segmentation(struct hantro_ctx *ctx)
 	    frame->primary_ref_frame < V4L2_AV1_REFS_PER_FRAME) {
 		int idx = rockchip_vpu981_get_frame_index(ctx, frame->primary_ref_frame);
 		struct hantro_decoded_buffer *ref = rockchip_vpu981_av1_dec_ref_buf(ctx, idx);
+		int mi_cols = DIV_ROUND_UP(frame->frame_width_minus_1 + 1, 8);
+		int mi_rows = DIV_ROUND_UP(frame->frame_height_minus_1 + 1, 8);
 
-		if (ref) {
+		if (ref && av1_dec->frame_refs[idx].mi_cols == mi_cols &&
+		    av1_dec->frame_refs[idx].mi_rows == mi_rows) {
 			dma_addr_t luma_addr, mv_addr = 0;
-			size_t mv_offset = rockchip_vpu981_av1_dec_chroma_size(ctx);
 
 			luma_addr = hantro_get_dec_buf_addr(ctx, &ref->base.vb.vb2_buf);
-			mv_addr = luma_addr + mv_offset;
+			mv_addr = luma_addr + ref->av1.mv_offset;
 
 			hantro_write_addr(vpu, AV1_SEGMENTATION, mv_addr);
 			hantro_reg_write(vpu, &av1_use_temporal3_mvs, 1);

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
