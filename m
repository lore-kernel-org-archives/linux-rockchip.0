Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5352CCCD18E
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftq0mnML9B0C2K6mAx8itrC83uInKI81ABOB50ibAvM=; b=XlCrAXCXdQjLJX
	kA0e61azF2OqtjhyQX2vsr5xHMSofvvUUNh01hCdDV4TRnk5Gba3X4JjyzFWTH0CCEdCVCsRHQoid
	2juwvjUCl5x3vnhYGRirOiczfdwKQcCpwrJU4z5VTqYz8qwISCVC4Qraq2GLTieOPhugPKHCVYmeX
	yqDPtUombUBmPdBqGkgRbgUZInNEfzNrmOWyviymRb/sgW7NbD7XGAUw7hHv8wF1nwMVUuXwBWHNO
	v4mPWCHxLNAxNHZQ/ZpySfsp0VmHzCDZ5xfjERniAFUBjj69PhaRUlBYcXzm41pb8iuL6vdAvvy8O
	tAqp+xA3aVTxFLGleHUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JL3-0000000DMCM-3qPL;
	Mon, 13 Oct 2025 14:15:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKU-0000000DL6V-4ARz
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:15:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=gUxX/9XhZ4PnNBB1T7MELmfGG4IHXE3ZwCx+Au9dRPU=; b=enBntXaOe8nSF4ZtN6GpZSsaKT
	FgA8d4slW1UvAL1vwMq79r0N2sDwLJJxZQwdj14jIY8kDUFuMW0iJ1Ls3AFq/3L+J3O8R0BEdadwV
	AtOdvjyNz8hyy+kA6xGKOnzwH8YEPuJpf5hj4+MgoJL7FebQX9TwaFtewmHRtQRL+0CH5kM5D/oQn
	kOYENo+CHGH07OaffXxyg2z+A+phs8oEWWFUSzyTx3g4rmAYlqdgw+j/H2BRtKtqb9Hh3oiEpecvx
	auMEjjqpK4xCAXixLZaGK+1DkzmgAbYkzTcVml+QVSI13rJyhhWtsfsnHx9jz0igZMe8pAqPOC2/P
	j+PqEmkA==;
Received: from mail-lf1-f54.google.com ([209.85.167.54])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKM-00000004NBO-0rSI
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:11 +0000
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5818de29d15so5335695e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364904; x=1760969704; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gUxX/9XhZ4PnNBB1T7MELmfGG4IHXE3ZwCx+Au9dRPU=;
        b=IVPNnoKQf2dVwKhj2tf5LwYWqA5tsyoBQ0c9bC9gnGheutPqLt5kHK6lUvP9rlr4tX
         dFtBiCAUsEj11Z0Wccmykqz+JR5EO126XP7mzBaa/1giV0oLVRUZTroqddrztAC3PBTq
         hLWPAcxAEKyM4qcbZEM1/BDCK4BBvnhQwAOUI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364904; x=1760969704;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gUxX/9XhZ4PnNBB1T7MELmfGG4IHXE3ZwCx+Au9dRPU=;
        b=t0CXFkVF/wmejG6hQAal+/QBtkodHOTrhmoqsecJuDzwu3cp0RY2nEkcFEz7OhsJUX
         ieCC9d9vHxQVltHka6GN18WH6+NxkvXr3H9uMLdne0sbM+vpGJ3jbsxZin5An/cLafly
         8kP5PT9Ck3mHz8hbt7zoBcZOKRDBUxWSMcusiTXR2EuLG5qiF8F/QCtFpFnn/fU4fo/2
         ro3vVwyqqcGGlMNlTi/PxZ/0zYnKlX+el5dcPM3XRIH0FCKeGrWup9YufXCnP4PS8aY6
         j8txSDMVKVvfZSkTq2bc9rcQxL/N4BgDJ6sFXdhlIrkFXELWuIiaxgzOieFCQcYogM5z
         nz4w==
X-Forwarded-Encrypted: i=1; AJvYcCVGiCLY7AI5c8GnR95GvKtJ8ydMD4LDIaYqWS11G6/jMAljWV846T5MCmC6w3mTTKADACaEs6Up6fYx9vk0FA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwM+ebICnF4elDir4hWWVGC6Iq9FayLRB3VbB8tIcbrx/282j/y
	dU20+O674PVoRay9svMTfxNjVcvjep5YN5ZlUzHKpxy4XaR+uSwsHc9Sxrqd2Wqb+Q==
X-Gm-Gg: ASbGnctq2PsJmzQF+p3BktgfJmuqKi+i+DVb6GmxnMZ5hIwXRsF0+0dQQXXz/H2Fhqe
	ijLWp6A4ozZkW0T0HJnMr2MslArQdfnXR3ozAJJUtwXePoL1G288V2n3pMeIymsmV4u926k8Gpb
	2gMqgY3pafRIv4UZ/ilatDpGGylWKvlHLTAoiTQzGg46qgKcBa53iQDxdisbFIBokyIcKLkL/9K
	z7tb7kBrUNGzmkYg2oZe7Et1CYeqQ6EW4BAyUWpHd/7cpiagwUlSNH96pzm2Q/s5q4BGYgayLBV
	SWlZyGEB1Da5vK+pW7EbggMuMi3SzkIbZqnMZjs72bjH7JDjFxc6+iJENDBfpDb9sBi3VlOFlDH
	YfF4T8lof8Yy/Lj/WpklDvVNKaXrLIWNQR685DMGxIfpjn2SK6dZMV6hIfdbfFLnrTFrlaeJNyH
	Rp70Hcv/E4TX/Sc59mVg==
X-Google-Smtp-Source: AGHT+IFTTHLDJWS3Dn9Gd32yhET2ji8RYegzhadBkm4NFBADg/24WPxUjewhK5Qa14H7toVcPkN+hQ==
X-Received: by 2002:a05:6512:3f28:b0:590:656c:d11f with SMTP id 2adb3069b0e04-5906de88e60mr5677489e87.44.1760364904333;
        Mon, 13 Oct 2025 07:15:04 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:15:03 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:15:05 +0000
Subject: [PATCH 25/32] media: imx8mq-mipi-csi2: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-25-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_151507_067724_07E76C76 
X-CRM114-Status: GOOD (  12.38  )
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
./platform/nxp/imx8mq-mipi-csi2.c:422:23-30: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/platform/nxp/imx8mq-mipi-csi2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/nxp/imx8mq-mipi-csi2.c b/drivers/media/platform/nxp/imx8mq-mipi-csi2.c
index 3a4645f59a44028fdca82a4d8393e1a0a6ba88f0..d333ff43539f061b8b9cf88af2cda8c44b3ec2a9 100644
--- a/drivers/media/platform/nxp/imx8mq-mipi-csi2.c
+++ b/drivers/media/platform/nxp/imx8mq-mipi-csi2.c
@@ -418,8 +418,8 @@ static int imx8mq_mipi_csi_calc_hs_settle(struct csi_state *state,
 
 	src_pad = media_entity_remote_source_pad_unique(&sd_state->sd->entity);
 	if (IS_ERR(src_pad)) {
-		dev_err(state->dev, "can't get source pad of %s (%ld)\n",
-			sd_state->sd->name, PTR_ERR(src_pad));
+		dev_err(state->dev, "can't get source pad of %s (%pe)\n",
+			sd_state->sd->name, src_pad);
 		return PTR_ERR(src_pad);
 	}
 

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
