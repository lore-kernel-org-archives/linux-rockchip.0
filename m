Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE5F8C6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U83z9uINZt/CT1Z6a6JY9dudInxO8+mGNKa9dbfqwF8=; b=ydQHORnUQQj3mH
	o/oD7/MNoAXdKXX85gdbxgMyUmbt/JFbWiHbJqtny9DqIY6vlSALw2RxT1ZD4p470Y/erQjo53LCx
	mgSftbA8JQ+tO76ADaUJxzjSbgNKmauo2pcXs/InqeaJ2+hyMy9APM/yuYp5SkIugHbczZP5qdj8B
	akOk8n1wVUgghcFOcZ3NtjIzezq6xM8KkYcx/j1Tjo2ZopJOEMXhh43W3Tnkph98lE9IHjHWC5mAX
	K/kTAYS4tV+QCtWGiR344lMWKe0QzxlsBwvj6loZATfee7NhMzoc3tUe/TcyQAhB7ggdggd7s3DBh
	V7Y/BoT99yUxI+TiCQ3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM3r-002Xm9-42; Sun, 12 Mar 2023 13:48:31 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM0n-002WBW-QK; Sun, 12 Mar 2023 13:45:23 +0000
Received: from pendragon.ideasonboard.com (85-76-21-162-nat.elisa-mobile.fi [85.76.21.162])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 61583814;
	Sun, 12 Mar 2023 14:45:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1678628720;
	bh=HY06FK/X1xlEQwlPSr2Kzwr8PW2ACwPKKPD5WqC75QA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X1ehpH7fp4JbHWbhhzQPlMtiBhrLhq19IGwdA4eT5CiPYQLGfhqqE6uowTQ1cQoKN
	 o8k4c0qo4RtDpmQYspeuE8frJx2t+XdPQVIYQ/Hl0kfew9thjO6n5KNz95T474iJ/L
	 s9weY8G18+gV5eenOHxY4slRjNWsNmx9MWEzjDc4=
Date: Sun, 12 Mar 2023 15:45:13 +0200
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
Subject: Re: [PATCH 27/28] media: i2c: max9286: drop of_match_ptr for ID table
Message-ID: <20230312134513.GD8229@pendragon.ideasonboard.com>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-27-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230312131318.351173-27-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_064522_111679_413BB6CE 
X-CRM114-Status: GOOD (  19.41  )
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
MjAyMyBhdCAwMjoxMzoxN1BNICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IFRo
ZSBkcml2ZXIgY2FuIG1hdGNoIG9ubHkgdmlhIHRoZSBEVCB0YWJsZSBzbyB0aGUgdGFibGUgc2hv
dWxkIGJlIGFsd2F5cwo+IHVzZWQgYW5kIHRoZSBvZl9tYXRjaF9wdHIgZG9lcyBub3QgaGF2ZSBh
bnkgc2Vuc2UgKHRoaXMgYWxzbyBhbGxvd3MgQUNQSQo+IG1hdGNoaW5nIHZpYSBQUlAwMDAxLCBl
dmVuIHRob3VnaCBpdCBtaWdodCBub3QgYmUgcmVsZXZhbnQgaGVyZSkuICBUaGlzCj4gYWxzbyBm
aXhlcyAhQ09ORklHX09GIGVycm9yOgo+IAo+ICAgZHJpdmVycy9tZWRpYS9pMmMvbWF4OTI4Ni5j
OjE3MDc6MzQ6IGVycm9yOiDigJhtYXg5Mjg2X2R0X2lkc+KAmSBkZWZpbmVkIGJ1dCBub3QgdXNl
ZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+IAo+IFNpZ25lZC1vZmYtYnk6IEty
enlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KClJldmll
d2VkLWJ5OiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5j
b20+Cgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL2kyYy9tYXg5Mjg2LmMgfCAyICstCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL2kyYy9tYXg5Mjg2LmMgYi9kcml2ZXJzL21lZGlhL2kyYy9tYXg5Mjg2
LmMKPiBpbmRleCA3MDEwMzhkNmQxOWIuLmVkOTMyZmY5ZWM3NCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL21lZGlhL2kyYy9tYXg5Mjg2LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL2kyYy9tYXg5Mjg2
LmMKPiBAQCAtMTcxMyw3ICsxNzEzLDcgQEAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgbWF4OTI4
Nl9kdF9pZHMpOwo+ICBzdGF0aWMgc3RydWN0IGkyY19kcml2ZXIgbWF4OTI4Nl9pMmNfZHJpdmVy
ID0gewo+ICAJLmRyaXZlcgk9IHsKPiAgCQkubmFtZQkJPSAibWF4OTI4NiIsCj4gLQkJLm9mX21h
dGNoX3RhYmxlCT0gb2ZfbWF0Y2hfcHRyKG1heDkyODZfZHRfaWRzKSwKPiArCQkub2ZfbWF0Y2hf
dGFibGUJPSBtYXg5Mjg2X2R0X2lkcywKPiAgCX0sCj4gIAkucHJvYmVfbmV3CT0gbWF4OTI4Nl9w
cm9iZSwKPiAgCS5yZW1vdmUJCT0gbWF4OTI4Nl9yZW1vdmUsCgotLSAKUmVnYXJkcywKCkxhdXJl
bnQgUGluY2hhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
