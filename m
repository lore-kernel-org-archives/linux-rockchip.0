Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1349FD0049
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Mar 2026 01:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nhUlg2jxjIEL8sHupXbJ7LDEU3MYrc0RlQgICwf0KzA=; b=J+35Miwv6EmC0/
	XqmfHxEyidUbhYiGmBmsR4Xm7VucDo9BtxIseSEms91djARSi826M9Ys0YFYCWErWjpsr6rdBpSLI
	s9jJEbUNHnQUl0zTaSYCTW1PNlJY8LfPoOvlxy+NhQlqpys+LiRCLJ+Tlaop01nEYeaL2E8W1vSdr
	6tvQxGlFe5gSOzqAjuG9MT/Ud4llyk3gCb3G+/3doY1zULIpwmmeXpXlqT7sRMV+Wa4FgKG7jM+91
	m3B8WstNZs2OIJZPfhOE48o2L8IjSSp6NY0h52Jh3NQmkQGN+Cs2l2jhhlk/jFHP6G+7xynDgtj45
	tRRI8NALQ4TxYvmqrOEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwVTR-0000000AU2w-0Mbl;
	Sun, 01 Mar 2026 01:19:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwVTL-0000000ATvQ-1enn;
	Sun, 01 Mar 2026 01:19:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B5AF860008;
	Sun,  1 Mar 2026 01:19:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 933D9C19424;
	Sun,  1 Mar 2026 01:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772327990;
	bh=8HWlHUoKFmh3jh8W3WSGJzHOoxrEt60poeRlUEbtgv8=;
	h=From:To:Cc:Subject:Date:From;
	b=fCFfuGnv80H9u02Qyapooka2u7VN+CzhNkMoK0dlh7ZTOXZclsRrnYYxZoQtNmZWv
	 635wBqFr/Jb4Jtg2BGudedbeCpmaxRRQDxRxVwXBBQPe4PqYzJf51ukq2tLUU9LtHr
	 sNWINNXs59Pbs6BMkaANZrrY81Qdu27Cr+A/9eOMYGNY8rYVeUPAueQTpyXSl/7YiZ
	 C/c1ZA2QzrjCjtWeyLeuS6KUtFr2VMJuIpHDbsXj0tXrwSJ9ZVhEGPZgI13uk3c+0t
	 VC55zcVM3Dx9fGqTABgpP2LyfhKRi/kwYDTGq9P14t04up0Wcpvt4UKwaAzHHiImcy
	 MGWQiOMDWJZ6Q==
From: Sasha Levin <sashal@kernel.org>
To: stable@vger.kernel.org,
	benjamin.gaignard@collabora.com
Cc: Jianfeng Liu <liujianfeng1994@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: FAILED: Patch "media: verisilicon: AV1: Set IDR flag for intra_only frame type" failed to apply to 6.12-stable tree
Date: Sat, 28 Feb 2026 20:19:48 -0500
Message-ID: <20260301011948.1675062-1-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Patchwork-Hint: ignore
X-stable: review
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

The patch below does not apply to the 6.12-stable tree.
If someone wants it applied there, or to any other stable or longterm
tree, then please email the backport, including the original git commit
id to <stable@vger.kernel.org>.

Thanks,
Sasha

------------------ original commit in Linus's tree ------------------

From 1c1b79f40ee4444fa1ac96079751608b724c6b2b Mon Sep 17 00:00:00 2001
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Date: Thu, 8 Jan 2026 14:29:46 +0100
Subject: [PATCH] media: verisilicon: AV1: Set IDR flag for intra_only frame
 type

Intra_only frame could be considered as a key frame so Instantaneous
Decoding Refresh (IDR) flag must be set of the both case and not only
for key frames.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reported-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Fixes: 727a400686a2c ("media: verisilicon: Add Rockchip AV1 decoder")
Cc: stable@vger.kernel.org
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil+cisco@kernel.org>
---
 drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
index f52b8208e6b93..500e94bcb0293 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
@@ -2018,7 +2018,7 @@ static void rockchip_vpu981_av1_dec_set_parameters(struct hantro_ctx *ctx)
 			 !!(ctrls->frame->quantization.flags
 			    & V4L2_AV1_QUANTIZATION_FLAG_DELTA_Q_PRESENT));
 
-	hantro_reg_write(vpu, &av1_idr_pic_e, !ctrls->frame->frame_type);
+	hantro_reg_write(vpu, &av1_idr_pic_e, IS_INTRA(ctrls->frame->frame_type));
 	hantro_reg_write(vpu, &av1_quant_base_qindex, ctrls->frame->quantization.base_q_idx);
 	hantro_reg_write(vpu, &av1_bit_depth_y_minus8, ctx->bit_depth - 8);
 	hantro_reg_write(vpu, &av1_bit_depth_c_minus8, ctx->bit_depth - 8);
-- 
2.51.0





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
