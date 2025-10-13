Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CB20CCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpUHbtMM2gM7Myrr4BWGjKFTXVltuv/8hCRglhQli2I=; b=U40p6hY7rVKrc4
	zaNOfCSzBP7pX8zpq+fz1Ag9rzXpwRoATEqy8nltffh18gvIeFo0+aGvtOgr++WrpDVFtAV6u7Z78
	9xr4E4CpDlPHEot2XcTzdyiltk7dJIxaYwcznFIqZWKlaikjE1sWWb2o8xXkLD5E+VAvsA1s0CPaT
	ncITYLrN5nXhC0/D/r3M2nR/kTl2ocmKiAHUX3pvlXCAjOH3Nzz3JTw+dyN0N4EMWr0Fbn3tloNXf
	2K6ogu0ZT8zX002A9tl9O6xS/ITNYBrwms3KEM2tQBTXvnl2xcOgBfq/hR9P8qdF2TpkSn2Uyycdl
	RbMVs+DEGSK8klkpXR9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKg-0000000DLPr-0Wa7;
	Mon, 13 Oct 2025 14:15:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKJ-0000000DKld-3PJW
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:15:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=PtOz2kIfaFHaB3b4Ap3srNj5aje/vDsBh7jaOB3MjlI=; b=lqNnmisUNwtQwYxahSefcSkYvl
	o9+BUiYHNBYb5uSIELPx/puYSt7MAqHAnI+SESnQH1qdGgO/OZEtH1aWKJBuicJTisP9cf2heqZ4f
	Vc1NP1pQ6Bz/3Pe3bwZ8TDT9w6bHoZQ0OafICna+6+LE5hE8KZ+t4ZVeBkgvNCf+wOb/qqegFpkf8
	VScLe+NYDtSuHonME5czaRnngQDDbxLxccydxaX74hx1q3WoFdjFVl+Iop7Ch2xBf4cAaGgUU8VLY
	ukjQML491re+9RCZq71y0piwZvU0Klhl1/nBwwERq8RNb8YRzkoknAfLvpe4eLi+wrglaqPTs/Xtg
	tuiEPt6Q==;
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKD-00000004N2T-1VRw
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:01 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-578ecc56235so3649572e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364895; x=1760969695; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PtOz2kIfaFHaB3b4Ap3srNj5aje/vDsBh7jaOB3MjlI=;
        b=lOxFNtaHR+Oh2RRG6Af5zpz2E1V46OqR1H5UFSr4JZ9jdLq/07s3i2i/ilaggq/j40
         hJzhnYO95GSpccI3Sr6J1ItRWwEaafvaTD8Jw7r8MNa/9dkCUlBNRvbmUtTRK1fznjz8
         MfLORzxoRJQPh5G2MBp0GNtb6t35xTyDwn+nM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364895; x=1760969695;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PtOz2kIfaFHaB3b4Ap3srNj5aje/vDsBh7jaOB3MjlI=;
        b=qZMrBGS8nfgHtf6HgZrSUAT6TeoPMExsmHPBrnoqjlR+fDRrIPdfO+v2I9LhbZFnvm
         rEm0OnXplH9WLtDBHPUR5nrwREslrXHzSGTSQiRjduItu7te1EVxKnXuXADKqD8uHM21
         1ca6I03hYxxO0b4qOwzk6TWjNl9fzlDIXfmJVMldi0+lseEP1HUCwsFSUMw/CTalqSlt
         N8GCPNPe3gkGUVXCkHZrfNta7iaq1qyx88Q85tSmW/nc4wTaBKo1WFUE7/T1sqbevLEa
         bkl4xVbBeSjOl+9DxD9Rda+7bqgxqf4TE0wKRzvJoMXtK/wSJcC8ghRF5xATgOYzqMEj
         Fo8A==
X-Forwarded-Encrypted: i=1; AJvYcCWB1WiWGFHXwo4TUk+P8wsihYImVbKFPSPQIC88pIsF8p+KZGOtv9Z7GJUiDB3rFYp79KL21EtwH/5EtO5NQA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4H+sipw9kl4680NcIiNuuVkgeFh5NCRDGi+u7WKTGdvlAedyt
	XrHoZhHefDjRPzDVjXhX/yZpEMwjfxGVQG4Msmj2kCrbaQbTMb77Zi8Dt5K9I88WWQ==
X-Gm-Gg: ASbGncuhWEGt6/vZqtRhigyKDC6zbwT3n3gE984rNKl7q/YF7epQy5ILcbkfVLZ0GIz
	zHq2w+Mju3k945h7U5ZB26+8rrCAxRxAE0wq5tft51Wut3KGLfpr0ERxF4PHOkMZ6SINBpi5w5T
	Xt9qIRMc4n/N60f1/JyNa3D51WMQrBdnsNQlj+CX1dXwIoDXhQkSPoK2ykACepFVODVPVSwrn3c
	j7dQ3LWb5XIBW6AjkjI6ixsMQr9VC9qOfcTTgEtKVaU/bfbQ6HkgwZWl5osm30+S5MztC0dX7mp
	nOeyy0xxKFqB4WKjCzM54q+ynW2AIdltSBFN2uFNu+ChNiybArRfOoeO9VuX+02XBEv5jgZJUOf
	bUoyvPhTw6ML5vCR3v/fZquorOdlLzHk5csz+nkcfRtaVkHYmXlygGPbXppLz4AqbKGUiZl0nCj
	NoENsTnBb2iLnom73Hdw==
X-Google-Smtp-Source: AGHT+IHgj8C7exDJvyPI6OyYwB6RVmsRdyW2/dMuvAdiNw0oCeaD3q0MVrstbMSTaMktl9t7RYe3uQ==
X-Received: by 2002:a05:6512:3caa:b0:586:8a68:9c4d with SMTP id 2adb3069b0e04-5906dafe47cmr6138791e87.52.1760364894546;
        Mon, 13 Oct 2025 07:14:54 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:14:54 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:14:48 +0000
Subject: [PATCH 08/32] media: i2c: ds90ub953: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-8-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_151459_079545_EBA93B8C 
X-CRM114-Status: GOOD (  12.79  )
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
./i2c/ds90ub953.c:779:44-51: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/i2c/ds90ub953.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/i2c/ds90ub953.c b/drivers/media/i2c/ds90ub953.c
index e3fc9d66970a762d284955f14db48d7105b4b8c4..087bb4ea555977692c66387a43dab54c12134e60 100644
--- a/drivers/media/i2c/ds90ub953.c
+++ b/drivers/media/i2c/ds90ub953.c
@@ -776,7 +776,7 @@ static int ub953_v4l2_notifier_register(struct ub953_data *priv)
 	fwnode_handle_put(ep_fwnode);
 
 	if (IS_ERR(asd)) {
-		dev_err(dev, "Failed to add subdev: %ld", PTR_ERR(asd));
+		dev_err(dev, "Failed to add subdev: %pe", asd);
 		v4l2_async_nf_cleanup(&priv->notifier);
 		return PTR_ERR(asd);
 	}

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
