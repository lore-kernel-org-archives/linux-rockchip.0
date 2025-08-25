Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2894DCA0FE1
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Aug 2025 08:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SX32hIeAERxYAV5DaIj0RkzrMCbbN/9ObWhV3h3WNc4=; b=zw76LWVj6n9jX6
	nVCZ0l+pCN8KjvYF4sW+/ugSKLOWeE9S9xdBa3eEUM3re25Njql0850H7Zv/VLCqP64/W5TJixfCN
	o0w5N0TBH1+ZVkqmxM6ZYoAqC+x1IMhv66Nwltf1Lr+Ni4gPYLRIZEwIhHu+7j8tIFGF+KCpSYSEh
	B73mf/YS2WckNwkOO+rQN0o3ah6/dxGZMR30yVoTtlKnP9Hdpt3VvSdLaSPSGF+VB7YMTTEloQDav
	gAMnR1/zSQex8lFlhTuVJm61zA39exs7/zH6vlyeEqIbTQWabqXc0ZLLW/3jUVTMQn6AVTx54/eFu
	Ijrc6dX/J/28Ph0MlLxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSy3-00000007POp-2xTs;
	Mon, 25 Aug 2025 08:54:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSgw-00000007Kxr-39Z2;
	Mon, 25 Aug 2025 08:36:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EB7175C5B8C;
	Mon, 25 Aug 2025 08:36:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15402C4CEF1;
	Mon, 25 Aug 2025 08:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756110997;
	bh=WfaWLEgdb3jnJ7oeG9CJd/226yiBCsA11HpFYxtP4ik=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=AiKVSiOP3IUKqIrE0nTH3NobajH02tOQwEZZspr/7mjkgAUlw30jkvC8fFJFXowLX
	 0WzIXSGAhgnIZdfmsYNAcn0b4ZptW0NHASXukWAToEBV86BHXo8yFsjGa+t+jpI/Tt
	 H+ZFhzDEWliaHAzrUjbGaXVFmIuNuNfh7AaNtL39MnNiHZdp13hGT3OLLrbD9BzYGF
	 7wB6ceHclSvDqzX7iv4OQSAowmeI553BhCTUiYhAPF05UFqNwkDSWYcu6/MhHKuJWY
	 MM1YHmhnjYtTu9F6GpE9Tq3QyysX5PgAziaI/OCrDuEmL8mLy6hZawNVj5zU2+Xnkp
	 8U6Nd0fcpUSyA==
Date: Mon, 25 Aug 2025 09:36:22 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Xichao Zhao <zhao.xichao@vivo.com>, Andreas Klinger <ak@it-klinger.de>,
 David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Haibo Chen
 <haibo.chen@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Marius Cristea
 <marius.cristea@microchip.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, Francesco Dolcini <francesco@dolcini.it>,
 =?UTF-8?B?Sm/Do28=?= Paulo =?UTF-8?B?R29uw6dhbHZlcw==?=
 <jpaulo.silvagoncalves@gmail.com>, Hugo Villeneuve
 <hvilleneuve@dimonoff.com>, "open list:AVIA HX711 ANALOG DIGITAL CONVERTER
 IIO DRIVER" <linux-iio@vger.kernel.org>, open list
 <linux-kernel@vger.kernel.org>, "open list:NXP i.MX 7D/6SX/6UL/93 AND VF610
 ADC DRIVER" <imx@lists.linux.dev>, "moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, "open
 list:ARM/Amlogic Meson SoC support" <linux-amlogic@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 2/7] iio: adc: Remove dev_err_probe() if error is
 -ENOMEM
Message-ID: <20250825093622.68c8e5cc@jic23-huawei>
In-Reply-To: <CAFBinCDDMo2Dm1UAoB4QKyf-KKoRUTNNg4i7Qh_vgZh71trMNg@mail.gmail.com>
References: <20250821080723.525379-1-zhao.xichao@vivo.com>
	<20250821080723.525379-3-zhao.xichao@vivo.com>
	<CAFBinCDDMo2Dm1UAoB4QKyf-KKoRUTNNg4i7Qh_vgZh71trMNg@mail.gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_013638_830385_2194E8A0 
X-CRM114-Status: GOOD (  13.13  )
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

T24gVGh1LCAyMSBBdWcgMjAyNSAyMjozMTo1MSArMDIwMApNYXJ0aW4gQmx1bWVuc3RpbmdsIDxt
YXJ0aW4uYmx1bWVuc3RpbmdsQGdvb2dsZW1haWwuY29tPiB3cm90ZToKCj4gT24gVGh1LCBBdWcg
MjEsIDIwMjUgYXQgMTA6MDfigK9BTSBYaWNoYW8gWmhhbyA8emhhby54aWNoYW9Adml2by5jb20+
IHdyb3RlOgo+ID4KPiA+IFRoZSBkZXZfZXJyX3Byb2JlKCkgZG9lc24ndCBkbyBhbnl0aGluZyB3
aGVuIGVycm9yIGlzICctRU5PTUVNJy4KPiA+IFRoZXJlZm9yZSwgcmVtb3ZlIHRoZSB1c2VsZXNz
IGNhbGwgdG8gZGV2X2Vycl9wcm9iZSgpLCBhbmQganVzdAo+ID4gcmV0dXJuIHRoZSB2YWx1ZSBp
bnN0ZWFkLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFhpY2hhbyBaaGFvIDx6aGFvLnhpY2hhb0B2
aXZvLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvaWlvL2FkYy9oeDcxMS5jICAgICAgICAgICB8
IDIgKy0KPiA+ICBkcml2ZXJzL2lpby9hZGMvaW14OTNfYWRjLmMgICAgICAgfCAzICstLQo+ID4g
IGRyaXZlcnMvaWlvL2FkYy9tY3AzNTY0LmMgICAgICAgICB8IDIgKy0KPiA+ICBkcml2ZXJzL2lp
by9hZGMvbWVzb25fc2FyYWRjLmMgICAgfCAyICstICAKPiBGb3IgbWVzb25fc2FyYWRjOgo+IFJl
dmlld2VkLWJ5OiBNYXJ0aW4gQmx1bWVuc3RpbmdsIDxtYXJ0aW4uYmx1bWVuc3RpbmdsQGdvb2ds
ZW1haWwuY29tPgo+IAoKSGkgTWFydGluIChhcHBsaWVzIHRvIG90aGVycyBpbiB0aGlzIHNlcmll
cyksCgpGb3IgYSBjb21tZW50IGFib3V0IGEgdGFnIHBsZWFzZSB1c2UgdGhlIHN0eWxlIHN1Ym1p
dHRpbmctcGF0Y2hlcyBzdWdnZXN0cy4KUmV2aWV3ZWQtYnk6IE1hcnRpbiBCbHVtZW5zdGluZ2wg
PG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+ICMgZm9yIG1lc29uX3NhcmFkYwoK
VGhlbiB0aGUgdG9vbGluZyBwaWNrcyBpdCBhdXRvbWF0aWNhbGx5LiAgU29tZXRpbWVzIEkgcmVt
ZW1iZXIgdG8gZWRpdCBjb21taXRzCnRvIHRpZHkgdGhpcyB1cCwgYnV0IG5vdCBhbHdheXMhCgpK
b25hdGhhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
