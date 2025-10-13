Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D41ECCD18D
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozJttrLRq+k6GZaT3D8CD2dVphdOELLBcF6ain5eBSg=; b=B9CPA2y8f5LVKD
	iU5GM9XQSoqkLxMdw+Vi95ddixJZtWepByfM4Xwx8GuiIVWRC8IbbEJUhBNxvYLGN0dGBQZI9+9aj
	GF3kfbe3nwWstRnrZ5G5jAk+nlyLMdZdF+4YbYCTegfkopBvpyIMGR/g2sTchvF5lE9WVE/arUM5J
	gHyKt7JnV5payo6urTUktHqH6fipk4JJ/LFH/RwQEtFhI33A+uNLyOBvF7X5/7osIZmrNDtyLw5UT
	Ygeek1YDeI1IePmpIWVY5qTIQhshxee6/2xugsbYyDygnEWkLMZGQLMW10N37OLFUY+0Gxj3zMuzk
	V9q1z1DvkbRpAdytWPKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKj-0000000DLWF-2ns9;
	Mon, 13 Oct 2025 14:15:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKL-0000000DKqU-43an
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=p8BE8cd4ehs+vvBX7b/XSqVzFH/A9VcJiWIwNhqGmEE=; b=aXFdLaJiIFPT5TW0PN5/Yh8rSL
	dmhdZOW5mFyq/JqK3M/CfiV8Ifu738yoIlUdJJH823E2PmuLGEHEA6VVX2MWr36uTgJC/u1/aWuwW
	kQbLp35Tjt1eetQ/9GF9ZF3B/Lw0dmHOLgMFZUgN3o3xtjJhuGW9+eTpQFksP4j/gM62ta9YiKO1N
	kteNfHyPf/CepjUaiIpEWGn+bQxuD5NIHHjPP6nH6/IF47rJtzeN6H5gpRjl2bikYnCVzditc34UK
	QzuiCKvv+GnIqKiyUzJH5Xw50I47/1o7ZQCC8vJFoU/QD4JvXzkYQb2W8kb2lEtqQ4/fmEJGmpwBB
	4fmJcafw==;
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKG-00000004N6f-20kZ
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:04 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5906665139cso5444417e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364899; x=1760969699; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p8BE8cd4ehs+vvBX7b/XSqVzFH/A9VcJiWIwNhqGmEE=;
        b=BZ3St/ZMhtovsj1c2t6WYXDPojJZYziJY1fkQtciTdYWTcAx8EjoBuNRILV9KBFpT+
         6UpSRUScSrFCy9lDblVqZBUEJpBKbEOHNcx11h7JHWN19+Rcr5/ZFK7pLTNcQvglGRy3
         3oHFweeijhjy5SJitpls6Sv+als9lBNLGPS1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364899; x=1760969699;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p8BE8cd4ehs+vvBX7b/XSqVzFH/A9VcJiWIwNhqGmEE=;
        b=GnUjW84DetTO61ftlVwfYmVPmymENJG84OGvy5T4O6OGb3G4KAhWV1pfKu6HLYMCgA
         /+9t8W8e1s+3B4T4JQOa+Wj+wWrOtnHcws186lEDNYI6OoWqzrP16tAa7bZssZHsZJAc
         8ItTOJL/8ODqjiOJc7jqvUCA4olohJayd6qsWjqjTiCRiQ7e4ykMxClDhi+MVFIAPzcG
         SfIiSL2mfh4pS7/w74NaPROrpt8WqNCdyLqUKWplA3eFfQ0vDP1EUADXcrdxrs+bw78u
         Au5JGTaaxNRJ99Is7SwOSRe89P11PlGLkBd/pRPfh48jh7eaEY2CMj/qZ8kXqbeYqG+3
         0Q2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXcP4fWBJovkSBFdY1+PVutr9zltNewHfEWB/32Yp/4iZmR1kfRlZdBVZW5Ue59I5dDCWw5xy5wEqSUR3nHsw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyEKDz4uRvsFhlPv6bHCUJ+AN9ljIGv7MriWee/wl4crgxiDy/y
	kPyvFe4gAUotYSB0Y1BLGNZ2Zmx7RFGTaB8kDrqhP7Ps8E3oXEiS4s8Vgn6ycTo3oQ==
X-Gm-Gg: ASbGncuCyT6QJYuD/Yj3wnNhgaUxEabc91KpQdVFovlVYDiHhikJqxa04MmQ3edI2wm
	+RJjMoZpnnC067zsovyP7kKMMzU6BQhToBUianKkuQHM037kOtKDXs6Rjwxh+uboG4bA5R8oZ0I
	Za3Dm5dwexe+Leth3a6ACR4mbmowRNbNv7szxovN8KVqomipMAPOyBEQxSNHsdnF/rPqOUjsVO+
	jOzzL/bGU2H5DvozIu/IVvAO3KQ1ocHGCnAxwCJAyhVoeLVBDhqILpcpBVEzVCePOl+lj3E763x
	Pcn8zRlGBaySu+gCrwKjxf4P8ozBG2k2EJzeGZy9nEWc+X1JJZYvsSL6pxGQiPGpanNXVmHY+PH
	JtZsTFSh7QgpBJ1cksbG9Q2aB79Pg6uAQ67Wq/pQzooBQSkUyxVCyD4lz9l0EmhJXH/bDuywV1D
	quWp+DegXf2qZcbgdUxtvAz5fTd8Lc
X-Google-Smtp-Source: AGHT+IGpJ2y0KS2EDpbOsMnyHnkw2vKTe9VvDcatboc6qkM7xgDjulc/G8CRi01zrNhs6YMLw6/H1Q==
X-Received: by 2002:a05:6512:1053:b0:590:651b:10e9 with SMTP id 2adb3069b0e04-5906dd514d8mr6137707e87.34.1760364898568;
        Mon, 13 Oct 2025 07:14:58 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:14:58 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:14:55 +0000
Subject: [PATCH 15/32] media: i2c: mt9v111: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-15-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_151500_719026_E7D15647 
X-CRM114-Status: GOOD (  11.60  )
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
./i2c/mt9v111.c:1143:3-10: WARNING: Consider using %pe to print PTR_ERR()
./i2c/mt9v111.c:1151:3-10: WARNING: Consider using %pe to print PTR_ERR()
./i2c/mt9v111.c:1159:3-10: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/i2c/mt9v111.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/media/i2c/mt9v111.c b/drivers/media/i2c/mt9v111.c
index b4f2703faa1854a3a5e7d92ef312d01a39879a5a..64a758c95ab7b767de452304615a8d1f986dd23d 100644
--- a/drivers/media/i2c/mt9v111.c
+++ b/drivers/media/i2c/mt9v111.c
@@ -1139,24 +1139,24 @@ static int mt9v111_probe(struct i2c_client *client)
 	mt9v111->oe = devm_gpiod_get_optional(&client->dev, "enable",
 					      GPIOD_OUT_LOW);
 	if (IS_ERR(mt9v111->oe)) {
-		dev_err(&client->dev, "Unable to get GPIO \"enable\": %ld\n",
-			PTR_ERR(mt9v111->oe));
+		dev_err(&client->dev, "Unable to get GPIO \"enable\": %pe\n",
+			mt9v111->oe);
 		return PTR_ERR(mt9v111->oe);
 	}
 
 	mt9v111->standby = devm_gpiod_get_optional(&client->dev, "standby",
 						   GPIOD_OUT_HIGH);
 	if (IS_ERR(mt9v111->standby)) {
-		dev_err(&client->dev, "Unable to get GPIO \"standby\": %ld\n",
-			PTR_ERR(mt9v111->standby));
+		dev_err(&client->dev, "Unable to get GPIO \"standby\": %pe\n",
+			mt9v111->standby);
 		return PTR_ERR(mt9v111->standby);
 	}
 
 	mt9v111->reset = devm_gpiod_get_optional(&client->dev, "reset",
 						 GPIOD_OUT_LOW);
 	if (IS_ERR(mt9v111->reset)) {
-		dev_err(&client->dev, "Unable to get GPIO \"reset\": %ld\n",
-			PTR_ERR(mt9v111->reset));
+		dev_err(&client->dev, "Unable to get GPIO \"reset\": %pe\n",
+			mt9v111->reset);
 		return PTR_ERR(mt9v111->reset);
 	}
 

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
