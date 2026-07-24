Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3737DC531C9
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 13:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQanFSrQXN17TaJNKQEPszdqrDVueoZDpC+bl4v2ToE=; b=Z15dcjZa0BExiE
	zZPHBRSKv6qOjYtsmXu83FpIRbfZM/WfuEmTcQbL3mlpnQsAEwkfJr+mMvuC1Q943WIiQEg90hqtJ
	B1D6BnbLFlc9pLXK7Zv8twH7l3B9UbYfJ1Yx3yAyM+2ssoBY9tNVkX2LEkbabu0YE2tcqU4mKvwoo
	w5FI3rfA9+OwzSMfl1FbbvE26rlSyeNzbw8RKMdPBArmdRGh5yznZxtcylY5wYt8f9s5eQ/1RGiu/
	r/4QZ7sqHFbjOwjSWgg16jsFgJlEkk7Cz9Xb4Vx5O2hi8TQCJ3tbgJzT5vlg7FcbspA2QclNUM7Lc
	GdPEJ3AzOFLjWsF8G5HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnFhU-0000000GSRv-1rAy;
	Fri, 24 Jul 2026 13:12:28 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnFhP-0000000GSPz-29Ur
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jul 2026 13:12:27 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-8485b358552so399779b3a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 06:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784898742; x=1785503542; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sFKNVa2uScHavigTP/Jv9UBdhKrx9CJ9eCeBI3gBJk4=;
        b=pCkqOWiMpsu/2zBM+QOUfCGffMwpyKElojgDMJmef2pJZ8Jmotd1gcNdINx+7Z11j/
         a9uuC+zgiHo4x1BWczRTr3o4y/ypBzceD785hRpYIUbxAOWTk7IKQgsCCPH5+iAHPw4Z
         +SmM7zuu/2k4Dz7eUO/RiyOHCYwZ8a5tv5VX9J7cNx1GXZiTYkLpYcIzslNzKhEJgH75
         fwDljfC2dvQclJw2l3ajw8HPTFElsQWfYTo/aed/18w3CaV8/PMVsVscRk72MEPrJmA8
         wl9ygsCrCM6rVzDJ92PlCet7vI+BH9qsC/6CB0F/VBHHY8L4ToqTqiYXDANPRA+0UWom
         n+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784898742; x=1785503542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=sFKNVa2uScHavigTP/Jv9UBdhKrx9CJ9eCeBI3gBJk4=;
        b=G9doSxt/66zRQAvjVDZlOtRzba/S6HPd9FGMT8/UbZEdIXBqRG/vTGYRujmnrsNUuy
         7WLqizRsL/ooYeDsnlzN9HuUJysDDXLtA3T2fA+T29yCrQedwtr7feMIRpRDmyT/D0T0
         d1Kpj8u7HO5h0pVdFELr2Q9jl+MbmICElYYW5hk4WHM9qv/AJ5FHd9cBsMrlgKmvN2hL
         xU+vkD2uiO/XDlAA2b3UY8zY+ha6xUltVMxNXa8Ns7idgMWcSmDDrZAOlAwtmcV2f869
         siQcYcgJwl8lgkLLWV98B/eslGRMpcWOVHy8D1+4Bg0ar7IThJZ+aP2hy7i4M5kX76HR
         y+HA==
X-Forwarded-Encrypted: i=1; AHgh+Ro8+Us8vd3BfFFpngiLv5pb9qcQLgu5HOcP1P+5voJ+1y5+Izk8rps7hafGXskqReX0u7il1obgl2ZpflAuaw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxUOFcKij9BN6Yr+vo8UmhUrLdThqusY5iJEiuTjcIJg6uIe9JC
	nBedwENKYthC7qe/nSYem8L/A+DfJNKsf6IOvmJIUUAdidGVyi30fNxF
X-Gm-Gg: AR+sD10wDbJ82mecdff7GHzbDJ5ubSdIO/z8WacLz9cKOGkqiixMWVoDdldEQSn38xZ
	GuE8uVYL74quIAeXHLrYR3EE6CYPKexkJG2Ly1fhlvDWFaiSgAzPztBnT/aSA5bEQOhnqdZJ89I
	5CZicB2/8v2YEw43R939D2aOI1691b7j1NkZNaRGwAOYb7xpl8rJ2EnDRabj5dI/1TljqWqiYJJ
	Eg7CmiYEdjM10guIWO+7J//bnlK6IyvclNaHF604RFhZYOpcWgOLZkemyfBEGomnLuATjhN4L1O
	GeUnYIQ8I5Su9gaNVUPuU7ESlyJEmlU+fjSwYd+oy/ozEv3uxTQl1KMp5/oVvJIEHJwnoMaoDCO
	lWlr2q66h+xpU93wt3ZyqagJCzyu7JiJCWcK2cQXTdYpwcym3NXKDislp0vpWNCZXkXKZgwanKD
	VoI42urHilHljJRE+yVuuO7GtLg69fI+QFjM1BcWqgRkJy7tso6QCFVipTEO+W
X-Received: by 2002:a05:6a00:139c:b0:848:4c3d:659f with SMTP id d2e1a72fcca58-84e2c29b83fmr8147681b3a.75.1784898742361;
        Fri, 24 Jul 2026 06:12:22 -0700 (PDT)
Received: from debian-rockchip-rock5b-rk3588.. ([184.22.139.118])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e175ce455sm4666968b3a.48.2026.07.24.06.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 06:12:21 -0700 (PDT)
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Hans Verkuil <hverkuil@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel-mentees@lists.linux.dev,
	skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	jkoolstra@xs4all.nl,
	Tharit Tangkijwanichakul <tharitt97@gmail.com>
Subject: [PATCH v2] media: hantro: release runtime resources when device_run fails
Date: Fri, 24 Jul 2026 13:12:08 +0000
Message-ID: <20260724131208.2315-1-tharitt97@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <CACak8wN-Y=oDbEVbou+RetS9X-Lca_MZHSY2NJFaGWR3LoVBKQ@mail.gmail.com>
References: <CACak8wN-Y=oDbEVbou+RetS9X-Lca_MZHSY2NJFaGWR3LoVBKQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_061223_572033_57399579 
X-CRM114-Status: GOOD (  14.19  )
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

device_run() acquires a runtime PM reference and enables the VPU clocks
before invoking the codec-specific run callback.

If clk_bulk_enable() fails, the runtime PM reference is left held. If
the codec-specific run callback fails, both the enabled clocks and the
runtime PM reference are left held.

Add separate error paths to release the resources acquired by
device_run(). Disable the clocks when the codec run callback fails, and
drop the runtime PM reference when either clock enabling or the codec
run callback fails.

Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
Signed-off-by: Tharit Tangkijwanichakul <tharitt97@gmail.com>
---
Changes in v2:
	- Fix the codec run failure path to disable the clocks before dropping
	  the runtime PM reference.
	- Use a local vpu variable in device_run().

Tested on a Rockchip RK3588 (Rock 5B) board with Fluster:
  H.264 (JVT-AVC_V1):	     129/135, unchanged
  MPEG-2 (MPEG2_VIDEO-MAIN): 23/43, unchanged
  VP8 (VP8-TEST-VECTORS):    61/61, unchanged

 drivers/media/platform/verisilicon/hantro_drv.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 2e81877f640f..72250bb56872 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -170,29 +170,34 @@ void hantro_end_prepare_run(struct hantro_ctx *ctx)
 static void device_run(void *priv)
 {
 	struct hantro_ctx *ctx = priv;
+	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *src, *dst;
 	int ret;
 
 	src = hantro_get_src_buf(ctx);
 	dst = hantro_get_dst_buf(ctx);
 
-	ret = pm_runtime_resume_and_get(ctx->dev->dev);
+	ret = pm_runtime_resume_and_get(vpu->dev);
 	if (ret < 0)
 		goto err_cancel_job;
 
-	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
+	ret = clk_bulk_enable(vpu->variant->num_clocks, vpu->clocks);
 	if (ret)
-		goto err_cancel_job;
+		goto err_pm_put_autosuspend;
 
 	v4l2_m2m_buf_copy_metadata(src, dst);
 
 	if (ctx->codec_ops->run(ctx))
-		goto err_cancel_job;
+		goto err_disable_clock;
 
 	return;
 
+err_disable_clock:
+	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
+err_pm_put_autosuspend:
+	pm_runtime_put_autosuspend(vpu->dev);
 err_cancel_job:
-	hantro_job_finish_no_pm(ctx->dev, ctx, VB2_BUF_STATE_ERROR);
+	hantro_job_finish_no_pm(vpu, ctx, VB2_BUF_STATE_ERROR);
 }
 
 static const struct v4l2_m2m_ops vpu_m2m_ops = {
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
