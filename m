Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE3D2E71076
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Sep 2023 13:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHWPyqjwdCGFV9Fx49J/8JXT+1yjYKC/r+esycKdtZE=; b=DgxOoDwxWpLdsC
	UahI2rapjXHJkwyWFwyzh0xgqpLd3w4bYe+2bJoFToGYdIhRL5buq0JIkhsqrfyf2nCu+xYJQuK9w
	caITcifZrHH41oZS5+r+BfOuDdVjW2qdBK0Bb9IRBbKhTVc4w58R+dP9meuJKOunqE/szmEKBSDi0
	88kZ3f3rSVswH0HJtWHG6bChntXGZb0QXzsKnxJ1UpvevQHvaJfeh4svKmI85ExmuVPvNGd0usaKl
	YDUx1bg5f6dvFwAqmOdxr0l02njDMOBrG3GsVQ+iuzUkM33GOnpTyde4JcOZAMXO5ZGTWuYZmn1JH
	JxI0tEQjmBJEvGru2UOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKBv-006C9y-1F;
	Thu, 21 Sep 2023 13:58:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKBs-006C8p-0m
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Sep 2023 13:58:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjKBp-0003Gb-Ij; Thu, 21 Sep 2023 15:57:57 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjKBo-007wRQ-7M; Thu, 21 Sep 2023 15:57:56 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjKBo-00Ao2Z-3V; Thu, 21 Sep 2023 15:57:56 +0200
Date: Thu, 21 Sep 2023 15:57:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Saravana Kannan <saravanak@google.com>
Cc: Chen-Yu Tsai <wens@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	kernel@pengutronix.de,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/3] pinctrl: rockchip: add support for io-domain
 dependency
Message-ID: <20230921135756.GT637806@pengutronix.de>
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-2-s.hauer@pengutronix.de>
 <CACRpkdYxRdToUM3JcEeNK_K87D5WDzzSLvVEbtqqdQEhz3k_Ow@mail.gmail.com>
 <CAGb2v65G-8EECNjqnpKCxqAD5nATAb0S7AA_WMiGXYOR1avrvg@mail.gmail.com>
 <20230913065843.GF637806@pengutronix.de>
 <CAGETcx8rO=aykjb6=5k0wpOyscqokNwSL6w-AHnodY7pNXyzGQ@mail.gmail.com>
 <20230915065120.GQ637806@pengutronix.de>
 <CAGETcx-stUfkVmkwGhj7iBWfCRsY5uZ=CxJdX9pPY6OO6oGUhg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGETcx-stUfkVmkwGhj7iBWfCRsY5uZ=CxJdX9pPY6OO6oGUhg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_065800_284550_69C76D56 
X-CRM114-Status: GOOD (  49.80  )
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

T24gV2VkLCBTZXAgMjAsIDIwMjMgYXQgMDM6MDA6MjhQTSAtMDcwMCwgU2FyYXZhbmEgS2FubmFu
IHdyb3RlOgo+IE9uIFRodSwgU2VwIDE0LCAyMDIzIGF0IDExOjUx4oCvUE0gU2FzY2hhIEhhdWVy
IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiA+Cj4gPiBPbiBXZWQsIFNlcCAxMywg
MjAyMyBhdCAwMTo0ODoxMlBNIC0wNzAwLCBTYXJhdmFuYSBLYW5uYW4gd3JvdGU6Cj4gPiA+IE9u
IFR1ZSwgU2VwIDEyLCAyMDIzIGF0IDExOjU44oCvUE0gU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBl
bmd1dHJvbml4LmRlPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IE9uIFdlZCwgU2VwIDEzLCAyMDIz
IGF0IDEyOjM3OjU0UE0gKzA4MDAsIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+ID4gPiA+IE9uIFR1
ZSwgU2VwIDEyLCAyMDIzIGF0IDQ6MDfigK9QTSBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlq
QGxpbmFyby5vcmc+IHdyb3RlOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBUb3AgcG9zdGluZyB0
byBicmluZyBTYXJhdmFuYSBLYW5uYW4gaW50byB0aGlzIGRpc2N1c3Npb24uCj4gPiA+ID4gPiA+
Cj4gPiA+ID4gPiA+IFRoaXMgbG9va3MgbGlrZSBhIGJpZyBoYWNrIHRvIG1lLCBTYXJhdmFuYSBo
YXMgYmVlbiB3b3JraW5nCj4gPiA+ID4gPiA+IHRpcmVsZXNzbHkgdG8gbWFrZSB0aGUgZGV2aWNl
IHRyZWUgcHJvYmUgb3JkZXIgInNvcnQgaXRzZWxmIG91dCIKPiA+ID4gPiA+ID4gYW5kIEkgYW0g
cHJldHR5IHN1cmUgdGhpcyBpc3N1ZSBuZWVkcyB0byBiZSBmaXhlZCBhdCB0aGUgRFQKPiA+ID4g
PiA+ID4gY29yZSBsZXZlbCBhbmQgbm90IGluIGEgZHJpdmVyLgo+ID4gPiA+ID4KPiA+ID4gPiA+
IFdlIGNvdWxkIG1lcmdlIGFsbCB0aGUgSU8gZG9tYWluIHN0dWZmIGludG8gdGhlIHBpbmN0cmwg
bm9kZS9kcml2ZXIsCj4gPiA+ID4gPiBsaWtlIGlzIGRvbmUgZm9yIEFsbHdpbm5lcj8gTWF5YmUg
dGhhdCB3b3VsZCBzaW1wbGlmeSB0aGluZ3MgYSBiaXQ/Cj4gPiA+ID4KPiA+ID4gPiBJIHRob3Vn
aHQgYWJvdXQgdGhpcyBhcyB3ZWxsLiBPbiBSb2NrY2hpcCB0aGUgcGluY3RybCBkcml2ZXIgYW5k
IHRoZSBJTwo+ID4gPiA+IGRvbWFpbiBkcml2ZXIgZXZlbiB3b3JrIG9uIHRoZSBzYW1lIHJlZ2lz
dGVyIHNwYWNlLCBzbyBwdXR0aW5nIHRoZXNlCj4gPiA+ID4gaW50byBhIHNpbmdsZSBub2RlL2Ry
aXZlciB3b3VsZCBldmVuIGZlZWwgbW9yZSBuYXR1cmFsIHRoYW4gd2hhdCB3ZSBoYXZlCj4gPiA+
ID4gbm93Lgo+ID4gPgo+ID4gPiBUaGVuIHdlIHNob3VsZCB0cnkgdG8gZG8gdGhpcyBhbmQgZml4
IGFueSBpc3N1ZXMgYmxvY2tpbmcgdXMuCj4gPiA+Cj4gPiA+ID4gSG93ZXZlciwgd2l0aCB0aGF0
IHRoZSBwaW5jdHJsIG5vZGUgd291bGQgZ2V0IHRoZSBzdXBwbGllcyB0aGF0IHRoZSBJTwo+ID4g
PiA+IGRvbWFpbiBub2RlIG5vdyBoYXMgYW5kIHdlIHdvdWxkIG5ldmVyIGdldCBpbnRvIHRoZSBw
cm9iZSBvZiB0aGUgcGluY3RybAo+ID4gPiA+IGRyaXZlciBkdWUgdG8gdGhlIGNpcmN1bGFyIGRl
cGVuZGVuY2llcy4KPiA+ID4KPiA+ID4gRnJvbSBhIGZ3X2RldmxpbmsgcGVyc3BlY3RpdmUsIHRo
ZSBjaXJjdWxhciBkZXBlbmRlbmN5IHNob3VsZG4ndCBiZSBhCj4gPiA+IHByb2JsZW0uIEl0J3Mg
c21hcnQgZW5vdWdoIHRvIHJlY29nbml6ZSBhbGwgY3ljbGUgcG9zc2liaWxpdGllcyAoc2luY2UK
PiA+ID4gNi4zKSBhbmQgbm90IGVuZm9yY2Ugb3JkZXJpbmcgYmV0d2VlbiBub2RlcyBpbiBhIGN5
Y2xlLgo+ID4gPgo+ID4gPiBTbywgdGhpcyBpcyByZWFsbHkgb25seSBhIG1hdHRlciBvZiBwaW5j
dHJsIG5vdCB0cnlpbmcgdG8gZG8KPiA+ID4gcmVndWxhdG9yX2dldCgpIGluIGl0cyBwcm9iZSBm
dW5jdGlvbi4gWW91IG5lZWQgdG8gZG8gdGhlCj4gPiA+IHJlZ3VsYXRvcl9nZXQoKSB3aGVuIHRo
ZSBwaW5zIHRoYXQgZGVwZW5kIG9uIHRoZSBpby1kb21haW4gYXJlCj4gPiA+IHJlcXVlc3RlZC4g
QW5kIGlmIHRoZSByZWd1bGF0b3IgaXNuJ3QgcmVhZHkgeWV0LCByZXR1cm4gLUVQUk9CRV9ERUZF
Uj8KPiA+Cj4gPiBUaGF0J3MgYmFzaWNhbGx5IHdoYXQgbXkgc2VyaWVzIGRvZXMgYWxyZWFkeSwg
SSByZXR1cm4gLUVQUk9CRV9ERUZFUgo+ID4gZnJvbSB0aGUgcGluY3RybCBkcml2ZXIgd2hlbiBh
IHBpbiBpcyByZXF1ZXN0ZWQgYW5kIHRoZSBJTyBkb21haW4gaXMgbm90Cj4gPiB5ZXQgcmVhZHku
Cj4gPgo+ID4gPgo+ID4gPiBJcyB0aGVyZSBzb21ldGhpbmcgdGhhdCBwcmV2ZW50cyB1cyBmcm9t
IGRvaW5nIHRoYXQ/Cj4gPgo+ID4gTm8uIFdlIGNvdWxkIGRvIHRoYXQsIGJ1dCBpdCB3b3VsZG4n
dCBidXkgdXMgYW50aGluZy4gSSBhbSBnbGFkIHRvIGhlYXIKPiA+IHRoYXQgZndfZGV2bGluayBj
YW4gYnJlYWsgdGhlIGNpcmN1bGFyIGRlcGVuZGVuY2llcy4gV2l0aCB0aGlzIHdlIGNvdWxkCj4g
PiBhZGQgdGhlIHN1cHBsaWVzIHRvIHRoZSBwaW5jdHJsIG5vZGUgYW5kIHRoZSBwaW5jdHJsIGRy
aXZlciB3b3VsZCBzdGlsbAo+ID4gYmUgcHJvYmVkLgo+ID4KPiA+IFdpdGggdGhlIElPIGRvbWFp
biBzdXBwbGllcyBhZGRlZCB0byB0aGUgcGluY3RybCBub2RlIG91ciBiaW5kaW5nIHdvdWxkCj4g
PiBiZSBjbGVhbmVyLCBidXQgc3RpbGwgd2Ugd291bGQgaGF2ZSB0byBkZWZlciBwcm9iZSBvZiBt
YW55IHJlcXVlc3RlZAo+ID4gcGlucyB1bnRpbCBmaW5hbGx5IHRoZSBJMkMgZHJpdmVyIHByb3Zp
ZGluZyBhY2Nlc3MgdG8gdGhlIFBNSUMgY29tZXMKPiA+IGFsb25nLiBXZSBhbHNvIHN0aWxsIG5l
ZWQgYSAiRG8gbm90IGRlZmVyIHByb2JlIGZvciB0aGVzZSBwaW5zIiBwcm9wZXJ0eQo+ID4gaW4g
dGhlIHBpbmdycCBuZWVkZWQgZm9yIHRoZSBJMkMgZHJpdmVyLgo+IAo+IFNvcnJ5IGFib3V0IHRo
ZSBzbG93IHJlcGx5LiBCZWVuIGEgYml0IGJ1c3kuCj4gCj4gT2gsIHRoaXMgaXMgbm90IHRydWUg
dGhvdWdoLiBXaXRoIHRoZSBleGFtcGxlIGJpbmRpbmcgSSBnYXZlLAo+IGZ3X2Rldmxpbmsgd2ls
bCBhdXRvbWF0aWNhbGx5IGRlZmVyIHRoZSBwcm9iZSBvZiBkZXZpY2VzIHRoYXQgZGVwZW5kCj4g
b24gcGlucyB0aGF0IG5lZWQgYW4gaW9kb21haW4vcmVndWxhdG9yLgo+IAo+IHBpbmN0cmwgewo+
ICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1waW5jdHJsIjsKPiAgICAgaTJjMCB7
Cj4gICAgICAgICAgICAgICAgIC9vbWl0LWlmLW5vLXJlZi8KPiAgICAgICAgICAgICAgICAgaTJj
MF94ZmVyOiBpMmMwLXhmZXIgewo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLHBp
bnMgPQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogaTJjMF9zY2wgKi8KPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwwIFJLX1BCMSAxICZwY2ZnX3B1bGxfbm9u
ZV9zbXQ+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogaTJjMF9zZGEgKi8K
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwwIFJLX1BCMiAxICZwY2ZnX3B1bGxf
bm9uZV9zbXQ+Owo+ICAgICAgICAgICAgICAgICB9Owo+ICAgICB9Cj4gICAgIC4uLgo+ICAgICAu
Li4KPiAgICAgcGluY3RybC1pbyB7Cj4gICAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJr
MzU2OC1waW5jdHJsLWlvIjsKPiAgICAgICAgIHBtdWlvMS1zdXBwbHkgPSA8JnZjYzN2M19wbXU+
Owo+ICAgICAgICAgY2FtIHsKPiAgICAgICAgICAgICAuLi4uCj4gICAgICAgICB9Cj4gICAgICAg
ICAuLi4uCj4gICAgICAgICAuLi4uCj4gfQo+IAo+IGNvbnN1bWVyQSB7Cj4gICAgcGluY3RybC0w
ID0gPCZjYW0+Owo+IH0KPiAKPiBXaXRoIHRoaXMgbW9kZWwgYWJvdmUsIHRoZXJlIGFyZSBubyBj
eWNsZXMgYW55bW9yZS4KClRoZSBjeWNsZXMgYXJlIGdvbmUgYmVjYXVzZSB5b3Ugc2tpcHBlZCB0
aGUgcHJvYmxlbWF0aWMgY2FzZSBpbiB5b3VyCmV4YW1wbGUuCgpSZXBsYWNlIGNvbnN1bWVyQSBp
biB5b3VyIGV4YW1wbGUgd2l0aCB0aGUgSTJDIG5vZGUgcHJvdmlkaW5nIGFjY2VzcyB0bwp0aGUg
UE1JQyB3aGljaCBwcm92aWRlcyAmdmNjM3YzX3BtdSBhbmQgdGhlbiB5b3UgaGF2ZSB0aGUgY3lj
bGVzIGJhY2suCgpUaGUgSTJDIG1hc3RlciBkZXZpY2UgbmVlZHMgdGhlIElPIGRvbWFpbiB3aGlj
aCBuZWVkcyBhIHJlZ3VsYXRvcgpwcm92aWRlZCBieSBhIGNsaWVudCBvbiB0aGUgdmVyeSBzYW1l
IEkyQyBtYXN0ZXIuIFRoZSBjeWNsZXMgYXJlCmFjdHVhbGx5IHRoZXJlIGluIGhhcmR3YXJlLCB5
b3UgY2FuJ3QgZGVmaW5lIHRoZW0gYXdheSA7KQoKU2FzY2hhCgoKLS0gClBlbmd1dHJvbml4IGUu
Sy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93
d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAg
ICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRl
c2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
