Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 916A0CD98F1
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 02:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEvUSMZKq//zqvkF6wyLqPnim9C0gQdeMYwd8TssfLY=; b=aKQMLZ0HIe8OO0
	q9eu64FZioj67qdka7ViIxpoEkft1ProUqyoXHt68nAScKFpBnxQlUkQloZAxbeduxGV1FSRE+4iQ
	Qss+yeyfCRQ12gHPjWpZCsnmLIT2RcFf+Pv4x/f70RnJ1x+jRNuCCPbOBmGkBdaTrgyavGm7ZlEcO
	7CLU4n1l9w4vFt6VxTHnCVsJo1qDaQHGIq6UspV5gTHD/ULR6+RJAllTCMiDZ+9YZwDXXqX+lt5vP
	rQfrRjmXDVqj8yLLTI2imPjcpdEUVqC1A+8Mb/UpdoPmivj4ostk5fwtrbYjSsQk6fD00NXSqyTub
	oxSbxSDYg42yRkpUwpcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsS-0000000GUKM-1xHs;
	Wed, 17 Jun 2026 02:19:40 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsN-0000000GUCZ-3Lze
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jun 2026 02:19:37 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-915671abde5so595196885a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 19:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781662775; x=1782267575; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U3LnPj4hsy7t9yGnUJKMptAoaBCn6LSom4+XC5E/nvU=;
        b=jFjXhi6tHwlhFv8YQLBKGGlbzNHXWY+uormjOuMHGvbgManHrJLxO/gmRdq/yPpLjG
         +VMCnjrxncftKiHTo/l4YnVOfSzPGS5aGZzmQsfQsFJmKuVTW+NJwldkgOACj6YjVW3Y
         HLbV4IHYpAlyYPIWGhd+8yc4ZO7kpxAbOaV2f49PRwhMrZFPcVbIRPJ/AbBsRbqzWUmk
         IuZAVAlpu0NKrOI1DwJVMQS4IOVJefN+ccNhzSMqOiPrnR1Zt9BDj04qntg1uv/B0slI
         Ktneo1Rgfh6Eh1W/N7gBEy8xxl24COwWhvlFhrbKuZaiLPwihysNYGswjjlcBUg72GVP
         kvMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781662775; x=1782267575;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U3LnPj4hsy7t9yGnUJKMptAoaBCn6LSom4+XC5E/nvU=;
        b=eickEkHoZy6H/PsQeSwU/8uIyj89BphcZt6+E2Gf5VbYezXvH3L/LcMVYi49M0xSuL
         UkHvvJENwUayERnHXKUPvUuUWg0gFrAiv+bpQFHFSQvMzirNlwu8uPNhHM9cXrTJ4JFI
         BBf9SqVG8TRe3A/hxzX9gY/onmzFTpP2u1RIz1ph9UpAaHXfJNpAyzxudqdPzv3CVwdB
         VFa2JjsXnsLX5oquM54sBpw6qqNYzzdAgaiArHAj0uub73KIxJkD2deAjdFv9qvQ4x50
         axMMKEhMGzsIMzTpgKFAWQpC+rH8qTvsdeOBAkbj4nnirNAhLPkQwnr9E7WLoS9wJ3Ls
         Pddw==
X-Forwarded-Encrypted: i=1; AFNElJ/wn9ttTB3sc9p2hu2IX9Gn7XPE0FbdGNQ5SBSH/LJ5h5SWT/iKoGSvCwIyFY3drohvSfkZuB9HcWKpu8X0jg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+Z1TS915Ourc+6pfpE/E+yzSaXYiGNyNOMHMsyaMTWgGr0Yrl
	umo7CPbWFYsm31Lg7pZAdfmnc2WxjedKen9axT70/WPE3rDFcFVAOvni
X-Gm-Gg: Acq92OG0iBMl/uzdXIiz5edec6nSxZ9dSRpPtoohrdM32j6LEZhf+809Sd9HmzIkY3G
	w0Um2Eqz1DnNTzaLtTLZjenIT7Q++ciqh0BC+opE05mwrjWX+6oZyR5Fz7Exj4spmMOSA54/JNJ
	AzFHzbiD6oMM4P53ysfuGM5ZAaJkaE/Mvf4Jk4Uu6zXTdIHRoBmAZe7qCZxP+h9+jGsXguC2LEe
	bCDGy4K6Fiy9tRJ/6bux+eng5wVelyxg2/fuPliEKcfUdsLYtP195bszoheolXexOnTHn2WaTcZ
	qoYfUiu0XiqyYWoMKXDqkz750xLOUja/704K8vRarHXMr7TtNx4yI0kFju/c39OlhihDWunA0+q
	f1DyNIeYfYNmpXJB65L8d+c3HOaoKREc3nlYyJ4TAKn7Zl8ql8RxwLRknLh7vM9yQxF32/3WOq5
	fPxotDlDutyq8n6yl/0nIcu2Z/WbKhKEiTfxWPLZHqwNJEjNobhvkVC1uq0mnq2IgKhsDcbBFSO
	RKHSYtZwDTFwBb9UaPAAlI47B/IkRrn
X-Received: by 2002:a05:620a:7084:b0:915:eec4:1ec5 with SMTP id af79cd13be357-91d8e49c839mr409744485a.51.1781662774717;
        Tue, 16 Jun 2026 19:19:34 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9161a006e35sm1657646285a.28.2026.06.16.19.19.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 19:19:34 -0700 (PDT)
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
Subject: [PATCH v3 5/9] media: verisilicon: hantro: bound G2 HEVC tile loop to the buffer capacity
Date: Tue, 16 Jun 2026 22:19:02 -0400
Message-ID: <20260617021906.2746743-6-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260617021906.2746743-1-michael.bommarito@gmail.com>
References: <20260617021906.2746743-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_191935_861582_D2B30B96 
X-CRM114-Status: GOOD (  11.31  )
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
DMA buffer, sized for a grid equal to the PPS uAPI array capacity. Use the
bounded v4l2_hevc_pps_num_tile_columns() / v4l2_hevc_pps_num_tile_rows()
helpers so the loops stay inside the buffer.

Fixes: cb5dd5a0fa51 ("media: hantro: Introduce G2/HEVC decoder")
Assisted-by: Claude:claude-opus-4-8
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c b/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
index e8c2e83379def..e7a7c7a42467a 100644
--- a/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
+++ b/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
@@ -5,6 +5,8 @@
  * Copyright (C) 2020 Safran Passenger Innovations LLC
  */
 
+#include <media/v4l2-hevc.h>
+
 #include "hantro_hw.h"
 #include "hantro_g2_regs.h"
 
@@ -15,8 +17,8 @@ static void prepare_tile_info_buffer(struct hantro_ctx *ctx)
 	const struct v4l2_ctrl_hevc_pps *pps = ctrls->pps;
 	const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
 	u16 *p = (u16 *)((u8 *)ctx->hevc_dec.tile_sizes.cpu);
-	unsigned int num_tile_rows = pps->num_tile_rows_minus1 + 1;
-	unsigned int num_tile_cols = pps->num_tile_columns_minus1 + 1;
+	unsigned int num_tile_rows = v4l2_hevc_pps_num_tile_rows(pps);
+	unsigned int num_tile_cols = v4l2_hevc_pps_num_tile_columns(pps);
 	unsigned int pic_width_in_ctbs, pic_height_in_ctbs;
 	unsigned int max_log2_ctb_size, ctb_size;
 	bool tiles_enabled, uniform_spacing;
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
