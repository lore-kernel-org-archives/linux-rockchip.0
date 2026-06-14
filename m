Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44BFFCD98E2
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 13:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5GYXRsoILrbku8FOP14zvCA5Db9dDM81iP8EG3RzH8=; b=wOrrOYEvGj6kSo
	nOXBPpEk4UzXxqm7bpZoFmJHvJ8pYeuxAgiTGM0OTot/dfQEhmUXRl4zmDBkE8ZFrSQTu8idUP+Um
	MYqMgaYDHL/MvyTII9HUCjnVbXqy1ghmgzDYIUSmsnH/KX3M2lNKHsb8nk89A6imgaxD8TQZtWSSL
	j0XpHg79XlUDvqggHkweRN/p0ZxumOCYNkiboufq3NaQJkQPSoFBVPMTGxxstduC+CqAsUhMkxcGm
	BNdlg9iCdl332YWycAbv6Ia+c2b/Fk13WdpolFBJcYNqrqNZ+cI7Axv31syYp+g4SFChhCWO7B18C
	8+3BOQbGuIY+1qjQAMHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbS-0000000D0Jq-1Dr9;
	Sun, 14 Jun 2026 13:10:18 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbP-0000000D0DH-0QOi
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 13:10:16 +0000
Received: by mail-qk1-x72b.google.com with SMTP id af79cd13be357-9159da9bba5so177324085a.1
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 06:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781442614; x=1782047414; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lVl0d1DZ0/rxF5BIn+S5uaENMoHy7Qrp86HW8O6zq18=;
        b=fBK8CeaU4P9iKngqxJmtvI7KCJocYsHCNPKNWLwsOWYBqpV502fdukKkd1BE20cgeF
         m6NxiLEK6HrBbGlxqA2bPb2iVDN/pMO0HeXke2Y6+1/7cvoOQ/BT6Yz2+lZcC0g0XVBV
         yhmOa5cGNMxx5+j7jekHa65RciQansBuCWsTY61YU4f3W1byn+dSfQEIxkFM2j0rwsqM
         X1stSYJIYsu/uQFAO7WGOi0Uciprhl6WpDD1fHneRW75o/1D8HqxoU8bmTOt3/PIFTTo
         W+1Od2tXe3POY9Gff99Soo2K+pWaZc2J1cLbJ5ZOt1nXTuEB0vYr6c4OAl1JUkJNqLbe
         GA8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781442614; x=1782047414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lVl0d1DZ0/rxF5BIn+S5uaENMoHy7Qrp86HW8O6zq18=;
        b=Qkqg5FPvi5GTAZb6pWND7xL5ckMO45h1jJuSnO7cEyg5wecS/SUOwoJnZkI/z9M+H+
         keFIlGixpkkD2ph48kTkfsgdbCQlQtBqn5WSibcsfb/SbkmuICqFfdLRmQBgjy9T8fIX
         sSMc0LIEkmSqTsgBBBXOkbACR71MVEH+yO23jZP66isng8nEfk96Oqkq8ulqoRl8XpZZ
         at14yGvAmuqf7zmYvZM++L6VjveNdmhRbr+IUjbyOYCT6w/uhqmdvLiPmFjCnU7FuDD+
         QGPs3QFA2yh3a2ci8tkyN4hypKjPOn6/lhm7q71k2/8DpwSjJ5zI2KpDEiJm62YRC1tw
         u61Q==
X-Forwarded-Encrypted: i=1; AFNElJ8rYygGAP51Qs6Fs8GGDRgKKG5XZvGPw2bspbEUrY6fM3hHaf+Ey/3T0ys6ns6D3Na8zQwbifM/XRD5Df0f6w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzdjRlsh+7Q9sdng6BO6YFLVULV0FVxcIEqGbGjjrdRCQSTp86j
	SVRFshmYYRCPNTZNTJL9//bM7KK70l8qmU51PJIcZlxdlwunFswQYKdT
X-Gm-Gg: Acq92OFAOXOVMukFg/wAbWPg8FgEJbMiE3ZUQlPJ0LwnD4MTeNWUedvGC7nqO53SZQt
	SSrZidkP3JnlBlizcblxR463g7fbTpuUvQZT2SL+9Z4hjPWzGATJv5qxtaPFF/0Y16XYrJmQa1H
	U/VEFk6zsmdU9886lCJYa0ejjAC8rD2Z+ZUD34HNXqZVhotbLaZKRB5QNejQRpKrevrokBnPvcu
	E+GCqjzmkmovfAiR3nWI84RfJjMpO1SDYFCpWmsklj8p2FU/smVI8qlc7EdvL374RmRkAK+Y4Lx
	nYzVjufQqVjtqCJh3mGHr/NnFXMSYpbzr50uKUufSoCeslABYgdWAtTxTSKwXOn+YlNBd3YCfZj
	CgDDN76ijopElwsJuWrO603ICbJ2Kxd2UirDHLPF99u7MSNwti5u9f7pyzcFxDzdaKkTwe1WIRq
	EcEDZ6mFUevOxrrZaCmxaj01km5lz+6udR0cV0yApoQf6NnIJVch44WXLXskmRybR7gW1JPUxcG
	o4lx8VfFUZfYe7jI1BjL09Uc+bflFlkVsrgt7OpQMg=
X-Received: by 2002:a05:620a:26a1:b0:915:83fa:b3e0 with SMTP id af79cd13be357-9161bac7727mr1528176685a.5.1781442613683;
        Sun, 14 Jun 2026 06:10:13 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-91619f1b400sm752878985a.15.2026.06.14.06.10.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 06:10:12 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yunfei Dong <yunfei.dong@mediatek.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Heiko Stuebner <heiko@sntech.de>,
	Kees Cook <kees@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/6] media: verisilicon: rockchip: bound VPU981 AV1 tile loop and guard divisor
Date: Sun, 14 Jun 2026 09:10:01 -0400
Message-ID: <20260614131003.2524025-5-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260614131003.2524025-1-michael.bommarito@gmail.com>
References: <20260614131003.2524025-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_061015_207922_1F66FE34 
X-CRM114-Status: GOOD (  12.18  )
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

rockchip_vpu981_av1_dec_set_tile_info() divides context_update_tile_id by
tile_info->tile_cols and writes one descriptor per tile into the tile_info
DMA buffer, sized for AV1_MAX_TILES. tile_cols / tile_rows come straight
from the bitstream; reject a zero column or row count and bound the grid to
AV1_MAX_TILES so the division is safe and the writes stay in the buffer.

Fixes: 727a400686a2 ("media: verisilicon: Add Rockchip AV1 decoder")
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
Assisted-by: Claude:claude-opus-4-8
---
This is a Rockchip RK35xx SoC block not reachable on the x86 KUnit host,
so the driver-side out-of-bounds write is not reproduced here.

 .../verisilicon/rockchip_vpu981_hw_av1_dec.c  | 29 +++++++++++++------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
index e4e21ad..71d2ef7 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
@@ -578,21 +578,32 @@ static void rockchip_vpu981_av1_dec_set_tile_info(struct hantro_ctx *ctx)
 	const struct v4l2_av1_tile_info *tile_info = &ctrls->frame->tile_info;
 	const struct v4l2_ctrl_av1_tile_group_entry *group_entry =
 	    ctrls->tile_group_entry;
-	int context_update_y =
-	    tile_info->context_update_tile_id / tile_info->tile_cols;
-	int context_update_x =
-	    tile_info->context_update_tile_id % tile_info->tile_cols;
-	int context_update_tile_id =
-	    context_update_x * tile_info->tile_rows + context_update_y;
+	unsigned int tile_cols, tile_rows;
+	int context_update_y, context_update_x, context_update_tile_id;
 	u8 *dst = av1_dec->tile_info.cpu;
 	struct hantro_dev *vpu = ctx->dev;
 	int tile0, tile1;
 
+	/* Guard the divisor and bound the grid to the tile_info buffer. */
+	tile_cols = tile_info->tile_cols;
+	tile_rows = tile_info->tile_rows;
+	if (!tile_cols || !tile_rows)
+		return;
+	if (tile_cols * tile_rows > AV1_MAX_TILES) {
+		tile_cols = min_t(unsigned int, tile_cols, AV1_MAX_TILES);
+		tile_rows = min_t(unsigned int, tile_rows,
+				  AV1_MAX_TILES / tile_cols);
+	}
+
+	context_update_y = tile_info->context_update_tile_id / tile_cols;
+	context_update_x = tile_info->context_update_tile_id % tile_cols;
+	context_update_tile_id = context_update_x * tile_rows + context_update_y;
+
 	memset(dst, 0, av1_dec->tile_info.size);
 
-	for (tile0 = 0; tile0 < tile_info->tile_cols; tile0++) {
-		for (tile1 = 0; tile1 < tile_info->tile_rows; tile1++) {
-			int tile_id = tile1 * tile_info->tile_cols + tile0;
+	for (tile0 = 0; tile0 < tile_cols; tile0++) {
+		for (tile1 = 0; tile1 < tile_rows; tile1++) {
+			int tile_id = tile1 * tile_cols + tile0;
 			u32 start, end;
 			u32 y0 =
 			    tile_info->height_in_sbs_minus_1[tile1] + 1;
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
