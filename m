Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B47BEC6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPes3r+2rEidMDXPMzRWtiGW3TWZ+iME2r/2kwJttR8=; b=pe3PYeFmuZK0v/
	FTkl3NyRRM4uHa0QnYJCbOZUccdoq6fLI7/vCCAVQnsxD8ZvyyMkI0KC1xAPqVNgRsNjoOqRsHUHq
	qZ2EMGUVu6LFGdocvWRWCADxmHaeQmnYSNF03lty6LXEX6u0so6Vivh+xE3zb1UYypr7R6o6K+a9Y
	RHYMEeX3G/Ps2xJ37ODslqDQa/6ZOXf0xy3dz0kMcck8IamPms6vdTQU8RDErWR646KJD6cIWFEkP
	IISH0QlVPa/CdfTU8uQLFj9W9vQ56qY+1lz6MMARqpv4jjpkYo+PoByoMPjV282mcdE6JtUWAq62S
	x7l+a8N90J5x0Ouwze5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjRb-006CP3-8l; Mon, 13 Mar 2023 14:46:35 +0000
Received: from gofer.mess.org ([88.97.38.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjR8-006C7c-6R; Mon, 13 Mar 2023 14:46:09 +0000
Received: by gofer.mess.org (Postfix, from userid 1000)
	id A56CC100072; Mon, 13 Mar 2023 14:45:56 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mess.org; s=2020;
	t=1678718756; bh=SPJRtiBE7xPZNdaMyjvNHQcheMbaGg07J1nGRebzO/Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rZu0MaM6/9PwI7AHozOATv7eGrTxNeV50Xoh89ZkGO4ifvbHdiz18hxsTuO/yLBco
	 9XadZ5vQD/DCbTF+8ZCCrWVgbfwELO3+bhsRDfRZEP3XCnCdTlA/+qzrzBIM/QgLhn
	 3MsOUVw3ALieLxUWWnzkKQAbfC4XdR/jypFaqKaPqX+AMIYNQoD3RGO9diwJt3l/rR
	 8/M03eGACPOFX5yRWWdRx364KxUAzgP4zSnkbvTm88278RJo4hf21KruaTd2mshojs
	 lvbuEpw1LHJzQZuGzTNuD6VhZYm0203UhIP1ruuNkyMgJfsOvIXoa6UUNIVM8u/4db
	 6hxECZ1Wh78wQ==
Date: Mon, 13 Mar 2023 14:45:56 +0000
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
Subject: Re: [PATCH 05/28] media: rc: gpio-ir-tx: drop of_match_ptr for ID
 table
Message-ID: <ZA83JBcG46hjPp5w@gofer.mess.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-5-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230312131318.351173-5-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_074606_398255_CCB4BBDB 
X-CRM114-Status: GOOD (  19.03  )
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

T24gU3VuLCBNYXIgMTIsIDIwMjMgYXQgMDI6MTI6NTVQTSArMDEwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBUaGUgZHJpdmVyIGNhbiBtYXRjaCBvbmx5IHZpYSB0aGUgRFQgdGFibGUg
c28gdGhlIHRhYmxlIHNob3VsZCBiZSBhbHdheXMKPiB1c2VkIGFuZCB0aGUgb2ZfbWF0Y2hfcHRy
IGRvZXMgbm90IGhhdmUgYW55IHNlbnNlICh0aGlzIGFsc28gYWxsb3dzIEFDUEkKPiBtYXRjaGlu
ZyB2aWEgUFJQMDAwMSwgZXZlbiB0aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUp
LiAgVGhpcwo+IGFsc28gZml4ZXMgIUNPTkZJR19PRiBlcnJvcjoKPiAKPiAgIGRyaXZlcnMvbWVk
aWEvcmMvZ3Bpby1pci10eC5jOjI0OjM0OiBlcnJvcjog4oCYZ3Bpb19pcl90eF9vZl9tYXRjaOKA
mSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+
IAo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dz
a2lAbGluYXJvLm9yZz4KClJldmlld2VkLWJ5OiBTZWFuIFlvdW5nIDxzZWFuQG1lc3Mub3JnPgoK
VGhhbmtzClNlYW4KCj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcmMvZ3Bpby1pci10eC5jIHwgMiAr
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9yYy9ncGlvLWlyLXR4LmMgYi9kcml2ZXJzL21lZGlh
L3JjL2dwaW8taXItdHguYwo+IGluZGV4IDJiODI5YzE0NmRiMS4uMWE4ZmVhMzU3ZjE0IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcmMvZ3Bpby1pci10eC5jCj4gKysrIGIvZHJpdmVycy9t
ZWRpYS9yYy9ncGlvLWlyLXR4LmMKPiBAQCAtMTk5LDcgKzE5OSw3IEBAIHN0YXRpYyBzdHJ1Y3Qg
cGxhdGZvcm1fZHJpdmVyIGdwaW9faXJfdHhfZHJpdmVyID0gewo+ICAJLnByb2JlCT0gZ3Bpb19p
cl90eF9wcm9iZSwKPiAgCS5kcml2ZXIgPSB7Cj4gIAkJLm5hbWUJPSBEUklWRVJfTkFNRSwKPiAt
CQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9tYXRjaF9wdHIoZ3Bpb19pcl90eF9vZl9tYXRjaCksCj4g
KwkJLm9mX21hdGNoX3RhYmxlID0gZ3Bpb19pcl90eF9vZl9tYXRjaCwKPiAgCX0sCj4gIH07Cj4g
IG1vZHVsZV9wbGF0Zm9ybV9kcml2ZXIoZ3Bpb19pcl90eF9kcml2ZXIpOwo+IC0tIAo+IDIuMzQu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
