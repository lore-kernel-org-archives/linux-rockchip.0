Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 030D1C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Dec 2022 13:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pVqmb3u6mfVOx1i6PIQwb13vyPfLRTMP4BsyCU2y3fU=; b=sVOC8nCpAJX4ze
	lhGqv2xHSmx4JYb3ixxYHCHYKYYnhg0oHbBFV/+fAXEDg4PMlVo8fQsWZfVOKvmfaSLBzCMapxHEn
	xM66Fv+MNCsTS/T7DhG0w+4ANdcc8ZPV1msbDzS0Z+L/tuwo/OP6t8KqNqg+cServ8Xtwf2lp6mMy
	vNtvCwSMXMRwM6scYyLgcEQePu6n9sD3DsKQW1qdo5PNW/5Lgv4qpJXxpwS15KoAoMNGjCIimi/+t
	CirrM6bFgS2u15388obRQcl9QsjIM/jZlyCjBKWO7XJr3RRxJ2eZf5/mK4NJX2Gyt8qhYrHbFE/jR
	wDpVhF6eOAZNnewB05Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6AhO-00FHHu-9Z; Fri, 16 Dec 2022 13:24:26 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6AhD-00FHDj-Sk
	for linux-rockchip@lists.infradead.org; Fri, 16 Dec 2022 13:24:17 +0000
Received: by mail-pj1-x102c.google.com with SMTP id z8-20020a17090abd8800b00219ed30ce47so6034329pjr.3
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Dec 2022 05:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z3c/01zbRXmXJ3Ns12aVUql+2qMAvVplYeam5dHAPwQ=;
        b=Qmvns9E/WsdgoZHXrhiD2zkq46lfY7kbiY5GVvG5rz1HJE/eQJnzUYllOL014aNOme
         d8K1Lx5sKwSmlwabu4De2hsKAoHvOneE12pPU6bRdQ2g6mr20hvzZ5UxEKxiAoam02Bc
         yB5pZ1P+Hw3H0GJpshKq1wt2x/m8VSedYT854=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z3c/01zbRXmXJ3Ns12aVUql+2qMAvVplYeam5dHAPwQ=;
        b=KMRzuHqgWoHoSocQNeExrngsu1pMRff/yduTkVhLNxXKdNoYF/PGwvtMr7fkt/qx6U
         AEfcFypFD1ziklg6VdJ9+YC18i6WmXem56rsdaKLkih+JDrznqurtjtkywV48SBfBkiS
         fYLZm9zcrkxPRJa1JZOzG+ZAr6cz1f/3aDUhNnYWBcVr/uM1+26fLQZPfDXGmM6nsfkO
         bi93uaUO4hwV2oHnKurUMu6169oQ9FSbFFtLNUNCxPpFT+WHfot60vk9AUTSjkK6YjCZ
         Nle2wFlpuVa9g0SS+bjaBX5PJjo9oayv2/eUkb9eQImliM8zuG/zr4V9qLc3Fl5DKbtB
         IKsw==
X-Gm-Message-State: ANoB5pldxM2mBtud2exXUzsmXDF3WFpOMwlxw5p/702/67dESVEPM5aa
	zsjbDoieJA5S6itln3Ow/2NHlA==
X-Google-Smtp-Source: AA0mqf6VjK3LTR68NXjMELrPiMDHsqonu6gGq1N+lcTkMWKK7WGOTT1qfpRmG7LdZYyT/nQqY+pXOQ==
X-Received: by 2002:a17:902:b611:b0:188:f354:d927 with SMTP id b17-20020a170902b61100b00188f354d927mr31414615pls.8.1671197051083;
        Fri, 16 Dec 2022 05:24:11 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:1837:9294:e702:48a6])
        by smtp.gmail.com with ESMTPSA id l7-20020a170903244700b001894198d0ebsm1624278pls.24.2022.12.16.05.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 05:24:10 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] media: hantro: Use core-generated bus_info value
Date: Fri, 16 Dec 2022 21:24:04 +0800
Message-Id: <20221216132404.1173254-1-wenst@chromium.org>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_052415_936002_FB82524D 
X-CRM114-Status: GOOD (  12.98  )
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

The Hantro driver uses a hardcoded value for the bus_info field in the
media device and |struct v4l2_capability|. This worked well when there
was just one device. However with the iMX.8 series we are now seeing
two Hantro blocks on the same chip. The static bus_info is no longer
sufficient for differentiating devices.

Since commit f2d8b6917f3b ("media: v4l: ioctl: Set bus_info in
v4l_querycap()"), the V4L2 core provides a default value for the
bus_info field for platform and PCI devices. This value will match
the default value for media devices added by commit cef699749f37
("media: mc: Set bus_info in media_device_init()"). These defaults
are stable and device-specific.

Drop the static bus_info values from the hantro driver and use the
defaults.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/freescale/Makefile           | 1 +
 drivers/media/platform/verisilicon/hantro_drv.c  | 2 --
 drivers/media/platform/verisilicon/hantro_v4l2.c | 2 --
 3 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index ef6f364eaa18..ef815442c78b 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -55,6 +55,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-data-modul-edm-sbc.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-emcon-avari.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-hummingboard-pulse.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-ctouch2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-innocomm-wb15-evk.dtb
diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 8cb4a68c9119..b0aeedae7b65 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -1050,8 +1050,6 @@ static int hantro_probe(struct platform_device *pdev)
 
 	vpu->mdev.dev = vpu->dev;
 	strscpy(vpu->mdev.model, DRIVER_NAME, sizeof(vpu->mdev.model));
-	strscpy(vpu->mdev.bus_info, "platform: " DRIVER_NAME,
-		sizeof(vpu->mdev.bus_info));
 	media_device_init(&vpu->mdev);
 	vpu->mdev.ops = &hantro_m2m_media_ops;
 	vpu->v4l2_dev.mdev = &vpu->mdev;
diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 2c7a805289e7..c1a116031013 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -142,8 +142,6 @@ static int vidioc_querycap(struct file *file, void *priv,
 
 	strscpy(cap->driver, vpu->dev->driver->name, sizeof(cap->driver));
 	strscpy(cap->card, vdev->name, sizeof(cap->card));
-	snprintf(cap->bus_info, sizeof(cap->bus_info), "platform: %s",
-		 vpu->dev->driver->name);
 	return 0;
 }
 
-- 
2.39.0.314.g84b9a713c41-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
