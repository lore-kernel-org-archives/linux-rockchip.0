Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C7BBCCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+k1ApuHiFLaPlu6cHywdmIo3pYMYO5At4jB+57QGYQ=; b=MiUli53U8qVxnW
	gJPR4y1MkYoinDuZ99t0SDWP6OrgMv+JenF7qi/6KYQ8F9jJJ1NuvjheEJmLkjlcULEBgN0xOp8e9
	AbB0LCl7d4lJhVY9UX5aky7wFL4ekHOCwYahM3AytdPcLbF+FEv4jnoGAgqR7WC3C+KFZs3Qh5+qn
	41NEGxRE2GC9yhbDNEU6CfMyQwkXfDqkIn2ngrk4oLQQlUW069FgKA2sd+8H6YnwuhLrxWMknn0us
	wrA3/oUYxtZApM8zyzNNUP/NeB5gYCPZZphiqc5cvuvQaPONokiaHTn8sWdHPB+lnvEdOgGHxLK83
	36xEf0yycGh5RM7ATC1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKa-0000000DLGI-0lgk;
	Mon, 13 Oct 2025 14:15:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKH-0000000DKgE-0XNP
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:15:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=HQOTcbEIyF8Gidv4VnpqffbURmu3SD1oIPY/sSQVQc4=; b=AXOSSbu3p4PZWHybLh3KSjGVeC
	OvAGq7eV6n1i7f40mr9yHbeW6Xsg3TO5Ens2SZZJcPrrbIJE72Dn2k0/1YLaRNyvYkjcTaafsSJLd
	EMMJlgoTn/kRbfdXA84CaKlDJSdu42NFWQGwJxzBxnLLLl8XPcz3S4QaYWLbkowPhCjZJdZ0t3bFi
	sULSYMGmfoB0Npp+DPhqIdcJC27yWuAwRhBG05I74YbQC0ajFl0onkDFjFRvLam1JzMpM1KY1r7Uq
	N7mR3uaJ9nQaUpUkbqGN7m5udrib1mfJQMYFg3uiQME8Ttbyg18WCmp6/cZ8/hyiUxGIJvU7IXFmb
	NDhnFFnQ==;
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKC-00000004N1p-077r
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:14:59 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-57f0aa38aadso4965099e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364894; x=1760969694; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HQOTcbEIyF8Gidv4VnpqffbURmu3SD1oIPY/sSQVQc4=;
        b=bx73R4crlZuvsK59FWpFiExhVaRQQJE9/5gNraNTdHnMofCNrLGcghw2nsjXTUCIZs
         aq3FraqlqXoXyi4knlDVQm0uEDVmGXKUHa8/L/8irBfSofb0YOuqAeS63GvB6Bm0DkxE
         4pZ1VFN/4WqCgGEruoU3oOd9AAMZsT2wDpkE4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364894; x=1760969694;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HQOTcbEIyF8Gidv4VnpqffbURmu3SD1oIPY/sSQVQc4=;
        b=eFpPhHkLS2V+b9TlRohPVKGpmYd2cikKfff6T3Mv8ZBhSPFiKDXDFWbl3COabO/z4d
         p8ySqIR7wgyoE5WWiOCZ8pL/9Ji1tR7DyjmmW5gfMvii+dKWLTd7U2Po8+YeIZeZc6u3
         6UloALXwfYW9g7DAaiZJQaUVY22jasS61HKphz4fPGCSsnk+/IfjQLOeB+lu3SFhZsPF
         imt3dN4kjY1v7e+rrbhDZGtN/GNPwUetcX24NGNoxcMqKcmn7NuJ9jkDrdNl7uFHQsA2
         /VGvwvpy/zpjzM89Jhapa+iWvOMh1rqnPM1kSYb3l2HJVfP+h14To9RA4t3smhqHU5H+
         0nIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWR389ofdfqQg5wbMYnM4cKGRtvhfiuRwjPsGTrKx7VY2KW8529UEjjYJq4QeBVbtGDhwDUIG9r9aow2JkH0A==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywb1mMJp18QMen1fhtnWzqUsCVnTHJlImXsNfKNjeqvtgKnr4e+
	qpNZVVnCuR159L0RHZHqtK/0iineFhNGsyiAM69WiKOwt2hahFbT7mToQPawZgRaVw==
X-Gm-Gg: ASbGnctPr0xLAOzYjMgTrU/7cZY5ZW51WCZY98sg1pii3T91jEBmBUjPdzkL6gW4FF0
	AgCrRVLg0zqHWzzJOSCf7Rr2qBlYdFWRZgsNEj7SY/nVps7p5iMBoa5o1zhNgwc17PmR9Qg0sA9
	44v8E+Z4FfKtW0EeT/DrECBXCcgCALtLzASSIv4wDxrmqOBXIeCn3CKHzvGql59kOFywsHa1Lzf
	mqgKP03aC6KhbpWIViQFpAZdWYg1jjexW5lZHg7CVv6PCV4MyIow8d7Bfp/zCi8MT7SVXG0X71i
	SPBpWu/+KbEla5CZQaCAPt0VXdlQeLN+er6ZTxbtLaKKL63CzIn0g7se5eHXN32j/fxtgglNaqU
	bYhFTZSbiEsxOAQVQdyUC2J6mD3mo9pZkLYLmdW0cVBC2asEpa8sN3WTug942SQEcyZqWyHofx/
	4vAl3MG01/raCvy07eeQ==
X-Google-Smtp-Source: AGHT+IGDBA6vFVbdaAIVk4TqwO+W9UovYsrjETSu90SPXIb8+mEsMg943qVguajtHcsDf6ytgGLF1Q==
X-Received: by 2002:a05:6512:6c3:b0:57e:f60:2327 with SMTP id 2adb3069b0e04-5906dae8090mr6097318e87.49.1760364893949;
        Mon, 13 Oct 2025 07:14:53 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:14:53 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:14:47 +0000
Subject: [PATCH 07/32] media: i2c: ds90ub913: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-7-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_151456_665007_8540EA0B 
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
./i2c/ds90ub913.c:625:44-51: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/i2c/ds90ub913.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/i2c/ds90ub913.c b/drivers/media/i2c/ds90ub913.c
index 73150061ea458937ae4ba7a937ea030b0d98bce3..e97e499b04e6c2700d7d433ccb4fdc57ff12b586 100644
--- a/drivers/media/i2c/ds90ub913.c
+++ b/drivers/media/i2c/ds90ub913.c
@@ -622,7 +622,7 @@ static int ub913_v4l2_notifier_register(struct ub913_data *priv)
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
