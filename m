Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64CE7C02181
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 14:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kqCJd9RMXOmWmy34IT11UoP9uw3Z8IwcLiJh5QsML9o=; b=i0Td8bW6m0gv0s
	CPxaAA/bdnW29LO0P/auqXr83fRkicb3aDuNWgbrIwk+gVKsAE6SZ3v3OsXq/KPIfN+re1O2tJCsI
	0EPgbbbJVoCnJDcUHvENUaBi/MROP9QL2CDlQfCEz2q1nJN9aM+6rO0V2gjBD1g/qiMu8gChUcSIZ
	zZDIVLaBeTHfxm+OEiru1vXEjKQWZB5hK/Hm3MXzSbYxVdF0JpmRoYfNmkMaT1ZbGksUPOSElxzat
	5nbynaWszIKNgjBylgkRePQpe0TNjBkDzVsXZjt2yKlsqZKlxjflcdEdzrHPBgX3fhb0C1za2W42N
	MkKMXuhkt/8Tr3IaBO9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZshw-00000005miq-3PX8;
	Mon, 20 Jan 2025 14:24:52 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsht-00000005miN-3tY9
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jan 2025 14:24:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1737383088;
	bh=xEN0bWBhN34PmKKnNr05BxsqpDPbA8S9/Z0QQD9aIhY=;
	h=From:To:Cc:Subject:Date:From;
	b=UnaTmd9nTH8EAwS2OgQfHOYtJnw8YfJMnCtw8RiBdh1EoBYrT5340LV03xkY5UvEk
	 IIZn2w+RAA/5PJEKrxPeZ7YNbnelWzHUcY3WWcnaK8fkyZm3WcUEu3lsbBzv8jQ7g2
	 puK0sLX2tDu8teAQs+dHVt1i//Lvwtrwf2/FcY9/uZbZoty5wSzTNjcXc3DmOcKGwx
	 gLZz0O0uSp6dUR6jBgarXzv/T0Pg0DlrnSvy5LW4wElcjqepm339brvTXOSasQEt39
	 mw9BCm+SAAtuXETHFymJpjgUlC8SLgWp8V2L4iTTFL6gl1QY/6bKn6BVPjCtbukL0n
	 ICUfBxMK53PSw==
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:fb75:b420:7f1c:508])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F088317E0ECD;
	Mon, 20 Jan 2025 15:24:47 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2] media: verisilicon: HEVC: Initialize start_bit field
Date: Mon, 20 Jan 2025 15:24:42 +0100
Message-ID: <20250120142442.402624-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_062450_137955_C725D02F 
X-CRM114-Status: UNSURE (   6.94  )
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
set it for its own purpose.

Fixes: cb5dd5a0fa518 ("media: hantro: Introduce G2/HEVC decoder")
Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
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
