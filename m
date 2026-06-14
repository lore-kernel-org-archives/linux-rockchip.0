Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06CFECD98D2
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 13:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oM3l3NZhjx2oQzJB+TVxAPqQxCrJW3uIiXwjdDIv3k=; b=NxCLIXCKQItViW
	mxTD/JZZV7+qUSdWzJfHi8gfF2f9bo9PRAkbbI8WmwGLnnUgOGV8VIoKP2GBDIkV4+UAXF/V1u/5O
	0VFS3zDrDZOjhRczxkchG629YMEBNcAE0HAd2eS6Z5bmUaVeWPw459QGLEMjLsQmKtLswkmfQHdMj
	3HmBA2hbBC+4shkeTntH+ECOt7zcQ0x1WGMv9eoGWvsR6kdhRSlfFCN2rU72/S2kbyL0aebLi6ENJ
	fx65RGd0P2IHKIk7vX4hCnVjav8Fq+p0Fu+uVDjDEKMTNc982xakBTLKg/rOT7NFxQtO0Q38XC6VZ
	ENwNYC3VIaIhpxMAd8Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbU-0000000D0NK-36wq;
	Sun, 14 Jun 2026 13:10:20 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbQ-0000000D0FQ-1sSY
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 13:10:17 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-8ce9d444173so32322516d6.2
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 06:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781442615; x=1782047415; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CKd9oqWR4qF+iy/wwQJEAglTquC/gKwfzimhVuiNy9E=;
        b=q93RAtSYV/kRJIpJG5Y3nIyBm6xMWnFb7kvwvOD2TBe/tfuY+DG0UjUGnCaaHkqWcV
         Pl5nmMcR03HxMSBAWNNyAJt4mj7xv3ddBC2dD3w3BVjgn+cfpxiCoxZC2Nz6T9+du4py
         c0R2XXGgBXehRoYPfQu8J7lZxvW+HOZHgV0HvgF+/yMV8gassVnfW4Bs/Sh73gZYGnts
         wqtKjbtRxa95P6b7K6Tukejfsykp5vQ4BjfxpNX38SUNYj8h623/tY2rfK9PR+07Y8MQ
         Y8ny0N7hXfYAV0O/JOU3PfpJsOS7t2Ow0WMl+d0nFgP1lhDRD/KpibeSwTObznYpn4xM
         28Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781442615; x=1782047415;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CKd9oqWR4qF+iy/wwQJEAglTquC/gKwfzimhVuiNy9E=;
        b=DVWP7JeIE/k9lzUnxC8aNXj46GYqRdZJSEGhTUgBox5zCzNaDGvzPd6+Sgj8lA7Raw
         OGAMeJ/XT7JQ5Tu+ex/Z7XK5ZmCQSJ90OIWOX634XiEnbtgtcz5PegclMoxiLtr74d0H
         l5ovlWtpx2xEpqilN4S8HM01fHg0mWuS2gjEBZDQ3JcVEpDZ2UkIRpHhfoeWYpV3u8V1
         EJs8rfXafXrGQ4q7EtjnyKpICYMl7Pw21VW+daz4qslVEohGwAfeRomkbFRWZFgIL9sU
         big3Ib5kasDMXCFA9t5hWu0Vh9MoaLsP2s2CNpggSWr060UQgeDqaSdPLKXldiB/+3U2
         AU+A==
X-Forwarded-Encrypted: i=1; AFNElJ8NPI+O33EZO1siDzsY8yPzwfjJiYg3DZU8NEa9wXQ8hJDDYOe+IJi1Cs6T4+BPt+ZU1p97oINPKYvVujonWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwC9F7EdSN5nPzK0evzGwyHPo9/ztgCsUmswTdszqegG3gtqi58
	NWDfDI0vhmWmmmbHBGMRMJRiU9Z/RYdwZZ0hV41pW/e/7jq1d3Vkwsw3f7GcScXpWdo=
X-Gm-Gg: Acq92OFkl8+5slDLHtwK6e/auCKLJDQtITSpNRIvAipcAom+9kSv3zw6RKf9b/3u13t
	XuZaj9KrehhRxz8IkO03LXlWz5FSGxoGeJSEE+dgTfXs+zQhh3WG1ldC4ke2Vt6SKSFlfkstSJv
	6qtfDlWjEckTF+Ikh6J2TuGxcGH4xwup+pH06ouxU7UF/YXcEIPr3rEwCxQDP7tQymNhD5ZnwuA
	zZi1LkwhtrnyNV0lpKrS0rgSHdN7OZsM/k91iFvSvXKfb+eizfbBRKDbRpi2ooyA2bD+0zV+8GU
	0OCBxCOmJ7qLopFUmhCZYr18WaX9scl5O43bUQhauHInBCbfIVr/Gy8mHzAIvGHIyfLh7Ih2GR4
	pWw1W/GJSyxJKbOBti72n1ejBqnQO+RG6YgpAr5whGCNCYHW6KQUxQ/Xipgbu29DOh4smzIbveT
	EzwrGzvmWawxuhoaya4oAwafUwPJXCi4Adn+YDtacvwCGPDC3DQQWPTCdg90/fAfSIBeVi6WQeH
	6lb+Xb09z6HWEl3h+bctUE5nr7SOalezr5UI2NgYbg=
X-Received: by 2002:a05:620a:d8e:b0:915:9273:9242 with SMTP id af79cd13be357-9161bac4a68mr1535377285a.3.1781442615118;
        Sun, 14 Jun 2026 06:10:15 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-91619f1b400sm752878985a.15.2026.06.14.06.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 06:10:14 -0700 (PDT)
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
Subject: [PATCH 5/6] media: mediatek: vcodec: bound AV1 tile-start copy to the array capacity
Date: Sun, 14 Jun 2026 09:10:02 -0400
Message-ID: <20260614131003.2524025-6-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260614131003.2524025-1-michael.bommarito@gmail.com>
References: <20260614131003.2524025-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_061016_504831_FBF53AD2 
X-CRM114-Status: GOOD (  12.43  )
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

vdec_av1_slice_setup_tile() copies tile_cols + 1 / tile_rows + 1 start
positions into mi_col_starts[] / mi_row_starts[], which hold
V4L2_AV1_MAX_TILE_COLS + 1 / V4L2_AV1_MAX_TILE_ROWS + 1 entries. tile_cols
and tile_rows come straight from the bitstream; bound the copy to the array
capacity so the accesses stay in range.

Fixes: 0934d3759615 ("media: mediatek: vcodec: separate decoder and encoder")
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
Assisted-by: Claude:claude-opus-4-8
---
This is an MT8195-class SoC block not reachable on the x86 KUnit host, so
the driver-side out-of-bounds access is not reproduced here.

 .../mediatek/vcodec/decoder/vdec/vdec_av1_req_lat_if.c       | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_av1_req_lat_if.c b/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_av1_req_lat_if.c
index 2d622e8..49d9b4a 100644
--- a/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_av1_req_lat_if.c
+++ b/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_av1_req_lat_if.c
@@ -1299,11 +1299,12 @@ static void vdec_av1_slice_setup_tile(struct vdec_av1_slice_frame *frame,
 	tile->uniform_tile_spacing_flag =
 		BIT_FLAG(ctrl_tile, V4L2_AV1_TILE_INFO_FLAG_UNIFORM_TILE_SPACING);
 
-	for (i = 0; i < tile->tile_cols + 1; i++)
+	/* Bound the copy to the mi_col_starts[]/mi_row_starts[] capacity. */
+	for (i = 0; i < tile->tile_cols + 1 && i < V4L2_AV1_MAX_TILE_COLS + 1; i++)
 		tile->mi_col_starts[i] =
 			ALIGN(ctrl_tile->mi_col_starts[i], BIT(mib_size_log2)) >> mib_size_log2;
 
-	for (i = 0; i < tile->tile_rows + 1; i++)
+	for (i = 0; i < tile->tile_rows + 1 && i < V4L2_AV1_MAX_TILE_ROWS + 1; i++)
 		tile->mi_row_starts[i] =
 			ALIGN(ctrl_tile->mi_row_starts[i], BIT(mib_size_log2)) >> mib_size_log2;
 }
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
