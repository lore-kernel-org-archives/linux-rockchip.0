Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3066C05027
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 19:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2IYNfXc5NqPpVKmPDbYkvbXiaBbO2WRPjbI5ovnDHo=; b=GllUoAykGuswIe
	0839bfd54zQft9uphPA8dqWBPJHlFjd2G9cjXFCWZRzWh0GHypPwsOYUjKiNA7H6d0yBs/upcNqE8
	kpCIiKjlqkt+OQZSRdJJnsrwWlxme9P5C3uaFvKgH7vhsFyjb5U73AupW4Mcddgu9wqmiAWSk7SOD
	iDod4CIfCMYqNddI6rFbrKLCUMIQEpL0xNLNtgc8EAcKlc0fnlNBiaJM0kXGd1dhPRAK1clgix4w8
	TRVH8+YmviLtwI4roKCMDQTyp+vh0lP7SaF8vtxVESfJAPeZlrm5heTo/Vc2mjVeurhfJmr0k5v2O
	6XQ4BK8uP6Nv5CID0ubg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcAgr-00BNg0-0T;
	Tue, 14 Mar 2023 19:52:09 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcAgc-00BNci-34;
	Tue, 14 Mar 2023 19:51:56 +0000
Received: by mail-ed1-x535.google.com with SMTP id z21so1414242edb.4;
        Tue, 14 Mar 2023 12:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678823510;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8AT8USwG5WyHMLzA6/8T0IUfb3m04Mgmj2Z9mkS5Q9k=;
        b=VQ1Bxxrd0PI+Y36KGSR9tvLfCRNckswniNWELVaaPvUCxWivB6ajZpVwNfQPWx/bxk
         wlyb+IDMNnHUcblddMhuEzgUKSHLuI4IYjI16P82uxBFfu+92mr4ylyALdg2BFJvB0AO
         onmyGCP+1rgPgi7D6BPokZjuqWgag+074+OsP3gh5V8/s6Ajcuo0Ix20CPS0vWa6y38n
         CxUj1yc60ELISGN+7y9S+Iv2DRIOmu8bGsTq9Aeo9AEahw49g7yGwjhT0f4XFogDgefs
         /N/wuVy/EJ9AiQTL6+rT/SW6ZaLlic2kpZM0aIBubfPL2LM3uwH4k5DAmUCIPj+m+x3r
         sfcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678823510;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8AT8USwG5WyHMLzA6/8T0IUfb3m04Mgmj2Z9mkS5Q9k=;
        b=DWi0Wl+ABGhHSoPWoDpXrPg6JS7P4JIt3pY1+Zv7G7RNnQmvYH5aC2R2n5f9z7QRAv
         +YsthzC2idC9dyzlaRD2jC3LZPrOQCERWzM3EacspU5ModkBViKR0ezZP/k+NzdRiDPV
         n3/XjfCO2s+812uma/Bh8k1/ZT7Q0AcCiZM+p8nm3/pwvJovhjaY07za+/6OS5yq1Dbe
         i511iglxUPQmi4I/gjuJgwcKf96lBrHa2Hp9mLQJJ07JOtYBmNBH08vH4aMxo+uD9rCN
         9vYFaEar2hCgLt41qCtQ82wPQQKJ+UfKe1BrR83u11VyqOlBPXGc17XCueV5i+cB8qLZ
         HLUA==
X-Gm-Message-State: AO0yUKX1aMaXkH9LB1kJ5jY0LKZAPPaSwQ53vzlqCfUg8UMagKRPMPKK
	ibGOhZtH+3j7SOAV4MfaLCA=
X-Google-Smtp-Source: AK7set/tzuvE7xTzdstMMoDin2Jn1A93J29XnBrFLWGatjpCIuLb3twRybszlAVT52/X8b7+AM6KfA==
X-Received: by 2002:a17:906:a249:b0:92b:b4d9:3f07 with SMTP id bi9-20020a170906a24900b0092bb4d93f07mr3722129ejb.14.1678823509909;
        Tue, 14 Mar 2023 12:51:49 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-1-233.dynamic.telemach.net. [82.149.1.233])
        by smtp.gmail.com with ESMTPSA id z4-20020a170906714400b008e53874f8d8sm1509261ejj.180.2023.03.14.12.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 12:51:49 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Joe Tessler <jrt@google.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Niklas =?ISO-8859-1?Q?S=F6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Rui Miguel Silva <rmfrfs@gmail.com>, Wenyou Yang <wenyou.yang@microchip.com>,
 Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
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
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 "Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Young <sean@mess.org>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject:  Re: [PATCH 16/28] media: platform: sun6i-csi: drop of_match_ptr for ID table
Date: Tue, 14 Mar 2023 20:51:46 +0100
Message-ID: <2671303.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <20230312131318.351173-16-krzysztof.kozlowski@linaro.org>
References:  <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-16-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_125154_985258_6437B3E1 
X-CRM114-Status: GOOD (  15.62  )
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

RG5lIG5lZGVsamEsIDEyLiBtYXJlYyAyMDIzIG9iIDE0OjEzOjA2IENFVCBqZSBLcnp5c3p0b2Yg
S296bG93c2tpIG5hcGlzYWwoYSk6Cj4gVGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEgdGhl
IERUIHRhYmxlIHNvIHRoZSB0YWJsZSBzaG91bGQgYmUgYWx3YXlzCj4gdXNlZCBhbmQgdGhlIG9m
X21hdGNoX3B0ciBkb2VzIG5vdCBoYXZlIGFueSBzZW5zZSAodGhpcyBhbHNvIGFsbG93cyBBQ1BJ
Cj4gbWF0Y2hpbmcgdmlhIFBSUDAwMDEsIGV2ZW4gdGhvdWdoIGl0IG1pZ2h0IG5vdCBiZSByZWxl
dmFudCBoZXJlKS4gIFRoaXMKPiBhbHNvIGZpeGVzICFDT05GSUdfT0YgZXJyb3I6Cj4gCj4gICBk
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLWNzaS9zdW42aV9jc2kuYzo0MDE6MzQ6
IGVycm9yOgo+IOKAmHN1bjZpX2NzaV9vZl9tYXRjaOKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBb
LVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+IAo+IFNpZ25lZC1vZmYtYnk6IEtyenlz
enRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPiAtLS0KCkFj
a2VkLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29tPgoKQmVzdCBy
ZWdhcmRzLApKZXJuZWoKCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3Np
L3N1bjZpX2NzaS5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54
aS9zdW42aS1jc2kvc3VuNmlfY3NpLmMKPiBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkv
c3VuNmktY3NpL3N1bjZpX2NzaS5jIGluZGV4Cj4gZTNlNjY1MDE4MWM4Li4xODdhMjQxOWRhOTYg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kvc3Vu
NmlfY3NpLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLWNzaS9z
dW42aV9jc2kuYwo+IEBAIC00MjksNyArNDI5LDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9k
cml2ZXIgc3VuNmlfY3NpX3BsYXRmb3JtX2RyaXZlcgo+ID0geyAucmVtb3ZlCT0gc3VuNmlfY3Np
X3JlbW92ZSwKPiAgCS5kcml2ZXIJPSB7Cj4gIAkJLm5hbWUJCT0gU1VONklfQ1NJX05BTUUsCj4g
LQkJLm9mX21hdGNoX3RhYmxlCT0gCm9mX21hdGNoX3B0cihzdW42aV9jc2lfb2ZfbWF0Y2gpLAo+
ICsJCS5vZl9tYXRjaF90YWJsZQk9IHN1bjZpX2NzaV9vZl9tYXRjaCwKPiAgCQkucG0JCT0gJnN1
bjZpX2NzaV9wbV9vcHMsCj4gIAl9LAo+ICB9OwoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
