Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4586CCD190
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUaTu4E1lAuoPO/VfXsAHii6P6y7Jvd0GOhPBm++nP8=; b=IrJMMKKeSgqpuu
	gdtNZAfLfcsmuNXVRWDZj06ienSWH2D0frQXWmhKXBKeMNMJUrcZIdNxYtah4/hYLuAGTA66Or0us
	Ygp5gBWw/Qoa4KTeFbewgcuYgMZVSKIrS/qryJP/b1jwDA09UQStUnt8B500RJdwBFikleiDo8tRl
	FdaMXBE3R7hPmpQLUBTt50IAyHTdz8XDFxA39plHIislbzDr8iPwbHdorujCxTXQq/it499VxO0kF
	1SV0VroSIwHgvLWuIyzxwuZ0CuO55qeorbcGkINIk2xD69J6qIhjlC+8rG95P9Uh8BM5EJvx5Ql45
	h/OBiWk4pT9I1yKW2GaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKn-0000000DLeJ-3hga;
	Mon, 13 Oct 2025 14:15:33 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKJ-0000000DKke-3qZN
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:07 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-579d7104c37so5206990e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364902; x=1760969702; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xp5+d2aM9HDmwL1D3Ee1aFLEQL7phGBi28Bq8ZC4kWY=;
        b=MmELuFhigbZttcAqjoHF++36kt2y27iKUgYm49V6ffNFBUBtDQJmMZGLHpAv7LqAyd
         j2NxWEuRUpx65VPDQRsvY7LmGiK1CKS3kew7Fez5Xma1UDEMr8/S0rkJFN4YHiRagVih
         twbOJzMZooI2wOfrJcWTbM8eJllEmuxYxohCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364902; x=1760969702;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xp5+d2aM9HDmwL1D3Ee1aFLEQL7phGBi28Bq8ZC4kWY=;
        b=DndkTe7KGj79w6cM/W8dJcPdeHbZNrM5EH11GGsKgSdC6Pi3wTH5JGAM6KkKQwpt3o
         YgjeV6EZuoJabErlaveCsUOF/69osdPFrWn9bRxESRaYPiHPKM38tfGDNJA+n5X+mGX6
         zXLvVepmyP52MH0p8JpuCbEbhSmGEwxbDeb2ez28i6mDCtRzG+ypV4sES0NXHUFN83jY
         l9hL9KXpSxEwDvxrJnNBFk0BlWTTcDKYFC7jlawFgCrgTXoOibAHiY4CWiqZktCR2F95
         6NTJnJTiFQijq59a0Bjs3nSMbOJHJM5GsS6Iij9bSFoe4sF1qD2YG8wYkwY1peET2Xiw
         /2sA==
X-Forwarded-Encrypted: i=1; AJvYcCWg4A+/PE/zjiTqj6A5bC6wOonfGjhTvH+znE6YpiE6WM9cTDFtKH96oLY2wUHHkrfWWEZcVtuxoFK0fMmKcA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyu8ewoZwdjkm3SJwGaKDTTLqiLNteYh1MTfqhVNZB0Mk/nATUG
	itWTM6dDAfB8bKkXrq8WkSEWxmFZ3/yo1XSnlr/IIFkso1I56ek0z7n+eiNOb2Weog==
X-Gm-Gg: ASbGncu0EyjPdxakmMaYhppN31ok/ejC03wmzdVFQraePjIO4woRAZmfkHToe57cxP5
	QSwhm+TIRnv+gCbemaO4+OwBNVKPC2hFyvuAQv5I7DdkrhDN9xPQUq1mZqtM+VuZWOn5TIMDhPx
	gnV/Oqfa+3ECMZAR6QJLJV7cSPEvjktsNBKgCbdXBxsg6GYavYyUb+YdlLlVJ1nMYRo7P99Alqv
	GAXeyuYeJLNSOMnuP0lTERVSR/Aazf3MPzDTutULqDYyTbRRJ+YtYwlAC5fxrgLK63ShVLIm2RV
	i5U+ZvYks9HhiTYjT5nc9hlzy4lusb5bbeXaEhDdZ4lxM0rOqnzNcfUA1BvC93ooIek7mCXA6an
	ieX44tEFZQ4kudkaE8PMIR4Y+V52Ocere3FkJQcI14QNNMfYQpKHCMQU8P08GCoNEZPrnnOM8Ia
	DtDmM+eYcf27JYagvUzRQpE7KblzU4
X-Google-Smtp-Source: AGHT+IG5Jbn8AREYVQz4yshVmuRi7HcTs/B5++Cc/GK88THJwh0ZT5hT0MoIErPfPNNX7o2ai5GIJw==
X-Received: by 2002:a05:6512:1389:b0:583:ac7e:4e07 with SMTP id 2adb3069b0e04-5906d89243fmr6542710e87.14.1760364901812;
        Mon, 13 Oct 2025 07:15:01 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:15:01 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:15:01 +0000
Subject: [PATCH 21/32] media: ipu-bridge: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-21-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_071504_442141_E2337EB1 
X-CRM114-Status: GOOD (  12.34  )
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
./pci/intel/ipu-bridge.c:567:3-10: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/pci/intel/ipu-bridge.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/pci/intel/ipu-bridge.c b/drivers/media/pci/intel/ipu-bridge.c
index 4e579352ab2c0be656576fa223429432940747d8..153b2f3685b447130b7ddfc2f971ffca8acd68aa 100644
--- a/drivers/media/pci/intel/ipu-bridge.c
+++ b/drivers/media/pci/intel/ipu-bridge.c
@@ -563,8 +563,8 @@ static void ipu_bridge_instantiate_vcm_work(struct work_struct *work)
 	vcm_client = i2c_acpi_new_device_by_fwnode(acpi_fwnode_handle(adev),
 						   1, &data->board_info);
 	if (IS_ERR(vcm_client)) {
-		dev_err(data->sensor, "Error instantiating VCM client: %ld\n",
-			PTR_ERR(vcm_client));
+		dev_err(data->sensor, "Error instantiating VCM client: %pe\n",
+			vcm_client);
 		goto out_pm_put;
 	}
 

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
