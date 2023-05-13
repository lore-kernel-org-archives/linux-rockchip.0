Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEE19C77B7D
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 09:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7pBO1riZF0bI2gG1YCIlPiBZo3N0sBRfEDoJTKFAD4=; b=iF/ny2GMd7pRYQ
	/obF84sa31keA3ah1rfPqA/7PM9ZOsJHsjpFXysi1V8wwjJAWtgKVKd/y14UHA5FSAoBhgKTT0RPW
	l5ON6Q+udzBuuXMgOL0+rV3BEhqG0muqpKGgYpEuNBO3EVUF5QXIgZnyRJGIfNXFZaPE8UF/IQKBL
	txGTJQPgFrCBY8mfBiURJrzCwh3XXpNmsyBT9wub+Yr2pah5aSvGcMm83JsFqpb5dPOFmzZWupVMq
	yH30NDppwc7g8I0//UwPtKBHAQw3yd28WPAX1B4kTbW+74OSwE/QsQ0PWK0FZ7nvTE1zeMc68yrQW
	FDa6TKCqmE9DQUFx1hww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxm0d-00EDyJ-2r;
	Sat, 13 May 2023 09:57:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxm0X-00EDwM-0v;
	Sat, 13 May 2023 09:57:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0EE2E61DA0;
	Sat, 13 May 2023 09:57:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92796C433D2;
	Sat, 13 May 2023 09:57:35 +0000 (UTC)
Message-ID: <5afcec8b-b8f6-35b0-278a-5de185e4a7a2@xs4all.nl>
Date: Sat, 13 May 2023 11:57:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 01/28] media: cec: ch7322: drop of_match_ptr for ID table
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Joe Tessler <jrt@google.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
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
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Rui Miguel Silva <rmfrfs@gmail.com>, Wenyou Yang
 <wenyou.yang@microchip.com>, Bin Liu <bin.liu@mediatek.com>,
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
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 "Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Young <sean@mess.org>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <98a77653-ec58-56c4-9893-3b424f67c87e@linaro.org>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <98a77653-ec58-56c4-9893-3b424f67c87e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_025745_375455_2B2E3EEF 
X-CRM114-Status: GOOD (  15.10  )
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

T24gMTIvMDUvMjAyMyAxODozNSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAxMi8w
My8yMDIzIDE0OjEyLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBUaGUgZHJpdmVyIGNh
biBtYXRjaCBvbmx5IHZpYSB0aGUgRFQgdGFibGUgc28gdGhlIHRhYmxlIHNob3VsZCBiZSBhbHdh
eXMKPj4gdXNlZCBhbmQgdGhlIG9mX21hdGNoX3B0ciBkb2VzIG5vdCBoYXZlIGFueSBzZW5zZSAo
dGhpcyBhbHNvIGFsbG93cyBBQ1BJCj4+IG1hdGNoaW5nIHZpYSBQUlAwMDAxLCBldmVuIHRob3Vn
aCBpdCBtaWdodCBub3QgYmUgcmVsZXZhbnQgaGVyZSkuCj4+Cj4+ICAgZHJpdmVycy9tZWRpYS9j
ZWMvaTJjL2NoNzMyMi5jOjU4MzozNDogZXJyb3I6IOKAmGNoNzMyMl9vZl9tYXRjaOKAmSBkZWZp
bmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxp
bmFyby5vcmc+Cj4+IC0tLQo+IAo+IEhhbnMsIFNha2FyaSwKPiAKPiBDYW4geW91IHBpY2sgdXAg
dGhlIHBhdGNoc2V0PyBUaGVyZSB3YXMgcG9zaXRpdmUgZmVlZGJhY2s6Cj4gaHR0cHM6Ly9wYXRj
aHdvcmsubGludXh0di5vcmcvcHJvamVjdC9saW51eC1tZWRpYS9wYXRjaC8yMDIzMDMxMjEzMTMx
OC4zNTExNzMtMS1rcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmcvCj4gCj4gYnV0IGl0IHNl
ZW1zIGl0IHdhcyBub3QgYXBwbGllZC4KCkkgc2VlIGl0IGlzIGRlbGVnYXRlZCB0byBTYWthcmkg
aW4gcGF0Y2h3b3JrIGFuZCBtYXJrZWQgVW5kZXIgUmV2aWV3LCBidXQgSSBkb24ndApzZWUgYSBj
b3JyZXNwb25kaW5nIHB1bGwgcmVxdWVzdCBmb3IgdGhpcyBzZXJpZXMuCgpTYWthcmksIGRpZCBz
b21ldGhpbmcgZ28gd3Jvbmc/CgpSZWdhcmRzLAoKCUhhbnMKCj4gCj4gQmVzdCByZWdhcmRzLAo+
IEtyenlzenRvZgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
