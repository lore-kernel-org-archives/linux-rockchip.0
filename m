Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 628F4E77182
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 07:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZuYq7cZqSVvF0M5FUZXBi38H86GCy+SSV1QQkcK1VZ0=; b=T2vd3mFI6RboS/Mb1VJR0Kmq5v
	JiLPdhcHNi6m4TXWh/i4UhrrqX7HMNCxaHOM++PLaWxL5CpjWhvl1dru4/ApaqGWrJnOmG77SfoYR
	FsZoVjUYY4NsDGiyHZmcPmTj13OF3k/oHC/YlsDHYZ5QEJvg1+HSIsijJbna02vrRqd4IVkkXtzFj
	B3hgSZIN9eDkE9MQycimU2RlgPvqPeUV6bfr+rZGDbBFdK321+xMhdwMwS/FnGeJqAiA9ACWy+wFr
	zxxR43scJBZ21UzUnBFCFlkF7fMSRVcmQETOAbLFtqD8ftouQ2qO+mFmiJAwcYDEEd+YilLke74t9
	WBcOAwaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLHEW-0000000E4Ix-07el;
	Wed, 11 Dec 2024 07:34:08 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLHDS-0000000E4Bm-0oeC;
	Wed, 11 Dec 2024 07:33:03 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733902380;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gz2g2xIWCKvpFm2gjUfw/XeL0J0V+9S7un6UZm1EU7U=;
	b=AGNzhKLHPaRUqC8zvMa2lNnnBRGsufL9vRHOj2JBd+HHGLWgwbudx7p/s4W8CbwlrA/1sl
	oI27U/WZOQtaKal39CTZbi/YBfzcMrOxE/U8UHSNnbT6sQHX+qYIcgDjhPQtS21Gytn8V9
	H5JHgbyhH1jkOdEOKOpg8oeWRDvJ23VHTJfoZvp3vF97Xk7U+uXdz0UVJ/g2J8+Kutlr8y
	PfO4R5+xakcYmM4tNKkv/QOBTiFJkQyyy27T9YjOA++rqLiau5Y9uflW3fed2Kt6olmyvK
	Uc8qBcPvCiU0xnGyJjn3KyrpJ2XJIrX+gHO5iWkN3twWVVN4wDV4u3XQm0iVDw==
Date: Wed, 11 Dec 2024 08:33:00 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>,
 Diederik de Haas <didi.debian@cknow.org>, Johan Jonker <jbx6244@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 6/6] arm64: dts: rockchip: Remove address aligned beats
 from rk3328-roc
In-Reply-To: <6453e714b2a48572ff1e57cd74b0f6d3@manjaro.org>
References: <20241210013010.81257-1-pgwipeout@gmail.com>
 <20241210013010.81257-7-pgwipeout@gmail.com>
 <2b68c2dd3618e5904a4eac1ec87d29a7@manjaro.org>
 <CAMdYzYpj3d7Rq0O0QjV4r6HEf_e07R0QAhPT2NheZdQV3TnQ6g@mail.gmail.com>
 <6453e714b2a48572ff1e57cd74b0f6d3@manjaro.org>
Message-ID: <e30217fec525af2a3b0e9752b0d1ea31@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_233302_534465_812F923F 
X-CRM114-Status: GOOD (  26.59  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNC0xMi0xMCAxNDo0NCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IE9uIDIwMjQtMTItMTAg
MTI6MjksIFBldGVyIEdlaXMgd3JvdGU6Cj4+IE9uIFR1ZSwgRGVjIDEwLCAyMDI0IGF0IDU6NDXi
gK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gCj4+IHdyb3RlOgo+Pj4gVGhh
bmtzIGZvciB0aGUgcGF0Y2guICBQbGVhc2UsIHNlZSBzb21lIGNvbW1lbnRzIGJlbG93Lgo+Pj4g
Cj4+PiBPbiAyMDI0LTEyLTEwIDAyOjMwLCBQZXRlciBHZWlzIHdyb3RlOgo+Pj4gPiBTaW5jZSBj
b21taXQgOGE0NjllZTM1NjA2ICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCB0eHBibCBub2Rl
IGZvcgo+Pj4gPiBSSzMzOTkvUkszMzI4IiksIHRoZSBzbnBzLGFhbCwgc25wcyx0eHBibCwgYW5k
IHNucHMscnhwYmwgbm9kZXMgaGF2ZQo+Pj4gPiBiZWVuIHVubmVjZXNzYXJ5IGluIHRoZSBzZXBh
cmF0ZSBkZXZpY2UgdHJlZXMuIFRoZXJlIGlzIGFsc28gYQo+Pj4gPiBwZXJmb3JtYW5jZSBsb3Nz
IHRvIHVzaW5nIHNucHMsYWFsLiBSZW1vdmUgdGhlc2UgZnJvbSB0aGUgcmszMzI4LXJvYwo+Pj4g
PiBkZXZpY2UgdHJlZS4KPj4+ID4KPj4+ID4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgR2VpcyA8cGd3
aXBlb3V0QGdtYWlsLmNvbT4KPj4+ID4KPj4+ID4gLS0tCj4+PiA+Cj4+PiA+ICBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2MuZHRzaSB8IDMgLS0tCj4+PiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKPj4+ID4KPj4+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy5kdHNpCj4+PiA+IGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9jLmR0c2kKPj4+ID4gaW5kZXggNjk4NDM4N2ZmOGIz
Li4wZDQ3NmNjMjE0NGQgMTAwNjQ0Cj4+PiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzI4LXJvYy5kdHNpCj4+PiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzI4LXJvYy5kdHNpCj4+PiA+IEBAIC0xNTUsMTIgKzE1NSw5IEBAICZnbWFjMmlv
IHsKPj4+ID4gICAgICAgcGh5LW1vZGUgPSAicmdtaWkiOwo+Pj4gPiAgICAgICBwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwo+Pj4gPiAgICAgICBwaW5jdHJsLTAgPSA8JnJnbWlpbTFfcGlucz47
Cj4+PiA+IC0gICAgIHNucHMsYWFsOwo+Pj4gCj4+PiBIdWgsIEkgc2VlIHRoYXQgcXVpdGUgYSBm
ZXcgUkszMzI4IGJvYXJkIGR0cyBmaWxlcyBzcGVjaWZ5Cj4+PiB0aGUgc25wcyxhYWwgbm9kZS4g
IEkgd29uZGVyIHdhcyBpdCBhICJjYXJnbyBjdWx0IiBhcHByb2FjaAo+Pj4gYXQgcGxheSwgOikg
b3Igd2FzIHRoZXJlIHNvbWUgcmVhbCBuZWVkIGZvciBpdD8KPj4+IAo+Pj4gQWN0dWFsbHksIEkg
c2VlIG5vdyB0aGF0IHlvdSBhZGRlZCBzbnBzLGFhbCB0byByazMzMjgtcm9jLQo+Pj4gY2MuZHRz
IGluIHRoZSBjb21taXQgMzkzZjM4NzVjMzg1ICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6Cj4+PiBp
bXByb3ZlIHJrMzMyOC1yb2MtY2MgcmdtaWkgcGVyZm9ybWFuY2UuIiksIHNvIEkgZ3Vlc3MgdGhh
dAo+Pj4geW91ciBmdXJ0aGVyIHJlc2VhcmNoIGFuZCB0ZXN0aW5nIHNob3dlZCB0aGF0IGl0IGFj
dHVhbGx5Cj4+PiBpc24ndCBuZWVkZWQgZm9yIEV0aGVybmV0IHN0YWJpbGl0eT8KPj4+IAo+Pj4g
PiAgICAgICBzbnBzLHJlc2V0LWdwaW8gPSA8JmdwaW8xIFJLX1BDMiBHUElPX0FDVElWRV9MT1c+
Owo+Pj4gPiAgICAgICBzbnBzLHJlc2V0LWFjdGl2ZS1sb3c7Cj4+PiA+ICAgICAgIHNucHMscmVz
ZXQtZGVsYXlzLXVzID0gPDAgMTAwMDAgNTAwMDA+Owo+Pj4gPiAtICAgICBzbnBzLHJ4cGJsID0g
PDB4ND47Cj4+PiA+IC0gICAgIHNucHMsdHhwYmwgPSA8MHg0PjsKPj4+IAo+Pj4gVW5sZXNzIEkn
bSBtaXNzaW5nIHNvbWV0aGluZywgdGhlIGNvbW1pdCA4YTQ2OWVlMzU2MDYgKCJhcm02NDoKPj4+
IGR0czogcm9ja2NoaXA6IEFkZCB0eHBibCBub2RlIGZvciBSSzMzOTkvUkszMzI4IikgZG9lc24n
dCBhZGQKPj4+IHRoZSBzbnBzLHJ4cGJsIG5vZGUgdG8gdGhlIFJLMzMyOCBTb0MgZHRzaSwgYW5k
IHRoZSByZXNwZWN0aXZlCj4+PiBkcml2ZXIgZG9lcyBub3RoaW5nIGFib3V0IGl0IHdoZW4gdGhl
IHNucHMsdHhwYmwgbm9kZSBpcyBmb3VuZC4KPj4+IAo+Pj4gVGhvdWdoLCBJIHNlZSB0aGF0IHJr
MzMyOC1yb2NrLXBpLWUuZHRzIGlzIHRoZSBvbmx5IG90aGVyCj4+PiBSSzMzMjggYm9hcmQgZHRz
IGZpbGUgdGhhdCBzcGVjaWZpZXMgdGhlIHNucHMscnhwYmwgbm9kZSwgc28KPj4+IGl0IHNlZW1z
IHRoYXQgcmVtb3ZpbmcgdGhlIHNucHMscnhwYmwgbm9kZSBoZXJlIHNob3VsZCBiZSBzYWZlLAo+
Pj4gZXNwZWNpYWxseSBiZWNhdXNlIGl0IHdhcyB5b3Ugd2hvIGFkZGVkIGl0IGluIHRoZSBzYW1l
IGNvbW1pdAo+Pj4gbWVudGlvbmVkIGFib3ZlLiAgSWYgdGhlcmUgd2VyZSBzb21lIFNvQy1sZXZl
bCBpc3N1ZXMsIGFsbAo+Pj4gUkszMzI4IGJvYXJkcyB3b3VsZCd2ZSBuZWVkZWQgaXQuCj4+IAo+
PiBHb29kIE1vcm5pbmcsCj4+IAo+PiBZb3UnbGwgbm90aWNlIHRoZSBhdXRob3Igb2YgdGhhdCBw
YXRjaCB3YXMgbWUuIFNldHRpbmcgYWFsLCB0eHBibCwgYW5kCj4+IHJ4cGJsIHdhcyB0aGUgb3Jp
Z2luYWwgZml4IEkgY2FtZSB1cCB3aXRoIGZvciB0aGUgcmszMzI4LCB3aGljaCBJCj4+IGFwcGxp
ZWQgdG8gdGhlIG9ubHkgYm9hcmQgSSBoYWQuIFNvbWVvbmUgZWxzZSBsYXRlciBvbiBpc29sYXRl
ZCBpdAo+PiBzcGVjaWZpY2FsbHkgaXNvbGF0ZWQgaXQgdG8ganVzdCB0aGUgdHhwYmwgYW5kIGFw
cGxpZWQgaXQgdG8gYm90aCB0aGUKPj4gcmszMzI4IGFuZCByazMzOTkgZGlyZWN0bHkuCj4+IAo+
PiBUaGlzIHdhcyBqdXN0IHNvbWV0aGluZyB0aGF0IHdhcyBsZWZ0IGhhbmdpbmcgYWZ0ZXIgdGhh
dCByZXN1bHQuCj4+IAo+PiBMb29raW5nIGF0IGhvdyByazM1Nnggd2FzIGRvbmUsIEkgc3VzcGVj
dCB0aGVyZSdzIGFuIGV2ZW4gbW9yZSBlbGVnYW50Cj4+IHNvbHV0aW9uLiBIb3dldmVyIEkgZG9u
J3QgaGF2ZSB0aGUgZGVlcCBsZXZlbCBrbm93bGVkZ2Ugbm9yCj4+IGRvY3VtZW50YXRpb24gdG8g
aW1wbGVtZW50IGl0Lgo+IAo+IFN1cmUsIEkgbm90aWNlZCB0aGF0IHlvdSBhdXRob3JlZCB0aGUg
b3JpZ2luYWwgRXRoZXJuZXQgc3RhYmlsaXR5Cj4gZml4LiA6KSAgV2l0aCBhbGwgdGhpcyBpbiBt
aW5kLCBwbGVhc2UgZmVlbCBmcmVlIHRvIGluY2x1ZGUKPiAKPiBSZXZpZXdlZC1ieTogRHJhZ2Fu
IFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4gCj4gYW5kIEknbGwgcHJlcGFyZSBhIHBhdGNo
IG9yIHR3byB0aGF0IGNsZWFuIHVwIGFueSBhbmQgYWxsIGxlZnRvdmVycwo+IGluIG90aGVyIGJv
YXJkIGR0cyhpKSBmaWxlcy4KCkZvciBmdXR1cmUgcmVmZXJlbmNlLCB0byBoZWxwIGFueW9uZSBn
b2luZyB0aHJvdWdoIHRoZSBtYWlsaW5nLWxpc3QKYXJjaGl2ZSwgaGVyZSdzIGEgbGluayB0byB0
aGUgYWJvdmUtbWVudGlvbmVkIGNsZWFudXAgcGF0Y2g6CgpodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1yb2NrY2hpcC9lMDBmMDhkMjM1MWU4MmQ2YWNkNTYyNzFhNjhjN2VkMDViMzM2MmU4
LjE3MzM5MDE4OTYuZ2l0LmRzaW1pY0BtYW5qYXJvLm9yZy9ULyN1CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
