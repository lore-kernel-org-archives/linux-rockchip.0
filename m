Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C0E5C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWnwnav4zLSDfEBUyocaNeQhMhi/L6hTWc1aCc6XcOc=; b=P+YNYFtBa9cgzT
	69N4dbnYt8SjIw/dYZ2w207j9v5Z0yKcC/EPKocVrlroc/ActE6mE9dm6RWbSu9O3RaOR0Xy2ECY8
	CRDbZfKNyY2dQEh6H/ZWFTbpOjWPcOwXp1un2npiSATa3VKafv34HEr+y1w9yaju3nn4UhS70czAV
	WvWSm1qgj83MKTKBLfgVJIWxfMsLDEUH3CM/TQawmHiIgg8dhx9OKJ7kOBB8nUVrN8qdeI+YfRM29
	7BPLD07Wcdesr+gFPB4fm+xC0nzNuU26wRaonmgzpSJgJVR8R0pWO/gb1IHuTNWqQIdYCeaCAJfXe
	mffne8a89Cnv1Jaa8gdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM2Z-002X4f-Si; Sun, 12 Mar 2023 13:47:12 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM0M-002Vuf-34; Sun, 12 Mar 2023 13:44:56 +0000
Received: from pendragon.ideasonboard.com (85-76-21-162-nat.elisa-mobile.fi [85.76.21.162])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 75C1B814;
	Sun, 12 Mar 2023 14:44:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1678628692;
	bh=Gf4R8APgW+8d30ALT2Qx8sbhHo3cryP7NIpDmZDCrv0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jZEACncLcJxuOrh8OeqcKJGvRW78xO4EdQ/4QZg4hjFkg1uSgSPfTqSE1EzlLDTm7
	 vrvIzzdogv5ePI0W1USX4KN6nyamrOD+mKZHARzsWogvaJJR+aFinOybXSpz4pIsd6
	 xAK6azy2RiExNid6RFBv6PJgW/R29R3vEntuWhqg=
Date: Sun, 12 Mar 2023 15:44:41 +0200
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
Subject: Re: [PATCH 25/28] media: i2c: ov7740: drop of_match_ptr for ID table
Message-ID: <20230312134441.GC8229@pendragon.ideasonboard.com>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-25-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230312131318.351173-25-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_064454_746110_F6862AAB 
X-CRM114-Status: GOOD (  18.41  )
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
MjAyMyBhdCAwMjoxMzoxNVBNICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IFRo
ZSBkcml2ZXIgd2lsbCBtYXRjaCBtb3N0bHkgYnkgRFQgdGFibGUgKGV2ZW4gdGhvdWdodCB0aGVy
ZSBpcyByZWd1bGFyCj4gSUQgdGFibGUpIHNvIHRoZXJlIGlzIGxpdHRsZSBiZW5lZml0IGluIG9m
X21hdGNoX3B0ciAodGhpcyBhbHNvIGFsbG93cwo+IEFDUEkgbWF0Y2hpbmcgdmlhIFBSUDAwMDEs
IGV2ZW4gdGhvdWdoIGl0IG1pZ2h0IG5vdCBiZSByZWxldmFudCBoZXJlKS4KPiBUaGlzIGFsc28g
Zml4ZXMgIUNPTkZJR19PRiBlcnJvcjoKPiAKPiAgIGRyaXZlcnMvbWVkaWEvaTJjL292Nzc0MC5j
OjEyMDM6MzQ6IGVycm9yOiDigJhvdjc3NDBfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVz
ZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiAKPiBTaWduZWQtb2ZmLWJ5OiBL
cnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+CgpSZXZp
ZXdlZC1ieTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQu
Y29tPgoKPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9pMmMvb3Y3NzQwLmMgfCAyICstCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL2kyYy9vdjc3NDAuYyBiL2RyaXZlcnMvbWVkaWEvaTJjL292Nzc0MC5j
Cj4gaW5kZXggYzlmZDliMGJjNTRhLi40MjEyMTkxNmQyNWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tZWRpYS9pMmMvb3Y3NzQwLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL2kyYy9vdjc3NDAuYwo+
IEBAIC0xMjEwLDcgKzEyMTAsNyBAQCBzdGF0aWMgc3RydWN0IGkyY19kcml2ZXIgb3Y3NzQwX2ky
Y19kcml2ZXIgPSB7Cj4gIAkuZHJpdmVyID0gewo+ICAJCS5uYW1lID0gIm92Nzc0MCIsCj4gIAkJ
LnBtID0gJm92Nzc0MF9wbV9vcHMsCj4gLQkJLm9mX21hdGNoX3RhYmxlID0gb2ZfbWF0Y2hfcHRy
KG92Nzc0MF9vZl9tYXRjaCksCj4gKwkJLm9mX21hdGNoX3RhYmxlID0gb3Y3NzQwX29mX21hdGNo
LAo+ICAJfSwKPiAgCS5wcm9iZV9uZXcgPSBvdjc3NDBfcHJvYmUsCj4gIAkucmVtb3ZlICAgPSBv
djc3NDBfcmVtb3ZlLAoKLS0gClJlZ2FyZHMsCgpMYXVyZW50IFBpbmNoYXJ0CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
