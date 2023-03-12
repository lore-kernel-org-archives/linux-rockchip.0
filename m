Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C22CCC6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIEGMLJcAzKx4unJeDjb40pYsT7Fmhqs4fxBdWVx5cs=; b=0Xxn3i+oqS2P5E
	b3uGmNf4QY4Nl3lJJCEvIs2NNKW711yVV//8zunexAiXZ8yBgvndANuSLgjFG7jTQgjMjlEZrAnzm
	TQpLfwBC5Uas0WrSo61PLjqNbO5sNYqc8N497EmmQDPKe766jkEs6ynifosFYr9LZPRE9pSVm7VzU
	mzHVp0xeqROymQA3EyhZGRezjikmXDwHFgGGuKRPD+3N9/c/nijaXlVm+VqAJC2oj0Nb3haTiTfof
	y+ZvrCCuatzvfMW+2EsSIOHwSbkOHhgu2RnC5eC3XJ9/LK2aB+9hz1Pqyzolfe2gHFn1RxtKzVcJd
	DyOtr+hsXwd4mjbkTwPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM7p-002Zrh-1B; Sun, 12 Mar 2023 13:52:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM1g-002Wdx-40
	for linux-rockchip@bombadil.infradead.org; Sun, 12 Mar 2023 13:46:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=m+WYHU/SqewTwrfZuCdGJulxf+5ECuJ2svWptTLYXIE=; b=KmTl65d2qH496JrvlIt2b7Iz4i
	HmydYh7mB2vQZXkZD+BiPr5AyVr4oRGimdG/Mf+bbn+VvRmt6JH/1beb6BYtMHoF+V7QGYtyzTUNt
	l1wCU+TDSXb23V/exKodRFeCydcQy4S6VkeuWnRgE0Crdz+6/xtombHIvYc1rKyS/t7rx7OaGBm0v
	hKkEm7eA5iPX9aM4gcbEo8pZ+EXWqgestMBgMszWRqZNwyRp5DIS5paxJMufui1TY38AgDRMr8wCt
	VeqCl+tJQFMm6U8fn2wq/iWXc4kD04JU5q4j+UbAxHn31wML0aV095+7YoFR9+5owhaRGLq5bX+uC
	RoOEZpfQ==;
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pbLWf-0011D0-0h
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Mar 2023 13:14:19 +0000
Received: by mail-ed1-x52d.google.com with SMTP id ek18so7377765edb.6
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m+WYHU/SqewTwrfZuCdGJulxf+5ECuJ2svWptTLYXIE=;
        b=qa63Qo9fSC+Ap6jq8NDE2/EKVxm+oVWK3PFoPnwE4yBlATkz7TLk5YW9j1Aus6jlO4
         6yc4oApxJj/EDKros+pMJB38lQNWN1egudsvqOCBUzYW64WGkXUr4UF5uvMAhzPeK5rn
         MFPFUDZQfSOayCcp9U5gDPkJDFkGju6UWmsy9KCRljegOCC7go6mgN7GfCuyf/VdVbFD
         RI2fxqf3sl093J1Dwc5Jpz0d+PVkRtuxgBckuhSs48nPfSE/o9nrnsQU4Mp4x4rkVe1u
         GMHKWSQnkdmVR/BpH9WvboP+5QMDYLm5XUHxVqEXRB/RgiCPMXI3gOvVA9FVBVyWZXAk
         RPlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m+WYHU/SqewTwrfZuCdGJulxf+5ECuJ2svWptTLYXIE=;
        b=OEssw7UALeLE9GUB0F9HUW/ShkrrTqSJq17NNx7gFTYf7aVxSBQLi6JprwEwzCb4Nm
         fP/YzPeUYIrFtywtL5jSUuZTArQ0BCGbMjMPadWyiFLAf/pGCgbPwIo3NkmY3WtNS5aH
         jhLjq0fTqkNuwGms/MATTNECltDzZSELOQpjyjvIH/2pt/mC2VlwXyEqo4zyYz5azx0X
         BIZbgeGanyTDCl9IzJa2Umhh36+YXCQO77e9C60DmrdRrQLl+4KOpuuxeuQyFq0ZFux4
         pxeUTyoKM0fVsDORRiTYgSzGMQWbTdlL6nhV1yKaTzcvV4MuF39yoPHGy9j3Q6aysS25
         TSug==
X-Gm-Message-State: AO0yUKU94qa0M00IXejg2zsx/+nJG1go6ytdEWvLxChyNOWp47UKhJKA
	r7TB0j6GGSugQfeqjJG6sH6fDA==
X-Google-Smtp-Source: AK7set+ykF8LuOJPvpEW6vSvb+7ovcB0VmDW/wPOL+5hsoHHErX+DX/e38bZbR9JDZSOpCTKdXlvqQ==
X-Received: by 2002:a17:907:72c7:b0:889:d156:616d with SMTP id du7-20020a17090772c700b00889d156616dmr37155221ejc.27.1678626852856;
        Sun, 12 Mar 2023 06:14:12 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:14:12 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Joe Tessler <jrt@google.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Michael Tretter <m.tretter@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Rui Miguel Silva <rmfrfs@gmail.com>,
	Wenyou Yang <wenyou.yang@microchip.com>,
	Bin Liu <bin.liu@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
	Houlong Wei <houlong.wei@mediatek.com>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Yong Deng <yong.deng@magewell.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sean Young <sean@mess.org>,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 25/28] media: i2c: ov7740: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:13:15 +0100
Message-Id: <20230312131318.351173-25-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_131413_537788_1AA0456C 
X-CRM114-Status: GOOD (  13.06  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIGRyaXZlciB3aWxsIG1hdGNoIG1vc3RseSBieSBEVCB0YWJsZSAoZXZlbiB0aG91Z2h0IHRo
ZXJlIGlzIHJlZ3VsYXIKSUQgdGFibGUpIHNvIHRoZXJlIGlzIGxpdHRsZSBiZW5lZml0IGluIG9m
X21hdGNoX3B0ciAodGhpcyBhbHNvIGFsbG93cwpBQ1BJIG1hdGNoaW5nIHZpYSBQUlAwMDAxLCBl
dmVuIHRob3VnaCBpdCBtaWdodCBub3QgYmUgcmVsZXZhbnQgaGVyZSkuClRoaXMgYWxzbyBmaXhl
cyAhQ09ORklHX09GIGVycm9yOgoKICBkcml2ZXJzL21lZGlhL2kyYy9vdjc3NDAuYzoxMjAzOjM0
OiBlcnJvcjog4oCYb3Y3NzQwX29mX21hdGNo4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vy
cm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9tZWRp
YS9pMmMvb3Y3NzQwLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2kyYy9vdjc3NDAuYyBiL2Ry
aXZlcnMvbWVkaWEvaTJjL292Nzc0MC5jCmluZGV4IGM5ZmQ5YjBiYzU0YS4uNDIxMjE5MTZkMjVm
IDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL2kyYy9vdjc3NDAuYworKysgYi9kcml2ZXJzL21l
ZGlhL2kyYy9vdjc3NDAuYwpAQCAtMTIxMCw3ICsxMjEwLDcgQEAgc3RhdGljIHN0cnVjdCBpMmNf
ZHJpdmVyIG92Nzc0MF9pMmNfZHJpdmVyID0gewogCS5kcml2ZXIgPSB7CiAJCS5uYW1lID0gIm92
Nzc0MCIsCiAJCS5wbSA9ICZvdjc3NDBfcG1fb3BzLAotCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9t
YXRjaF9wdHIob3Y3NzQwX29mX21hdGNoKSwKKwkJLm9mX21hdGNoX3RhYmxlID0gb3Y3NzQwX29m
X21hdGNoLAogCX0sCiAJLnByb2JlX25ldyA9IG92Nzc0MF9wcm9iZSwKIAkucmVtb3ZlICAgPSBv
djc3NDBfcmVtb3ZlLAotLSAKMi4zNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
