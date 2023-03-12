Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 536C4C6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95up4Z1n6fsV+kwo9v2vjzIEye5CF8TzSiKrOcDHBOA=; b=YH4xl4oasGskkl
	75DviiC8BDwP1mYiCPRyxNzaXKowE2X30FvH/EpEae1z8SUPWX4teIZtjeBOM2shkBqqJlwbYr7k9
	+WtCOHLslBDaUtCHhliiDenPn43lbCkREhbSdeIin8doSZmeFYNRSwYYogGKddtNBVG5yw3oecrGB
	iknbge7hGdFVHKayLTpKzrNu6s0p7H14Ttsws54kfE683NSaHOcy+G1crmkIQE78tkRJ6jJjWqyaS
	NYZRPiYq4UYD2B7R7xi9JqUY8XBkAfw0CFGptpu6iWIHAEw//xT+QayNg99Nkwq7qei5Adv+7IChi
	d0aYXm+uOvEEiSGCR7RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM0D-002VqF-Lq; Sun, 12 Mar 2023 13:44:45 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLzB-002VL3-0M; Sun, 12 Mar 2023 13:43:42 +0000
Received: from pendragon.ideasonboard.com (85-76-21-162-nat.elisa-mobile.fi [85.76.21.162])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id CF8CD814;
	Sun, 12 Mar 2023 14:43:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1678628618;
	bh=M3+2iadqGPWpajU73rzJOfscL/vSRK4MRXJAHhM3Vwk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S94E3bY7StoQHAgj4Ene3ZegV2UW70uJapggOmnnq5BOLviJUieoQR8vK8iwSl4mO
	 nB7/HV5FvVhNrNav/Fa7DCJ28ZI4Ge8PLvjWiSCH37yTbot58V3FwpG2xrGmlCYlzV
	 N/5h+69TBJLuAxEGxTdow4/6Ep+WKBDw4muOuYUQ=
Date: Sun, 12 Mar 2023 15:41:16 +0200
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
Subject: Re: [PATCH 11/28] media: platform: ti: am437x: drop of_match_ptr for
 ID table
Message-ID: <20230312134116.GL2545@pendragon.ideasonboard.com>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-11-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230312131318.351173-11-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_064341_334381_0DA93C17 
X-CRM114-Status: GOOD (  20.81  )
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
MjAyMyBhdCAwMjoxMzowMVBNICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IFRo
ZSBkcml2ZXIgY2FuIG1hdGNoIG9ubHkgdmlhIHRoZSBEVCB0YWJsZSBzbyB0aGUgdGFibGUgc2hv
dWxkIGJlIGFsd2F5cwo+IHVzZWQgYW5kIHRoZSBvZl9tYXRjaF9wdHIgZG9lcyBub3QgaGF2ZSBh
bnkgc2Vuc2UgKHRoaXMgYWxzbyBhbGxvd3MgQUNQSQo+IG1hdGNoaW5nIHZpYSBQUlAwMDAxLCBl
dmVuIHRob3VnaCBpdCBtaWdodCBub3QgYmUgcmVsZXZhbnQgaGVyZSkuICBUaGlzCgoibWlnaHQg
bm90IGJlIHJlbGV2YW50IiBpcyBhIGJpdCBvZiBhbiB1bmRlcnN0YXRlbWVudCBpbiB0aGlzIGNh
c2UgOi0pCgo+IGFsc28gZml4ZXMgIUNPTkZJR19PRiBlcnJvcjoKPiAKPiAgIGRyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vdGkvYW00Mzd4L2FtNDM3eC12cGZlLmM6MjYyMDozNDogZXJyb3I6IOKAmHZw
ZmVfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0
LXZhcmlhYmxlPV0KClRoaXMgZHJpdmVyIHNob3VsZCBwcm9iYWJseSBkZXBlbmQgb24gQ09ORklH
X09GLCBidXQgdGhhdCdzIGEgc2VwYXJhdGUKaXNzdWUuCgo+IFNpZ25lZC1vZmYtYnk6IEtyenlz
enRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KClJldmlld2Vk
LWJ5OiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+
Cgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3RpL2FtNDM3eC9hbTQzN3gtdnBmZS5j
IHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS9hbTQzN3gvYW00Mzd4
LXZwZmUuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdGkvYW00Mzd4L2FtNDM3eC12cGZlLmMK
PiBpbmRleCAyZGZhZTliYzBiYmEuLmZlODliOGUyNTBlNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3RpL2FtNDM3eC9hbTQzN3gtdnBmZS5jCj4gKysrIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS90aS9hbTQzN3gvYW00Mzd4LXZwZmUuYwo+IEBAIC0yNjI5LDcgKzI2Mjks
NyBAQCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciB2cGZlX2RyaXZlciA9IHsKPiAgCS5k
cml2ZXIgPSB7Cj4gIAkJLm5hbWUJPSBWUEZFX01PRFVMRV9OQU1FLAo+ICAJCS5wbQk9ICZ2cGZl
X3BtX29wcywKPiAtCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9tYXRjaF9wdHIodnBmZV9vZl9tYXRj
aCksCj4gKwkJLm9mX21hdGNoX3RhYmxlID0gdnBmZV9vZl9tYXRjaCwKPiAgCX0sCj4gIH07Cj4g
IAoKLS0gClJlZ2FyZHMsCgpMYXVyZW50IFBpbmNoYXJ0CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
