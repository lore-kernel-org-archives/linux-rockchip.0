Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55EF6CCA476
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Oct 2025 22:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=av9Zj7awcWoTJm8fgUQwlGcLvKB/WNJJGl/LbrmfY+U=; b=dd5NYXo46+JK+H
	iCYC3xM23OlqD0kZEtdB+PleXccUXuL432qtjKFpqJzfruAjZmJRTGYs2p6+d01lc/Wb1S8w8257V
	IEqILA0p5Aj7M//VYAI78k8Rym/tSDlKO1gSfEnDBUOlxESMEBxSYkbRlsOgFXl2+pLXTBW+aoklw
	9IM+6hmMtY60r5GyH01Z1d0wdEjsHJeVThBULjHjkeP1SoF/KBFh//3S9BZ3ouh5MUisGwtksb9lP
	/a1fXqNjd6kRnEx/4P9WbRTCoooUMRTxDhjKFcS5tlZaHUmNItu+LsKb7Z034EAoXsjpp0VBR8KTd
	qnsWRUHuU9hkLzCu1l5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5AUw-0000000E2Mh-3aXo;
	Sat, 04 Oct 2025 22:13:02 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5AUt-0000000E2M0-0K34;
	Sat, 04 Oct 2025 22:13:00 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id D30481122;
	Sun,  5 Oct 2025 00:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759615886;
	bh=7zEwwoz1R8HCIU2ON8dWFrotExTqbGgAuger8knEtgk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b0MSsN2rG0CHm9cHh8Ccb25wlOQttazTuJMD+1IbS+A1l3O4HS8wQwjAG7bOROaNL
	 6kqxRDKfBAF2fqU59tTgvgGG3fLq58DHcqjZ4MsSGvd0g06cGcBOZHG8Z6PeRKeiwO
	 Z+16nL1xoTtpEkIUfH4qf2mNivZX3ofOU+Tz9ZsM=
Date: Sun, 5 Oct 2025 01:12:50 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base
 device tree
Message-ID: <20251004221250.GD20317@pendragon.ideasonboard.com>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
 <20251002034708.19248-4-laurent.pinchart@ideasonboard.com>
 <CALWfF7Lhz2brif4xepWZ71mRqMmXKzxqd=0_hO_b6aF6_GkffQ@mail.gmail.com>
 <20251003023955.GA1492@pendragon.ideasonboard.com>
 <CALWfF7K19Pa5889Kp_rDLD8nDxMEhqMb6er1tKYkTV906fRWXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALWfF7K19Pa5889Kp_rDLD8nDxMEhqMb6er1tKYkTV906fRWXw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251004_151259_259300_63A56547 
X-CRM114-Status: GOOD (  28.27  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Cenk Uluisik <cenk.uluisik@googlemail.com>, Muhammed Efe Cetin <efectn@6tel.net>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Algea Cao <algea.cao@rock-chips.com>, Ondrej Jirman <megi@xff.cz>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBPY3QgMDMsIDIwMjUgYXQgMDk6NDc6NDBQTSAtMDUwMCwgSmltbXkgSG9uIHdyb3Rl
Ogo+IE9uIFRodSwgT2N0IDIsIDIwMjUgYXQgOTo0MOKAr1BNIExhdXJlbnQgUGluY2hhcnQgd3Jv
dGU6Cj4gPiBPbiBUaHUsIE9jdCAwMiwgMjAyNSBhdCAwNzowMTo1M1BNIC0wNTAwLCBKaW1teSBI
b24gd3JvdGU6Cj4gPiA+IEEgZmV3IG5pdHBpY2tzIGJlbG93Cj4gPiA+Cj4gPiA+IFsgc25pcCBd
Cj4gPiA+ID4gKwo+ID4gPiA+ICsjaW5jbHVkZSAicmszNTg4cy1vcmFuZ2VwaS1jbTUuZHRzaSIK
PiA+ID4gPiArCj4gPiA+ID4gKy8gewo+ID4gPiA+ICsgICAgICAgbW9kZWwgPSAiWHVubG9uZyBP
cmFuZ2UgUGkgQ001IEJhc2UiOwo+ID4gPiA+ICsgICAgICAgY29tcGF0aWJsZSA9ICJ4dW5sb25n
LG9yYW5nZXBpLWNtNS1iYXNlIiwgInh1bmxvbmcsb3JhbmdlcGktY201IiwgInJvY2tjaGlwLHJr
MzU4OHMiOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIGFsaWFzZXMgewo+ID4gPiA+ICsgICAg
ICAgICAgICAgICBldGhlcm5ldDAgPSAmZ21hYzE7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIG1t
YzAgPSAmc2RoY2k7Cj4gPiA+Cj4gPiA+IFNpbmNlIHNkaGNpIGlzIGVuYWJsZWQgaW4gdGhlIFNv
TS5kdHNpLCB0aGlzIGFsaWFzIHNob3VsZCBwcm9iYWJseSBnbwo+ID4gPiB0aGVyZSBpbnN0ZWFk
Lgo+ID4KPiA+IEdvb2QgcG9pbnQsIEknbGwgZG8gdGhhdC4KPiA+Cj4gPiA+ID4gKyAgICAgICAg
ICAgICAgIG1tYzEgPSAmc2RtbWM7Cj4gPiA+ID4gKyAgICAgICB9Owo+ID4gPiA+ICsKPiA+ID4K
PiA+ID4gWyBzbmlwIF0KPiA+ID4KPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICB2YnVzXzV2MDog
dmJ1cy01djAgewo+ID4gPiA+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRv
ci1maXhlZCI7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZidXNf
NXYwIjsKPiA+ID4gPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8
NTAwMDAwMD47Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0
ID0gPDUwMDAwMDA+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICBlbmFibGUtYWN0aXZlLWhpZ2g7
Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIGdwaW8gPSA8JmdwaW8wIFJLX1BEMyBHUElPX0FDVElW
RV9ISUdIPjsKPiA+ID4gPiArICAgICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjNXYwX3N5
cz47Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4g
PiA+ID4gKyAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdmJ1c181djBfZW5fcGluPjsKPiA+
ID4KPiA+ID4gVGhlIHByb3BlcnR5IG5hbWVzIGluIHRoZXNlIHJlZ3VsYXRvcnMgYXJlIG5vdCBh
cyBvcmdhbml6ZWQgYXMgdGhlCj4gPiA+IHJlZ3VsYXRvcnMgZm9yIHRoZSBDUFUvTlBVLgo+ID4K
PiA+IFdoaWNoIHByb3BlcnRpZXMgaW4gcGFydGljdWxhciA/IFRoZXJlIGFyZSBtb3JlIHByb3Bl
cnRpZXMgaW4gdGhlc2UKPiA+IHJlZ3VsYXRvcnMsIGJ1dCBvdGhlcndpc2UgdGhlIG9yZGVyIHNl
ZW0gdG8gbWF0Y2guCj4gPgo+ID4gPiA+ICsgICAgICAgfTsKPiA+ID4gPiArCj4gPiA+ID4gKyAg
ICAgICB2Y2NfM3YzOiByZWd1bGF0b3ItdmNjLTN2MyB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAg
IGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ID4gPiArICAgICAgICAgICAgICAg
cmVndWxhdG9yLW5hbWUgPSAidmNjXzN2MyI7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIHJlZ3Vs
YXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICBy
ZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiA+ID4gPiArICAgICAgICAgICAg
ICAgc3RhcnR1cC1kZWxheS11cyA9IDw1MDAwMD47Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIGVu
YWJsZS1hY3RpdmUtaGlnaDsKPiA+ID4gPiArICAgICAgICAgICAgICAgZ3BpbyA9IDwmZ3BpbzQg
UktfUEEzIEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICB2aW4tc3Vw
cGx5ID0gPCZ2Y2M1djBfc3lzPjsKPiA+ID4gPiArICAgICAgICAgICAgICAgcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsKPiA+ID4gPiArICAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZ2Y2Nf
M3YzX2VuX3Bpbj47Cj4gPiA+ID4gKyAgICAgICB9Owo+Cj4gVGhlIG1ham9yaXR5IG9mIHRoZSBw
cm9wZXJ0aWVzIHNob3VsZCBiZSBpbiBhbHBoYWJldGljYWwgb3JkZXIuIFNvIHRoZQo+IHN0YXJ0
dXAtZGVsYXktdXMgYW5kIHZpbi1zdXBwbHkgYXJlIG91dCBvZiBwbGFjZS4KCk9LIEknbGwgbW92
ZSB0aG9zZS4KCj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgICAgdmNjNXYwX3N5czogcmVndWxhdG9y
LXZjYy01djAgewo+ID4gPiA+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRv
ci1maXhlZCI7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYzV2
MF9zeXMiOwo+ID4gPiA+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4g
PiA+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItYm9vdC1vbjsKPiA+ID4gPiArICAgICAgICAg
ICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4gPiA+ID4gKyAgICAg
ICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ID4gPiA+ICsg
ICAgICAgfTsKPiA+ID4gPiArfTsKPiA+ID4KPiA+ID4gWyBzbmlwIF0KPiA+ID4KPiA+ID4gPiAr
Cj4gPiA+ID4gKyZnbWFjMSB7Cj4gPiA+ID4gKyAgICAgICBjbG9ja19pbl9vdXQgPSAib3V0cHV0
IjsKPiA+ID4gPiArICAgICAgIHBoeS1oYW5kbGUgPSA8JnJnbWlpX3BoeT47Cj4gPiA+ID4gKyAg
ICAgICBwaHktbW9kZSA9ICJyZ21paS1pZCI7Cj4gPiA+ID4gKyAgICAgICBwaHktc3VwcGx5ID0g
PCZ2Y2NfM3YzPjsKPiA+ID4gPiArICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4g
PiA+ID4gKyAgICAgICBwaW5jdHJsLTAgPSA8JmdtYWMxX21paW0KPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAmZ21hYzFfcnhfYnVzMgo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICZn
bWFjMV90eF9idXMyCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgJmdtYWMxX3JnbWlpX2Ns
awo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICZnbWFjMV9yZ21paV9idXM+Owo+ID4gPiA+
ICsgICAgICAgdHhfZGVsYXkgPSA8MHg0Mj47Cj4gPiA+Cj4gPiA+IFdoZW4gdXNpbmcgInJnbWlp
LWlkIiwgdHhfZGVsYXkgd2lsbCBiZSBpZ25vcmVkLiBEb2VzIHRoZSBldGhlcm5ldAo+ID4gPiB3
b3JrIHdpdGhvdXQgdGhpcyBwcm9wZXJ0eT8KPiA+Cj4gPiBJIGhhdmUgdG8gY29uZmVzcyB0aGlz
IHdhcyBibGluZGx5IGNvcGllZCBmcm9tIHRoZSBCU1AgOi0vIEknbGwgZHJvcCB0aGUKPiA+IHBy
b3BlcnR5IGFuZCB0ZXN0Lgo+ID4KPiA+ID4gU2VlIHRoZSBjb21tZW50IGJ5IEpvbmFzIGluIGFu
b3RoZXIgcmV2aWV3Lgo+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hp
cC9kYTc1Mjc5MC1kYTE3LTRkMjYtYjliMi04MjQwYjM4YjMyNzZAa3dpYm9vLnNlLwo+ID4gPgo+
ID4gPiA+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPiA+ICt9Owo+ID4gPiA+ICsKPiA+
ID4gPiArJmdwdSB7Cj4gPiA+ID4gKyAgICAgICBtYWxpLXN1cHBseSA9IDwmdmRkX2dwdV9zMD47
Cj4gPiA+ID4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiA+ID4gK307Cj4gPiA+Cj4gPiA+
IFRoaXMgaXMgYSBmZWF0dXJlIGluIHRoZSBTb0MgaXRzZWxmLCBzbyBpdCdzIG5vdCBib2FyZCBz
cGVjaWZpYyBhbmQKPiA+ID4gY2FuIGJlIHB1dCBpbnRvIHRoZSBTb00uZHRzaS4KPiA+Cj4gPiBJ
J20gYSBiaXQgaW4gdHdvIG1pbmRzIGhlcmUuIElmIGEgY2FycmllciBib2FyZCBkb2Vzbid0IGhh
dmUgYSBkaXNwbGF5Cj4gPiBvdXRwdXQsIHRoZSBHUFUgaXNuJ3QgdmVyeSB1c2VmdWwgKGFsdGhv
dWdoIGluIHRoZW9yeSB0aGUgR1BVIGNhbiBiZQo+ID4gdXNlZCB3aXRob3V0IGEgZGlzcGxheSku
IFRoYXQncyB3aHkgSSBkZWNpZGVkIHRvIGVuYWJsZSBpdCBpbiB0aGUKPiA+IGNhcnJpZXIgYm9h
cmQuIEkgc3VwcG9zZSBpdCBkb2Vzbid0IGh1cnQgdG8gZW5hYmxlIGl0IGluIHRoZSBTb00sIHdv
cnN0Cj4gPiBjYXNlIGl0IHdvbid0IGJlIHVzZWQgYW5kIHNvIHdvbid0IGJlIHBvd2VyZWQgdXAu
IEknbGwgbW92ZSBpdCB0byB0aGUKPiA+IFNvTS4KPgo+IFRoZSBuaWNlIHRoaW5nIGFib3V0IHRo
ZSBHNjEwIEdQVSBpcyB0aGF0IE9wZW5DTCBzdXBwb3J0IHZpYSBNZXNhJ3MKPiBSdXN0SUNMIHdh
cyBhZGRlZCBlYXJsaWVyIHRoaXMgeWVhci4gU28gZXZlbiBpbiBhIGhlYWRsZXNzIGNsdXN0ZXIs
Cj4gdGhlIEdQVSBjYW4gc3RpbGwgYmUgdXNlZnVsLgoKWWVzLCB0aGF0J3Mgd2h5IEkgZGVjaWRl
ZCB0byBtb3ZlIGl0IHRvIHRoZSBTb00gaW4gdGhlIGVuZC4KCj4gPiA+IFsgc25pcCBdCj4gPiA+
Cj4gPiA+ID4gKwo+ID4gPiA+ICsmcGRfZ3B1IHsKPiA+ID4gPiArICAgICAgIGRvbWFpbi1zdXBw
bHkgPSA8JnZkZF9ncHVfczA+Owo+ID4gPiA+ICt9Owo+ID4gPgo+ID4gPiBTYW1lIGNvbW1lbnQg
cmVnYXJkaW5nIG1vdmluZyB0byB0aGUgU29NLmR0c2kKPiA+Cj4gPiBPSy4KCi0tIApSZWdhcmRz
LAoKTGF1cmVudCBQaW5jaGFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
