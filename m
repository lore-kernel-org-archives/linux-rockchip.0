Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4169FCD98F8
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 02:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPQpvfVwuQmsJNq1G3blst01iC8z7GhPClH37/Nkito=; b=XtMEQa/4ZFhdkk
	FdGeoNgyIFxiqFj80XdQdMW3fLA13M1qQC/xf4JOfB/u3oW8Y+rMn9Xx+b2sNxq5iSoyosBp/jfha
	4Q6nNxK+w77q09ybl2XQ5lyTHFfOiygy4kz9i25BpYp9dBhA804w1FUH4OdIaZYEPAKLAiE2vqilu
	WXH0B8BD2bpiiJvkOxPSEyzjk+AzleOE4rnUXdjlm+mTPlSJWPlx7ixdXYroTp+fLmSik/MnNB7yj
	JqFQ5EAX5fI4rrPnPPoII75s1ZhoR5QVX7NcaHsZvwfrtUknZuai6KeyXtqUu+k6CBJecnJSqqGYn
	HynkuG9IdDCSM2y345HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsT-0000000GUNT-3ybr;
	Wed, 17 Jun 2026 02:19:41 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsR-0000000GUHt-2LTO
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jun 2026 02:19:40 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-91587626a3eso553053185a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 19:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781662778; x=1782267578; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zAFF71eki3qKxbhz4XlFm/p6BTZ2JlYFibYSDXzDbeQ=;
        b=TS7LpnLKJAdZPMHAYsFQPA7JKQvkhOwi2nffWfA+k5KV/tqSon7c+yUme95TiiOEiX
         UZGw+Q6k7OVjPKCEvKD1MIICfdxYrQ9ilaWNB+87u//ptXQ6fA5j+TuywxHS8FgwDgqz
         uADJjDvud5LYsGedrv9dPcHLv4v/oumnlLba2VTJwQNj/2FB1rwb+BMzxnYjgtF0nl0u
         CfBXeUsHDBvbslxBxOkLraVIrA6FkSRXZhOKYRaWFHCD2BHUvNUUqbMjvGHPrMfirabd
         F9ZPkM5fmVOXE9ghal9LwZvPOirhZAVGUE9czGiA8tWQv7avO/mIqLa6E2cqiujQFpfB
         08/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781662778; x=1782267578;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zAFF71eki3qKxbhz4XlFm/p6BTZ2JlYFibYSDXzDbeQ=;
        b=ALFXKRDLZyU0FVidnpPdzvjGh64m+ej8uahbCJFcxiO+B3/UI1iFg5M+g05UanOlPm
         vugtfXy1WmH4QfnwigCgyuT3G/4yqELCq7B4mB7aUmGoTok5sY8AQyoFTR/lBxmzi+mo
         lYRcs1unQxLGCKWTIxV+7okf65eiPWcFckFASiau7EzEyZ9ZnuyTAtl4ViwnoPsavj1d
         8xA9E7YVvQrCXzrc3FSgI2QEiHTzH1Ow8j9iRDKDpslVuDN8UzrmPOL13BkW+J4JwKFT
         AHOcB1JVqkHa+UCoSoWn5FWu66FXPKrU5jXdkar8GNyXMw0mWaA2pb4ySYPAWH8dVr3q
         yBOA==
X-Forwarded-Encrypted: i=1; AFNElJ8eymHn3m0IfkHW/qxNorsCgSzdTCI9WtsgnlnxIC4NECHDwex3jEO+ZFD7cc5SPq/6nV4vSQi9UFgA/IX32w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxI8fvkWlHOb4ufu7fOS4XPMUTpDHjjK3VqZYuAD2WvYa1DO0qE
	scoqdq5wNZT8pQEo4Wu9lfo4SwL9Un8L8CJbW2UYaaNSH37bbGlKbGyx7rGKYeiYQ88=
X-Gm-Gg: Acq92OFGHGh6iGN26cb22zTqGOxKYJqh5WLeHRQEGBRM4x89pZfdt7w9SzVA86gzMn6
	fWuJfkRiqAzvCdep524eGqMSgfYHBgBE8Ae39xYv0sox6aPqYmfM/fajrIviVjA1rgMkpwdoIMD
	iadl+9iMrTZjyTZQzddaJYlTTD62lUzIh2GvGHQKyGbv3z9VyQyMdvPJwRW9jz1jZplSzoNdU9J
	cAt1I1U60mSXkz4lKe7ou0BVPbVXgN3ENYzMR6rxFsYnKY9phymmePMdbUGIpt1HHr0X3JY6LG4
	Lpoa3Af/0ybfRcRCEUnpSlQMkAe8QOx9xikvzHfGKjiElK5MKgGCbuT0/2mDxUBW24js/IY8ZZY
	MvtKOPzE840hU6Nmjh0ttDWhZ5i2UvB17FipAf4+536UQzwJYz7qA96HeAwuhJawE2pmJk840PM
	CSqcueMgtXxqnTIwzhAmbXbo86DsJH3W+SJ9RdvY+hdQO/Bp5o7vyxskFcQKIRDzMOIg+F8NVFx
	56tg2OWO6useLAIpcZ8uJcjgJqYBj51
X-Received: by 2002:a05:620a:f0c:b0:915:aad5:e941 with SMTP id af79cd13be357-91dba766e8cmr259685285a.17.1781662778188;
        Tue, 16 Jun 2026 19:19:38 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9161a006e35sm1657646285a.28.2026.06.16.19.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 19:19:37 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
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
Subject: [PATCH v3 7/9] media: verisilicon: rockchip: reject AV1 frames exceeding the tile capacity
Date: Tue, 16 Jun 2026 22:19:04 -0400
Message-ID: <20260617021906.2746743-8-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260617021906.2746743-1-michael.bommarito@gmail.com>
References: <20260617021906.2746743-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_191939_618926_3185FA72 
X-CRM114-Status: GOOD (  15.16  )
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

rockchip_vpu981_av1_dec_set_tile_info() indexes the tile group entry
array by tile1 * tile_cols + tile0, reading up to tile_cols * tile_rows
entries, lays out one descriptor per tile in the AV1_MAX_TILES tile_info
buffer, and programs the real tile_cols / tile_rows into the hardware.

The tile group entry control is a dynamic array sized to the number of
entries userspace submitted, independent of tile_cols / tile_rows, so a
frame that claims more tiles than entries reads past the array. A frame
that claims more than AV1_MAX_TILES tiles also leaves the hardware
programmed for more tiles than the descriptor buffer holds.

Reject both in prepare_run(): tile_cols * tile_rows must not exceed the
submitted entry count or AV1_MAX_TILES. The entry count is read via
v4l2_ctrl_find() (ctrl->elems). This mirrors the bound the mediatek AV1
decoder already enforces.

Fixes: 727a400686a2 ("media: verisilicon: Add Rockchip AV1 decoder")
Assisted-by: Claude:claude-opus-4-8
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
 .../verisilicon/rockchip_vpu981_hw_av1_dec.c  | 25 ++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
index fd00dbd79fe46..00aa566a4ccdb 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
@@ -431,20 +431,39 @@ static int rockchip_vpu981_av1_dec_prepare_run(struct hantro_ctx *ctx)
 {
 	struct hantro_av1_dec_hw_ctx *av1_dec = &ctx->av1_dec;
 	struct hantro_av1_dec_ctrls *ctrls = &av1_dec->ctrls;
+	const struct v4l2_av1_tile_info *tile_info;
+	struct v4l2_ctrl *tge;
+	u32 num_tiles;
 
 	ctrls->sequence = hantro_get_ctrl(ctx, V4L2_CID_STATELESS_AV1_SEQUENCE);
 	if (WARN_ON(!ctrls->sequence))
 		return -EINVAL;
 
-	ctrls->tile_group_entry =
-	    hantro_get_ctrl(ctx, V4L2_CID_STATELESS_AV1_TILE_GROUP_ENTRY);
-	if (WARN_ON(!ctrls->tile_group_entry))
+	tge = v4l2_ctrl_find(&ctx->ctrl_handler,
+			     V4L2_CID_STATELESS_AV1_TILE_GROUP_ENTRY);
+	if (WARN_ON(!tge))
 		return -EINVAL;
+	ctrls->tile_group_entry = tge->p_cur.p;
 
 	ctrls->frame = hantro_get_ctrl(ctx, V4L2_CID_STATELESS_AV1_FRAME);
 	if (WARN_ON(!ctrls->frame))
 		return -EINVAL;
 
+	/*
+	 * rockchip_vpu981_av1_dec_set_tile_info() indexes the tile group
+	 * entry array by tile1 * tile_cols + tile0, so it reads up to
+	 * tile_cols * tile_rows entries, and lays out one descriptor per tile
+	 * in the AV1_MAX_TILES tile_info buffer while programming the real
+	 * tile geometry into the hardware. Reject a frame that claims more
+	 * tiles than userspace submitted, or more than the hardware tile
+	 * buffer holds, so the read stays in bounds and the programmed
+	 * geometry matches the descriptors written.
+	 */
+	tile_info = &ctrls->frame->tile_info;
+	num_tiles = (u32)tile_info->tile_cols * tile_info->tile_rows;
+	if (num_tiles > tge->elems || num_tiles > AV1_MAX_TILES)
+		return -EINVAL;
+
 	ctrls->film_grain =
 	    hantro_get_ctrl(ctx, V4L2_CID_STATELESS_AV1_FILM_GRAIN);
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
