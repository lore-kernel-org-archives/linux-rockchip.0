Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25119CA5FF0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 21:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jwD3wk9iynU/6IirfZExdP3H6PLiO2H9xB0ilIeJ7dc=; b=lOkT9qZ8jMwpMP
	sZH4FVkT3vfKbPSdm0n6fUzDwUgQZ//U9QvJ8ADTaZVEhVNhI6ENCvkILp+BaTyEjgEo6rR2GegMB
	Pf++TAApj3txdvdP0rEmubZUM94lPj8J38gvRDATvvcnt9DmI34u4Q7K5nhEKcTZw2XLwQ7FU0cm7
	DpjfSRf4/tiE7b1jp046qrgoC0AMKB726xtYJMMNOpy1RPB5qPIjjxg78/6sZl8uXw3G1vavPVO6u
	lsclwxpaF4blRvTXbcWa0yhlmPKrFwIQFSwv0OgK6YTsIJnTeLJD127MtTuZHy2PiljQBrT9rFn9R
	Xo6k8ZmyghuLJkXnwQ4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqT0-0000000HCnD-2fUt;
	Mon, 05 Oct 2026 21:43:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqSy-0000000HCml-3kux;
	Mon, 05 Oct 2026 21:43:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F2F9B600D1;
	Mon,  5 Oct 2026 21:43:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9567B1F00893;
	Mon,  5 Oct 2026 21:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791236603;
	bh=TxAZ85y4jPD5s6/gsYfi/z3sFIrC/VFwdMDoYbCyWJc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iNXt2f1D5yr4eLJJkViQNyvzNJcHgpioVSb3IhMAnCtXQ2GkFWptccYPOSqGMdEyh
	 f4CGWgQuthldVyHWoxchFv4aaWL8K+Y8wEJkuoPQDGYI9saAxK73d6BVmcFfG3FazF
	 s5ERiUy3ivGiCf2UKzbTearhuPI8+aT3KAlXirdRTeJP17Qaj/6luDZTMEN1EkJHcJ
	 Gk1i4A2p9I+njIzrKC8BOrjAdi3qHK1CAdZvGHqTaCbeE4Wzqu5BzNMo/iBVFiab7c
	 gaboAHRTlQ+koKcYUyZDgBwjvavGT7IhYw2m2j9pFKMz890QpF0JBYaRt6T57BQwOC
	 LC6jF5s/A/1CQ==
Date: Mon, 5 Oct 2026 23:43:19 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Coia Prant <coiaprant@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH net-next v10 03/11] phy: rockchip: naneng-combphy: add
 SGMII MAC selection for RK3568
Message-ID: <asQZ99CMsQF10-RZ@parshuram>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
 <20260922200336.2201212-4-coiaprant@gmail.com>
 <20261005135939.01ccde50@kernel.org>
 <CALj3r0h7j-4ZAiX67LmbgpmYCvK-Xmzd_qnYYgoBmniAW+eiWw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALj3r0h7j-4ZAiX67LmbgpmYCvK-Xmzd_qnYYgoBmniAW+eiWw@mail.gmail.com>
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

T24gMDYtMTAtMjYsIDA1OjE1LCBDb2lhIFByYW50IHdyb3RlOgo+IEpha3ViIEtpY2luc2tpIDxr
dWJhQGtlcm5lbC5vcmc+IOS6jjIwMjblubQxMOaciDbml6XlkajkuowgMDQ6NTnlhpnpgZPvvJoK
PiA+Cj4gPiBPbiBXZWQsIDIzIFNlcCAyMDI2IDA0OjAzOjI3ICswODAwIENvaWEgUHJhbnQgd3Jv
dGU6Cj4gPiA+IE9uIFJLMzU2OCwgdGhlIFNHTUlJIGludGVyZmFjZSBjYW4gYmUgcm91dGVkIHRv
IGVpdGhlciBHTUFDMCBvcgo+ID4gPiBHTUFDMSB2aWEgdGhlIEdSRiByZWdpc3RlciBwaXBlX3Nn
bWlpX21hY19zZWwuCj4gPiA+Cj4gPiA+IEFkZCBzdXBwb3J0IGZvciB0aGlzIHNlbGVjdGlvbiBi
eSBpbnRyb2R1Y2luZwo+ID4gPiB0aGUgInJvY2tjaGlwLHNnbWlpLW1hYy1zZWwiIERUIHByb3Bl
cnR5Lgo+ID4gPgo+ID4gPiBGcm9tIHRoZSBSSzM1NjggVFJNIChQYXJ0MSwgUGFnZSAyMjkpLCB0
aGUgUElQRV9HUkZfWFBDU19DT04wCj4gPiA+IGJpdCAxIChwaXBlX3NnbWlpX21hY19zZWwpIGlz
IGRlZmluZWQgYXM6Cj4gPiA+Cj4gPiA+ICAgICAwOiBTR01JSSByb3V0ZWQgdG8gR01BQzAKPiA+
ID4gICAgIDE6IFNHTUlJIHJvdXRlZCB0byBHTUFDMQo+ID4gPgo+ID4gPiBUaGUgaGFyZHdhcmUg
cmVzZXQgdmFsdWUgaXMgMSAoR01BQzEpLiBJZiB0aGUgcHJvcGVydHkgaXMgc2V0IHRvIDAsCj4g
PiA+IHRoZSBkcml2ZXIgcm91dGVzIFNHTUlJIHRvIEdNQUMwOyBpZiBzZXQgdG8gMSAob3Igb21p
dHRlZCksIGl0Cj4gPiA+IHJlbWFpbnMgYXQgR01BQzEuCj4gPiA+Cj4gPiA+IFRoaXMgaXMgbmVj
ZXNzYXJ5IGZvciBib2FyZHMgc3VjaCBhcyB0aGUgQXJpYWJvYXJkIFBob3RvbmljYXQsIHdoaWNo
Cj4gPiA+IHVzZXMgdGhlIFNHTUlJIGludGVyZmFjZSBjb25uZWN0ZWQgdG8gR01BQzAuCj4gPiA+
Cj4gPiA+IE91dC1vZi1yYW5nZSB2YWx1ZXMgYXJlIHJlamVjdGVkIGJ5IGR0c2NoZW1hLCBzbyB0
aGUgZHJpdmVyIGRvZXMgbm90Cj4gPiA+IGR1cGxpY2F0ZSB0aGUgcmFuZ2UgY2hlY2suCj4gPgo+
ID4gV2hpbGUgbG9va2luZyB0aHJ1IHRoZSBwYXRjaGVzIGFnYWluIEkgbm90aWNlZCB0aGlzIGlz
IGNoYW5naW5nIGdlbmVyaWMKPiA+IFBIWS4gTWF5YmUgeW91IGNhbiBzZW5kIGl0IHNlcGFyYXRl
bHkgdG8gVmlub2Q/IEkgZG9uJ3Qgc2VlIGEgaGFyZAo+ID4gZGVwZW5kZW5jeT8gVGhlIGNvZGUg
Y2FuICJjb252ZXJnZSIgZHVyaW5nIHRoZSBtZXJnZSB3aW5kb3cgZm9yIHRoZQo+ID4gd2hvbGUg
dGhpbmcgdG8gd29yay4KPiAKPiBIaSBKYWt1YiwKPiAKPiBUaGFua3MgZm9yIHRoZSBzdWdnZXN0
aW9uLiBJIGxvb2tlZCBhdCB0aGlzIGFnYWluLCBhbmQgSSB0aGluayB0aGUKPiBkZXBlbmRlbmN5
IGlzIGEgYml0IG1vcmUgaW52b2x2ZWQgdGhhbiBpdCBtaWdodCBzZWVtLgo+IAo+IFRoZSBQSFkg
cGF0Y2ggKDAzLzExKSBhZGRzIHRoZSBkcml2ZXIgc3VwcG9ydCBmb3IKPiAicm9ja2NoaXAsc2dt
aWktbWFjLXNlbCIsIHdoaWNoIGlzIGRvY3VtZW50ZWQgYnkgdGhlIFBIWSBiaW5kaW5nICgwMi8x
MSkuCj4gVGhlIERUUyBwYXRjaCAoMTAvMTEpIHRoZW4gdXNlcyB0aGlzIHByb3BlcnR5LiBJZiBJ
IHNlbmQgMDMvMTEgc2VwYXJhdGVseQo+IHRvIFZpbm9kIGFuZCBrZWVwIDEwLzExIGluIG5ldC1u
ZXh0LCBkdGJzX2NoZWNrIHdpbGwgZmxhZyB0aGUgRFRTIHByb3BlcnR5Cj4gYXMgdW5kb2N1bWVu
dGVkIHVudGlsIHRoZSBQSFkgYmluZGluZyBsYW5kcyBpbiBtYWlubGluZS4gVGhhdCB3b3VsZCBi
cmVhawo+IERUUyB2YWxpZGF0aW9uIGZvciB0aGUgbmV0LW5leHQgc2VyaWVzLgoKVHlwaWNhbCBv
cmRlciBpcyB0aGF0IGJpbmRpbmcgYW5kIGRyaXZlciBnb2VzIHRocnUgc3Vic3lzdGVtIChpbiB0
aGlzCmNhc2UgcGh5IHRyZWUpIGFuZCBkdHMgdGhydSB0aGUgc29jIHRyZWUuCgpJIGNhbiByZXZp
ZXcgYW5kIHBpY2sgdGhlc2UgaWYgeW91IHdvdWxkIGxpa2UKPiAKPiBBbHNvLCBzcGxpdHRpbmcg
aW50byBzZXBhcmF0ZSBzZXJpZXMgbWVhbnMgZWFjaCBoYXMgdG8gcXVldWUgYW5kIGdldAo+IHJl
dmlld2VkIGluZGVwZW5kZW50bHksIHdoaWNoIEknbSB3b3JyaWVkIG1pZ2h0IG5vdCBhbGwgbWFr
ZSB0aGUgbWVyZ2UKPiB3aW5kb3cgaW4gdGltZS4KPiAKPiBTbyB1bmxlc3MgeW91IHN0cm9uZ2x5
IHByZWZlciBzcGxpdHRpbmcsIEknZCByYXRoZXIga2VlcCB0aGUgd2hvbGUgc2VyaWVzCj4gdG9n
ZXRoZXIgaW4gbmV0LW5leHQuIElmIHRoYXQgd29ya3MsIHdvdWxkIGl0IGJlIHBvc3NpYmxlIHRv
IGNvb3JkaW5hdGUgYW4KPiBBY2sgZnJvbSBWaW5vZCBmb3IgdGhlIFBIWSBwYXJ0PyBPciBpZiB5
b3Ugc3RpbGwgdGhpbmsgaXQgc2hvdWxkIGdvCj4gc2VwYXJhdGVseSwgSSBjYW4gZG8gdGhhdCB0
b28sIGJ1dCBJIHdhbnRlZCB0byBmbGFnIHRoZSBkZXBlbmRlbmN5IGFuZAo+IHRpbWluZyBmaXJz
dC4KPiAKPiBUaGFua3MsCj4gQ29pYQoKLS0gCn5WaW5vZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
