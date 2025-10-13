Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBE18CCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlONmR6qt2BQB0rLDXaf8JrJ7fRZ5Lu9EMkkIyu5YqM=; b=whbso7BPaeDASP
	zbB+h2fpss+BJ/A378ll0wdskdeou2RF3esTP7kz7knLFDgg9DCK4A9frZ+QCLAso28SpYjGPOxGy
	UjpcNmzRgR/P5Tq0Ca/V8w0gNmyR9eGGNCOYbHPsCUDp5y+ttiYVm2RxNfWMVfbGYki1rEIH88pA9
	Om5jJuBF+Kw6Ps1gPe/xvJl2nOEb1m9MjDkIOHbvbl3B2uFhoy4sjhfZKG6dW7bPK4lDTbAyjqauC
	i80LSE0tkt47MVIrqMlgqZmoRBb6aFWFHfxDJkMw2S8Ja0BS2GimAL8TtR26uxFa25JL3SYPGHd7i
	hhGi4ihLd2qFibGfrwow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKy-0000000DLyS-03Xe;
	Mon, 13 Oct 2025 14:15:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKQ-0000000DKxw-0XkK
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=Nh8P+yO8NsicwjNOpOoZpCCNOToSmwS7+PssriFBCJo=; b=s1/edWyiER4KVyNMLR04IN/UCJ
	E/o9w2rVG1J959gDhdetmK2VcBTORTVFlXkZEYxa2WaR3N1cZ44YhxnWdjAdlCu4+tKcPDVwqFNny
	DF1/p1Vr+OlT5dHkaKN2ohs5mHDWdYGfHjVRuUfHj1VLYKWdu5KyklOGGQlSpJ+Lp7t7T9htOQqV8
	Xyr5fTXShN1IUEXLUxxq88V9leY58AoXxkL0BYk2Z4QEa9gtwMBRu2x39QPdLoS9USrJNyhsb9TlA
	1GYUyBiRjOq+O4Cr+HpvQl9rwa/V2ePFrBxWThZXIZqUdsM+LCbbbVBVEacxLehvr1Auq2bE7dYWf
	LyweeioA==;
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKK-00000007W4u-2lVy
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:08 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5818de29d15so5335659e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364903; x=1760969703; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nh8P+yO8NsicwjNOpOoZpCCNOToSmwS7+PssriFBCJo=;
        b=ZtySOHFH8P/R5qIyuKOWgqrRjbXafUArgGsdSDIHPM0dO/+KfQ9CA72Ob0hGY/dAop
         ToUzDpKc826EshLleN/TZq2FxKQeYs3BOFNh5D1PDGqR6f2wo62QmQWvDFrOp9mmXDbz
         jEcypA+N6jhv1/Zm1MF/dvuPirG7l43DeiWhs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364903; x=1760969703;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nh8P+yO8NsicwjNOpOoZpCCNOToSmwS7+PssriFBCJo=;
        b=TFxpavsAjrVuFskseyD3TpJcrwBD0kfaSoV7pBBp0/j5gWbyMd0GHPXrPVlVXhETC8
         +NUd8I26J6Z3M2lfky8wERNpaN7+ENbKQsU+SEF/zP5f6n8iftAa9rcv5zzGQMLxQTNP
         a6grU0e41jTXkgRY6je2zkKZGM7dU0N10JU7/QseMyGLUtdIxTwNRMKFZbFJba8mRSEo
         hSjND3MFtcqV6u3LhVfB0FB2FkUgJXCPvEUl0Iv0iEzLzlFALH9mNqzO4RXUH3CAQXZm
         amA0q/oQLJIB1A7xpk67RoQCRit4BRHqjr4S6yzCtift34BTrkD5yheDQ6ieFwAvnIuJ
         fEpA==
X-Forwarded-Encrypted: i=1; AJvYcCUfVXM1Pdzn/05qO+ruwplGPZHCCdioW5e2Tfa4Mjv8Kc/FeAexhU/UU470LxobnZnIvHUhqPUqhwn0DQ+ZiA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyhc1wV3nQ3AzfYcfnYBMs+w8bE4B1Sb1wM2+Ed/YHPX873Ht3l
	YT0V3T8Nh9+iNoTQR6MNno+wY7g8BRq/ZQcpGDs4rBDT/A/1JCs12w0m7K0d1wgj1g==
X-Gm-Gg: ASbGncsuBaJKW8c54sbS9HStLcsYb9cxpBwtnRvKtfyXCE4p6H3Siu9X+L7B9WSqWRc
	wf6MEEZ4M59mKzS7ujDJFSTfP2kbVUd3M/GXBitRXglPSjVw8xLsZOrwxLxRjJeIhytZlNF2j9R
	oSaVKoJ36y+b7Q4n+uVzCXEJit/PL8YkLVsMarFX4qYo8qsiUm+Lj/mk56/lN9gH9UVeHvReJaU
	0KfDFx+ZNvLsRJDrc3P8114mCHYCuQyLd7VXXsbe0UE9qSVFMjXsWa9b9VjPVZ0dnJ6YI8Vvgzf
	r0Kv6o/iWLbzJXre8TCxvEbfQvG39m5u3T/wQ2T6utDo84h3V82vuGJ0I2uJaKtfsHh5JvEymeE
	VT5hmoDcJqjV9GgYiWxDNJyeqykjuPUVc8WIWTvwAo+T9gbY9aLwEJDTqFKU+EdOn4byxedDsHt
	wTP8eoDYSnYdurhnP5Vg==
X-Google-Smtp-Source: AGHT+IHTiQ/qP/uDKTsRTktboy2tz6+O6QgpLJK8/qSWk5/9SrQl1mdClJ1AYpOXCltPovAllg1/dg==
X-Received: by 2002:a05:6512:3c87:b0:576:89cc:95e3 with SMTP id 2adb3069b0e04-5906dc12458mr6541046e87.10.1760364903311;
        Mon, 13 Oct 2025 07:15:03 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.15.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:15:02 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:15:03 +0000
Subject: [PATCH 23/32] media: ipu6: isys: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-23-2c5efbd82952@chromium.org>
References: <20251013-ptr_err-v1-0-2c5efbd82952@chromium.org>
In-Reply-To: <20251013-ptr_err-v1-0-2c5efbd82952@chromium.org>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Hans Verkuil <hverkuil@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 =?utf-8?q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Leon Luo <leonl@leopardimaging.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Jacopo Mondi <jacopo+renesas@jmondi.org>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
 Julien Massot <julien.massot@collabora.com>, 
 Jacopo Mondi <jacopo@jmondi.org>, Daniel Scally <djrscally@gmail.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
 Sylvain Petinot <sylvain.petinot@foss.st.com>, 
 Yong Zhi <yong.zhi@intel.com>, Bingbu Cao <bingbu.cao@intel.com>, 
 Tianshu Qiu <tian.shu.qiu@intel.com>, 
 Tiffany Lin <tiffany.lin@mediatek.com>, 
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
 Yunfei Dong <yunfei.dong@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rui Miguel Silva <rmfrfs@gmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Martin Kepplinger <martink@posteo.de>, Purism Kernel Team <kernel@puri.sm>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Yemike Abhilash Chandra <y-abhilashchandra@ti.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, imx@lists.linux.dev, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-staging@lists.linux.dev, 
 Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_151505_966226_67EC98A6 
X-CRM114-Status: GOOD (  11.66  )
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

The %pe format specifier is designed to print error pointers. It prints
a symbolic error name (eg. -EINVAL) and it makes the code simpler by
omitting PTR_ERR().

This patch fixes this cocci report:
./pci/intel/ipu6/ipu6-isys-csi2.c:91:22-29: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/pci/intel/ipu6/ipu6-isys-csi2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/pci/intel/ipu6/ipu6-isys-csi2.c b/drivers/media/pci/intel/ipu6/ipu6-isys-csi2.c
index d1fece6210ab25de4e8c7b5247f049cc1dd1e677..d858976112ba2bfc2907f9b88dc6c6434053f4a3 100644
--- a/drivers/media/pci/intel/ipu6/ipu6-isys-csi2.c
+++ b/drivers/media/pci/intel/ipu6/ipu6-isys-csi2.c
@@ -87,8 +87,8 @@ s64 ipu6_isys_csi2_get_link_freq(struct ipu6_isys_csi2 *csi2)
 	src_pad = media_entity_remote_source_pad_unique(&csi2->asd.sd.entity);
 	if (IS_ERR(src_pad)) {
 		dev_err(&csi2->isys->adev->auxdev.dev,
-			"can't get source pad of %s (%ld)\n",
-			csi2->asd.sd.name, PTR_ERR(src_pad));
+			"can't get source pad of %s (%pe)\n",
+			csi2->asd.sd.name, src_pad);
 		return PTR_ERR(src_pad);
 	}
 

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
