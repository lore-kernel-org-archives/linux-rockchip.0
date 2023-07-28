Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CF4FC0015E
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jul 2023 19:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qKYgZVANNGl8LOTqdlqw+jU0wsGUbvGAm1HpLPxyBBg=; b=NDAjqMhLD0WLbQ
	w64Z5eaGmSxw/6BZPxAnJdlQXWiNwMXH7VIa85lVp9zG/eYHkfuxv8u6bbmmAFm3vRRYy8o9tiA0B
	aVEMz4ppOgdOiGAKd5MAiHuWIQVv0fW2ZIj49SS7xrMR00l5kfMTqT6AWQRmZVBt16H0dSbRJWXRD
	7X7AyNJyTsduam5aPaP1M0IYQVDPNLgKVAqWpXhc0ycrCHgB51bMDn9CLjE8Dau+ULnd+G+n7Yz3H
	/GuHgW2eQIsOwqCd6y3HuC0XHbWDsTGKN5bds0WJLwQg38dhf3MzuJ4aJc3MPkw5RFfVASBO2RbN6
	elVlhfEKz8gyVNmYEwOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPSh6-004fb6-0Q;
	Fri, 28 Jul 2023 19:00:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPSh1-004fSl-1R;
	Fri, 28 Jul 2023 19:00:04 +0000
Received: from [185.230.175.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qPSgp-0000vt-Fe; Fri, 28 Jul 2023 20:59:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>,
 Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Caleb Connolly <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>,
 Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for Pinephone Pro
 to 1.5 MB
Date: Fri, 28 Jul 2023 20:59:50 +0200
Message-ID: <4495367.TLkxdtWsSY@phil>
In-Reply-To: <87pm4kuanl.fsf@minerva.mail-host-address-is-not-set>
References: <20230403175937.2842085-1-javierm@redhat.com> <3797122.KgjxqYA5nG@diego>
 <87pm4kuanl.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230728_120003_490580_AFE08C50 
X-CRM114-Status: GOOD (  40.95  )
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

SGkgSmF2aWVyLAoKQW0gU2Ftc3RhZywgMjIuIEp1bGkgMjAyMywgMDE6MDY6NTQgQ0VTVCBzY2hy
aWViIEphdmllciBNYXJ0aW5leiBDYW5pbGxhczoKPiBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cml0ZXM6Cj4gPiBBbSBEaWVuc3RhZywgMTguIEFwcmlsIDIwMjMsIDE0OjExOjUz
IENFU1Qgc2NocmllYiBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXM6Cj4gPj4gSGVpa28gU3TDvGJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JpdGVzOgo+ID4+ID4gQW0gRGllbnN0YWcsIDQuIEFwcmls
IDIwMjMsIDE0OjUyOjAyIENFU1Qgc2NocmllYiBQZXRlciBHZWlzOgo+ID4+ID4+IE9uIFR1ZSwg
QXByIDQsIDIwMjMgYXQgMzo1NeKAr0FNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+
IHdyb3RlOgo+ID4+ID4+ID4gQW0gTW9udGFnLCAzLiBBcHJpbCAyMDIzLCAxOTo1OTozNyBDRVNU
IHNjaHJpZWIgSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzOgo+ID4+ID4+ID4gPiBUaGlzIGJhdWQg
cmF0ZSBpcyBzZXQgZm9yIHRoZSBkZXZpY2UgYnkgbWFpbmxpbmUgdS1ib290IGFuZCBpcyBhbHNv
IHdoYXQKPiA+PiA+PiA+ID4gaXMgc2V0IGluIHRoZSBQaW5lYm9vayBQcm8gRGV2aWNlIFRyZWUs
IHdoaWNoIGlzIGEgZGV2aWNlIHNpbWlsYXIgdG8gdGhlCj4gPj4gPj4gPiA+IFBpbmVQaG9uZSBQ
cm8gYnV0IHdpdGggYSBkaWZmZXJlbnQgZm9ybSBmYWN0b3IuCj4gPj4gPj4gPiA+Cj4gPj4gPj4g
PiA+IE90aGVyd2lzZSwgdGhlIGJhdWQgcmF0ZSBvZiB0aGUgZmlybXdhcmUgYW5kIExpbnV4IGRv
bid0IG1hdGNoIGJ5IGRlZmF1bHQKPiA+PiA+PiA+ID4gYW5kIGEgJ2NvbnNvbGU9dHR5UzIsMTUw
MDAwMG44JyBrZXJuZWwgY29tbWFuZCBsaW5lIHBhcmFtZXRlciBpcyByZXF1aXJlZAo+ID4+ID4+
ID4gPiB0byBoYXZlIHByb3BlciBvdXRwdXQgZm9yIGJvdGguCj4gPj4gPj4gPgo+ID4+ID4+ID4g
VGhlIGludGVyZXN0aW5nIHF1ZXN0aW9uIGlzIGFsd2F5cyBpZiB0aGlzIHdpbGwgYnJlYWsgc29t
ZW9uZSBlbHNlJ3Mgc2V0dXAuCj4gPj4gPj4gPiBJJ3ZlIG5ldmVyIHJlYWxseSB1bmRlcnN0b29k
IHRoZSBzdHJhbmdlIHNldHRpbmcgb2YgMS41TUJwcywgYnV0IG9uIHRoZQo+ID4+ID4+ID4gb3Ro
ZXIgaGFuZCBpdCBfaXNfIGEgcmVhbGl0eSBvbiBtb3N0IGJvYXJkcy4KPiA+PiA+Cj4gPj4gPj4g
VGhlIDEuNU0gYmF1ZCBpcyBkZWZhdWx0IGJlY2F1c2UgdGhlIGNsb2NrIHN0cnVjdHVyZSBvbiBy
b2NrY2hpcAo+ID4+ID4+IGRldmljZXMgZG9lcyBub3QgYWxsb3cgYSBjbGVhbiAxMTUyMDAgYmF1
ZC4gQnkgYXR0ZW1wdGluZyB0byBmb3JjZQo+ID4+ID4+IDExNTIwMCwgaXQgd2lsbCBhbHdheXMg
YmUgc2xpZ2h0bHkgb2ZmIChlaXRoZXIgbG93IG9yIGhpZ2ggZGVwZW5kaW5nCj4gPj4gPj4gb24g
aG93IHRoZSBkcml2ZXIgZGVjaWRlZCB0byByb3VuZCkuIElmIHRoaXMgYWN0dWFsbHkgY2F1c2Vz
IGFueQo+ID4+ID4+IHByb2JsZW1zIGlzIHRoZSBzdWJqZWN0IG9mIG11Y2ggZGViYXRlLgo+ID4+
ID4KPiA+PiA+IHRoYW5rcyBzbyBtdWNoIGZvciB0aGlzIHBpZWNlIG9mIGNsb2NrLWRldGFpbC4g
QXMgSSB3cm90ZSwgSSBuZXZlciByZWFsbHkKPiA+PiA+IHVuZGVyc3Rvb2QgdGhlIHdoeSBfYmVm
b3JlXyBidXQgYWxzbyBuZXZlciBjYXJlZCB0aGF0IG11Y2ggdG8gZGl2ZQo+ID4+ID4gaW50byBp
dCBhbmQgZmluZCBvdXQuCj4gPj4gPgo+ID4+ID4gU28geW91ciBleHBsYW5hdGlvbiBjbG9zZXMg
b25lIGtub3dsZWRnZSBnYXAgaW4gbXkgaGVhZC4KPiA+PiA+Cj4gPj4gPiBUaGFua3MgYSBsb3Qg
Oi0pCj4gPj4gCj4gPj4gRGlkIHlvdSBtYWtlIGEgZGVjaXNpb24gYWJvdXQgdGhpcz8gSSBndWVz
cyB0aGUgY2xvY2sgZXhwbGFuYXRpb24gaXMgeWV0Cj4gPj4gYW5vdGhlciBhcmd1bWVudCBpbiBm
YXZvdXIgb2Ygc3dpdGNoaW5nIHRoZSBQUFAgdG8gYSAxLjUgTWJwcyBiYXVkIHJhdGUgPwo+ID4K
PiA+IFNvcnJ5LCBidXQgbm8gZGVjaXNpb24gbWFkZSBoZXJlLiBFaXRoZXIgd2F5IGl0J3MgYnJl
YWtpbmcgZm9yIHNvbWVvbmUsCj4gPiB3aGljaCBtYWtlcyB0aGlzIHF1aXRlIGhhcmQuCj4gPgo+
IAo+IEFub3RoZXIgcGluZyBvbiB0aGlzIHBhdGNoLgo+IAo+ID4gVGhlIHJhdGUgYWNjdXJhY3kg
aXMgdGhlIG9uZSBzaWRlLCB0aGUgdHdvLWJvb3QgaXNzdWUgaXMgdGhlIG90aGVyIHNpZGUuCj4g
PiBBbmQgbWFpbmxpbmUgdS1ib290IChhbmQgbGV2aW5ib290IC0gd2hhdGV2ZXIgdGhhdCBpcykg
cHJvdmlkZXMgYSAzcmQgc2lkZS4KPiA+Cj4gPiBQZW9wbGUgc3RhcnRpbmcgd2l0aCB0aGUgcGhv
bmUgcHJvYmFibHkgd29uJ3QgcmVwbGFjZSB0aGUgYm9vdGxvYWRlcgo+ID4gaW4gYSBmaXJzdCBz
dGVwIGJ1dCBpbnN0ZWFkIG1pZ2h0IHBsYXkgd2l0aCBhIHN5c3RlbSBpbWFnZSBvciBuZXdlciBr
ZXJuZWwuCj4gPiBTbyBpZiB0aGUgdWFydCB3aWxsIGJyZWFrIGZvciBldmVyeW9uZSB1c2luZyB0
aGUgZGVmYXVsdCBib290bG9hZGVyIGZyb20KPiA+IHRoZSBmYWN0b3J5IHRoYXQgaXMgc29tZXdo
YXQgYmFkLgo+ID4KPiAKPiBQcm9iYWJseSB3b24ndCByZXBsYWNlIHRoZSBEVEIgc2hpcHBlZCB3
aXRoIHRoZSBmaXJtd2FyZSBlaXRoZXI/IElmIG9uZSBpcwo+IHJlcGxhY2luZyB0aGUgZmlybXdh
cmUgcHJvdmlkZWQgRFRCIHdpdGNoIHRoZSBvbmUgaW4gdGhlIG1haW5saW5lIGtlcm5lbCwKPiBw
cm9iYWJseSBzdWNoIHBlcnNvbiBpcyBhbHNvIHVzaW5nIG1haW5saW5lIHUtYm9vdD8KCk5vdCBu
ZWNlc3NhcmlseS4KCkkuZS4gcHV0dGluZyBhbiBleHRsaW51eC5jb25mIG9uIGFuIHNkLWNhcmQg
d2l0aCBhIGtlcm5lbC1pbWFnZSBhbmQgZHRiCmlzIG5vdCByb2NrZXQgc2NpZW5jZSA7LSkKCgo+
ID4gSSBkb24ndCBoYXZlIGEgUGluZXBob25lIFBybyBteXNlbGYsIHNvIEkgcmVhbGx5IGhvcGVk
IGZvciBzb21lIEFja3MKPiA+IG9yIHNpbWlsYXIgdG8gYXBwZWFyIGluIHRoZSBtZWFudGltZS4K
PiA+Cj4gCj4gRm9yIHNvbWVvbmUgbGlrZSBtZSB3aG8gaXMgb25seSB1c2luZyBtYWlubGluZSB1
LWJvb3QsIGxpbnV4LCBldGMgdGhlbgo+IGhhdmluZyBhIGNvbnNpc3RlbnQgdWFydCBiYXVkIHJh
dGUgYWNyb3NzIGFsbCBjb21wb25lbnRzIGlzIHJlYWxseSB1c2VmdWwuCj4gCj4gT3RoZXJ3aXNl
IEkgZWl0aGVyIGhhdmUgc2VyaWFsIGNvbnNvbGUgZm9yIHUtYm9vdCBvciB0aGUga2VybmVsLCBi
dXQgY2FuJ3QKPiBoYXZlIGJvdGggd29ya2luZyBzbyBpcyBhbm5veWluZy4KPiAKPiBJdCB3b3Vs
ZCBiZSBnb29kIHRvIGhhdmUgYSBkZWZpbml0ZSBhbnN3ZXIgb24gdGhpcy4gU2luY2UgZXZlcnkg
dGltZSB0aGF0Cj4gSSB0cnkgdG8gaGFjayBvbiBteSBQUFAsIEkgZW5kIGNoYW5naW5nIG15IERU
UyBhbmQgcmVtZW1iZXIgdGhpcyBwYXRjaCA6KQoKU28gZmFyIHBlb3BsZSBvbmx5IHJlcG9ydGVk
ICJicmVha3MgbXkgc2V0dXAiLiBJJ20gaW4gYSBwaWNrbGUgaGVyZSA7LSkgLgpXaXRob3V0IGFu
eWJvZHkgc2F5aW5nICJJIHdhbnQgdG8gYWxzbyBtb3ZlIGludG8gdGhpcyBkaXJlY3Rpb24iIEkg
cmVhbGx5CmZlZWwgSSBzaG91bGQgbm90IG1lcmdlIGEgcGF0Y2ggdGhhdCBicmVha3Mgb3RoZXIg
cGVvcGxlcyBzZXR1cHMuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
