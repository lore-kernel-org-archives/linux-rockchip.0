Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8434CC6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 11:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pniFpS1PGNPpZf7zWaKP4on+7kAX8as+9EmS4zPY26U=; b=Z7Yg79zSfr5tIN
	DEATygJlI1GgiixoEsiUW6iGLi0Im9Sfzi0TXr9BaB9L52iCXvxNs3poAYK065TDB9KZevZOjO1nn
	L40qy9zmEddnLJY4iQ0sfkjAW80/D1y8Z0kHvFIWrivspdv/YWDcu6TOA8gc2XfM/RGgUo7MERy+V
	RWUSXCB4Kc2UhuWXe+rTkLRzySuYvq70h4B5bbfaC/CeCC7j2kD0QnladVn/RRO7x9jY7SNmabsx2
	jdIQaSyhNtq+82TKDYOUfnbHcnwz3AAo6a0bdEdINg+gk4/lZwnC+gCQmo/sPsOcqoX7mZx/6t0TO
	EKODNfWXDBhhNrn7E2XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbgko-005YJy-AH; Mon, 13 Mar 2023 11:54:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbgdl-005UxP-DF; Mon, 13 Mar 2023 11:46:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AF0BD611F5;
	Mon, 13 Mar 2023 11:46:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75B65C433D2;
	Mon, 13 Mar 2023 11:46:48 +0000 (UTC)
Message-ID: <4f33e492-cd5b-b9eb-f037-85062f27dbde@xs4all.nl>
Date: Mon, 13 Mar 2023 12:46:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 03/28] media: cec: tegra: drop of_match_ptr for ID table
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
 <20230312131318.351173-3-krzysztof.kozlowski@linaro.org>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230312131318.351173-3-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_044657_566172_F1850E0A 
X-CRM114-Status: GOOD (  21.44  )
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
aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLiAgVGhpcwo+IGFsc28gZml4ZXMg
IUNPTkZJR19PRiBlcnJvcjoKPiAKPiAgIGRyaXZlcnMvbWVkaWEvY2VjL3BsYXRmb3JtL3RlZ3Jh
L3RlZ3JhX2NlYy5jOjQ1NzozNDogZXJyb3I6IOKAmHRlZ3JhX2NlY19vZl9tYXRjaOKAmSBkZWZp
bmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+IAo+IFNp
Z25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGlu
YXJvLm9yZz4KClJldmlld2VkLWJ5OiBIYW5zIFZlcmt1aWwgPGh2ZXJrdWlsLWNpc2NvQHhzNGFs
bC5ubD4KClRoYW5rcyEKCglIYW5zCgoKPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9jZWMvcGxhdGZv
cm0vdGVncmEvdGVncmFfY2VjLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2NlYy9w
bGF0Zm9ybS90ZWdyYS90ZWdyYV9jZWMuYyBiL2RyaXZlcnMvbWVkaWEvY2VjL3BsYXRmb3JtL3Rl
Z3JhL3RlZ3JhX2NlYy5jCj4gaW5kZXggNWU5MDczOTVjYTJlLi43MTE1NjM2Y2E3NDggMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9jZWMvcGxhdGZvcm0vdGVncmEvdGVncmFfY2VjLmMKPiAr
KysgYi9kcml2ZXJzL21lZGlhL2NlYy9wbGF0Zm9ybS90ZWdyYS90ZWdyYV9jZWMuYwo+IEBAIC00
NjQsNyArNDY0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgdGVncmFfY2Vj
X29mX21hdGNoW10gPSB7Cj4gIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHRlZ3JhX2Nl
Y19kcml2ZXIgPSB7Cj4gIAkuZHJpdmVyID0gewo+ICAJCS5uYW1lID0gVEVHUkFfQ0VDX05BTUUs
Cj4gLQkJLm9mX21hdGNoX3RhYmxlID0gb2ZfbWF0Y2hfcHRyKHRlZ3JhX2NlY19vZl9tYXRjaCks
Cj4gKwkJLm9mX21hdGNoX3RhYmxlID0gdGVncmFfY2VjX29mX21hdGNoLAo+ICAJfSwKPiAgCS5w
cm9iZSA9IHRlZ3JhX2NlY19wcm9iZSwKPiAgCS5yZW1vdmUgPSB0ZWdyYV9jZWNfcmVtb3ZlLAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
