Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE8DECD98D2
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGz3uf/Pohv5y5RmMprQzmxqWDC2cwy1lpSS+MneiUk=; b=DLmeT3gTv9xBlq
	jO2W1rU+x3yRR+jMeF9FxTOJYgmsI4vnAri2Hyive/q8CYc6thKzVVvPtSQQzS5TFXCyCY2TCRLLk
	0rBy+h889mU7esqh/f9CIbGb0H+YEHrVcVVrqZi9PTt5IrhhgB3FA8nKCVlf9gH3XJL96xPXFcWu6
	awf/idRfF01aVOkJNozKSatvjlkyeWIKSDbOubXUCqd5MRTepFHPZDsTsfa1BdDY5XSioC4Rx4IN6
	CewjtSg4UaVB8cZ3mCvkpNGH+C4hx4gVVMw25edYkaS61HjaSEYMRCIFpdk4obcYMkXxFnI+rZXZg
	voQnENUYShNlNwjoXtYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnC9-0000000D9c8-3jnf;
	Sun, 14 Jun 2026 15:56:21 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnC7-0000000D9XV-0eFx
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 15:56:20 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-8ce0f17a69cso20617516d6.0
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 08:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781452578; x=1782057378; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T/sfSCxlJV21DnAv9Ka6YHdwihRoTK4jXXXiCxaH1uE=;
        b=hopVLVqVWy0EKyQ3Agb/Y/QcoZSFF1ifY6TCzA/jsCp0tE8yWVbHM1S/ZySXVsELFy
         iw0lVJP2IW3dVVFsu3bAGK27HMNYpFm9JqSW7+MPsCYcWPCB5WD1G/17OGZGqnFvPvWc
         RE+Dx9TU6GO/3j6Q/PszEle5rOXuenREHgBd34svkvPryooC3kkRs0FfVmp+2KR9MfSk
         vwv75OKCj7WgyKba6oN3JE8qmDGIG9CE7m7Yf9XvhQQmy+wm0OZeTyMB1iEfcI1bpr2g
         9Uc8o+yQW2SMp3GREDAHkIPE+L9mj68gCBUxzNP/G9oLoo1VqMQyJSnK3+k77BzWNnSI
         h+zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781452578; x=1782057378;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T/sfSCxlJV21DnAv9Ka6YHdwihRoTK4jXXXiCxaH1uE=;
        b=gI94eOJ9r4eL/oLY3gLW1lpVPJBRrumaUClRY0317WzLlbhd8gfeIVUdC6CMFg/bPn
         qllhHzAGRknTsHCMffiMaHHhIyFdgSrhe/6FXJhfxwhPMO+WiQOAm8N1ZEa/kMuLSxrF
         zlmvJ4Flx03LoLHVKqByF3D/1pQADxqER4kkI70u41uYaTEnAniwNX25F6qxEpOjReGn
         RHsqeyi1EwzYu1OR0gIkUYxYgpJtOLCJJWBSLNurptnWOdcTuXFRd+jyngqpMQtzb4Pb
         73/QnShtypQ+rmOwKSBxwuPEtISZoNgAjSWIjocvXCdiRx3LZz9l9WeY2yrOIA7xEtxk
         6eoQ==
X-Forwarded-Encrypted: i=1; AFNElJ9xcfG1mZ7xjoU3KWJNlN5W6V03GMtMt1mJGCMmQj9HpXyBihBPnp/KQaBzdFNEUOmw+vPG7g2Kf3/9a9e/mw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxteXstCpfY2vxcjRBR8lKSN6211z+yDSiJ2fFjSKoYhqoX4tGX
	6BlGhRxrSzKgru7cgSXnUSquCwTE13nvYLr46uBUwHPIfDGS+vir+4c0
X-Gm-Gg: Acq92OG2Q3uk59ILZScKnu59gzYS0dB+Uz4/jEGTLU5UROu9rNyPp2ek62X8PuEEtTp
	w0OGYWJYAWBUJORnM82l+RpqGAWoTa2BpkBD10+gAt3j/q+M3j+hSC2fdm5Xi4+VZWgCLC+oULW
	RBzsC5rHz9lPxnocHlXktHJgWTXD9kSbBqt59Ok7EqyxqmKlwVYz3VC4N/LvPhdlplF6XHoOBeL
	Y9KZeZRGgeLAuSWRASitcXOtsdKe48QzBO4EN7SAsu5RKlWaelNw6wsu4jxU+CJHFnSGF0zki9z
	clUHHSyFouH6hZfXT5Kqqd3F2f3g21GF+cSF2J/7T0T5302KmpD4ogNDLUAV1p49ftLcduJtpiM
	RdC9+dRZl6W46mIUZQYVVfSGoBFTdJ5yX9iF2Ey3fPSdMmXWXTJS7auRg1AdXIiYfcncGCMdaN+
	afz8kdu3P/6f6FexzuClZPwqc8XWD1eahbQefrzXbwr6Z6dluKh0EHAmHt3umcU/OaiB6GAZ9t8
	VAA+5Ef9l7nVKxzqo0U90q/HeZIDYwEDaIIfLWSYJw=
X-Received: by 2002:ad4:5dc2:0:b0:8ce:d302:f069 with SMTP id 6a1803df08f44-8d32b47b28emr185934816d6.3.1781452577762;
        Sun, 14 Jun 2026 08:56:17 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8d30522cbeasm82008446d6.44.2026.06.14.08.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 08:56:17 -0700 (PDT)
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
Subject: [PATCH v2 3/6] media: verisilicon: hantro: bound G2 HEVC tile loop to the buffer capacity
Date: Sun, 14 Jun 2026 11:56:05 -0400
Message-ID: <20260614155609.3107600-4-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260614155609.3107600-1-michael.bommarito@gmail.com>
References: <20260614155609.3107600-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_085619_201943_D0AC0811 
X-CRM114-Status: UNSURE (   9.91  )
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

prepare_tile_info_buffer() writes one entry per tile into the tile_sizes
DMA buffer, sized for a grid equal to the PPS uAPI array capacity. Bound
the loop to that capacity so the writes stay inside the buffer.

Fixes: cb5dd5a0fa51 ("media: hantro: Introduce G2/HEVC decoder")
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
Assisted-by: Claude:claude-opus-4-8
---
 drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c b/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
index e8c2e83379def..94fbd79885aa5 100644
--- a/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
+++ b/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
@@ -22,6 +22,12 @@ static void prepare_tile_info_buffer(struct hantro_ctx *ctx)
 	bool tiles_enabled, uniform_spacing;
 	u32 no_chroma = 0;
 
+	/* Bound the loops to the tile_sizes buffer capacity. */
+	num_tile_cols = min_t(unsigned int, num_tile_cols,
+			      ARRAY_SIZE(pps->column_width_minus1));
+	num_tile_rows = min_t(unsigned int, num_tile_rows,
+			      ARRAY_SIZE(pps->row_height_minus1));
+
 	tiles_enabled = !!(pps->flags & V4L2_HEVC_PPS_FLAG_TILES_ENABLED);
 	uniform_spacing = !!(pps->flags & V4L2_HEVC_PPS_FLAG_UNIFORM_SPACING);
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
