Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0FD4C02185
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 08:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lwfXB/6nxE1hYT2DQY8KgPkjkK94PaDnZECGDjzzi+g=; b=jhF591Ysv4RLYp
	K+64UK28kaaVvMyESHPYZzvjEGu/I0WW9kwkx5OVlmQmdh6aKbyWyeqrjZDRHsye96dtNmeQPnWWB
	/3EZA7QqBKkv3qV5XwG5KM2fxjNmoOMp8lh7SYGGLuA1Wfh/uFqz6tCcpXP+nKVV5t/vaxofh4QPS
	zDLe0eHUJsow1wSaxsnD4jSQzEZG+HZGyKt0b7juIJU2sDZmX/AbuQ5X4piol0EP7fvgJBHwr2t5A
	dwqtB4mRzv2MpRC1iqC3H3/x7iVXVsCoa4MXvSpXUH5vPnTRUal6hvEYP7iGXAIfZb1HgpZZQmA3g
	AGYta2pTJrMsIgQuexIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZmsG-00000004zbU-0xo6;
	Mon, 20 Jan 2025 08:11:08 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZms9-00000004zaG-3xQZ
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jan 2025 08:11:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1737360658;
	bh=B6ejVHdkmCKPVaeaHisS+dhhloo5Xrxs/wwTGt9Fhmc=;
	h=From:To:Cc:Subject:Date:From;
	b=YIMCeUPJRYnLkkkBD5SwxV+TX5PaVqnaX3nzqb/PNQfO7OQw9sE/qOMJ2Mc5Bc1i9
	 2mjY3Z4SJA4N/Mx2p3xUD8Os1yECwblUkzdm9NRfeCbWlXzxprgfvmN5FvCwJ7Qauq
	 Nhgfg6j50Vj+hXICTemSBsUbbhV4LebQYMUtic6uwMvch98KM0TNMZZjUtarog7urc
	 KbILIB2lhvD9iI+S/L7l624U3Gjzzh3OXx84OwajlxpuGlLQXdrfN563iOVL3Ppyzv
	 0o2frXRVrItg1hgZUz4d6DApPuoO+oGdYsfnsYu3fkz2f4PoPheDhvCEQnREMIFc37
	 Ui6t/OqH2EH2w==
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:fb75:b420:7f1c:508])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AEAB317E0D72;
	Mon, 20 Jan 2025 09:10:58 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: HEVC: Initialize start_bit field
Date: Mon, 20 Jan 2025 09:10:52 +0100
Message-ID: <20250120081052.63224-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_001102_536313_75DFF490 
X-CRM114-Status: UNSURE (   7.18  )
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

Always set start_bit field to 0, if not it could lead to corrupted frames
specially when decoding VP9 bitstreams at the same time since VP9 driver
set it for it own purpose.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c b/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
index 85a44143b378..0e212198dd65 100644
--- a/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
+++ b/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
@@ -518,6 +518,7 @@ static void set_buffers(struct hantro_ctx *ctx)
 	hantro_reg_write(vpu, &g2_stream_len, src_len);
 	hantro_reg_write(vpu, &g2_strm_buffer_len, src_buf_len);
 	hantro_reg_write(vpu, &g2_strm_start_offset, 0);
+	hantro_reg_write(vpu, &g2_start_bit, 0);
 	hantro_reg_write(vpu, &g2_write_mvs_e, 1);
 
 	hantro_write_addr(vpu, G2_TILE_SIZES_ADDR, ctx->hevc_dec.tile_sizes.dma);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
