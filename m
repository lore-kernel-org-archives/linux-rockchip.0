Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 168A4C6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFZDZh1012NWfrlLRSYrMsTS4yQhzUnoMLrkYRZHXTw=; b=tLTy5bHO19gpaI
	AL/ZbPIReJn10aBp8gwzRfIIBetvoR/0lICqZxkaJ0r2QpTzUSDSNoVJO39MsfIi0MjIYQnRnKl64
	vQNrF5nwR4tsekaXUo4dr8fA1DG+MiXVDKcLaTuZ5sXte1VG89I65LD1rxp5EeK4gEZXrCeFUIllx
	irHADQ1OUS2AK48dTgDLXlC/Dgr85Cuz1dyH4PdzOuH19S1jO8viEoxH4b2gxW4WNnjnnEr8YquRD
	pQfz0ecM39OzpbuM9SbfCTcNwQyAXcjqxuqXUys1s0Czb/bbrzyEReUXuu4halOYPD5+JDCOWh6yw
	uZSVwK6TrkcdrTzYYPqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM1q-002WjE-Hc; Sun, 12 Mar 2023 13:46:26 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLzy-002Vi2-N3; Sun, 12 Mar 2023 13:44:32 +0000
Received: from pendragon.ideasonboard.com (85-76-21-162-nat.elisa-mobile.fi [85.76.21.162])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5804FD5F;
	Sun, 12 Mar 2023 14:44:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1678628669;
	bh=7Dfo/Yq6hxk590nWb0bO05GDYAs/VIjZZbDAvt+BHk4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l2+nUGi7kMBBh6pDuObk6/xjHx/XVuUPDWTCdJJ6IIUTrnWEe+kXSx9g9mey2GWjl
	 Z2uFVv5FO9nqCrnK+goSRvQpQZD0AGCcIRV3Q7DYKb7m5a6+FNt+pJFAkqVRryWw1H
	 D/142AthuG791K+eA21zVSVYA5orpB+hQWchCYIk=
Date: Sun, 12 Mar 2023 15:44:24 +0200
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
Subject: Re: [PATCH 24/28] media: i2c: ov2680: drop of_match_ptr for ID table
Message-ID: <20230312134424.GM2545@pendragon.ideasonboard.com>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-24-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230312131318.351173-24-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_064431_244296_29895934 
X-CRM114-Status: GOOD (  19.23  )
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
MjAyMyBhdCAwMjoxMzoxNFBNICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IFRo
ZSBkcml2ZXIgY2FuIG1hdGNoIG9ubHkgdmlhIHRoZSBEVCB0YWJsZSBzbyB0aGUgdGFibGUgc2hv
dWxkIGJlIGFsd2F5cwo+IHVzZWQgYW5kIHRoZSBvZl9tYXRjaF9wdHIgZG9lcyBub3QgaGF2ZSBh
bnkgc2Vuc2UgKHRoaXMgYWxzbyBhbGxvd3MgQUNQSQo+IG1hdGNoaW5nIHZpYSBQUlAwMDAxLCBl
dmVuIHRob3VnaCBpdCBtaWdodCBub3QgYmUgcmVsZXZhbnQgaGVyZSkuICBUaGlzCj4gYWxzbyBm
aXhlcyAhQ09ORklHX09GIGVycm9yOgo+IAo+ICAgZHJpdmVycy9tZWRpYS9pMmMvb3YyNjgwLmM6
MTE0OTozNDogZXJyb3I6IOKAmG92MjY4MF9kdF9pZHPigJkgZGVmaW5lZCBidXQgbm90IHVzZWQg
Wy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiAKPiBTaWduZWQtb2ZmLWJ5OiBLcnp5
c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+CgpSZXZpZXdl
ZC1ieTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29t
PgoKPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9pMmMvb3YyNjgwLmMgfCAyICstCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL2kyYy9vdjI2ODAuYyBiL2RyaXZlcnMvbWVkaWEvaTJjL292MjY4MC5jCj4g
aW5kZXggNTQxNTNiZjY2YmRkLi40ZDg3MjQ5NTJjNWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9t
ZWRpYS9pMmMvb3YyNjgwLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL2kyYy9vdjI2ODAuYwo+IEBA
IC0xMTU2LDcgKzExNTYsNyBAQCBzdGF0aWMgc3RydWN0IGkyY19kcml2ZXIgb3YyNjgwX2kyY19k
cml2ZXIgPSB7Cj4gIAkuZHJpdmVyID0gewo+ICAJCS5uYW1lICA9ICJvdjI2ODAiLAo+ICAJCS5w
bSA9ICZvdjI2ODBfcG1fb3BzLAo+IC0JCS5vZl9tYXRjaF90YWJsZQk9IG9mX21hdGNoX3B0cihv
djI2ODBfZHRfaWRzKSwKPiArCQkub2ZfbWF0Y2hfdGFibGUJPSBvdjI2ODBfZHRfaWRzLAo+ICAJ
fSwKPiAgCS5wcm9iZV9uZXcJPSBvdjI2ODBfcHJvYmUsCj4gIAkucmVtb3ZlCQk9IG92MjY4MF9y
ZW1vdmUsCgotLSAKUmVnYXJkcywKCkxhdXJlbnQgUGluY2hhcnQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
