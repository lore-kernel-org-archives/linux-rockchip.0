Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC110C77B76
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 14:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwShWXpOyJDyLEN+EQQ/B4yOU08XWzdyw0/VAdnmE7o=; b=4MJ03l/DkGpQMJ
	uEPx7ta8xJQZOSQwEjZv6ka3tg6sPs8S2KiIT38QcOvuR8mycavc+vIsyGD49PWHzdXgzvdR7gT5z
	gYNYjDSzaooCXiKnrFzA6uh5o1l5ddBLfmgntt1ZSRSZrfdPRWQY8/EOILPZc8A/dfUyPDWdFeLQU
	BtggnZIVH9OfJQ+g5auZH2lHQ5GtnHm9GSIUDevQeSxnVKnoVFTluCDOcacA7Xnp78N9ctYCtpl1i
	ljkO0Dt/Lcowuoc+V1CMSCbWyGWoothCgj+rCkqP6GxYPkvP4z5dvk42dQBkPZScPsGJBFCx1RWBV
	YNZO+FNwuyvnhlyCNIew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poPyi-00GemM-2e;
	Mon, 17 Apr 2023 14:37:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poPyf-00Gejm-23;
	Mon, 17 Apr 2023 14:37:11 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1poPyS-0004Nw-FW; Mon, 17 Apr 2023 16:36:56 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: =?utf-8?B?T25kxZllag==?= Jirman <megi@xff.cz>,
 Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, Martijn Braam <martijn@brixit.nl>,
 Caleb Connolly <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject:  Re: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume keys
Date: Mon, 17 Apr 2023 16:36:55 +0200
Message-ID: <3377280.SvYEEZNnvj@diego>
In-Reply-To: <20230417123716.c23izju4ezjrzytn@core>
References:  <20230405123813.2272919-1-pbrobinson@gmail.com> <4152389.RUnXabflUD@diego>
 <20230417123716.c23izju4ezjrzytn@core>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_073709_677121_B7DE5525 
X-CRM114-Status: GOOD (  28.54  )
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

QW0gTW9udGFnLCAxNy4gQXByaWwgMjAyMywgMTQ6Mzc6MTYgQ0VTVCBzY2hyaWViIE9uZMWZZWog
SmlybWFuOgo+IEhlbGxvIEhlaWtvLAo+IAo+IE9uIE1vbiwgQXByIDE3LCAyMDIzIGF0IDEwOjM0
OjIwQU0gKzAyMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+ID4gSGkgUGV0ZXIsIE9uZHJlaiwK
PiA+IAo+ID4gQW0gTWl0dHdvY2gsIDUuIEFwcmlsIDIwMjMsIDE1OjUzOjM5IENFU1Qgc2Nocmll
YiBPbmTFmWVqIEppcm1hbjoKPiA+ID4gWy4uLl0KPiA+ID4KPiA+ID4gKEkgaGF2ZSB0byBwcmVz
cyBxdWl0ZSBoYXJkIHRvIGdldCBiZWxsb3cgMzAwIGFuZCB0byBnZXQgcmVsaWFibGUgZGV0ZWN0
aW9uCj4gPiA+IG9mIHZvbHVtZSBkb3duIGtleSBwcmVzcykKPiA+ID4gCj4gPiA+IE9uIGRldmVs
b3BtZW50IHZlcnNpb24gb2YgdGhlIHBob25lLCB0aGUgdmFsdWUgcmV0dXJuZWQgYnkgc2FyZGFj
IGlzIGxlc3MKPiA+ID4gdmFyaWFibGUuIEJhc2ljYWxseSBlaXRoZXIgMjk4LjgyODEyNSBvciAz
MDAuNTg1OTM3NSBidXQgaXQncyBhbHNvIG9uCj4gPiA+IHRoZSBlZGdlLgo+ID4gPiAKPiA+ID4g
SSBzdWdnZXN0IHJhaXNpbmcgdGhlIHRocmVzaG9sZCB0byBzb21ldGhpbmcgbGlrZSA2MDAgYW5k
IHRvIGRvIHlvdXIgb3duCj4gPiA+IHRlc3RpbmcsIHRvIGdldCBtb3JlIGRhdGEgcG9pbnRzLiBV
bnByZXNzZWQgdmFsdWUgaXMgfjE3OTEuMjEwOTM3NSBvbiBib3RoCj4gPiA+IHBob25lcywgc28g
NDAwIHN0aWxsIGdldHMgYSBsb3Qgb2YgaGVhZHJvb20uIEFuZCB2b2x1bWUgdXAgaXMgYWx3YXlz
IDwgMTUKPiA+ID4gaW4gbXkgdGVzdHMuCj4gPiAKPiA+IGRpZCB0aGlzIGdldCBtb3JlIGF0dGVu
dGlvbiBtZWFud2hpbGU/Cj4gPiAKPiA+IEkgZG9uJ3QgaGF2ZSBhIFBpbmVwaG9uZSBQcm8gbXlz
ZWxmLCBzbyB5b3UnbGwgbmVlZCB0byBkZWNpZGUgYmV0d2VlbiB5b3UKPiA+IGFib3V0IHRoZSB2
YWx1ZSBhbmQgdGhlIGNvbmNlcm4gT25kcmVqIHJhaXNlZCBoZXJlIGZvciB0aGUgdmFsdWUuCj4g
Cj4gSXQncyBzYWZlIGFuZCBuZWVkZWQgdG8gdXNlIGEgaGlnaGVyIHZhbHVlLgoKc28gaW4gYSBu
dXRzaGVsbCwgaWYgSSBjaGFuZ2UgIlZvbHVtZSBEb3duIiB0byBzYXkgNDAwMDAwIGluc3RlYWQg
b2YgdGhlCmN1cnJlbnQgMzAwMDAwLCB0aGUgcGF0Y2ggaXMgZ29vZCB0byBnbz8KCkkuZS4gdGhh
dCB3YXMgbXkgbWFpbiBxdWVzdGlvbiA6LSksIGFzIHlvdSByYWlzZWQgdGhlIG9iamVjdGlvbiB0
byB0aGUgdmFsdWUKaW4geW91ciBpbml0aWFsIHJlcGx5CgpUaGFua3MKSGVpa28KCgoKPiBTQVIg
QURDIGlucHV0IGlzIHB1bGxlZCBoaWdoIHRvIDEuOFYgdW5sZXNzIHNvbWUga2V5IGlzIHByZXNz
ZWQsIHNvIHVucHJlc3NlZAo+IHZhbHVlIHdpbGwgYWx3YXlzIGJlIGFyb3VuZCAxODAwIG9uIGFs
bCBQaW5lcGhvbmVzLCBhbmQgcHJlc3NlZCB2YWx1ZSB3aWxsCj4gZGVwZW5kIG9uIGNvbnRhY3Qg
cXVhbGl0eSBhbmQgdG9sZXJhbmNlcy4gRm9yIHZvbHVtZSBkb3duLCBTQVIgQURDIGlucHV0IGlz
IGZlZAo+IGZyb20gYSByZXNpc3RvciBkaXZpZGVyIG9mICgxMGtPaG0gKyAya09obSkgZnJvbSAx
LjhWIHBvd2VyIHJhaWwuIFNvIHRoYXQgZ2l2ZXMKPiAyLzEyKjEuOCA9IDAuM1YuIFdlIGNhbid0
IGhhdmUgdGhlIHByZXNzIGRldGVjdGlvbiB0aHJlc2hvbGQgcmlnaHQgYXQgdGhpcwo+IHZvbHRh
Z2UsIGJlY2F1c2U6Cj4gCj4gMSkgdGhlc2UgcmVzaXN0b3JzIGhhdmUgdG9sZXJhbmNlcyB0aGF0
IHdpbGwgcmFuZG9tbHkgcmVzdWx0IGluIG1lYXN1cmVkIHZvbHRhZ2UKPiAgICBiZWluZyBhYm92
ZSBvciBiZWxvdyB0aGUgMC4zViBvbiByZWFsIGRldmljZXMgKC0xJSBvbiAxMGsgYW5kICsxJSBv
biAyayA9Cj4gICAgMioxLjAxLygxMCowLjk5KzIqMS4wMSkqMS44ID0gMzA1IG1WIC0gYWxyZWFk
eSB0b28gaGlnaCBldmVuIHdpdGhvdXQKPiAgICBjb25zaWRlcmluZyBzd2l0Y2ggY29udGFjdCBx
dWFsaXR5KSwgYW5kCj4gCj4gMikgdGhvc2UgcGlkZGx5IG1lbWJyYW5lIHN3aXRjaGVzIGFwcGFy
ZW50bHkgaGF2ZSB0aGVpciBvd24gcmFuZG9tIHJlc2lzdGFuY2UKPiAgICB0aGF0IGlzIGFkZGVk
IHRvIHRoZSBib3R0b20gbGVnIG9mIHRoZSByZXNpc3RvciBkaXZpZGVyLCBhbmQgZGVwZW5kcyBv
bgo+ICAgIHN0cmVuZ2h0IG9mIHRoZSBwcmVzcyBvbiBzb21lIGRldmljZXMgKGFuZCBzd2l0Y2hl
cyBtYXkgZGV2ZWxvcCBoaWdoZXIKPiAgICByZXNpc3RhbmNlIHdpdGggYWdlL3VzZSkuCj4gCj4g
U2NoZW1hdGljOiBodHRwczovL21lZ291cy5jb20vZGwvdG1wLzExMjVkOTI0OGE4MjEzYjMucG5n
Cj4gCj4ga2luZCByZWdhcmRzLAo+IAlvLgo+IAo+ID4gVGhhbmtzCj4gPiBIZWlrbwo+IAoKCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
