Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B13D8C47073
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Dec 2023 13:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xbLBJcRw/dNJFnXXWoTxDBmiaSbE3XFSPm9dqOELuk=; b=nMaSCf8spqYrYD
	jLzjivfJ6s3ab2S4qCgcsnMONpCY67+INaiIP3iVb5CpouDPNhgSoQdIWWeASqW0TP6pPhiUy5W1L
	QcgQwAjhc9PnQt0w6Lz4Q53po+BfkT10nBeYejqQ3Q+taVqFqG/k6t1pQebqE+2yV+vuwEfoFoARP
	iv/XGz5VDiFH7m9d8C5XoBn9/niZpOOy+xuKPJB5lOAr4XnMBO0Mv03OCoihj/Xpr+jonyZa5TxxU
	6eiKVFSJIgVMS/hJyXA/1vlcl+RUhoRS7HlvQhAJVvVIvUpmypAT9U0VrO6ZUkQr00PEdUetGm79y
	EQGta3XzNLIG+wAJfmhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIqFw-00Gu5v-1A;
	Thu, 28 Dec 2023 13:17:00 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIqFu-00Gu4m-0V;
	Thu, 28 Dec 2023 13:16:59 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-6d77c6437f0so2110422b3a.2;
        Thu, 28 Dec 2023 05:16:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703769415; x=1704374215; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ryeoFuAvKhes97Kz9LboAlOnpJ0eP7zbuN7MA5+dcVU=;
        b=bCiRLInRFosYZf7g7RlTrIcUdg/eVOIwGcO2h4BwMHhzwOSkKHBrJI05AWhQB5zDHB
         J8hTcPF1w579z3PVpPJNvzPU/bVfg/BAnjCSzduf9fNNkHoCR7LoQRUlSOMxhF0UkmV1
         HsB5hPgXWOrnjdoj9P331UawWQDSwdVTyhC/huzZ2/A7cz2ekVJP/rJkbQ/CS/q+q2kp
         fdt7PlRWc7c266h+0MXiTQ/2ejfDDUeBxibwGDF8TquZzTxsTkGGfd5BNtz+QDYaXriD
         +ZmsfuMqgr7tKoLbF7zrqtXC2C5HKBiIw3LzQvtljGgjbaO1ix5q9IvJUSho7Ox4M52M
         W09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703769415; x=1704374215;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ryeoFuAvKhes97Kz9LboAlOnpJ0eP7zbuN7MA5+dcVU=;
        b=ChKCeLyUgcWUGbIjHy3+d/0m7wAsPw+g/hgc8c9k9OcjTs88dpUwrsZzktxgru629P
         57mQdAF2ehEvDwE3Yr2tkjKJr0nfvyS92kJI5kH6f0RvrjbpW40BbgjopiVQ8vzp0dlf
         A2wSCfpi5L5R5qBCosdA5IXym/AVjsu82At92X6JDBMmzTzEVSkPXphzu/ffUsUJFZeg
         RmEA682ugZmT/PJstsLaxUymaAcIOpUpBC1+Z6FVew8FSqcdOm/FaOZl2f1ob41TIq1b
         HgB7htHdRDZAch0a1mxnhOp3Yi4U+V9LSeg0psYc407HXiP7aoNt+2RMwhL4AzgvUT8B
         Mbzg==
X-Gm-Message-State: AOJu0YwuTdoH1/3VNEjKykb8pK1xoAr0UJvHwgpxa8gnPTcwHBtl479m
	RvoGJLomnEvNEV8UtPNHL38=
X-Google-Smtp-Source: AGHT+IHcpt2DYZLoqCeTFaYbserpY4VrjDSfDMGQyRlnv7vg7FZ26ANwqK9BvLR5rMSHJCN22ZYV0w==
X-Received: by 2002:a17:903:22c7:b0:1d4:4fa3:2125 with SMTP id y7-20020a17090322c700b001d44fa32125mr3592329plg.126.1703769414990;
        Thu, 28 Dec 2023 05:16:54 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:3708:559:ea20:9883])
        by smtp.gmail.com with ESMTPSA id m10-20020a170902db0a00b001d0b4693539sm13864221plx.189.2023.12.28.05.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 05:16:54 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sfr@canb.auug.org.au
Cc: liujianfeng1994@gmail.com,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] media: verisilicon: Add support for Hantro G1 on RK3588
Date: Thu, 28 Dec 2023 21:16:15 +0800
Message-Id: <20231228131617.3411561-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231228131617.3411561-1-liujianfeng1994@gmail.com>
References: <20231228131617.3411561-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231228_051658_198567_D80408CC 
X-CRM114-Status: GOOD (  10.27  )
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

This patch adds support for existing Hantro G1 video
decoder on RK3588.

Tested with FFmpeg v4l2_request code taken from [1]
with MPEG2, H.264 and VP8 samples.

[1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index db3df6cc4..21334bb64 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -723,6 +723,7 @@ static const struct of_device_id of_hantro_match[] = {
 	{ .compatible = "rockchip,rk3568-vepu", .data = &rk3568_vepu_variant, },
 	{ .compatible = "rockchip,rk3568-vpu", .data = &rk3568_vpu_variant, },
 	{ .compatible = "rockchip,rk3588-av1-vpu", .data = &rk3588_vpu981_variant, },
+	{ .compatible = "rockchip,rk3588-vpu", .data = &rk3568_vpu_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
 	{ .compatible = "nxp,imx8mm-vpu-g1", .data = &imx8mm_vpu_g1_variant, },
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
