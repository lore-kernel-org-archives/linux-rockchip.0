Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FE24CCD192
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWW7f4R8labGqXrTSCnbIWX8szcF1OZWYc7dwMOsd/Q=; b=xXJu1W1rSiYjXa
	3lQxOSVx3D9qE1O446Xkh6mRDdckBjb0dnw6acHmZ74nm9kn+4xAYydvXic4TQETezf9Xai/TtazU
	ELsBHws17CKFu15fapJMfImtgHfdWpmUqu6J6VBfDFRKXueXh9ouad3kjD0j6VhATh22u5Ct4S3V8
	cdqrpNbDwidce3JMqH7hbKIDVEoe1RO72zCiPDtY0B1cpgjkaHeUo3Mbh7Wgbx2FG8vwEcD3fv4S+
	C6AlXgil57o6ISINFI8URsTJIjjRcPkavzwHi57Jb1ukxnBlzeeY1zWr6yjgswqb8tLb3mdERmZ/Y
	Rm9GpFwKThJe6rqxvWBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKX-0000000DLDU-3igw;
	Mon, 13 Oct 2025 14:15:17 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKF-0000000DKak-0HGH
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:01 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-58d29830058so5245400e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364897; x=1760969697; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gx2Nk8bbTBBYhN943GhcMzv342eYq6Mo/xpbKyZ7/rI=;
        b=WZUujPaB1ZiEMl8ZlDqkFBgkR8tjQOwysrmgzQ+7OUpIgInMk1eerXmiwmMsFFqNTh
         uJuAwV/3IRK9Xsaz9D/f8nbdScdCJZKx46znwWr+DowdMaPhqsMlcbReZw1R5NaprTZa
         BTWJteAdZ8v7X/MgglhOM6O6Vjo49scmUrZVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364897; x=1760969697;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gx2Nk8bbTBBYhN943GhcMzv342eYq6Mo/xpbKyZ7/rI=;
        b=f5vMcR4qT8pm/cxqbysCaIPKcyKub+2hPP9JW0QCTfs7Ytn3GpAFYYdCDTV3X+4Lnn
         JAaqZrGfjgWb9R8LOitlnRpCApEBUxYLHhThM2Fy1TTgpHG7hyUJpVUXjMpVt7lS3MIx
         xK9yz5nt6xNKQukhYZqaZ2WN6/QqKliKwkdiSQCOavuCwXR4evgw6TQ6evfNA9IG88Nw
         sgWkfryPJPNeFDmDav52h+n1UwC5RW+cIvk5BZxUUN1LszKPB+ZIspczWs3rcHBnk7l1
         qq5NzRq86sKLm6/OfMb2HnlmqxGuqy6ED3LRpJJ/2O4BvYfVhXr2BjrHmy56+a37ehrI
         rxQQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+9tV9L33k28qG09Z67Qs2F3txmWwmDIfkYOeWG2yYgrBfVXuRjr0CgPE17jtbSTUWTSbAXWwk5zAHt57WmQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5YTmbBqTt7T/+kHyrnPl3PVbg7GdSStlWlYnbJgVfszL676+h
	mKx/e+9THqbx4PVx1zl5gXzRNQE/DSPochysQESA+B6AuUZJ9MmStfzLEfK9nigIiw==
X-Gm-Gg: ASbGncuujsm3Pu6qQcPW5Wyy/dm2a5nm0cGTWzBXgauRMQIJ23UGMvg8U8YNobzOIaK
	fqXrXUaTTaLmFRDXPfvgVBv1yO/eRj0XU+wlKeeyxS0AZ1ITkPgMqav80YASQbGalEzrmYN2Lx4
	MHpj74xffc63IEr6yVJkV0v99X2fiYTQzxuKzZvl30DUd+wGxc7XGqYiN0EW6XQP7BrbAq2LG6f
	wwHNtFyw6PzyxZ83fNkidEKk4giTyLp4W8QyEp8cdUenotONR+BryGRMQ1aGEZOG4lyF3KY5i08
	MoU4iN4Gfksu+qV5/4KKOHsuefN9HFYhv1sLI0hrdXlZ9DCKiin/hw4cuNj37oSqqXdM7nWNJCR
	xFYDy4qpesfOUMPl0q18+/Oj41WuCK5lD9CC5KHO/VM33ANmRColvJU0cahkO/slG+wywyVNbPp
	aeZhmzAB1UF7bqYWiR4693jMY5rWNxYvXq9pya9Sc=
X-Google-Smtp-Source: AGHT+IGza3WB72u87Qc/jc2dtqKhHQX3673S999Ht+Uo4ar3zMBnJvEIFFWeIrwIdWwBJ84BunwKvw==
X-Received: by 2002:ac2:4c45:0:b0:57e:9865:d6a5 with SMTP id 2adb3069b0e04-5906d9e7318mr6028332e87.40.1760364896522;
        Mon, 13 Oct 2025 07:14:56 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:14:55 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:14:51 +0000
Subject: [PATCH 11/32] media: i2c: imx412: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-11-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_071459_192271_CC128436 
X-CRM114-Status: GOOD (  12.63  )
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
./i2c/imx412.c:931:3-10: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/i2c/imx412.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/i2c/imx412.c b/drivers/media/i2c/imx412.c
index 7bbd639a9ddfa7fa76d3a4594be1e1c4d002c98a..b3826f80354703b17b416dc233854da3f5736e38 100644
--- a/drivers/media/i2c/imx412.c
+++ b/drivers/media/i2c/imx412.c
@@ -927,8 +927,8 @@ static int imx412_parse_hw_config(struct imx412 *imx412)
 	imx412->reset_gpio = devm_gpiod_get_optional(imx412->dev, "reset",
 						     GPIOD_OUT_LOW);
 	if (IS_ERR(imx412->reset_gpio)) {
-		dev_err(imx412->dev, "failed to get reset gpio %ld\n",
-			PTR_ERR(imx412->reset_gpio));
+		dev_err(imx412->dev, "failed to get reset gpio %pe\n",
+			imx412->reset_gpio);
 		return PTR_ERR(imx412->reset_gpio);
 	}
 

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
