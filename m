Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3449BCCD190
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Mu9qm9RT7cNJbD/NE/XXmrvhNP7xIEDtdwGl/UnGbg=; b=dWBtwRPFhb2bOS
	1BBIon+8vp/HU6oYUZj7+oBQ74hVdNglqytu1KvPMPuvPkZiJJs+FifH52QTL/x0KMBJhhLa5Q6ae
	8YEudXI8/SX/vIdjbZiUybEpQm7mmNC0aKL0XeMOZSqZKXkb1Fl2bUpvG+63vxUxw4/PSAwbUdZN1
	7s9tw51dk5JxJz3ZmXrSyMYyZL1hRzYNM0MR8NSQ+LjDxcHvKIRzO6TtnOfj6lL2zmTifZVuXDRJw
	gjHFkyVOFAgbRSJhmaflhC2HJnDHwGng/G16locm0muNvb/KY1TyGpb/h1hwr2QvNDrfF7zSFb5wf
	DWTrFZ4oC8WAWNcbMPxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKj-0000000DLVH-0viS;
	Mon, 13 Oct 2025 14:15:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKL-0000000DKpM-1lxu
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=U+HlSqes1yCsLkQoWVAYYhek4ZxMIKlt6Lo2LEEYk1o=; b=LPkKZOhPZHwJZZ/mnLqXphqgyZ
	6LGNZMlbKLCPzdSkS7jYyMlJWvgSgnTqepwcVillbfrXJ9DI9YJ7ssf3mtwXus1DgzMf3ND8U1/OU
	OJuEUdsX+fzYLhMsTMtH4FUgcDckdrfgQl+LJiJjX9opIMtEMrxYZf6U13jze2cyHbGl2kinCPI7i
	ZmQ7K5V1RnCOqzCFv5/bTveuWeR4DJUohkY6poGhmlR5e3XJRhPclOvnxz9ByaP6X97mZRiJoWUrG
	kGIhOwmBFgWPf3Lvcm4NrL51gxny9uWEexyH6vx1RcPzCkh5CtlBfT3/ELZSKzfL3yQfMoLOhFMP5
	m9ZXwA6Q==;
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKF-00000004N4y-3eGd
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:04 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5797c8612b4so5253068e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364898; x=1760969698; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U+HlSqes1yCsLkQoWVAYYhek4ZxMIKlt6Lo2LEEYk1o=;
        b=hsNrwhW50gAldxmMQTJVlIKHdMSIeAFgNQmbWXDRPmBlCTvlWFnphfuVR0eR1T3Iu9
         qf7HSYcWwe517aegEEyn3zl/zoVzsjV2VR4T63puvyjwa/P8IjgSEO2RBCs8INCjuwo3
         VFx0xj4oivZvREiWcTtj4IBocyWo7B4YnyqK0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364898; x=1760969698;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U+HlSqes1yCsLkQoWVAYYhek4ZxMIKlt6Lo2LEEYk1o=;
        b=FcSuVRA2wx3D69WAFPKzklgVkXUWTrQ1cvgUd8pCIKM9Vows3ygsf6RMWwqrgcn5X1
         9c26bmdmNlWp0bVHhK2uYtpAJDYu8dUMd2iM/RR8aj7v084tCbO7UJi4c+SUn2l23ODK
         g659MYBS+jcaFQwqX1WPuawOH8j5EoZH+7uHuvcAhBFMCNjOvtsc7zxbS25kCoj/drcP
         CKgnnCy/emYmqD2kKX1BqqeCVo2N/mNE0uZuYrutavUZnPkOeOhUNzQmyQjr8J5exc3o
         KcDUYWNIjOnqBpAj55Ehh5V1BtST0QIu/kc7k6c/KGCi+uSD8fkMuWyXErQQZD5ysB5X
         EreQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBBlArBByYQO5hvlAQwoDV6qkBsa2vqHcsOOg0hOFeTTZhwb5YM5t0bO/5zwRfaxoo6WazidTu0WiqsnzZZw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzxVRvzA+nYn2yHKprY1K0WjJRKfCP8vTuwHCvlGWMDL2c5QoHy
	K14mFaucLuU4lCpVGtCoSM8qBV5W5dNOtu+5yBGsfv/OC2siIace5NAjwOcPE0CL4A==
X-Gm-Gg: ASbGncsow4v0RsNVkw9fGlKewpC6idIjO/0YrwMtNtN4hC32WE+nq0vj4P+lCSPfTjV
	EpYVo5X1XIQ1+qzPL31PL0fMu0YgoZVbtNab0zhyet5BjrKoCWBWWyw2OqKUBn7p+rCRsesH1ZT
	cmHJJ21cstx4veYJT7li47p8/aI3kRuMrLvPAbr6Vaurh/jYb3reZqQKAu4MuFl41KM/2SwezR6
	jOFymwbJ1j8mLWSIJBuRW7NJIhokd/aoxtfO2764x11oFtqQuAZou/7ZFXsjiRgkXsC1hnBRxG8
	BHHQuja1YHPz6EIJkSKdIalKjWy+kKGxLGRCRjV3XuMpsRMiUmDcU+qcrqEX44ZHCYHStgdAx5E
	7A4ZKPEfpM08A4pFS6tFHLF8NI0FjtpoeYv5B0etyNfhGXKJ4HDd9gDsB/UzI8ftjhd6cRR0FOX
	wLQWsc6KgeDOgiNQq+Gg==
X-Google-Smtp-Source: AGHT+IH27CfYjloqEXA5bxWZfYaU4LA1SVwbUAxn03k9AIO/MXhXvYZJr7Cls4Tsp0u6mygHRedkXg==
X-Received: by 2002:a05:6512:3d94:b0:579:d89:20c7 with SMTP id 2adb3069b0e04-5906d896e12mr6073927e87.9.1760364898078;
        Mon, 13 Oct 2025 07:14:58 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.14.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:14:57 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:14:54 +0000
Subject: [PATCH 14/32] media: i2c: mt9m111: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-14-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_151500_046657_47CA51B1 
X-CRM114-Status: GOOD (  12.41  )
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
./i2c/mt9m111.c:1290:3-10: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/i2c/mt9m111.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/i2c/mt9m111.c b/drivers/media/i2c/mt9m111.c
index 05dcf37c6f013b1cefb5d85f893af08f4533c7b4..3532c7c38becc21df88957f8f323c77033026a81 100644
--- a/drivers/media/i2c/mt9m111.c
+++ b/drivers/media/i2c/mt9m111.c
@@ -1286,8 +1286,8 @@ static int mt9m111_probe(struct i2c_client *client)
 
 	mt9m111->regulator = devm_regulator_get(&client->dev, "vdd");
 	if (IS_ERR(mt9m111->regulator)) {
-		dev_err(&client->dev, "regulator not found: %ld\n",
-			PTR_ERR(mt9m111->regulator));
+		dev_err(&client->dev, "regulator not found: %pe\n",
+			mt9m111->regulator);
 		return PTR_ERR(mt9m111->regulator);
 	}
 

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
