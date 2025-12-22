Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A437BD711D5
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 06:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6WwpFo4DulR/EcVIBJ4DjFTNMdrDkrM4x5/xJgkYPc=; b=JWZd95DXTjO+Gl
	Q+reDjpDFT0UBYPmWB7zubBkO4dNTgAk61Jocr2mgVjnDUrZRGr7C1aWprwM5yC9BO9tF8NNHL+Hx
	bnlLfgPzAHRSjjTX1Fvjx44iv6J3s9N30bO9/p5yKcwbpI6DtFOhokf5xrUj+lyZgQK1FROQl+ptS
	ai6gfAW4Umdmw3swltkfhZfdmgI/zbMW5h8gscz0gH5rdJDU3C4YCwtfZPZUCyCwhtbEtqkcHJDKb
	yh5h+PFV6bOSMrE2y99rg4Hh9I5kVocLibnn+YLQXGtydeH5W5o5yUtigWK3wLOE1s0TC1TP8gL1P
	Ktl13xeAPH7sB49XvOYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXZCb-0000000DGrn-0CHE;
	Mon, 22 Dec 2025 06:15:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXZCZ-0000000DGrD-0kWq;
	Mon, 22 Dec 2025 06:15:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2A0436001D;
	Mon, 22 Dec 2025 06:15:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BAFAC4CEF1;
	Mon, 22 Dec 2025 06:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766384123;
	bh=GXEtZp4QRQx0hcOsDqW5Mo0KVr1eWC8Jjb7PsD5/6AY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ua+tOSC3ui9atQi4EUgmggjiDNruCiGJkW5003dHm3u9C6zi/6Roi2qB7xStYF5q8
	 1LL4VQDcurSMdJwPlF9oli/tvKNTbe0bO3KAtNEIDnT5z7eZ2rRB7l4CuHWrUnomLx
	 SIp++9sGYj8AWWYm0Clftu55di+RJ5/SmMAl6/AN68UENro2APxOFaKp42pQjGbeyQ
	 1UUY1LkKCsBoS+zUjh8gZFMHH9BIz+Lxpk3Y4DqZJNa39b9Yw+UGoyuBgaM1g+J6bE
	 SefjlR34LQ/kzlaoqJR6UMJQxa/0XDjQ9a6w7ZzD01OMfvy7KDxMeXx9xvVvjC6dxu
	 W8xHzJyBxOuRA==
Date: Mon, 22 Dec 2025 11:45:09 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Jingoo Han <jingoohan1@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	FUKAUMI Naoki <naoki@radxa.com>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dwc: Make Link Up IRQ logic handle already
 powered on PCIe switches
Message-ID: <fle74skju2rorxmfdvosmeyrx3g75rysuszov5ofvde2exj4ir@3kfjyfyhczmn>
References: <20251201063634.4115762-2-cassel@kernel.org>
 <f1059d5d-3fa5-423a-8093-0e99b65d5f4c@oss.qualcomm.com>
 <aTev28wihes6iJqs@dhcp-10-89-81-223>
 <dad4957c-ca13-4742-b46d-03f0478911d5@oss.qualcomm.com>
 <aTe1bA7lcVzFD5L7@dhcp-10-89-81-223>
 <pjn2gs43rqbe3odh6zvh4qaftxxl6qvdzpm6pgpadxeeid42ko@4a2qradscaqd>
 <aTu4JgDcfb_58qBK@fedora>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aTu4JgDcfb_58qBK@fedora>
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

T24gRnJpLCBEZWMgMTIsIDIwMjUgYXQgMDM6Mzc6MjZQTSArMDkwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBIZWxsbyBNYW5pLAo+IAo+IE9uIEZyaSwgRGVjIDEyLCAyMDI1IGF0IDEyOjUyOjM1
UE0gKzA5MDAsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+ID4gVGhpcyBwYXRjaCBt
aXNzZWQgdGhlIHY2LjE5IG1lcmdlIHdpbmRvdyAoYW5kIHNvIGRpZCB0aGUgcHdyY3RybCByZXdv
cmsKPiA+ID4gc2VyaWVzKSwgc28gYXMgbG9uZyBhcyBNYW5pIHF1ZXVlcyB1cCBib3RoIGZvciB2
Ni4yMCAod2l0aCB0aGUgcHdyY3RybAo+ID4gPiByZXdvcmsgc2VyaWVzIGdldHRpbmcgYXBwbGll
ZCBmaXJzdCksIEkgdGhpbmsgd2UgYXJlIGdvb2QuCj4gPiA+IAo+ID4gCj4gPiBUaGUgcGxhbiBp
cyB0byBtZXJnZSBwd3JjdHJsIHNlcmllcyB0byB2Ni4yMCAodW5sZXNzIHdlIGdldCBzdHJvbmcg
b2JqZWN0aW9ucyksCj4gPiBidXQgb25jZSB0aGF0IGhhcHBlbnMsIFFjb20gZG9lc24ndCBuZWVk
IHRoaXMgcGF0Y2guCj4gPiAKPiA+IFNvIGl0J2QgYmUgZ29vZCBpZiB5b3UgY2FuIGp1c3QgbGlt
aXQgdGhpcyBwYXRjaCB0byBqdXN0IFJvY2tjaGlwLiBUaGVuIG9uY2UgdGhlCj4gPiBSb2NrY2hp
cCBhbHNvIG1vdmVzIHRvIHB3cmN0cmwsIHdlIGNhbiByZXZlcnQgdGhpcyBwYXRjaCAoYWxzbyB0
aGUgd2hvbGUgSVJRCj4gPiBiYXNlZCBsaW5rIHVwIHNpbmNlIHRoZSBSb290IFBvcnQgaXMgbm90
IGhvdHBsdWcgY2FwYWJsZSkuCj4gCj4gVGhlIG1haW4gcmVhc29uIHdoeSBJIGRpZCBub3QgbGlr
ZSBhIHJldmVydCwgd2FzIGJlY2F1c2UgaXQgd291bGQgcmVtb3ZlCj4gdGhlIG5pY2UgZmVhdHVy
ZSB3aGVyZSB0aGUgYnVzIGlzIGVudW1lcmF0ZWQgYXV0b21hdGljYWxseSBvbiBsaW5rIHVwLgo+
IAo+IEkgYXNzdW1lZCB0aGF0IHRoZSBwbGFuIHdhcyB0byBhZGQgTGluayBVcCBJUlEgc3VwcG9y
dCBpbiBwd3JjdHJsIGluIHRoZQo+IGZ1dHVyZS4KPiAKCkFzIEkgZGlnIG1vcmUgYW5kIG1vcmUg
aW50byBwd3JjdHJsLCBpdCBiZWNvbWVzIGNsZWFyIHRvIG1lIHRoYXQgZW11bGF0aW5nCmhvdHBs
dWcgb24gbm9uLWhvdHBsdWcgY2FwYWJsZSBodyBpcyBhIGJhZCBpZGVhLiBUaG91Z2ggaXQgZ2l2
ZXMgYSBuaWNlIHVzZXIKZXhwZXJpZW5jZSBpbiBtYWpvcml0eSBvZiB0aGUgY2FzZXMsIGl0IGFs
c28gZ2l2ZXMgaXNzdWUgaW4gc29tZSBjYXNlcyBsaWtlCnN3aXRjaC4gU28gcHdyY3RybCB3aWxs
IGp1c3QgcG93ZXIgb24gYWxsIGRldmljZXMvc2xvdHMgYmVmb3JlIGluaXRpYWwgYnVzIHNjYW4K
YW5kIHdpbGwgbm90IGRvIGFueSBsaW5rIHVwIGJhc2VkIGVudW1lcmF0aW9uIGxhdGVyLiBBbmQg
bmVpdGhlciB0aGUgY29udHJvbGxlcgpkcml2ZXIuCgo+IElmIHRoYXQgaXMgbm90IHRoZSBjYXNl
LCBhbmQgdGhlIHBsYW4gaXMgaW5zdGVhZCB0byBldmVudHVhbGx5IHJlbW92ZSB0aGUKPiBleGlz
dGluZyBMaW5rIFVwIElSUSBzdXBwb3J0LCB0aGVuIHBlcmhhcHMgeW91IGNvdWxkIHNpbXBseSBh
cHBseSBwYXRjaGVzCj4gZnJvbToKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1wY2kv
MjAyNTExMTExMDUxMDAuODY5OTk3LTgtY2Fzc2VsQGtlcm5lbC5vcmcvCj4gCj4gRWl0aGVyIHRo
ZSB3aG9sZSBzZXJpZXMgb3IganVzdCBwYXRjaCAxIGFuZCAyLCBtYWludGFpbmVyJ3MgY2hvaWNl
IDopCj4gCgpJIHRyaWVkIGFwcGx5aW5nIHRoZSB3aG9sZSBzZXJpZXMsIGJ1dCBpdCBmYWlscyBh
dCBwYXRjaCAyLiBDb3VsZCB5b3UgcGxlYXNlCnJlYmFzZSBhZ2FpbnN0LCBwY2kvY29udHJvbGxl
ci9kd2MgYW5kIHJlcG9zdD8KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCv
jSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
