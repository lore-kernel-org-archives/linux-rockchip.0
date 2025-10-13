Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9240CCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tPE/yavcc7Kg2PSaOvi0WCtcDU3yRYOOwc4WeHz+y6o=; b=Gf4i59qPVwxoo0
	zMgAUZpiDn38+B685GgyFffZXaRDjocl5BW0FkZVtN4+xEyKPXbsjczNvK9UikXp3lQj6n7adGeof
	OdAO92eA2fGpzM9t4Wz3g5VjIxFD9t0UVGSbesTgDKW3sQg6sLovx8IsNZXIzwUZifRXTkEREPW4n
	Vzr5QCNBkdJWFhuTXiQoBrMD47RvZCeWfCj3TAiGo5FNE0ElcGbBaFyjS9+B6xq3pfFJD7uzblMJP
	Ef59O4FYJgGQE3fwepvoqmfGCGSjEDNSEFdqxEaWn3q3LCnYceucDuOLvkBL1i1wr+/hCrBGP4PJq
	IwoZHUwVCvmMaYigi1+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JL1-0000000DM8K-3Dh9;
	Mon, 13 Oct 2025 14:15:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKU-0000000DL6Z-281J
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:15:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=5P2qDb2fF8LDzF+Q7SobVA0m4pVGtYbfI8YlHA3qkzo=; b=ibt7skLO/s6wudzJv0/sL47mT2
	p0s3CdJxMuwAZjurH/VFq2Bf0W3YFEcc9dXjEk8MaGFMDpPn1jknaYJ78VO1tdAkV5AOJUBvASFsE
	jZ3xE+SJcXXQIB3IAx8IGsHNHf/Vtsdl62nVBuchfwVeTYoSe6VEerLVBPRlNqZOKZokOWzMFRKCQ
	+oB3xnSnCj/tfNvCGyym/xPTt9Kv3Gz3DwB6jphaMiFLtqMiogNgnH/k3MnQZpN1Ab9UXPttp0NIm
	e5FhS5wBjFpqnqfyhcSb5vCTtSSkNOaro3WUIr/RkLgd9KuKCUgyt8jjiIDoe5x45fN+OEVTJJW9X
	0dbzds9A==;
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKP-00000004ND7-0SeR
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:11 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-578ecc56235so3649857e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364907; x=1760969707; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5P2qDb2fF8LDzF+Q7SobVA0m4pVGtYbfI8YlHA3qkzo=;
        b=dIp2SxUrGvOnT1Evx1oRg/P2EWlT/gTOzrhep6Kh1DsPdgwJsVmf6cC/tqC7ZvJFeA
         +4kG31DsJkVolqm2MAG9Uo07gIOhbdKtoTKeH9QOdwld8aaQwvzME5DMGsI9/JFipN4g
         E1U65ggxmFFLhYa5X2kVm804d7w2Bvy7mlMHM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364907; x=1760969707;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5P2qDb2fF8LDzF+Q7SobVA0m4pVGtYbfI8YlHA3qkzo=;
        b=AIUGwku9la7bQqjSW/9kfdq2LbP88HTUICl+sqQB6MowEbxcQADz4vKQKT5IZTBgQe
         D9oU3QgM7sY7mziVeq6GomqS7RRMf7axFWb1Auk+A95uTgcWWeoeJuL9poP1fB7ayxEF
         Qhn/lbhzhmTk6+E4RWBeeQ5QLx+Gnp+iIG2eSMyI3Jq3y05Tfuukjwy0Wc5wzpJay2Mb
         H+gpGg8pJakrZXJB6vbmljW+9JvDMhJtPUymWYEydebQAmVgM4Kz8jVqJX4h3d7OlXfc
         MVZFGaSsOMXa2V9mOodzRRDignRyBoSeXMMR2E+3UuvpFXAzjhpso13cjF/d5nOoatnk
         VNDw==
X-Forwarded-Encrypted: i=1; AJvYcCXlC7fpeQ8O4dCIZ7apTp7GhXXVGNiMneuJGEpjdEcd9aX/WsEoFxya+hkmk170KROrFCn599RhgYNtQrMumg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwhryQ5GTpUpWBaMRN3uaW4+BSiSlOtPDbPSGql3WxNdUKJEbJk
	gHDVtZ83N64F3kbw3mtBMkuZH+8Q3mLeO3sAUSnRBePeOWAWjTd5SZxzqcP/8LC+eA==
X-Gm-Gg: ASbGnctavDAkzddRICQQMzOwmI2LiJ3ioIWk8tAvcN7C0tJF6b1aYOwwm1rNyv3uio6
	SxqYVBsNwahKLBWhpm07TldOR8M6sldSJ2odu+g8f1B4oTGRzEExGSuSKC6Hb52/TkeRC+vMI4J
	+ZfVuUQSDRI2XlHruADBWuwhy0uUt4aJWRthiqAzCvcA4f/ND4WM+igWX5zacIr7R5M2XrlAIw+
	HKwmmrMn1t6mrL8ReerDmKyHreiSpyG3aGWXvfRNpM6diBJao7X8VbNQkkfUKYwprgJwa8HXm0v
	+S8QXPQ087WB5KNplvl6AW65jXvg+UTO0gKseBX1kLfGrLXM1SZYPuEm+n97X024G6AhVsh2yi7
	nc0zwd7LoWRfgCz0OPgMViuKftv1vJHBXe5uZoJedJSXuUs9bxtdpvJeNqn49VxLuC8cbRvEVW1
	Rzt81xzWpL+NnWOS9jOg==
X-Google-Smtp-Source: AGHT+IEQsTtyBvH7wA40gxhWBW3oPtbImGl+YQPk0oKm5qusk9oOE9kCkc6erWew+lMrb0jYwU0vow==
X-Received: by 2002:a05:6512:b19:b0:579:8bbb:d61b with SMTP id 2adb3069b0e04-5906dae8e6amr5727710e87.46.1760364907237;
        Mon, 13 Oct 2025 07:15:07 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:15:06 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:15:10 +0000
Subject: [PATCH 30/32] media: ti: cal Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-30-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_151509_363245_8ED179D1 
X-CRM114-Status: GOOD (  12.52  )
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
./platform/ti/cal/cal.c:1111:3-10: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/platform/ti/cal/cal.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/media/platform/ti/cal/cal.c b/drivers/media/platform/ti/cal/cal.c
index b644ed890412104887ce3ec32b5024a02a9676c8..3e25ce0c3c3bdce3434d19c416481bd8d8b838f5 100644
--- a/drivers/media/platform/ti/cal/cal.c
+++ b/drivers/media/platform/ti/cal/cal.c
@@ -1107,8 +1107,7 @@ static int cal_init_camerarx_regmap(struct cal_dev *cal)
 		return 0;
 	}
 
-	dev_warn(cal->dev, "failed to get ti,camerrx-control: %ld\n",
-		 PTR_ERR(syscon));
+	dev_warn(cal->dev, "failed to get ti,camerrx-control: %pe\n", syscon);
 
 	/*
 	 * Backward DTS compatibility. If syscon entry is not present then

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
