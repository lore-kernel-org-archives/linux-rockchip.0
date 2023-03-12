Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAED8C6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBZZ7BAaWWNYkL1i31J00/ieD6J7mWwPWGdc2dVGhbM=; b=nd/VlYch4JTXKY
	521bLA1FSYSDMEHVZrilprozul2T5tmh5gGJ58KydYjeZdbmqRk//DPxahlmtrJSvWaXJt4FRHO3Z
	ZnKpIMhAZCggW58AtWia6JOXyOaP9v3EypdCTKbBjqqGE8h9jA0bQTvg2lVUd3D6UOz/zT8KJhshU
	zi1P7LE/xVZHS8/ELS0mLeEDnsocSiwgiLThVRf3DOT9qtqjNy119yVimv1jSfI5ZoFgJGTjmk/bW
	xoHbsY2k1MvTW/5qftzuc8IOuEk9VknUm/9wZezSkI4k7wEoJaGBt9+GA4GPBFw9zjOFMY1MJ4KTn
	xFkEczuazgHyqs7zQ8MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM0r-002WEN-FQ; Sun, 12 Mar 2023 13:45:25 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLzl-002VbG-0h; Sun, 12 Mar 2023 13:44:19 +0000
Received: from pendragon.ideasonboard.com (85-76-21-162-nat.elisa-mobile.fi [85.76.21.162])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 53AC3814;
	Sun, 12 Mar 2023 14:44:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1678628655;
	bh=GIlRGmGTtC6jpsSZ0ba5wl6HzV35Y2nOKPuBj0K1wN0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ro3AaFbXbcLvGqlxrfAEbdIrpAAaHlAJ/6civ6dkuTzEzWQyXTWr7PnIZBkt6bcTU
	 Bf99juUP4FP/oDXeTtEcvcV23lfGAzoCHcdopubXo/QjIbuxoWEp0o3qg66f9CJjcQ
	 sALk/eWpdUshZqwnSx5GQKiESC+gm4xmH8RwMWfY=
Date: Sun, 12 Mar 2023 15:44:01 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Joe Tessler <jrt@google.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
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
	Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
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
	Philipp Zabel <p.zabel@pengutronix.de>, Sean Young <sean@mess.org>,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 23/28] media: i2c: ov2640: drop of_match_ptr for ID table
Message-ID: <20230312134401.GB8229@pendragon.ideasonboard.com>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-23-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230312131318.351173-23-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_064417_266539_572542F3 
X-CRM114-Status: GOOD (  18.68  )
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

SGkgS3J6eXN6dG9mLAoKVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCgpPbiBTdW4sIE1hciAxMiwg
MjAyMyBhdCAwMjoxMzoxM1BNICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IFRo
ZSBkcml2ZXIgd2lsbCBtYXRjaCBtb3N0bHkgYnkgRFQgdGFibGUgKGV2ZW4gdGhvdWdodCB0aGVy
ZSBpcyByZWd1bGFyCj4gSUQgdGFibGUpIHNvIHRoZXJlIGlzIGxpdHRsZSBiZW5lZml0IGluIG9m
X21hdGNoX3B0ciAodGhpcyBhbHNvIGFsbG93cwo+IEFDUEkgbWF0Y2hpbmcgdmlhIFBSUDAwMDEs
IGV2ZW4gdGhvdWdoIGl0IG1pZ2h0IG5vdCBiZSByZWxldmFudCBoZXJlKS4KPiBUaGlzIGFsc28g
Zml4ZXMgIUNPTkZJR19PRiBlcnJvcjoKPiAKPiAgIGRyaXZlcnMvbWVkaWEvaTJjL292MjY0MC5j
OjEyOTA6MzQ6IGVycm9yOiDigJhvdjI2NDBfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVz
ZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiAKPiBTaWduZWQtb2ZmLWJ5OiBL
cnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+CgpSZXZp
ZXdlZC1ieTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQu
Y29tPgoKPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9pMmMvb3YyNjQwLmMgfCAyICstCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL2kyYy9vdjI2NDAuYyBiL2RyaXZlcnMvbWVkaWEvaTJjL292MjY0MC5j
Cj4gaW5kZXggMzlkNTY4MzhhNGVmLi5hOTJjMDkxMzU2YzUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tZWRpYS9pMmMvb3YyNjQwLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL2kyYy9vdjI2NDAuYwo+
IEBAIC0xMjk2LDcgKzEyOTYsNyBAQCBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBvdjI2NDBfb2Zf
bWF0Y2gpOwo+ICBzdGF0aWMgc3RydWN0IGkyY19kcml2ZXIgb3YyNjQwX2kyY19kcml2ZXIgPSB7
Cj4gIAkuZHJpdmVyID0gewo+ICAJCS5uYW1lID0gIm92MjY0MCIsCj4gLQkJLm9mX21hdGNoX3Rh
YmxlID0gb2ZfbWF0Y2hfcHRyKG92MjY0MF9vZl9tYXRjaCksCj4gKwkJLm9mX21hdGNoX3RhYmxl
ID0gb3YyNjQwX29mX21hdGNoLAo+ICAJfSwKPiAgCS5wcm9iZV9uZXcgPSBvdjI2NDBfcHJvYmUs
Cj4gIAkucmVtb3ZlICAgPSBvdjI2NDBfcmVtb3ZlLAoKLS0gClJlZ2FyZHMsCgpMYXVyZW50IFBp
bmNoYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
