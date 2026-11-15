Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B94A606A33B
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 08:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BQJCcnv/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=bnNzd/sX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kwoelOBQlcA0MYxsQgFGGrUhHUr2KkQdySxNV8iRbUU=; b=BQJCcnv/fadI8iz9tAxuUiJjQa
	/GX7Tbbrn7JoytbI1whbAxQgCucaE9iHkoifm8Uu0a8lstiog3rOEnbL0Ym7hZ0mMAjmOcvDU84rk
	WkYO38tt4Czhk+ZL2Iy9J2LsCSe+a9hW+Jbp9pNiNotSyuKTmRdIV+ZzZ+uZQfAlhVYpupe+6kMQK
	znpTbkQ/nrDDdmgbsS6KLD8JobreTS8/oazOTYsS+/TmGdCHN4ZF7E+QFOO8cVGjS9Wo0hjjXCKiQ
	BVaahfzb/8oa+tnKvXhpyLOzWDKJJ+eDSKMpf856o0l38004BcEGKcib7GZvh/a6Wjx7Ybs5nthcg
	RpMf54cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSW4v-0000000HHSU-2Ygb;
	Sun, 15 Nov 2026 08:59:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSW4o-0000000HHMj-1l5G;
	Sun, 15 Nov 2026 08:59:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 736E161D80;
	Sun, 15 Nov 2026 08:59:05 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794733145;
	b=3VCcJPh7sC3qOSHJKnhhIQP3488ZooJiKXJsTvq6arCxfQv9SvGIW64ca46kkULl4zV5
	 dTMrpMpDmD+QzEnTO8KU4WcsoKnBhqB62dPik6fMCFmBVch9kRMuTbJ3Uk8Ig0cH8LJjr
	 gwlkSZ1xknW1ogUZN8hXTRf6RUJ3Rrl9W8J8anKnRLVPbWNeSJ9QeyM4wVhWGNmr9K0wt
	 tubITSZE8W+2BV7/K2HhasMEaTgszx9YnBbCC7L6/5c95yhWU4w07eB0+uk0h4mxpsqtu
	 QbvcM6QcEytwD72IY7owHB72sFrfEWi0iOwl1fK8zUSEr6wW0AgzPRZWbZLJhs88L7w==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794733145;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=qDP4N5+jJcRg7Y6okxsTnefvSa683G32wQT+RQCKUfI=;
	b=kjkAsNjw6kyIzC63goa3HXohc0xOQF0U9p6Pz5Jyx8l9TKw8C4vaz2R331jxJ2CTcw3T
	 W7JDql3W2/4Jhm9bX+pRauc8TYrzMdaFtfpwQltVIJUZBNaNQfHeb35MdHFhP6KLNZdFh
	 21Ra0Z1qwEx9J/0KB+fc3uv0kgq9vUSC0F1r93K1JeJqZLPmTFEeW6DqILy5nBAONKBr+
	 tb6Hzqozfmliv5xTZk/hbiG+zN5vYfG142Q4PhGpLXQU/8lGgcqAo6DPfEvWLsRtKrC9N
	 Qpxz2LOc/368Mj6tQOFuym3f2JWzueDB3BHl8HKticn5eK7KhFBNpVvutKtNwUVfEZA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 5DBC61F000C7;
	Sun, 15 Nov 2026 08:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794733145;
	bh=qDP4N5+jJcRg7Y6okxsTnefvSa683G32wQT+RQCKUfI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=bnNzd/sXXPmZiuZJrsHt+ORFsP3a28E/vdosEXAB49sTdYrp+h5Jdu7kuA9pmwx/x
	 0Sq8yy0xRVscOf9vNTfi2TklVDUKf1O55bFW1qDo31iGcI2Li1jOgZvSm5v0WrM6zd
	 S3HD2lmbcM2UpDtURGh7ycIDn9PQ0HIbcNqpmBTiP9SXUddF3ivSaHkahhLjQ6zjvH
	 eVBCXxl6hZZmA72EDcCGXyeBVKyzjhdufMY41JTei9QaYpOtpKRAyLme0dGK0DgryC
	 m9KKS8XFGIRVMMYCAQNslV1inMnvTOhkZ7COpaOakLGYXqJwfrdH4Ye5/w8YTgcTzc
	 gPKZ5uQi76VEw==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id DB74C4A023;
	Sun, 15 Nov 2026 08:59:03 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Sun, 15 Nov 2026 08:59:05 +0000
Subject: [PATCH 2/2] media: verisilicon: av1: Read the segmentation map at
 the reference's offset
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261115-b4-vpu981-av1-refs-v1-2-c65769715db9@gmail.com>
References: <20261115-b4-vpu981-av1-refs-v1-0-c65769715db9@gmail.com>
In-Reply-To: <20261115-b4-vpu981-av1-refs-v1-0-c65769715db9@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 stable@vger.kernel.org, Arun Iyengar <aiyengar1990@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794733143; l=2088;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=0GThhk2z/cRQbgXeldqMBs3lGFcw7t5kkHOX/IFY9c4=;
 b=o3Cf4VWabdI+ePII3AjfgP52dIS0jsu4DNRqWTn/g2TqG+UlYC8uLuWyOC/OOPpWjZvQis/fo
 uxdVrh9Py6TAnNb9XgZFsUNMdVEna1ZFJOoNvCMQp9GVaAwjVg16/vs
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
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
index 59f2adf74850..f23af435f961 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
@@ -899,15 +899,17 @@ static void rockchip_vpu981_av1_dec_set_segmentation(struct hantro_ctx *ctx)
 	if (!!(seg->flags & V4L2_AV1_SEGMENTATION_FLAG_ENABLED) &&
 	    frame->primary_ref_frame < V4L2_AV1_REFS_PER_FRAME) {
 		int idx = rockchip_vpu981_get_frame_index(ctx, frame->primary_ref_frame);
+		int mi_cols = DIV_ROUND_UP(frame->frame_width_minus_1 + 1, 8);
+		int mi_rows = DIV_ROUND_UP(frame->frame_height_minus_1 + 1, 8);
 
-		if (idx >= 0) {
+		if (idx >= 0 && av1_dec->frame_refs[idx].mi_cols == mi_cols &&
+		    av1_dec->frame_refs[idx].mi_rows == mi_rows) {
 			dma_addr_t luma_addr, mv_addr = 0;
 			struct hantro_decoded_buffer *seg;
-			size_t mv_offset = rockchip_vpu981_av1_dec_chroma_size(ctx);
 
 			seg = vb2_to_hantro_decoded_buf(rockchip_vpu981_av1_dec_ref_buf(ctx, idx));
 			luma_addr = hantro_get_dec_buf_addr(ctx, &seg->base.vb.vb2_buf);
-			mv_addr = luma_addr + mv_offset;
+			mv_addr = luma_addr + seg->av1.mv_offset;
 
 			hantro_write_addr(vpu, AV1_SEGMENTATION, mv_addr);
 			hantro_reg_write(vpu, &av1_use_temporal3_mvs, 1);

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
