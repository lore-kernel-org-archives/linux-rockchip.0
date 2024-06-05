Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFB71C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 07:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nl85f6k17kJSGtNxf3UoiM4ushN+AYB7Jf3csKsFKkk=; b=ksPYWOZTSsywbD
	RroB6MUJ17GVunNgmgbi1mx6FwEPZF77jlmTzDbtetPwiiXPfFGZ84gQ7O2UgyKSVCiRByYQ9uULa
	QbIkTHFOzLlypkn7653e2O0lIpsHyCcJs34TShHbA11NOucalVGcTdg7Z4Vuqm4fFBf21TYlTjQJ2
	uxk5QLQa7kOLHKfO6kTgxMyvhNWGD4sZmyda4ALPqgVVL3Wf96mDrrBu+rs5zhLGUH497Fvchrcrh
	a/g9J+zaeU0JQ/8whlQGHi8J8Ankch4IQ4PBHhPrDhKEnIUUvsvNdMMY93YO3o78rb05R5412zrih
	zWX37FhGIVx3FDeuQFww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEkzC-00000004zKh-2qOY;
	Wed, 05 Jun 2024 07:23:07 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEkz8-00000004zGP-3Vzw
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 07:23:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B46A2CE13D1;
	Wed,  5 Jun 2024 07:22:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC56EC3277B;
	Wed,  5 Jun 2024 07:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717572178;
	bh=ePkMVJrWQ4WZRV2RJdInJDiWCIAVR1AVoROpcmVccWY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h9z/xQJQ2wKJj0rHgvxbRCC2dXULarfzivWz5U5rxzhvi8nkHieIHP9QD3DldGFgQ
	 tamko3rwPCt+fEZmwUDSyXDTlWawYEOCcrOBAwyzF04x7xmZ8jXgL4ZkCOeu1le4Sc
	 YL/K4AAp2ON5tyaHOeoFQF9/+vWE1yc7iSMC5GoROjkU/avOJRLPsQnDoJLHm6XwUP
	 BqaPiVp+999QoDMXA24YETfwCm5uRTLTB11Ukx/Bdesyp/3QAIfH1mbnZLH/VUEa3/
	 kBoNaQX8yrOsAvJaF6oye1mxndC+NTjiCHbKMsgHDzcoVwcSsaIDmrVAjPgPKRF/sf
	 9KrVAasCc9+eA==
Date: Wed, 5 Jun 2024 12:52:45 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 01/13] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor
 specific reg-name
Message-ID: <20240605072245.GC5085@thinkpad>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-1-3dc00fe21a78@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-1-3dc00fe21a78@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_002303_097873_0C897F2E 
X-CRM114-Status: GOOD (  17.62  )
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

T24gV2VkLCBNYXkgMjksIDIwMjQgYXQgMTA6Mjg6NTVBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBDb25zaWRlcmluZyB0aGF0IHNvbWUgZHJpdmVycyAoZS5nLiBwY2llLWR3LXJvY2tj
aGlwLmMpIGFscmVhZHkgdXNlIHRoZQo+IHJlZy1uYW1lICJhcGIiIGZvciB0aGUgZGV2aWNlIHRy
ZWUgYmluZGluZyBpbiBSb290IENvbXBsZXggbW9kZQo+IChzbnBzLGR3LXBjaWUueWFtbCksIGl0
IGRvZXNuJ3QgbWFrZSBzZW5zZSB0aGF0IHRob3NlIGRyaXZlcnMgc2hvdWxkIHVzZSBhCj4gZGlm
ZmVyZW50IHJlZy1uYW1lIHdoZW4gcnVubmluZyBpbiBFbmRwb2ludCBtb2RlIChzbnBzLGR3LXBj
aWUtZXAueWFtbCkuCj4gCj4gVGhlcmVmb3JlLCBzaW5jZSAiYXBiIiBpcyBhbHJlYWR5IGRlZmlu
ZWQgaW4gc25wcyxkdy1wY2llLnlhbWwsIGFkZCBpdAo+IGFsc28gZm9yIHNucHMsZHctcGNpZS1l
cC55YW1sLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwu
b3JnPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRo
YXNpdmFtQGxpbmFyby5vcmc+CgotIE1hbmkKCj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIChB
cm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9wY2kvc25wcyxkdy1wY2llLWVwLnlhbWwgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3NucHMsZHctcGNpZS1lcC55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9zbnBzLGR3LXBjaWUtZXAueWFtbAo+
IGluZGV4IGJiZGIwMWQyMjg0OC4uMDBkZWMwMWYxZjczIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvc25wcyxkdy1wY2llLWVwLnlhbWwKPiArKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3NucHMsZHctcGNpZS1lcC55
YW1sCj4gQEAgLTEwMCw3ICsxMDAsNyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAgICAgICBmb3Ig
bmV3IGJpbmRpbmdzLgo+ICAgICAgICAgICAgb25lT2Y6Cj4gICAgICAgICAgICAgIC0gZGVzY3Jp
cHRpb246IFNlZSBuYXRpdmUgJ2VsYmkvYXBwJyBDU1IgcmVnaW9uIGZvciBkZXRhaWxzLgo+IC0g
ICAgICAgICAgICAgIGVudW06IFsgbGluaywgYXBwbCBdCj4gKyAgICAgICAgICAgICAgZW51bTog
WyBhcGIsIGxpbmssIGFwcGwgXQo+ICAgICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBTZWUgbmF0
aXZlICdhdHUnIENTUiByZWdpb24gZm9yIGRldGFpbHMuCj4gICAgICAgICAgICAgICAgZW51bTog
WyBhdHVfZG1hIF0KPiAgICAgIGFsbE9mOgo+IAo+IC0tIAo+IDIuNDUuMQo+IAoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
