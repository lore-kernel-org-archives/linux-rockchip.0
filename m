Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B646C6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JgVZP4n36yWXfmUnHastIB1F6Ephuox10FLfKZ8zOqM=; b=W12x7aM0oT5rma
	OMqf29kCfXtgOncujp0OXAkST40POXz2Ro4poQYuWdCpfoQfwxsC+Mv6OJyuG0TuJbK39YnfMjwbM
	REcI4/389hE5raWpSa2DLyFmMSh8zvrLMuzfjuIEHdObMTBIciEToqWs9IvuE0dumN7C768e+kxlT
	R351XupMl3fJsGOQHbGrkgyrqFkVaby9B0sEAa2SvZ37/EUpvY4kuKITmn+cZBsWdssrGCS2X0Kq6
	4y4s8If1t86iehnZGaQTeeT3R8CzpAcO748ihLdd1pESKoHsU9ao0NGkm7xuTEDuev/E4sumttZ3a
	6AjgHHjDsdTWf0vQAdeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLiA-002Oab-SQ; Sun, 12 Mar 2023 13:26:07 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLWZ-002IMn-GO
	for linux-rockchip@lists.infradead.org; Sun, 12 Mar 2023 13:14:09 +0000
Received: by mail-ed1-x52b.google.com with SMTP id s11so38494974edy.8
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626847;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0wZbL2YE4DT8U/n7QjqQ5NPuVVOedoWmVW8GR5DkOxE=;
        b=KhyYeWigZGhPF510CvX5h9jE+fAqEKL2Rqs6qyLcdHXMTpfyTrH/yYmW5MTvJeK8nU
         9Y29KFzVe5cxs4J/rOcqaKWnpIbAymZchxZ/wGXUYskLlKXCUtjl0OgM6d1MpMYDwe2B
         5JML0Xz4YjWR3BX2c/3QL3NfzaX094la29OY3e5oakPa2FxDE0KgDp7gO70LZ03aGu6/
         hWXBFSgOOKx8rWZ3Aubf1UN1YZWNDAQIP5CIknOtco2JAOy74u8Thdocrurl29RGgT5l
         qLqTSjhtjfsb+ut1Estkk2Nyx1WDu0Ny1wu+fQDaiUFcO5y10EPZSGOTf7jHfa86mqiH
         i6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626847;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0wZbL2YE4DT8U/n7QjqQ5NPuVVOedoWmVW8GR5DkOxE=;
        b=seqf1twisQxaC7bk0Alve2Yo5VuZowszr6cdKSvg0+8eM0CTn5FISnLWgvMjDFRrvH
         SR8mPxKfglGMmDof27n1Ex5bN2/zywwvXH18brwPCMzvuG9UGQiJj2jDiqiFroWtv74H
         IezS9b7LyMhjidp5JSlG0/9ujUq8ml8eO7LAZVNrwuwui0pAi0/I4dwf1uUF2RHeGB0R
         +AOpMtoCidv+75+QttiuSzWcRaHwaG92dgECWAQ7Q/rJFSl6/B6MWyT1BpCNRJnYMvot
         WVqbFQGL901JqrZcivTPG6eXw/GUHVbqH0+f7OHpwd+CGtBvQNREW1v7XBpekpRKwPFX
         qydw==
X-Gm-Message-State: AO0yUKVyRUHOIZ8WpSMn1S9riFNMslF52oRisL/Bk+hSa1W63FiDSISV
	pzmS/AZC7mcwsH+DvRhDWX/oWw==
X-Google-Smtp-Source: AK7set/LSFpK4yaynBThKlKSPfP1bsBiZFb33g2FppGxi4UYvcynFTqjlnDykMn5irNp8KK0K+3W1Q==
X-Received: by 2002:a05:6402:1105:b0:4b6:821e:1859 with SMTP id u5-20020a056402110500b004b6821e1859mr8115383edv.7.1678626847028;
        Sun, 12 Mar 2023 06:14:07 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.14.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:14:06 -0700 (PDT)
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
Subject: [PATCH 22/28] media: i2c: mt9m111: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:13:12 +0100
Message-Id: <20230312131318.351173-22-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_061407_974261_39A141EC 
X-CRM114-Status: GOOD (  12.93  )
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
cyAhQ09ORklHX09GIGVycm9yOgoKICBkcml2ZXJzL21lZGlhL2kyYy9tdDltMTExLmM6MTM3MDoz
NDogZXJyb3I6IOKAmG10OW0xMTFfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1X
ZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBL
b3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL21l
ZGlhL2kyYy9tdDltMTExLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2kyYy9tdDltMTExLmMg
Yi9kcml2ZXJzL21lZGlhL2kyYy9tdDltMTExLmMKaW5kZXggZjVmZTI3MmQxMjA1Li4yMGVkODdk
ODcyYzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvaTJjL210OW0xMTEuYworKysgYi9kcml2
ZXJzL21lZGlhL2kyYy9tdDltMTExLmMKQEAgLTEzODIsNyArMTM4Miw3IEBAIE1PRFVMRV9ERVZJ
Q0VfVEFCTEUoaTJjLCBtdDltMTExX2lkKTsKIHN0YXRpYyBzdHJ1Y3QgaTJjX2RyaXZlciBtdDlt
MTExX2kyY19kcml2ZXIgPSB7CiAJLmRyaXZlciA9IHsKIAkJLm5hbWUgPSAibXQ5bTExMSIsCi0J
CS5vZl9tYXRjaF90YWJsZSA9IG9mX21hdGNoX3B0cihtdDltMTExX29mX21hdGNoKSwKKwkJLm9m
X21hdGNoX3RhYmxlID0gbXQ5bTExMV9vZl9tYXRjaCwKIAl9LAogCS5wcm9iZV9uZXcJPSBtdDlt
MTExX3Byb2JlLAogCS5yZW1vdmUJCT0gbXQ5bTExMV9yZW1vdmUsCi0tIAoyLjM0LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
