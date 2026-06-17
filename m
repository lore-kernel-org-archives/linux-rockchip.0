Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3430ACD98F2
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 02:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/UpxmuB/TLjUGOM6bBmLiGV2jgAtREZyjBboxmjVZhg=; b=VcBR/8iX2h93/J
	RxOmbi4ShJltDXxGJ6CpyMTgAGiogXl3+tUPxbQzTW958OYRbEpuqN5To3eco+JAsV7u8n00JV7Zs
	QMljZcfANO+yd/50ktoN2ZodhMnKYrVJRc0fUkWKNeN9DG02QnNTpk+M6u7i1dHFk22xG2DoApQ8o
	PVlwhQt8oMtOjw4wjBGvY4zU5OYeVSCKD97ho8UJKTbxjEDSWdk38Gncgdu2/YE/NROIKWhcJ+fj0
	vNApP5WiZOsKerEykvlf/U5GSSDUunnYHC76l6zOQ8rcVWMTlULlQbr6dQY4Q5d142D/m8uVyIn3T
	6Kxoxu28B6x4RMtz6LYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsL-0000000GUAb-1hjm;
	Wed, 17 Jun 2026 02:19:33 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsJ-0000000GU83-0749
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jun 2026 02:19:32 +0000
Received: by mail-qk1-x72b.google.com with SMTP id af79cd13be357-915aa0a9293so50391085a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 19:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781662770; x=1782267570; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sml+UeKb9+6PbEr3ie8aYF51m/8hlVenyLRv+O5D8SY=;
        b=Ln2ZxH7IJUN+EgmKzoewKf4GY8mTUGAHZD3im5as9k2SSSQ0EwruFwdpnnxoip9N98
         kqMN4Lbu82d/sibinYgYXDR6J3hKGCGNBxLN3ll2i2S9TAUBqg33fOmOI5CIh+Q2ibT5
         3LaMkwCpnkxpW7sk+rg9r3uOjapxPXjPElSlPC5P1Xb/zdMjl1f/SAJRzCSKAEqtULz/
         YogCjh93+2mTNuDUWm9smc1rhyGhl5C14u3lqz8dUttY63aNEjd+25lNy8bR2cMmLkXG
         JIDt4LjkNqeRcLOmxFrQAlEGqNI4xAnYdvOv4dzqeJXcd6HUX4z6wuO5WijZOQ3XAFz9
         1Qqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781662770; x=1782267570;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Sml+UeKb9+6PbEr3ie8aYF51m/8hlVenyLRv+O5D8SY=;
        b=pt++zcVZ4gekJsJ/+NDnLp/sVlrpkFAVH/USzckAEoNvymBjFOzNNCH9MtTzvXzb45
         zy7V5tY1m0EAeIHjR5xTF+6XeIVaFq0C2zd63axaDJAVbHfm86Kh0lrJ8B8SI+54Kivi
         Md+J+xQyr98rs5ke10EgdXoZreiWSIk92IRdADCV6AsBDkHWwVcReHshff/W+B90NKjo
         AuDBisSH8E7WwjMfBZXFaqTVnVMJWHLK9ZRebXMKy4xenuyrT1N2vl5uW1YSMWQwDBwc
         9zS9TAX7ZfImklsCiQgqnqcCqSz0AUFALxs+KhprsBdVRDCLNlxRVYkUg4og60jjvPDn
         nHoQ==
X-Forwarded-Encrypted: i=1; AFNElJ+HybSbDp8oF2+qXo+GtwssdvVi17ePMXsPZfewSyldQo8sI1fcCnmRvtVo6lfDqqXWhe9tuFhCTeAZwiBJWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzMaEbsUsYsu3DMoSiUmlkwk2ysSVCN8pwfJuS+St+Hdwr0xmBT
	+23l8F08QSSmNF5OBiMXCWmhTvpR05NNvFREndN1CI5W8LwtVRPLj6+a
X-Gm-Gg: Acq92OExT7lzWZ6lKkcMiGHza6LXf3VeROaPTSh0Smf4JSUu4GvvICCQ7xNaCGVpunG
	UAi95i4cbKGaGZo8eoekp2ibVX1g0fztfgReB3MGNNMlXpe5p1+6mLVzOkYFJoWaFr+4BRvzkMO
	Zu3Gta1gaoawJbSRROyq6yuZwbHl8D/NDiSFPivLqrM6iXYXXE+Kurnv7KHCHbNY4Vp8N9WdKel
	Jy2YkhpzPymJ2xVJpK1G9VAMLPU4mb25/tk4vgEGTg23bgOxoAwc9AfCY0K+shIAcJcv60/kPCq
	zvc5wDypfVhD/wddL2vDKz+YofEXzOREl4q1es1o71fqpcIX5qdDPwQ6ssGxpBP/eBfzKnlzIRw
	xX22vY3ibRQNmHV55juXNYj4jCrXNDw1CYdE7noq0Tj42Fzo4eWEkM6yA4PcyT3aKubKLwkYY7u
	lLt0k1viMQfz2WY94KnfSgrcdVY9ZgxgqOqlNFl/2hzpZPwPt+dG9QnYkUZU/+/sa+5MK8gvvJm
	hE1vvNgBmcp67BfgsUTrfsdc/r1/OXk
X-Received: by 2002:a05:620a:25cc:b0:915:351b:3ad5 with SMTP id af79cd13be357-91dcdd72cbfmr167100085a.29.1781662769637;
        Tue, 16 Jun 2026 19:19:29 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9161a006e35sm1657646285a.28.2026.06.16.19.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 19:19:28 -0700 (PDT)
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
Subject: [PATCH v3 2/9] media: v4l2-ctrls: validate AV1 tile counts
Date: Tue, 16 Jun 2026 22:18:59 -0400
Message-ID: <20260617021906.2746743-3-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260617021906.2746743-1-michael.bommarito@gmail.com>
References: <20260617021906.2746743-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_191931_195895_7A1B10A4 
X-CRM114-Status: GOOD (  12.47  )
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

The stateless AV1 decoders use tile_info.tile_cols and tile_rows as loop
bounds and as indices into the mi_*_starts[] and *_in_sbs_minus_1[]
arrays, as the divisor for context_update_tile_id, and their product
bounds the per-tile descriptor buffers, but std_validate_compound() does
not bound these u8 fields. Reject a V4L2_CTRL_TYPE_AV1_FRAME whose
tile_cols or tile_rows exceeds V4L2_AV1_MAX_TILE_COLS / _ROWS, or whose
product exceeds V4L2_AV1_MAX_TILE_COUNT. A zero tile count is left to the
consuming driver so the zero-initialised control that existing userspace
submits is still accepted.

Fixes: 9de30f579980 ("media: Add AV1 uAPI")
Assisted-by: Claude:claude-opus-4-8
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
 drivers/media/v4l2-core/v4l2-ctrls-core.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
index 6d478e1a5ef22..fb20ad13dfec7 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
@@ -790,10 +790,30 @@ static int validate_av1_film_grain(struct v4l2_ctrl_av1_film_grain *fg)
 	return 0;
 }
 
+static int validate_av1_tile_info(struct v4l2_av1_tile_info *t)
+{
+	/*
+	 * tile_cols and tile_rows index the per-tile descriptor arrays and
+	 * bound the tile loops in the stateless AV1 drivers; the product
+	 * bounds the total tile descriptor count.
+	 */
+	if (t->tile_cols > V4L2_AV1_MAX_TILE_COLS ||
+	    t->tile_rows > V4L2_AV1_MAX_TILE_ROWS)
+		return -EINVAL;
+
+	if ((u32)t->tile_cols * t->tile_rows > V4L2_AV1_MAX_TILE_COUNT)
+		return -EINVAL;
+
+	return 0;
+}
+
 static int validate_av1_frame(struct v4l2_ctrl_av1_frame *f)
 {
 	int ret = 0;
 
+	ret = validate_av1_tile_info(&f->tile_info);
+	if (ret)
+		return ret;
 	ret = validate_av1_quantization(&f->quantization);
 	if (ret)
 		return ret;
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
