Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B0B7CD98DA
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 13:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6jo2kY/eqlR+1rH0qXOMjqoaAVYkhUQOeP0Hp6w6hs=; b=UZxyA19XJZwi4z
	fzd0QNgQkqwcRckudnLhwkHsLLv7Hkb8mV2YoWonemI81gWk26D/ij32jjuFGBlIhALmdj0cqsnCs
	eiD/RVJiHHx54sMBCapx9YVkzg6c25q8QHCWtysxiLgWjYRxzA9dqPMM09ji0N2EtPl6bQyE2RxWS
	qvitDSl3YlX7eBFRYp3aIpMDkSLqBbuncNnBoMWkpq54Rm5NWyq3rl8vJvSw+XVpsT/kcJaPqGq0F
	3TxV0lzrxOK5MKKOMo/j91rabYBYrjgEvayNBdQ1c9jsilJ8IlD60eqpSm5MlKuUfVlKa6zGEGEkU
	IlnI/KwULR99WXks5O9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbR-0000000D0In-47m2;
	Sun, 14 Jun 2026 13:10:17 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbN-0000000D0C0-1hoa
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 13:10:14 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-9158c621ebbso321516485a.2
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 06:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781442612; x=1782047412; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5zfgey8wi8pckGyHiNYDJA2CHFfMtkrqEl07FMub/Hg=;
        b=S7e0yDFoaZq43Z1YGiDuS57U5Yf25Q9bMTAccOzIaVoWyhWoTrin4f/NdhBPrXKLWJ
         fZ2Kj2x+YjwD5+nUP9jLcgrUM6xLl3oATU/bgZfYTzHD4HNcFkR2CLBNXTzYPCqFbdWs
         Pdz/qo8aGoqPePJy/EvAbQY7R9WmyPlVrXbXu6iGx6q64xDwrKCYGZPP9ALBYoTAh7Nd
         JheXMx5OpFYfbqgotp6F1OsoSlB6tiHPCrp7gFaaznpdgxtLig82kPrZqJWeWv0WnOYw
         6ZZJTslcU6NSnDeWJBX/Ub12cJEEunYnBx2SAEiC/YMVI0cVu1K1MORCGI2/JUZ35bzu
         0i2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781442612; x=1782047412;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5zfgey8wi8pckGyHiNYDJA2CHFfMtkrqEl07FMub/Hg=;
        b=VFaElYCJOcGTcPVWZ+dDuowsU+DC4TaS9YDrVCWb9nytXZ9VUMPYS6rMcGjS43KB21
         0ibxWm+CZAvcwAmXAVU2QHcOeFmGrxpJ0sBnpxPWlX9S+d/JEqR4fzl3pSvi/MfjpOkw
         gcIjc6S8Ad7XJbURSa4bgtyLPQD8rbQMI78oMFAXlfOCurf2yesVEFBovtnzZRjX8ftm
         qRKnn/a9Ik55mpHXAhiMl7eE8JWeY6aN0noF/ZYjW5gmoGMvkwOs/jvLcnEyWOJ2ff/h
         gsPDmC/5rcPIC7RP1FR7srXv06XAatwZ20gT64fSn56xphr+5TSIFrmpbnZJKgADfqKB
         XcqA==
X-Forwarded-Encrypted: i=1; AFNElJ9IjyPIddqH7s6fl/PQun1ey97r6+AoeXubwGAngwdpLHmV8OzFGgF4eUNLByhuGYqz7EHh4lnTysL6p4uJ8A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3NGMExVgS8Ms+aA+t4X1qOcv3w1lb+uFusdtHI/k/YXSGgP/X
	z2l3KKlF0sToDPHmyaBuvjQB7lkPjtn7KrfRDZ42k4aTlJ5vcqB4QUjt
X-Gm-Gg: Acq92OFnDNDacUiW/XrMfrjZZjxiRgTTRbkwDLujiq5xY1mReEne+LPjUGOq0ONZTrB
	p7ElWPJcnt151c6xKEGnL/p0S9Kf30L8Je43N3yDPnk2n75aZJn3oO1IZ8pHgpHplPSWarFB6GW
	NFp22CQKz/2L9YqCHWLd6I8hQL7MQ4b5ZfrIUWoYz/kLY9XuovKwvV376FzEwpAo+szYwpXZCWt
	SPav+9wS8ocKVfULg7r48YcD89r78QOxaVonVe31ME+sWyChgNrKBnT/4pOgbhK/5252xxfO4bM
	cLhzfyrv7NLyz1XwSG3HHGf/ZwN2dWL1PS0W8nsaa19bQm2oO0wfLV7kMmVUpeDLMdhxAtd5H/C
	hJOwZdrMV/h6fZTWbY5/UxmNWnbi3wIpRHEd3O0eUoGgaoEnS95cFwk/1UfngiwEfZOVTfyB2kS
	Zgwp9J8GmS1D4IrJNQyxAb9ZG29L4VR7aLq5ENCetis6uNCVH3r5N8dmuILwgRgFFlqnq00G/CT
	os4niTeP+3ZJUiNw6YvcI+j6iufc3+ZMa7johM6nYU=
X-Received: by 2002:a05:620a:2590:b0:915:aa7d:42bc with SMTP id af79cd13be357-917eefc36aemr1143196185a.10.1781442611978;
        Sun, 14 Jun 2026 06:10:11 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-91619f1b400sm752878985a.15.2026.06.14.06.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 06:10:11 -0700 (PDT)
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
Subject: [PATCH 3/6] media: verisilicon: hantro: bound G2 HEVC tile loop to the buffer capacity
Date: Sun, 14 Jun 2026 09:10:00 -0400
Message-ID: <20260614131003.2524025-4-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260614131003.2524025-1-michael.bommarito@gmail.com>
References: <20260614131003.2524025-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_061013_455941_AF0D4B95 
X-CRM114-Status: UNSURE (   9.81  )
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
This is an i.MX8M Hantro G2 SoC block not reachable on the x86 KUnit host,
so the driver-side out-of-bounds write is not reproduced here.

 drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c b/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
index e8c2e83..94fbd79 100644
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
