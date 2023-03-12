Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3636FC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3e6N9lPlybE3gdTCj7tgJx0UmaayUFu8FqqU2wqx5do=; b=C3gsSllUbqSTSl
	KO74dLhtPgg6xXB+/DUZecAUE6YFWFETVPR04mSwZFRQJRJx3Qi2PeIq3q3vCEBcNJ3aDRhXcOKu6
	9FNJN1Xe0EvIJHhBeBz5X04gbSzB8jVW1b2UI/RcSIorRw9p032FOcW74alSGcGzOQbwI2MW3n72l
	eu6rNsg7FoXw0GcXNeneyJtybdOPJfEvtRnGqd5Cr1Ln142XlZigdoKcC5gxaf455UiV91MPvnya0
	CyDDEKNJ/cZHidYZmjuRVKpp04uhSgIwnjWuXBnul7tTQ3MA9/93TApkE3kGewFHwXpMdY2DyOsxP
	2YxxZ6rebdwdmxBW38HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLza-002VWi-G7; Sun, 12 Mar 2023 13:44:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLz5-002VIP-CR; Sun, 12 Mar 2023 13:43:37 +0000
Received: from pendragon.ideasonboard.com (85-76-21-162-nat.elisa-mobile.fi [85.76.21.162])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0F8E8D5F;
	Sun, 12 Mar 2023 14:43:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1678628613;
	bh=6NSDf17QydqjSciafFDtS8WETszudk1j9lrlPeU3nBo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FOm+HYLZc7DXYKb9ZJc+xDVoozhT6dVAFFVOt89WpWfy1H9dm/Gw32CFkPJ7TQXQ5
	 WFGVJ0lbWQHTLnAtZfAClOnKd69ad1pTgGosUv6eI3z8vm6ouPRfZ+3u6YS584qboA
	 5bRXk7l4zecEsa9udBk8vuw9ls2oWy8QblqtZxfU=
Date: Sun, 12 Mar 2023 15:43:22 +0200
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
Subject: Re: [PATCH 22/28] media: i2c: mt9m111: drop of_match_ptr for ID table
Message-ID: <20230312134322.GA8229@pendragon.ideasonboard.com>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-22-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230312131318.351173-22-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_064335_684593_C3A9B392 
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
MjAyMyBhdCAwMjoxMzoxMlBNICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IFRo
ZSBkcml2ZXIgd2lsbCBtYXRjaCBtb3N0bHkgYnkgRFQgdGFibGUgKGV2ZW4gdGhvdWdodCB0aGVy
ZSBpcyByZWd1bGFyCj4gSUQgdGFibGUpIHNvIHRoZXJlIGlzIGxpdHRsZSBiZW5lZml0IGluIG9m
X21hdGNoX3B0ciAodGhpcyBhbHNvIGFsbG93cwo+IEFDUEkgbWF0Y2hpbmcgdmlhIFBSUDAwMDEs
IGV2ZW4gdGhvdWdoIGl0IG1pZ2h0IG5vdCBiZSByZWxldmFudCBoZXJlKS4KPiBUaGlzIGFsc28g
Zml4ZXMgIUNPTkZJR19PRiBlcnJvcjoKPiAKPiAgIGRyaXZlcnMvbWVkaWEvaTJjL210OW0xMTEu
YzoxMzcwOjM0OiBlcnJvcjog4oCYbXQ5bTExMV9vZl9tYXRjaOKAmSBkZWZpbmVkIGJ1dCBub3Qg
dXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+IAo+IFNpZ25lZC1vZmYtYnk6
IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KClJl
dmlld2VkLWJ5OiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2Fy
ZC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL2kyYy9tdDltMTExLmMgfCAyICstCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL21lZGlhL2kyYy9tdDltMTExLmMgYi9kcml2ZXJzL21lZGlhL2kyYy9tdDlt
MTExLmMKPiBpbmRleCBmNWZlMjcyZDEyMDUuLjIwZWQ4N2Q4NzJjOCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL21lZGlhL2kyYy9tdDltMTExLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL2kyYy9tdDlt
MTExLmMKPiBAQCAtMTM4Miw3ICsxMzgyLDcgQEAgTU9EVUxFX0RFVklDRV9UQUJMRShpMmMsIG10
OW0xMTFfaWQpOwo+ICBzdGF0aWMgc3RydWN0IGkyY19kcml2ZXIgbXQ5bTExMV9pMmNfZHJpdmVy
ID0gewo+ICAJLmRyaXZlciA9IHsKPiAgCQkubmFtZSA9ICJtdDltMTExIiwKPiAtCQkub2ZfbWF0
Y2hfdGFibGUgPSBvZl9tYXRjaF9wdHIobXQ5bTExMV9vZl9tYXRjaCksCj4gKwkJLm9mX21hdGNo
X3RhYmxlID0gbXQ5bTExMV9vZl9tYXRjaCwKPiAgCX0sCj4gIAkucHJvYmVfbmV3CT0gbXQ5bTEx
MV9wcm9iZSwKPiAgCS5yZW1vdmUJCT0gbXQ5bTExMV9yZW1vdmUsCgotLSAKUmVnYXJkcywKCkxh
dXJlbnQgUGluY2hhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
