Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4674BC636D6
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 09:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaWzPvpF+ohdRWk718QvFnCpOI7rH1gd9pdsBPTP0QA=; b=zsQCZP5gSkK/J1
	hfypwNtf54R2wE/ZJGFQEpFGnla5io3SAOwaJZ/uAmyLH/toTHzAVvEho71ctY1IUgnE/AU4cH5KF
	CjMuzwZTLyj1ZYTZMZVMhLZ0aExGfRNCEVbswuhBPR/l51FBDXiXbm0GlWhEY3uD/kxU+xR+0N5Vn
	Ry9CSHTmQlreDQXLoxUiZrN5UFrHAF/ram/atFM36sZJZXI926aYVghZBnqZTYD8kXgIKPpIbuZCd
	YlC9QRsA69G7I8j7UlCnqmxSMpuEAJOJ6qDKyD/mDxwZjQIX6iEJZ1dtM6C5Uy92FMC9rcyCg8Mev
	4LaJScaVKda4TORwJ/zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsBo-0017dN-S6; Fri, 03 Feb 2023 09:17:00 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsBU-0017Uj-UT; Fri, 03 Feb 2023 09:16:42 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:d413:5f9c:fc3a:208d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4B5B66602F08;
	Fri,  3 Feb 2023 09:16:35 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1675415795;
	bh=WeghlRFY57k/XRhbZSebcHWkeNrEWgqxdzHNHRFL4B0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=krTDlQ3UYuk65VZzTeSbLvrLvgLmqYPYXnfZRrtZLyf8H4jab9+9UueZ9fAJYMqjG
	 U3YfkwlW2KqcsKGU/P2KlFuhZHav+2oByHo7CgdNaX+wwUmUHDYF+Z5qOhFkX5Je9N
	 lCCw7A/X59NxP2oo7HviS3nees+4SbipjbHkdxW2UxZKOtnSKj4ErY9NyeUM2qLji6
	 FOLWwCGqfJ7M7QClzl8MDIRTFRk8NKeDVpoQ9NPfFNDePWoTOWI8Io/7RlSxwLS2KZ
	 n7noqfkXp664quBYN0DC49PPLgaZTyjEMnwV1moTs66+h4BpwJOW61eaMw1w8sYAlB
	 2FCW/45YK2Ktw==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v8 1/6] media: verisilicon: Do not set context src/dst formats in reset functions
Date: Fri,  3 Feb 2023 10:16:17 +0100
Message-Id: <20230203091622.127279-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203091622.127279-1-benjamin.gaignard@collabora.com>
References: <20230203091622.127279-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_011641_217208_244BF927 
X-CRM114-Status: UNSURE (   9.87  )
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

Setting context source and destination formats should only be done
in hantro_set_fmt_out() and hantro_set_fmt_cap() after check that
the targeted queue is not busy.
Remove these calls from hantro_reset_encoded_fmt() and
hantro_reset_raw_fmt() to clean the driver.

Fixes: dc39473d0340 ("media: hantro: imx8m: Enable 10bit decoding")

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 2c7a805289e7..33cb865238de 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -381,13 +381,10 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
 
 	vpu_fmt = hantro_get_default_fmt(ctx, true);
 
-	if (ctx->is_encoder) {
-		ctx->vpu_dst_fmt = vpu_fmt;
+	if (ctx->is_encoder)
 		fmt = &ctx->dst_fmt;
-	} else {
-		ctx->vpu_src_fmt = vpu_fmt;
+	else
 		fmt = &ctx->src_fmt;
-	}
 
 	hantro_reset_fmt(fmt, vpu_fmt);
 	fmt->width = vpu_fmt->frmsize.min_width;
@@ -407,11 +404,9 @@ hantro_reset_raw_fmt(struct hantro_ctx *ctx)
 	raw_vpu_fmt = hantro_get_default_fmt(ctx, false);
 
 	if (ctx->is_encoder) {
-		ctx->vpu_src_fmt = raw_vpu_fmt;
 		raw_fmt = &ctx->src_fmt;
 		encoded_fmt = &ctx->dst_fmt;
 	} else {
-		ctx->vpu_dst_fmt = raw_vpu_fmt;
 		raw_fmt = &ctx->dst_fmt;
 		encoded_fmt = &ctx->src_fmt;
 	}
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
