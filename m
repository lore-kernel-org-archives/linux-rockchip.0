Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 870F7C982ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 15:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7m5hIdWDumIaRnXKzHKyhUnRWIT7PVXVWGCqioics8=; b=KO3i6t6XYuRAPF
	pX0jeEi3nyOtWQ0kzj97Uj/hlJ4HEnM1Qvurg2vmkiDzgwR1TAHrUfPZDEBZxxNT8/Lpmzfl5yxor
	hG4OXyvRT5X6de1Q5qvl6Eurb/PczmhQCetFyewtgJNh934wZT9qqOCbL8oqIggEzOCMWfMenNXuW
	r1hFdfurMxrNx/tXX/UF8Qv2bMsuB9Hpp8UVtAh8jjVD/+asXCiQXZJtNfQ8TYnY1zigN7MGe4mmy
	t6KpGgfvoAqXgI7Nb3u7hZ1qMF0rdmSXGIDhYxCXCCmqxxYprcrAImelEHmMz6u/ZOlMyxK6LrT2L
	6D2pc8a4IONRbfH5DjPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8fzb-00000002cYV-1QI8;
	Mon, 21 Sep 2026 15:31:43 +0000
Received: from mail-wr2-x2a.google.com ([2a00:1450:4864:30::2a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8fzV-00000002cSf-0UM2
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 15:31:41 +0000
Received: by mail-wr2-x2a.google.com with SMTP id ffacd0b85a97d-48439feca17so2407384f8f.1
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 08:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790004695; x=1790609495; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/2HAjOtO4JT6djVdWHJMgChsjtAACcDgZqmOTkPDDE8=;
        b=Ja6OeviSkMbcJMzfxSS+Z1e5ZnoQipHoWbcF33GIyvNXyHR3FI1TMzg/SM/mLr1/vS
         W5JNxYXK+Y9FmpsEBbvnOGqAeeipSphRjinJZ0FGJd7XcYMkinprSIuFpOZewzFJ1tW8
         JcByDuJxX1TRHpt/1zZW/VAJ9PZNobFB8+1e2RFTdVqT6ToiPfA0OXaAGFD6r1k9py9P
         9TrJ1r9fkE2iJoqRC6cG70v3ooRTVd0h7cDEnLd3m7PrqkFSxFT7kni02urE1uwLrkwk
         gZ+MnHTLBdIVUWjksmIwJDB3WJxY4Jqf4VIvstSJMZgW9TOVQgW+XF4wjDL3q/OQlgc9
         lKQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790004695; x=1790609495;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/2HAjOtO4JT6djVdWHJMgChsjtAACcDgZqmOTkPDDE8=;
        b=CNDTDKl+3llU/6gRWHZKAp0U0uOpwmBYOsB3Y0iiyJS8DX9/t6IWltc8edH6RCTbS9
         nUZoqqvg8Fns4dpupmD8jRim9UU1SC3s6xa5T4EnqPdJCC37/XS83K2u50i2FSfDGdc2
         BEh6GnTVFADFbAPAB8hcLphrU5T2HtAcnEwyBvfSzzKGDqQsOSF2Ih2SYUhwlGT/ZXq6
         gZa7IaVMgCxTTO485ZAe4uPU4wwc64wtCQJl0AxVnv4NAGgInTMVu15mXtAX4oaYkyAd
         jP80Fyc690xVRoEnEz5TuBXT1M0L2n1UKu+RqBBiXDqlMfKDPOXsSRElPfC4+J4KYtr+
         3feQ==
X-Forwarded-Encrypted: i=1; AKwUvBwm4pkWt4BZVz2e87KBaiGTpreYG5AmOgPdpi+U//zT2nO58YJDwJe5cURzHNvrRKzKb8yaaVsWORBleUmV0A==@lists.infradead.org
X-Gm-Message-State: AFuF++njx9CZlb2BrvnJdITKZ3HzjKHpJL7Li7ewOrYqHhBvVdLgU7Ur
	584kVvAWA0gVrVO7en8nJT2taVeyAfnlj7xwrGwj4n7wonlcSDNcMSK3
X-Gm-Gg: AYBFou0Wu7IOmwF5i0WMyDUQqd3yh2uxnsOWdecPxfX+FmYYl2xRe9J/yinnP4BjWIp
	HRplxeiGLgwFqk6/KngaTwHcQ/shfb8kpLK0b6I7V74RYl/Y+iMxNNRnmQRgRNFHS2m7piKIOjh
	CYpvuJMotN54kdMdqtbHj5JUzN3To+0iQAjg1kbg5XkWaaeowvRxnX+opJT4yYkIClpWztab5VH
	23uZCWrhc6k7dYrKSM0stlJypP+LrVwHxl/mCDYEatG12tp2AviWEvJYbYMFQPWfvwgVI/Zim6m
	AnMvmHqCwpSee3IYEsGauThdG2Tiq2rotL11sNDV7rSclJT0qC6dNPZjPf6uIhEN1x1ovtcW3Q1
	HrpTz3EysJw2V1PN8cr0OEwk+JDs5d/2VKDFA9o4w7jwjZ824klwyUg+wPn1fH7Dg8eXyAqroIL
	nSn2d3UPGUD4TR1L3/dYtV2mk8ThfY6K/unwWTqvPHYqIlRGvshut+liNe2lquoiMSyk+7DYRN+
	9rMO7DOPaOx0yayMKRVkmWafuv+DsQfMAUcmZWwheOxqcZduPbNEC6fCg==
X-Received: by 2002:a05:6000:260d:b0:488:5d3e:becb with SMTP id ffacd0b85a97d-4885d3ec377mr3423054f8f.39.1790004694794;
        Mon, 21 Sep 2026 08:31:34 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48724562aebsm25313835f8f.14.2026.09.21.08.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 08:31:34 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Mon, 21 Sep 2026 17:29:59 +0200
Subject: [PATCH v2 3/5] media: rockchip: rkcif: add a callback for the MIPI
 ID_CTRL1 register
MIME-Version: 1.0
Message-Id: <20260921-vicap-rk3576-v2-3-0a4582e20c72@gmail.com>
References: <20260921-vicap-rk3576-v2-0-0a4582e20c72@gmail.com>
In-Reply-To: <20260921-vicap-rk3576-v2-0-0a4582e20c72@gmail.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Michael Riesch <michael.riesch@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790004687; l=2149;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=RarTNDU+cdrtiJCRKIjHK9/KtTW/V+grsr3mpwyd0ak=;
 b=AfnwiBUYc0Iwvv07IbNj4GLcQp3c8H7KT2SE4wJXU/4N3vJJhNOprP36ijMkFaowrAHFyv3c6
 vPvJjApEssmBBjgqwoobVr5BffVD1PUuu8Qebca+Cabc2NfcYXvyCnb
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_083139_528088_53CB408C 
X-CRM114-Status: GOOD (  13.54  )
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

The contents of the MIPI ID_CTRL1 register differ between variants. The
RK3568 and RK3588 hold the capture size there, while the RK3576 uses it
for the virtual channel and data type filter.

Let each variant provide a callback that builds the register value, in
preparation for the RK3576 support. Variants that do not provide one
keep writing the capture size, so their behavior is unchanged.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c | 5 ++++-
 drivers/media/platform/rockchip/rkcif/rkcif-common.h       | 2 ++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
index e0acb9049ca1..432f47a1fc23 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
@@ -749,7 +749,10 @@ static int rkcif_mipi_start_streaming(struct rkcif_stream *stream)
 	if (match_data->mipi_ctrl0)
 		ctrl0 = match_data->mipi_ctrl0(stream, active_out_fmt);
 
-	ctrl1 = RKCIF_XY_COORD(width, height);
+	if (match_data->mipi_ctrl1)
+		ctrl1 = match_data->mipi_ctrl1(stream, active_out_fmt);
+	else
+		ctrl1 = RKCIF_XY_COORD(width, height);
 
 	int_mask |= RKCIF_MIPI_INT_FRAME0_END(stream->id);
 	int_mask |= RKCIF_MIPI_INT_FRAME1_END(stream->id);
diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-common.h b/drivers/media/platform/rockchip/rkcif/rkcif-common.h
index 4d9211ba9bda..f83c8099b78e 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-common.h
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-common.h
@@ -207,6 +207,8 @@ struct rkcif_mipi_match_data {
 	unsigned int regs_id[RKCIF_ID_MAX][RKCIF_MIPI_ID_REGISTER_MAX];
 	u32 (*mipi_ctrl0)(struct rkcif_stream *stream,
 			  const struct rkcif_output_fmt *active_out_fmt);
+	u32 (*mipi_ctrl1)(struct rkcif_stream *stream,
+			  const struct rkcif_output_fmt *active_out_fmt);
 	struct {
 		unsigned int offset;
 	} blocks[RKCIF_MIPI_MAX - RKCIF_MIPI_BASE];

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
