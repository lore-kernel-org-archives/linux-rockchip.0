Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E798EC7618D
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 11:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cx74JAneYcQ+M2LYtOJrKOUrFRgkWljDjOH4HgWbmTQ=; b=mAijp/iBT5N49M
	LRasafRiJifA7VwRLcKoe1BrD/xaIKigL7pMpRAJtKQm7WeY71MOJ80A1vnuD5H6dMrKlN5Evbtb4
	fGxwg34Xf1OmFskzNa+ws+f0lAmGrHluEqbQUdLpV1bN43L28V6P74f7E3dwRW97DNMchoFx0F7nE
	DsWxeiqyIlrvXHlfsVVYpcHIUD8KrLGjKrHfSGAORIDIIPpKGwzQzcg8YepVQmVzvG4bEuoLEa9dn
	JpCXkgX+6UAfWW3TN3AQbjqOe6PPmXuB8P/vGB/lx5qEQIF8cZzuqwvsfN1UdlTesC0Y7EBgjDhgl
	QzDBRznPiUVxErbR2jjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbgjG-005XTo-Go; Mon, 13 Mar 2023 11:52:38 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbgdc-005UtO-TR; Mon, 13 Mar 2023 11:46:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7C55EB8104F;
	Mon, 13 Mar 2023 11:46:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CF14C433D2;
	Mon, 13 Mar 2023 11:46:38 +0000 (UTC)
Message-ID: <6f3f5ae4-393a-e25f-997f-c1450cd506b1@xs4all.nl>
Date: Mon, 13 Mar 2023 12:46:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 02/28] media: cec: meson: drop of_match_ptr for ID table
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
 <20230312131318.351173-2-krzysztof.kozlowski@linaro.org>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230312131318.351173-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_044649_326677_24829488 
X-CRM114-Status: GOOD (  20.05  )
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

T24gMTIvMDMvMjAyMyAxNDoxMiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBUaGUgZHJp
dmVyIGNhbiBtYXRjaCBvbmx5IHZpYSB0aGUgRFQgdGFibGUgc28gdGhlIHRhYmxlIHNob3VsZCBi
ZSBhbHdheXMKPiB1c2VkIGFuZCB0aGUgb2ZfbWF0Y2hfcHRyIGRvZXMgbm90IGhhdmUgYW55IHNl
bnNlICh0aGlzIGFsc28gYWxsb3dzIEFDUEkKPiBtYXRjaGluZyB2aWEgUFJQMDAwMSwgZXZlbiB0
aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLgo+IAo+ICAgZHJpdmVycy9tZWRp
YS9jZWMvcGxhdGZvcm0vbWVzb24vYW8tY2VjLmM6NzExOjM0OiBlcnJvcjog4oCYbWVzb25fYW9f
Y2VjX29mX21hdGNo4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25z
dC12YXJpYWJsZT1dCj4gCj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgoKUmV2aWV3ZWQtYnk6IEhhbnMgVmVya3VpbCA8
aHZlcmt1aWwtY2lzY29AeHM0YWxsLm5sPgoKVGhhbmtzIQoKCUhhbnMKCj4gLS0tCj4gIGRyaXZl
cnMvbWVkaWEvY2VjL3BsYXRmb3JtL21lc29uL2FvLWNlYy5jIHwgMiArLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tZWRpYS9jZWMvcGxhdGZvcm0vbWVzb24vYW8tY2VjLmMgYi9kcml2ZXJzL21lZGlhL2Nl
Yy9wbGF0Zm9ybS9tZXNvbi9hby1jZWMuYwo+IGluZGV4IDZiNDQwZjA2MzVkOS4uMjIzYzA5MmRi
YjZhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvY2VjL3BsYXRmb3JtL21lc29uL2FvLWNl
Yy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9jZWMvcGxhdGZvcm0vbWVzb24vYW8tY2VjLmMKPiBA
QCAtNzE5LDcgKzcxOSw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIG1lc29uX2Fv
X2NlY19kcml2ZXIgPSB7Cj4gIAkucmVtb3ZlICA9IG1lc29uX2FvX2NlY19yZW1vdmUsCj4gIAku
ZHJpdmVyICA9IHsKPiAgCQkubmFtZSA9ICJtZXNvbi1hby1jZWMiLAo+IC0JCS5vZl9tYXRjaF90
YWJsZSA9IG9mX21hdGNoX3B0cihtZXNvbl9hb19jZWNfb2ZfbWF0Y2gpLAo+ICsJCS5vZl9tYXRj
aF90YWJsZSA9IG1lc29uX2FvX2NlY19vZl9tYXRjaCwKPiAgCX0sCj4gIH07Cj4gIAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
