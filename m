Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0597C47073
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 17:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4H20KGTnTwMs8TDCKcfro2yM/P60LopUy8ZbFBJ31lo=; b=zEp3lmC9gMaNZ6
	TV9ELeL+w4Deh5CmvyFXxaybD/J2SlKI6SQfTJpKjgElaXlbCDOyB34VYMC9JKpD5hFdq+di6J1oo
	BwGDUOv+WEdt4tDxempCgprqJPdPrJtAt2c0EksgPDdTTo5K0ykNf3tE8pjgZwd03i4NvGnu7FtYO
	KtjBWOmlkc6pJHda3VJG+pu+nYhVANkIjy/0ax+QtPsfTkR8TmHFaLclJeHZ4iCzcFB8468UKxme5
	10zz4EwxtAsSmEGgrsSahkW7SgaDN3PDHa8nsjf1yU8eQLeP/Pberuinzh2AHbq23GrsKI/oVZEdJ
	8YZiBaVtiMia8LWb3ftA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIXtN-00FEEK-1r;
	Wed, 27 Dec 2023 17:40:29 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIXtJ-00FECG-2I
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Dec 2023 17:40:27 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-28c934be96fso350641a91.0
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Dec 2023 09:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703698824; x=1704303624; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gwaYM1PH1SgDuz8j6xYAmjET/NuMiIbLCMJmRCvooPc=;
        b=CsCPtSGbmMKoAxUStt3xl8G3NHevJvBQB59TLVscyg1tV+FSWgZ1eBb29dg1WuUOCb
         lt5lFs3ff2eb9y6125UhZbFR99x7lwWzidzhfsIzGbGwA4q14bNWyvRjRcP95RxqfBnN
         0Jo0Lte3bpCMBxHT+KDgZPBGUTc/Adj6oHK0/xrWVw0J128nSi44BOen9pjqQHA44jYv
         07tQlLuhsbiVLxCNKSisF/YoFkgW1HPJliDVYEPERJMRo4XvUqO5+jl5qb5ISOxmU4DX
         vpfYSqAa79p84wgMDU05BXaqC4Lo7uQU8m/5PWDKGmnX8ndop8Jl4P4QDEyNv/GICt+X
         KAQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703698824; x=1704303624;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gwaYM1PH1SgDuz8j6xYAmjET/NuMiIbLCMJmRCvooPc=;
        b=OtYg1I9oIA3PCWFDu0urcNjMKEZKX1MX8Wp9T6rwqiS+/+QGJ/g4uMOZgO5kQwhl+/
         rMzs9rlo13eZSK8D/lW1po8eGC2TgNzflCB4VAfz0oGIcDnPuGgAUn+Yg0GFahTmldLz
         rWx6oDzrEiN+GmIPpp8H/C5lhWska8L9FfrEoex8HiEM7XMQdl/CfAFdpc8R2hPReErv
         8YWL9pqfexVicQ6AneInmuQyG5Fqnsv5wXcpXodMAdk59HqVmkXorNxZp5sGhVGevLMB
         sxQzJIO072VDT+1KP623ea+XcNOS9k3FXg/tx5JEsf1P1LKivMuMR7q5ondS7cQPyF3n
         cOsw==
X-Gm-Message-State: AOJu0YzrLqOePHEdiqFeEO3XHrv+bw/7xQMpX68AsZXcRtUmROjdhlfE
	XPJ1ASSqPBHSDfPHa8iLqA8=
X-Google-Smtp-Source: AGHT+IEkoXdtxaXTBOKfUNSDG1JYl5u4z0jBjeXdXyn/IMVZsgY34HskJAzpRrLSwTtL0qu7M/msSw==
X-Received: by 2002:a17:90b:2287:b0:28b:f2e2:6158 with SMTP id kx7-20020a17090b228700b0028bf2e26158mr2485270pjb.56.1703698823837;
        Wed, 27 Dec 2023 09:40:23 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:3708:559:ea20:9883])
        by smtp.gmail.com with ESMTPSA id qb4-20020a17090b280400b0028aecd6b29fsm17240262pjb.3.2023.12.27.09.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 09:40:23 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: liujianfeng1994@gmail.com
Subject: [PATCH 1/3] media: verisilicon: Add support for Hantro G1 on RK3588
Date: Thu, 28 Dec 2023 01:39:09 +0800
Message-Id: <20231227173911.3295410-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231227173911.3295410-1-liujianfeng1994@gmail.com>
References: <20231227173911.3295410-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_094025_749609_E9B9E481 
X-CRM114-Status: GOOD (  11.39  )
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

This patch adds support for RK3588 in existing Hantro
video decoder kernel driver.

Tested with FFmpeg v4l2_request code taken from [1]
with MPEG2, H.264 and VP8 samples.

[1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c    |  1 +
 drivers/media/platform/verisilicon/hantro_hw.h     |  1 +
 .../media/platform/verisilicon/rockchip_vpu_hw.c   | 14 ++++++++++++++
 3 files changed, 16 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index db3df6cc4..4c988f272 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -722,6 +722,7 @@ static const struct of_device_id of_hantro_match[] = {
 	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
 	{ .compatible = "rockchip,rk3568-vepu", .data = &rk3568_vepu_variant, },
 	{ .compatible = "rockchip,rk3568-vpu", .data = &rk3568_vpu_variant, },
+	{ .compatible = "rockchip,rk3588-vpu", .data = &rk3588_vpu_variant, },
 	{ .compatible = "rockchip,rk3588-av1-vpu", .data = &rk3588_vpu981_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
diff --git a/drivers/media/platform/verisilicon/hantro_hw.h b/drivers/media/platform/verisilicon/hantro_hw.h
index 9aec8a79a..276f09a7a 100644
--- a/drivers/media/platform/verisilicon/hantro_hw.h
+++ b/drivers/media/platform/verisilicon/hantro_hw.h
@@ -405,6 +405,7 @@ extern const struct hantro_variant rk3328_vpu_variant;
 extern const struct hantro_variant rk3399_vpu_variant;
 extern const struct hantro_variant rk3568_vepu_variant;
 extern const struct hantro_variant rk3568_vpu_variant;
+extern const struct hantro_variant rk3588_vpu_variant;
 extern const struct hantro_variant rk3588_vpu981_variant;
 extern const struct hantro_variant sama5d4_vdec_variant;
 extern const struct hantro_variant sunxi_vpu_variant;
diff --git a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
index f97527670..4ee8d64eb 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
@@ -797,6 +797,20 @@ const struct hantro_variant px30_vpu_variant = {
 	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
 };

+const struct hantro_variant rk3588_vpu_variant = {
+	.dec_offset = 0x400,
+	.dec_fmts = rockchip_vdpu2_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(rockchip_vdpu2_dec_fmts),
+	.codec = HANTRO_MPEG2_DECODER |
+		 HANTRO_VP8_DECODER | HANTRO_H264_DECODER,
+	.codec_ops = rk3399_vpu_codec_ops,
+	.irqs = rockchip_vdpu2_irqs,
+	.num_irqs = ARRAY_SIZE(rockchip_vdpu2_irqs),
+	.init = rockchip_vpu_hw_init,
+	.clk_names = rockchip_vpu_clk_names,
+	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
+};
+
 const struct hantro_variant rk3588_vpu981_variant = {
 	.dec_offset = 0x0,
 	.dec_fmts = rockchip_vpu981_dec_fmts,
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
