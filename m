Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52FD3C98324
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 03:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNTOmc3sR6DSkHeug4KXbrXWJB7/sXdUthVMI9fL5NA=; b=TLUWABTSzJjf/N
	nfCJrm6sRnro6QkR5ob+xD82C2KQoU/n6o+9oeHIdhaC7oZCvi5wPBU8VUUw0s2qyR34kZllUMoij
	8xspGaPmGmxw2dJdkyH4wvbsTY1eaBCNLgXFJl9ogNbPUm3Cd4w5PfWdc89G24wJ3nFfxQqg/bET3
	b6PO7CY60RYPlypQycz6DX/tZeFANxkrOR3f9ZqAORhpqsP75ZUNdIEiWarCdxsn8xD2l76W1ZLgx
	LGXJF+G8i75ZqxCqKDaB/lxzYW3KtwTcwd5BbVeHGISewV+ZxMxvxOVGeODnEkMqLV0xH+5F8Ovzm
	MiD8LFg805ThfVX6ZtLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJ7Q-0000000EuAb-2cfg;
	Sat, 26 Sep 2026 03:30:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJ7P-0000000EuA0-0Gwg;
	Sat, 26 Sep 2026 03:30:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CFABE43C4A;
	Sat, 26 Sep 2026 03:30:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E27241F000FF;
	Sat, 26 Sep 2026 03:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790393429;
	bh=0tjl432vTB1/RxQoxphlMy3vxL19wMdIIx/XIy1XXaw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=P56hscMjemKRrSfSpBib9EPK+8htmF1XvGOAzY3DdgA2RQxClSgLaUrEh8sOH5I09
	 BhvZxI/MCLcWzLZdGnJ9aRRD2TRjnrKqIhfZq1U/feQkbL9aLSX/z9qduoyKlM4aaQ
	 IzMuj3+RXDIvgu2MKksua1s3inWPwy3YBdFwXYlT4WXsGJjB/wX/audzcTIZzylQfG
	 qQI6liUinBuHvWxfOj7wfWbPNeXuJZg6qscby9QNVsWa3DsSqSlY74NIAkOa6cobGZ
	 W12r7ShPqSW4JLIUYsID8Wu/YtfmOCmRY6tZV3Ee95BaJ/wwM0pj2YLctYK6zjs/bW
	 6qGbkkf9jsD+g==
Date: Sat, 26 Sep 2026 05:30:07 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	devicetree@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
Subject: Re: [PATCH v15 04/16] phy: rockchip: usbdp: Fix
 devm_clk_bulk_get_all check
Message-ID: <vbzcpznlyxsuqbfnn3ywpuvk4kpokgodd73tgv27i6szk3acpv@5kt2d2rprpcn>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-4-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-4-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NDk6NTFQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gSWYgZGV2bV9jbGtfYnVsa19nZXRfYWxsKCkgcmV0dXJucyAtRVBST0JFX0RF
RkVSLCBpdCBpcyByZXBsYWNlZCB3aXRoCj4gLUVOT0RFViwgcGVybWFuZW50bHkgZmFpbGluZyB0
aGUgZHJpdmVyIHByb2JlIGluc3RlYWQgb2YgYWxsb3dpbmcgaXQgdG8KPiBkZWZlci4gQXZvaWQg
bWFza2luZyB0aGUgZXJyb3IgY29kZSB0byBmaXggdGhlIGlzc3VlLgo+IAo+IFRoaXMgZWZmZWN0
aXZlbHkgZHJvcHMgcmV0dXJuaW5nIC1FTk9ERVYgaW4gY2FzZSBubyBjbG9ja3MgYXJlIGJlaW5n
Cj4gZGVzY3JpYmVkIGluIERULiBUaGlzIHNwZWNpYWwgY2FzZSB3aWxsIG5vdyBiZSBoYW5kbGVk
IGJ5IHRoZSBmb2xsb3ctdXAKPiBjaGVjayBzZWFyY2hpbmcgZm9yICJyZWZjbGsiIGFuZCBleGl0
IHdpdGggLUVJTlZBTC4KPiAKPiBOb25lIG9mIHRoaXMgd2lsbCBiZSBoaXQgaW4gcHJhY3RpY2Us
IHNpbmNlIHRoZSBkcml2ZXIgaXMgb25seSB1c2VkIGJ5Cj4gUkszNTg4IGFuZCBSSzM1NzYgLSBv
biB0aGVzZSBwbGF0Zm9ybXMgdGhlIERUIGlzIHZhbGlkYXRlZCB0byBjb250YWluCj4gdGhlIGNs
b2NrcyBhbmQgdGhlIGNsb2NrIGRyaXZlciBpcyBmb3JjZSBwcm9iZWQgZWFybHkuIFRodXMgdGhl
cmUgaXMKPiBubyBuZWVkIHRvIGJhY2twb3J0IHRoaXMuCj4gCj4gRml4ZXM6IDJmNzBiYmRkZWI0
NSAoInBoeTogcm9ja2NoaXA6IGFkZCB1c2JkcCBjb21ibyBwaHkgZHJpdmVyIikKPiBSZXBvcnRl
ZC1ieTogU2FzaGlrbyA8c2FzaGlrby1ib3RAa2VybmVsLm9yZz4KPiBDbG9zZXM6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LXBoeS8yMDI2MDYxMjE2NDEwNy5DN0RCMjFGMDAwRTlAc210
cC5rZXJuZWwub3JnLwo+IFRlc3RlZC1ieTogSWdvciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21h
aWwuY29tPiAjIE9yYW5nZSBQaSA1IFBsdXMKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVp
Y2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5p
dmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29t
PgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
