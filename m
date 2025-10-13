Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EECCFCCD18D
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VR7Kq3zlX4s2hTQ+Rj4ur108+Xc+c+X6h/yK8YwhQAk=; b=swZrHKl5EWPXif
	pcj3vnWnGPIn+aMZPoBIVa7fCL6Fc+3tPMGaxYWgnFyUEJuC6EfjOrFeKL41OPMj1YQMDjG+Rx5uc
	Fjgx4cS2dk7wYncDnf4j5rv2llMsGyMhH3kCeOP3sFHZ7Lutbf6aarIFnHL+RNuhWmgorquXIMN7m
	j1Gi9HLj2E9OE3oVgZupxFAonUD4C4oeEiL8RHcTsnkKd/Gte1PwR1wB6jernFYCRj5JIEfrc9blI
	rD0ys8SWeg3sEC938+om4thSdURyhL4Au8xJsVwuBHOSxrg08TX0NIWSa6GALoTAs1ji33H0zA8kq
	Z+zOi25nTonIij5KPtIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKO-0000000DKwc-2vyR;
	Mon, 13 Oct 2025 14:15:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKF-0000000DKcM-1MTF
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:14:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Ytl5LFG4k2lvKI1fHaoSkPXZntuyxjUYygC+V2GNf2w=; b=JHmyHgs3H6r49G6bt5lLS49DzV
	WgfCZBQczv6osDkhKDViD6eReGywyyJnR6XovJa6aXhYy1dvfrS8nIDViw9WZ41NfrXa53JA5HMyP
	aGjI4lHMHFeUdalBARiA8ltLU4yPenjHytR9vGXopEFiYUMgYhDfZ54uVmR4NIMGhjVPkGHfr6jJQ
	n2Z3z/i9CFl6L2sYB1y6tksAyZIt2uGLxhaEjjmPLRhD3/frDfdZEHgOxg8dLEp4X8ow5on10IoQ5
	Q1oDsdCPcnMY9IBc2H5SAyVUL4Z1u+JITQjGNN0UVROMX5rhhYmkAX5tbA8ghwsfJFkGeOX7Mdg6L
	9Nieccvw==;
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKB-00000004N1j-19ss
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:14:57 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-57e8e67aa3eso6501955e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364893; x=1760969693; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ytl5LFG4k2lvKI1fHaoSkPXZntuyxjUYygC+V2GNf2w=;
        b=P11pkuJyn8oWJ0ArBMigyoLi/xd/PdVhzBaFeg3MQz4aKLprSlvLMOS5N0WEmFlM66
         OrieMoKvG6d+PqMcQYP6b1ryM8swVZCFw/0XfMEJWQUiw6wX6egpDV8UfSVRL7hGhbbH
         JF7Zj/nb1bjcYC9dl5hgEl0a/nrMxGb5kjNzw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364893; x=1760969693;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ytl5LFG4k2lvKI1fHaoSkPXZntuyxjUYygC+V2GNf2w=;
        b=SCHr8dH8sOFOt2cxKyQydYgSa9w0Ln4oumK6fiMrjNdRb56aqg5pqDLct5x+T5T4S6
         iemCWEx797YMAsOcQGJJ7wRlff9asyYKc99x0Odg2s7/qTVCjtklM4XIkTBhsdgxBXji
         AEkf7GwkWpUC/mNHCtLKCo+PK32KsSc8lc1f87cERxKGsxK1A8tOc4uqNWWsvlkmJiNi
         Ukyj91jiAgz6+vgsqSiMTNjvO4OH8kX4zeXTy+lEoKMMS4/XIKcp69OXrXyx+S84v9CP
         CTvGTmXOEH1J0RCprSnJq1faI36qNE5FFdE+n/GpMylK2YU2ENNGNmuQhM1X+F0pRmLr
         H4LA==
X-Forwarded-Encrypted: i=1; AJvYcCWAwNjuHJYBksU9LkVFiypgXMd9oAVMhdG65G+qiPghay+1ul2INwyNqkJRouTrrM1O05aFg3hCc/Z0EHLI9Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz47K0PqxKqftHcdUT96BXySlW+XYaTVVqnyxi6X2Vv/vTFfSNf
	HUTXSoMLjGAXDCegZz5uBQG4u6x7XGKexCx+Oo8iwfOK4PUMzJYueuEcPT0UtcsH1Q==
X-Gm-Gg: ASbGncuqWhxmeZQwX7DBXAWwPWIfYctnhR7pHRDYfOhUkKWIsgqwf6bhSPwyW6LQji2
	/qDOqx2rTpdOM4wnTEyggPwd0civodLbFDDlibNiRb8HCDyK8DbLBN++yImLz7c+TMiJ489AhAv
	+8mdqTj2nQ8cFifiYZ69BXUtXpP2baahhNvry1/6rUkEo8Z+T/3veClG0vdu/0+V4QoYLRIj/zY
	53vLigf7dHmyVA5PbJZ8ctDfufP/9pZeab90+dMGMtz6CMfsNmtNaVqIVkACybzEOEFxTEJnYTJ
	IPvVZAQd3JsUnKtrpAntA5JKvhbAn3FtpqBQu8pi2vOyCHSztjUcRN/AxU7GEO8g4NrXYE7K+aH
	ocw+tehTG5qUBkPN6ZHPWsBl2DWrs+czjDP14Tk9ErLmJkG/PtXLw8C4rWtRn1DfJTx0uFq/fso
	Wo8158jGH++CpdhQPJhiMI9nggZA6m
X-Google-Smtp-Source: AGHT+IGVVbL5/vtkpaQMJQh0k7ML+5P3f5T7fpLYmv9ZzC8x6SpLBLD8o5pL52MoM0M8VLfq2lDuFQ==
X-Received: by 2002:a05:6512:3d09:b0:571:75c8:43a5 with SMTP id 2adb3069b0e04-5905e1d36demr7120769e87.1.1760364892853;
        Mon, 13 Oct 2025 07:14:52 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.14.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:14:52 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:14:45 +0000
Subject: [PATCH 05/32] media: ar0521: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-5-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_151455_722175_A4B0850E 
X-CRM114-Status: GOOD (  12.26  )
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
omitting PTR_ERR()

This patch fixes this cocci report:
./i2c/ar0521.c:1113:31-38: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/i2c/ar0521.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/i2c/ar0521.c b/drivers/media/i2c/ar0521.c
index 939bf590d4b2107c6669b83903028744de1c2b30..f156058500e3dce5d7b5b831bf8ec4056e49ad5b 100644
--- a/drivers/media/i2c/ar0521.c
+++ b/drivers/media/i2c/ar0521.c
@@ -1109,8 +1109,8 @@ static int ar0521_probe(struct i2c_client *client)
 						ar0521_supply_names[cnt]);
 
 		if (IS_ERR(supply)) {
-			dev_info(dev, "no %s regulator found: %li\n",
-				 ar0521_supply_names[cnt], PTR_ERR(supply));
+			dev_info(dev, "no %s regulator found: %pe\n",
+				 ar0521_supply_names[cnt], supply);
 			return PTR_ERR(supply);
 		}
 		sensor->supplies[cnt] = supply;

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
