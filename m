Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC3EDCCD183
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ED0O3LMJTwH7K1fRtk/BRhqxm58cFsuQT9LArln2GQ=; b=LwXkeWxfkfptSC
	32cEZH3NZc9DS4uLedMdSgggPirwOlSTxKamSxQV5BV23wByeiMWZoYYHgpxrvOqqPGbOvfxLst2u
	2yrTVNNgnXjFtzEypBO6x57oto+fWQRzVxaTbmmgPl/YaM6uWpa66HqezI81Uvxcd4k1vXu5ZMbzu
	CLWgZcggloh2DENz4iI0FT8agVx9x2CXsJ/jIZUnsenw+9FHEyYD54ra/uwzlK86TM0OwVTpvL4Ja
	jnYSOk+PCVJzDpx4jGUZxu/864nXkAUwgDViU/8n63GpKkrUPggdcr4bOgdRS+fM+k+l7r/yJUJ1L
	bJbVb2+12/E579u/kkQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JL0-0000000DM4v-1iRa;
	Mon, 13 Oct 2025 14:15:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKR-0000000DL0M-2PBi
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=w8uWudxYngdjU1rcL6v5EBbp/gDU20W7uHc3A+q35uM=; b=egL3dZcbRZlz2zdMPSo7Wv8Trz
	Y/S4550OkDm0j0x5O5+JjZ5sA4Kex3l3jtVkiWG/ty8dYLdz0bFnj8kFKX1hIFXsda8+8xM/4PJGW
	RiRR+ydTqpFDKQefrQWw9u0o1/fGfYPucjMzRplAxDC8B70/uJ0E2hskeUEy+MIUFPgszVmqLbrhI
	dAmW+mWWF4qMAF8f/7eJez8O4loyEsRJ0FMUzrWWsI0UzinuD9tlF6y+pYyDGgOlgWAD/Fc+hfOk4
	Jx+9LdVlpNefycMLP0a9y9GbhRVJbomSGV6+Tx23hg3hLH4405yCqpWVLvKmBchD2DRMQEKh7Mcnz
	BeN+7Otg==;
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKJ-00000004N8X-1Ovw
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:10 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-57a292a3a4bso5390334e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364900; x=1760969700; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w8uWudxYngdjU1rcL6v5EBbp/gDU20W7uHc3A+q35uM=;
        b=hTWKz/h8WUh+65lTnv33ni9pWqhCIdmFIrBcRo4Wq8nTMmqdyo0E0avU+FmycwXokB
         /OdaFZRGqqIKj7f8teWYKG1o9xiuwL28w9T3Cq2Y7b5Q9I3nGk2ugZlNWyjkiR1pEFxO
         ukMYPJPSggJPp8iXnwONoxzGKpt/xMTBZn+2k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364900; x=1760969700;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w8uWudxYngdjU1rcL6v5EBbp/gDU20W7uHc3A+q35uM=;
        b=ctQ0kA5Cjkmzv5RmSNKwsWepstAjA45+jfgbmp6x/ShJVLb4hahpAXbqpEhEW7uqFB
         sTEyPAQEjIympwB1aJKy/umnzUmeiU1+8eB+Ya8RNnr9y0UIDa8RNgNXkN+OGt2yoOv8
         w/Xv+CYulRrbO5Pnd+TKi7ohKlIalor0HVV/V7qDWmSNBJ4w1/ROulOvgH2J34v+8gdW
         yXONz+JnTjxbarP60NQzYn5dZCA77tl4t0R18F0c2QN/EmDczKnMAvAV7uj3CYSH3UNu
         mMr/T/vPuMV/1mvYWWVunx7irL8EcqMSK1wTNUrU4tJRLMzP2GQI6y11HxNMHLC7ViKo
         6XDw==
X-Forwarded-Encrypted: i=1; AJvYcCWzZs+E4kSCdR/ZqIUE2ENFwGgg+dIBuYAMbCl+3ohgDaaRbKnIyF0/OW5BuRFaE/jv1ZZUDdNou7rh5aCXvA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyCuoehnLhfQdBKpi2czEB+pEF0ilgpCj1BM3n/9DrPNVxhzOLs
	2bLLar3qNe2eJsLsI4B5cNHNGDm1bGBHaxZV/D+JGeOTyYq5ZNiK1CWtoouhPV0RnQ==
X-Gm-Gg: ASbGncuBIX9dYkh1qHfzXVbP8vgPPgSNAr6Htp3PA7nd3EWTr18w8Zvne9LbDBjHEuY
	ED19sacYxJaFEBFLsxUez/hvyBwY4RZ4X4auMhlvNSS5vLJ9AShvS8xn54tGFWMwrxTO5Gy/I2l
	2jiEd+ZyQff7fqjWl4lu38/JQBZfQX+BmPb1eAT9pQpyJ/sQP7/fEuIzqN3fQedNdVnSkdNYeId
	Kx47emhweX5Tbq8Or0of3lJTgT/a4PJbc2FLE55wEUGF78iizGhxKtIffBuiQvitDwGpstY4sYJ
	UfjYPaVWYu1sNDsPq3tGjNjH108SXW+PBnrxT8F6QUyvQKBttx/asSZ5+FdFG6rRijpyFa1OYS6
	sm/Nbgssboang6y/P66VKc6dI0kcVD8MhyM0xFZkwdQYmlQSiFPKLpYWxjdIDG66/R80MLZvhaS
	RXv33rgTit1HkAjvd1VQ==
X-Google-Smtp-Source: AGHT+IEH9NSSx39JZw7O8X2sLmRDHl36VtDy7qnNgdDgO7X/hYoH/eK9oEmeokNHWwuJqGEVp7ffAA==
X-Received: by 2002:a05:6512:2388:b0:57a:6d7d:dd7b with SMTP id 2adb3069b0e04-5906d773bedmr6254025e87.8.1760364900095;
        Mon, 13 Oct 2025 07:15:00 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:14:59 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:14:58 +0000
Subject: [PATCH 18/32] media: i2c: ov9282: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-18-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_151503_613553_8F7216CD 
X-CRM114-Status: GOOD (  12.58  )
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
./i2c/ov9282.c:1133:3-10: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/i2c/ov9282.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/i2c/ov9282.c b/drivers/media/i2c/ov9282.c
index a9f6176e9729d500a40004de92c35b9abf89b08c..3e24d88f603c1432865b4d880670e4b67f1b5cec 100644
--- a/drivers/media/i2c/ov9282.c
+++ b/drivers/media/i2c/ov9282.c
@@ -1129,8 +1129,8 @@ static int ov9282_parse_hw_config(struct ov9282 *ov9282)
 	ov9282->reset_gpio = devm_gpiod_get_optional(ov9282->dev, "reset",
 						     GPIOD_OUT_LOW);
 	if (IS_ERR(ov9282->reset_gpio)) {
-		dev_err(ov9282->dev, "failed to get reset gpio %ld",
-			PTR_ERR(ov9282->reset_gpio));
+		dev_err(ov9282->dev, "failed to get reset gpio %pe",
+			ov9282->reset_gpio);
 		return PTR_ERR(ov9282->reset_gpio);
 	}
 

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
