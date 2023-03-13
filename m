Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C2F5C61DA4
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 14:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7VkrmwCrYVDx20twcxqj+Uk63tovLREecoq+kUqrTw=; b=J2HyshYz+AmZEa
	B49mKrC9j0KvxyLP7RKPk0QrjCESzzwSpxeox9gCei3EA4lw459BPTxuLNbe714O44wCclkGNd1SO
	1O14pvo+qlOtW1Q+x1Sr9k7VYZFce+jdOol3LJ1kk3fGyukRNvN+mJIabqBNUbde8BzoPc9SwTZYS
	kl+g8iqqDiT6d4KuIVgknlUX2adMQD9pQjSoB2F49yjmOSTG3jl1Yw1gbNH0s5IJEzee/bd/pJKgI
	8Ab7KXCpjzVUEOBfA6KvXzR4ofxbCfuerV/xTY1KzLYhVadGG4SWw05NF6gqNSaxlRJzodjg2B0pZ
	hdHAgv7+u2A+DI8BnYIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjSj-006D1L-Co; Mon, 13 Mar 2023 14:47:45 +0000
Received: from gofer.mess.org ([88.97.38.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjSO-006CqS-7b; Mon, 13 Mar 2023 14:47:26 +0000
Received: by gofer.mess.org (Postfix, from userid 1000)
	id E2BC91000C4; Mon, 13 Mar 2023 14:47:22 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mess.org; s=2020;
	t=1678718842; bh=A6Y556DDngnyfZDUq/i6s59n3p9QlOwB9TuI5IIX23Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jNI+nhi92YA9jFcloGjP836tOzSltRSbge0kglWgPUauPoC2ishEnQ0Kc1PR1zJZo
	 ewgi/8Ut0X/20A7nTgRdHl3cVFthlrQuS7tWmfUigtx8xLOQg1KQInwxcH44RviUVB
	 uyKKQYO4hPgDNNiYI0jkqe1E9jPfMH1faIY2wq61mYL3CKqve5XFRU1mUQGtI50Y5c
	 6gAYsn20KWM7YaEo1BTe2CtYkzoBrOLYCJdTGisNUZO9LPKtKl4uajSrf9nO38oVFN
	 1TXC+CnzivmXncSSohEL9g4v5HA6z74H/uPZfcd2zYIAwm2AGo66gBH3EC9so5avm3
	 WYXc/5jd2q4Dg==
Date: Mon, 13 Mar 2023 14:47:22 +0000
From: Sean Young <sean@mess.org>
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
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
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
	Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 06/28] media: rc: ir-rx51: drop of_match_ptr for ID table
Message-ID: <ZA83eipHUk5/vsRp@gofer.mess.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-6-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230312131318.351173-6-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_074724_496195_4F55FA7E 
X-CRM114-Status: GOOD (  18.82  )
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

T24gU3VuLCBNYXIgMTIsIDIwMjMgYXQgMDI6MTI6NTZQTSArMDEwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBUaGUgZHJpdmVyIGNhbiBtYXRjaCBvbmx5IHZpYSB0aGUgRFQgdGFibGUg
c28gdGhlIHRhYmxlIHNob3VsZCBiZSBhbHdheXMKPiB1c2VkIGFuZCB0aGUgb2ZfbWF0Y2hfcHRy
IGRvZXMgbm90IGhhdmUgYW55IHNlbnNlICh0aGlzIGFsc28gYWxsb3dzIEFDUEkKPiBtYXRjaGlu
ZyB2aWEgUFJQMDAwMSwgZXZlbiB0aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUp
LiAgVGhpcwo+IGFsc28gZml4ZXMgIUNPTkZJR19PRiBlcnJvcjoKPiAKPiAgIGRyaXZlcnMvbWVk
aWEvcmMvaXItcng1MS5jOjI2NDozNDogZXJyb3I6IOKAmGlyX3J4NTFfbWF0Y2jigJkgZGVmaW5l
ZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFy
by5vcmc+CgpSZXZpZXdlZC1ieTogU2VhbiBZb3VuZyA8c2VhbkBtZXNzLm9yZz4KClRoYW5rcwpT
ZWFuCgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3JjL2lyLXJ4NTEuYyB8IDIgKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcmMvaXItcng1MS5jIGIvZHJpdmVycy9tZWRpYS9yYy9pci1yeDUxLmMK
PiBpbmRleCBhZGJiZTYzOWEyNjEuLjEzZTgxYmY4MDA1ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L21lZGlhL3JjL2lyLXJ4NTEuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcmMvaXItcng1MS5jCj4g
QEAgLTI3NSw3ICsyNzUsNyBAQCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBpcl9yeDUx
X3BsYXRmb3JtX2RyaXZlciA9IHsKPiAgCS5yZXN1bWUJCT0gaXJfcng1MV9yZXN1bWUsCj4gIAku
ZHJpdmVyCQk9IHsKPiAgCQkubmFtZQk9IEtCVUlMRF9NT0ROQU1FLAo+IC0JCS5vZl9tYXRjaF90
YWJsZSA9IG9mX21hdGNoX3B0cihpcl9yeDUxX21hdGNoKSwKPiArCQkub2ZfbWF0Y2hfdGFibGUg
PSBpcl9yeDUxX21hdGNoLAo+ICAJfSwKPiAgfTsKPiAgbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihp
cl9yeDUxX3BsYXRmb3JtX2RyaXZlcik7Cj4gLS0gCj4gMi4zNC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
