Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9175AC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OuXiOPFxbC90xzNxMP5bmdqVqlSivmGn1pTnw9s6ks=; b=sVvS1fzKtKA1au
	ohgRvTXQKDC6oMhrW5aJJOB30X77SHEl/kcDNBoHuZKpyiFlg5WH/DMyOgAljzC6EybTc21X7ZTNH
	xjQCusvwHD5YOcgUQzb9HIjoQi1Jv1JTFbjS4E9R0pqA6GIyVYofIdaxz0eMVvKgzq8TqFs5kZ8AF
	NbVFtoA/FXq5/eKQ0nWQc5FlO5C+SpTT1z9F02AwU8BYs+hHNgpqZRtEiT6Zq4Zn+4uAcnWbF3jE4
	os5hXaUUcs2cGSwXXYwp3YHO8CE9r5s9TbkFYm8rB62rCxIMXSZK+9j3jFYimNpyoEHluoF0GPRIC
	+NnvgogP85cCnTAOt+qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLWU-002IoN-8Y; Sun, 12 Mar 2023 13:14:02 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLVx-002IMi-RJ
	for linux-rockchip@lists.infradead.org; Sun, 12 Mar 2023 13:13:32 +0000
Received: by mail-ed1-x52a.google.com with SMTP id s11so38490946edy.8
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bkWfjOYJTJDW62JPb9CPt+q+UFtZ1H1u4ouIUZRGvZ4=;
        b=dufU2ZEVvJS9S3PuzmfWSiaKt/e7oKmEif/HcTwiDm1Y71Lj42dFTktHXvA2w4XjAm
         z6CgADU73/O+QVxdKfCgfzGdd8q4LJXRA1NAMkyp64omDj5lG0pyjwGLSEUy3YRLQw1F
         jbhPrxxPiruJ9AwZDeljYbj05SqYwHoEeRai4CpSh/z6WTebeg/5Vrjbf2NIr5CzrKuM
         9qiaMAOz27bLtb+MQWNr6IPfIJ9u+UOg7hONEIKoQXcti8nfWdHn2vaNqLwCT+mhFL13
         lxBRmxlvU7xnCcaMng+7C4zdz2s2yxnEIqvlx2C5sHF3menjlKTG6uQs3n0MQ+fjsU1a
         kNjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bkWfjOYJTJDW62JPb9CPt+q+UFtZ1H1u4ouIUZRGvZ4=;
        b=Z0RGBOynJChm93U+iN5P+dDPgj5R8BiFQsNXGL8GF2wuC2m4k4H015s2e04kVh7qwR
         aoJgdxSVE9obXggS6KJzwLl4hxCMBbMXJCQUTQOzV/7lzHrgs8kOogDZ7WKcm9DT1X7q
         PO0SmhcXjdilLQu4hHb/L5ewhgFhXdqwhUwbglSn8rfaP41EqgdOMZyQX2HoYu5YGQYg
         ryXGyoUbFhqnCMXPWwseni6OXYsamb+jjRCSSUPSIk6UD8sIk6DKAgVVCu3Q1lhP0yGf
         9tGNB1T49kM2KKXGl8TODfVZAYURucCphhhoYlT7o2bfaPxA//3i95xx1FmR6+a10D6f
         k6ug==
X-Gm-Message-State: AO0yUKWGeoUZCqQBCzcICVmr62jAVMty3WsrVtJNJZaRfCAiOY+Iwguq
	81Grc6fdbt7BXQPmJhbO6elyEg==
X-Google-Smtp-Source: AK7set+ziiDk/Iecc5/4CJWrBGIg9OTBhTAoqLcBDI9ZAK6SPp7SnqnL3CHjfonNxYjxcPQIpQfdww==
X-Received: by 2002:a17:906:f6cc:b0:925:5705:b5b8 with SMTP id jo12-20020a170906f6cc00b009255705b5b8mr2100962ejb.58.1678626807629;
        Sun, 12 Mar 2023 06:13:27 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:13:27 -0700 (PDT)
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
Subject: [PATCH 02/28] media: cec: meson: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:12:52 +0100
Message-Id: <20230312131318.351173-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_061329_953489_E9543413 
X-CRM114-Status: GOOD (  15.06  )
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

VGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEgdGhlIERUIHRhYmxlIHNvIHRoZSB0YWJsZSBz
aG91bGQgYmUgYWx3YXlzCnVzZWQgYW5kIHRoZSBvZl9tYXRjaF9wdHIgZG9lcyBub3QgaGF2ZSBh
bnkgc2Vuc2UgKHRoaXMgYWxzbyBhbGxvd3MgQUNQSQptYXRjaGluZyB2aWEgUFJQMDAwMSwgZXZl
biB0aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLgoKICBkcml2ZXJzL21lZGlh
L2NlYy9wbGF0Zm9ybS9tZXNvbi9hby1jZWMuYzo3MTE6MzQ6IGVycm9yOiDigJhtZXNvbl9hb19j
ZWNfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0
LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRv
Zi5rb3psb3dza2lAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL21lZGlhL2NlYy9wbGF0Zm9ybS9t
ZXNvbi9hby1jZWMuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY2VjL3BsYXRmb3JtL21lc29u
L2FvLWNlYy5jIGIvZHJpdmVycy9tZWRpYS9jZWMvcGxhdGZvcm0vbWVzb24vYW8tY2VjLmMKaW5k
ZXggNmI0NDBmMDYzNWQ5Li4yMjNjMDkyZGJiNmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEv
Y2VjL3BsYXRmb3JtL21lc29uL2FvLWNlYy5jCisrKyBiL2RyaXZlcnMvbWVkaWEvY2VjL3BsYXRm
b3JtL21lc29uL2FvLWNlYy5jCkBAIC03MTksNyArNzE5LDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0
Zm9ybV9kcml2ZXIgbWVzb25fYW9fY2VjX2RyaXZlciA9IHsKIAkucmVtb3ZlICA9IG1lc29uX2Fv
X2NlY19yZW1vdmUsCiAJLmRyaXZlciAgPSB7CiAJCS5uYW1lID0gIm1lc29uLWFvLWNlYyIsCi0J
CS5vZl9tYXRjaF90YWJsZSA9IG9mX21hdGNoX3B0cihtZXNvbl9hb19jZWNfb2ZfbWF0Y2gpLAor
CQkub2ZfbWF0Y2hfdGFibGUgPSBtZXNvbl9hb19jZWNfb2ZfbWF0Y2gsCiAJfSwKIH07CiAKLS0g
CjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
