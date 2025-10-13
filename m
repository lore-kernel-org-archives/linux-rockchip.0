Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CFC0CCD192
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hl4CGu/6C2lOwYuLcQSuxxE/4BKKDuVZY0pGNzSSj3c=; b=L2Y+WRfJ0sgtFa
	96Hogn8sSSjJJOjYGJ6I+hBsNnUC+fjEYiCRGK07k3bmXZ27f21Rfvdu8ELIVgAZs0jdk4OakxK6+
	7M0FAYPsEpI3/lv2MpQ6Fid9VCG49qaPFeYfrv3Yzk6o/lWK6aUWUzbzeh1RPKlqCL9zN9f8NJbHP
	ZuBhXd/Yf6mzX10SMwV25Zdvbe6e9ag1zCU/SMpt2jms4ttaA4oCalYrXO9LJlcalFtjYws9N5Gly
	lmQ/FwWRI0r6RBnsL1QutoVANkEBtzVj4uZh9m54SgzlhgziMdf4pfMR/2qlcYm3KzKCnBINMZHn6
	8oZCFrcsCPkJ1GM9uLzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JL0-0000000DM3x-0NGR;
	Mon, 13 Oct 2025 14:15:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKQ-0000000DKzI-30V0
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=XTfgrP773mTzuIwpFbkRpkdwa1sJQvDkaUU5vsQzRTQ=; b=qasdUPZ3VKbURpVUIiCJoBjwjz
	nFXb5VGHY1Yj0giYP+28BzHSFS8yj0pgr21mgu6LpTosyrx28bO5Bal7YuAWYLarOW6buao55Xc3b
	+lBIas9i8nPbBL56HOxRaaB8CoTe6YLtoCjIpDGpQtOc/KC0EIFUs1guq9rpymczj3FwU7A5w9Y4T
	r9QO/h9T1/bJt4QrX3nC6QyFNYJf5x/4bYEAhZc4qvM840gruIo6umCejKsieZ//JNiyK4aU8yvrH
	ASn01rqcxRoIacQ+OlWAA02nySHPsNX1g9RKfSqjgzbGrW2rqyve0gG3lMAachy3ueoD7IFo/xClZ
	4VT4ES1A==;
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKK-00000004NA0-1g0i
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:09 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-57992ba129eso5322310e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364902; x=1760969702; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XTfgrP773mTzuIwpFbkRpkdwa1sJQvDkaUU5vsQzRTQ=;
        b=XJ3aYY6ojyfENYuqSXXpICiW6wKecTVWIqTKXiS/rr7hPZ+/pGPt1AH8ZJcU588vsM
         TpXZRt3T90A27Ncj1e8BMtkGkl0byPCDgYfo3IASTzKE60bE28WcfgEP7xJ/apJc6h3V
         VXG8UaXX5j9TiYY5verUTEzt34fBh9yp756Do=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364902; x=1760969702;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XTfgrP773mTzuIwpFbkRpkdwa1sJQvDkaUU5vsQzRTQ=;
        b=rxRb1FnGt/07GQf6KEr8F8Hc5kiMkb290jSg6EPaMY6cA5SSmWfxwj/PwNgtkX0wBX
         LQXacB0EBoxkMuoNs3Pr3sUe+ha29TRRygUXUEEwbYi53aD6eWm2pdUREjNISiRmcLen
         PlJ36EXHbYoI/nYHjxeSotvUZAqkVr6N8mNhGp3oBYCv+0VQhe4kdCX5h+i6vzq6OsIj
         xq/LRuMzJP7K+N+m3zNUsQkdkfDMHzKUTwbouONRjwNrmAHZ+Wso/N8BKrdLwDLlcCZr
         K74P/XavDe3/TuHtuZw4wgJdUYp+7EaGK/6+gyD1IWgGg1x2YiL1fuAFI0mPaCq/7dwD
         PitQ==
X-Forwarded-Encrypted: i=1; AJvYcCVf3gGCnPuz2EIOL3i7gtFFR11LctYZg4qZfjMAfzN7GjQ8BEExYv9qcVlPyqiO2cE0rn5T4LcpEa+l419OtA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwKSYZcyEQCgj8on1wmu8NEnBVjA0pd1Uv1ITGvCuTChO3DrFtb
	R0OEFKHj45BoYKBFs75Zjmo8O5WPGQYoJhIABdl7QZaAXeCOOu4wTnvBZb8LDJvebQ==
X-Gm-Gg: ASbGncsdzAMfAF6tVcnjaAljMl4V++Mgn9MfVt352hKy2zun8yoOYgcypYYENz7CQ4Z
	3yD6lbuBudkK4SZt0Ug6EmHfYXR91X29ifnvOfrJzVhflOlDqjTHgUbRbSOG+V0uEqTYn5aSa96
	aZL21/sJndJ1JjRrKoNQFqQ9tS4LTeFBTrJPvbIzkiZ0FEpzd3VfnEjRlrtNfadRmnLQSuM0oA9
	8g4Yw6nFBtgC4aFTh/I9s1pfB3W9PKNc2Z2oh2A1yK3AEKRumDPoQRtRlY9Ylwy99dxk4Fmlh9M
	MBJhfHAGabz8U4KQvWbVyfkBr0/U9JOtuQrBiRoChAQodp8byyKKkG/Dby1R8tKdAHS9vxxHsvY
	OVypbsgIheU2J4Nx38t6YTlO/cNZNHx74IOqBWbW2z/78lGyK1ShRbyvoJGBAc6hrEWZ7+SZlQp
	cu1uUsirU6dnFBIVU2FGRxD64qEkOe
X-Google-Smtp-Source: AGHT+IEmYSyu4nHTtG8vRgmb2LccUUeX39k0JKnrkMfDo77UUQwM9CrYH1frfefAQcn5JPDuzUf+OA==
X-Received: by 2002:a05:6512:104b:b0:58b:394:fd4c with SMTP id 2adb3069b0e04-5906dd6fb89mr6060927e87.33.1760364902483;
        Mon, 13 Oct 2025 07:15:02 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:15:02 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:15:02 +0000
Subject: [PATCH 22/32] media: ipu3-cio2: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-22-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_151504_859922_B7B34ED3 
X-CRM114-Status: GOOD (  12.48  )
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
./pci/intel/ipu3/ipu3-cio2.c:318:19-26: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/pci/intel/ipu3/ipu3-cio2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/pci/intel/ipu3/ipu3-cio2.c b/drivers/media/pci/intel/ipu3/ipu3-cio2.c
index a87f105beb5e267fd450b8a36ef9b0e0ecafc598..986b9afd7cb5b6a07c796b4333f93d427a8c4fbe 100644
--- a/drivers/media/pci/intel/ipu3/ipu3-cio2.c
+++ b/drivers/media/pci/intel/ipu3/ipu3-cio2.c
@@ -314,8 +314,8 @@ static int cio2_csi2_calc_timing(struct cio2_device *cio2, struct cio2_queue *q,
 
 	src_pad = media_entity_remote_source_pad_unique(&q->subdev.entity);
 	if (IS_ERR(src_pad)) {
-		dev_err(dev, "can't get source pad of %s (%ld)\n",
-			q->subdev.name, PTR_ERR(src_pad));
+		dev_err(dev, "can't get source pad of %s (%pe)\n",
+			q->subdev.name, src_pad);
 		return PTR_ERR(src_pad);
 	}
 

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
