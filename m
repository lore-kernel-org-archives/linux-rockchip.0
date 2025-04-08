Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BF01C36010
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 21:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1nPX0pwC8XppwW8/fbyb79Okt6DNG8+zT5nan5BWnc=; b=QXCcJr9E48uH1K
	jaWpEpsisrk3h2ayZKpuzmz/4qO/j+i3JLbCztBbspl7kPQuON7669wS8KI1DZKv+KKi61W5NtM1F
	lkIce0qVdVKto2qpCNwIylxQadvxIdsKYj4nnIbWYBJ/Owg7oXbbQ276GJcI4Sm6EGp4EGuhM2wBR
	CO0Qv7uEWlIorkfYi4UsJWjpXk8IbFGczZyruRUVa76Bls0I0N3P/ZxkK8tebT3LzsbNdkHlOKsUU
	tGAofsTo7LBvyd5sIYKDBo0qJU9+Z6Hnj3qyVjpD3MUag9tJHhbfUnV4QfiGVt+KXF/6ntU/K0krs
	L5lBNH1KEavchZDPcsXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2GCx-00000005PgA-3ZL8;
	Tue, 08 Apr 2025 21:10:11 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2GBA-00000005PR1-1DWL;
	Tue, 08 Apr 2025 21:08:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1744146498;
	bh=btv7qpy1infRfUdBialPoFlIqUVev+DgGGoAYqlmeoA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=IlTUpTVuDoSHh8D2w8BBHEwqNEthjw8u8veSmEE5tDglQdaxC8deyyDC84l6LTV5K
	 MIyLlFJn8iMsLrDc4SbEPwO0wdetGq10/OCMXH2RdISAEZL0TnNihDvTHFpK9o92Nk
	 5U9OYg6mE5ROd6aSczX1fx0NePLlG0Ui5jSmTv2r1W7PnL0YzExT2ACE0SnCmwaZ8X
	 wG57b4tguLmc0piw0nAqPUMlMMG4yrCpWLnRdygjnMCdjfvAeRL6tjJr//aE25X/Sg
	 0y4lqvrzteQGXlxXgNZqJoe6fbmZ116euundZtaq50/KHorTFNLl+ZCiu4+Q9afkJS
	 GQDq7NOGwGH8Q==
Received: from [IPv6:2606:6d00:11:e976::5ac] (unknown [IPv6:2606:6d00:11:e976::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A01F517E0EB8;
	Tue,  8 Apr 2025 23:08:14 +0200 (CEST)
Message-ID: <fd471fe44a57e1b0c74505f2a7122b62241809d5.camel@collabora.com>
Subject: Re: [PATCH v4 1/6] media: v4l2: Add NV15 and NV20 pixel formats
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Diederik de Haas <didi.debian@cknow.org>, Detlev Casanova
	 <detlev.casanova@collabora.com>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab	
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner	
 <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Hans
 Verkuil <hverkuil@xs4all.nl>, Andrzej Pietrasiewicz
 <andrzej.p@collabora.com>, Jonas Karlman	 <jonas@kwiboo.se>, Sebastian
 Reichel <sebastian.reichel@collabora.com>,  Niklas Cassel
 <cassel@kernel.org>, Alexey Charkov <alchark@gmail.com>, Dragan Simic
 <dsimic@manjaro.org>,  Jianfeng Liu <liujianfeng1994@gmail.com>, Jacopo
 Mondi <jacopo.mondi@ideasonboard.com>, Sakari Ailus	
 <sakari.ailus@linux.intel.com>, Kieran Bingham
 <kieran.bingham@ideasonboard.com>,  Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Umang Jain
 <umang.jain@ideasonboard.com>, Naushir Patuck	 <naush@raspberrypi.com>,
 Jean-Michel Hautbois	 <jeanmichel.hautbois@ideasonboard.com>, Dmitry
 Perchanov	 <dmitry.perchanov@intel.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, 	devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, 	linux-staging@lists.linux.dev,
 kernel@collabora.com, 	linux-kernel@vger.kernel.org
Date: Tue, 08 Apr 2025 17:08:13 -0400
In-Reply-To: <D8SA0W2ZEAQ3.3BO4NMONFJCRC@cknow.org>
References: <20250325213303.826925-1-detlev.casanova@collabora.com>
	 <20250325213303.826925-2-detlev.casanova@collabora.com>
	 <D8SA0W2ZEAQ3.3BO4NMONFJCRC@cknow.org>
Organization: Collabora Canada
User-Agent: Evolution 3.56.0 (3.56.0-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_140820_474292_D2AD19A2 
X-CRM114-Status: GOOD (  23.89  )
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

TGUgc2FtZWRpIDI5IG1hcnMgMjAyNSDDoCAwMDowOSArMDEwMCwgRGllZGVyaWsgZGUgSGFhcyBh
IMOpY3JpdMKgOgo+IEhpIERldGxldiwKPiAKPiBPbiBUdWUgTWFyIDI1LCAyMDI1IGF0IDEwOjIy
IFBNIENFVCwgRGV0bGV2IENhc2Fub3ZhIHdyb3RlOgo+ID4gRnJvbTogSm9uYXMgS2FybG1hbiA8
am9uYXNAa3dpYm9vLnNlPgo+ID4gCj4gPiBBZGQgTlYxNSBhbmQgTlYyMCBwaXhlbCBmb3JtYXRz
IHVzZWQgYnkgdGhlIFJvY2tjaGlwIFZpZGVvIERlY29kZXIgZm9yCj4gPiAxMC1iaXQgYnVmZmVy
cy4KPiA+IAo+ID4gTlYxNSBhbmQgTlYyMCBpcyAxMC1iaXQgNDoyOjAvNDoyOjIgc2VtaS1wbGFu
YXIgWVVWIGZvcm1hdHMgc2ltaWxhciB0bwo+ID4gTlYxMiBhbmQgTlYxNiwgdXNpbmcgMTAtYml0
IGNvbXBvbmVudHMgd2l0aCBubyBwYWRkaW5nIGJldHdlZW4gZWFjaAo+ID4gY29tcG9uZW50LiBJ
bnN0ZWFkLCBhIGdyb3VwIG9mIDQgbHVtaW5hbmNlL2Nocm9taW5hbmNlIHNhbXBsZXMgYXJlCj4g
PiBzdG9yZWQgb3ZlciA1IGJ5dGVzIGluIGxpdHRsZSBlbmRpYW4gb3JkZXI6Cj4gPiAKPiA+IFlZ
WVkgPSBVVlVWID0gNCAqIDEwIGJpdHMgPSA0MCBiaXRzID0gNSBieXRlcwo+ID4gCj4gPiBUaGUg
JzE1JyBhbmQgJzIwJyBzdWZmaXggcmVmZXJzIHRvIHRoZSBvcHRpbXVtIGVmZmVjdGl2ZSBiaXRz
IHBlciBwaXhlbAo+ID4gd2hpY2ggaXMgYWNoaWV2ZWQgd2hlbiB0aGUgdG90YWwgbnVtYmVyIG9m
IGx1bWluYW5jZSBzYW1wbGVzIGlzIGEKPiA+IG11bHRpcGxlIG9mIDggZm9yIE5WMTUgYW5kIDQg
Zm9yIE5WMjAuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3
aWJvby5zZT4KPiA+IFRlc3RlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNu
ZUBjb2xsYWJvcmEuY29tPgo+ID4gVGVzdGVkLWJ5OiBDaHJpc3RvcGhlciBPYmJhcmQgPGNocmlz
Lm9iYmFyZEBjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4gPiDCoC4uLi9tZWRpYS92NGwvcGl4Zm10
LXl1di1wbGFuYXIucnN0wqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMjggKysrKysrKysrKysrKysr
KysrCj4gPiDCoGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY29tbW9uLmPCoMKgwqDCoMKg
wqDCoMKgIHzCoMKgIDIgKwo+ID4gwqBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3Rs
LmPCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMiArCj4gPiDCoGluY2x1ZGUvdWFwaS9saW51eC92
aWRlb2RldjIuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAyICsKPiA+IMKg
NCBmaWxlcyBjaGFuZ2VkLCAxMzQgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9waXhmbXQteXV2LXBsYW5hci5y
c3QgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL3BpeGZtdC15dXYtcGxh
bmFyLnJzdAo+ID4gaW5kZXggYjc4OGY2OTMzODU1NC4uMjJjYWQ4Yzk3MjZiZiAxMDA2NDQKPiA+
IC0tLSBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvcGl4Zm10LXl1di1w
bGFuYXIucnN0Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRs
L3BpeGZtdC15dXYtcGxhbmFyLnJzdAo+ID4gQEAgLTc5LDYgKzc5LDEzIEBAIEFsbCBjb21wb25l
bnRzIGFyZSBzdG9yZWQgd2l0aCB0aGUgc2FtZSBudW1iZXIgb2YgYml0cyBwZXIgY29tcG9uZW50
Lgo+ID4gwqDCoMKgwqDCoMKgIC0gQ3IsIENiCj4gPiDCoMKgwqDCoMKgwqAgLSBZZXMKPiA+IMKg
wqDCoMKgwqDCoCAtIExpbmVhcgo+ID4gK8KgwqDCoCAqIC0gVjRMMl9QSVhfRk1UX05WMTUKPiA+
ICvCoMKgwqDCoMKgIC0gJ05WMTUnCj4gPiArwqDCoMKgwqDCoCAtIDEwCj4gPiArwqDCoMKgwqDC
oCAtIDQ6MjowCj4gPiArwqDCoMKgwqDCoCAtIENiLCBDcgo+ID4gK8KgwqDCoMKgwqAgLSBZZXMK
PiA+ICvCoMKgwqDCoMKgIC0gTGluZWFyCj4gCj4gSW4geW91ciBjb3ZlciBsZXR0ZXIgeW91IG1l
bnRpb25lZDoKPiBJbXBvcnRlZCBpbXByb3ZlbWVudHMgZnJvbSBbMV0KPiBbMV06IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LW1lZGlhLzIwMjUwMjI1LXJrdmRlY19oMjY0X2hpZ2gxMF9h
bmRfNDIyX3N1cHBvcnQtdjctMi03OTkyYTY4YTQ5MTBAY29sbGFib3JhLmNvbS8KPiAKPiBUaGUg
Y2hhbmdlbG9nIG9mICJtZWRpYTogcmt2ZGVjOiBBZGQgSC4yNjQgSGlnaCAxMCBhbmQgNDoyOjIg
cHJvZmlsZQo+IHN1cHBvcnQiIHY3IGhhZCB0aGlzOgo+IC0gTW92ZSBWNEwyX1BJWF9GTVRfTlYx
NS9WNEwyX1BJWF9GTVRfTlYyMCBkb2N1bWVudGF0aW9uIGFzIHN1Z2dlc3RlZAo+IAo+IEZvbGxv
d2luZyBhIGNvbW1lbnQgb24gdjYgb2YgdGhhdCBzZXJpZXMuCj4gCj4gQnV0IGl0IHNlZW1zIHRo
ZXNlIGJsb2NrcyBhcmUgbm93IHBsYWNlZCBhdCB0aGUgbG9jYXRpb24gYXMgaXQgd2FzIGluCj4g
dGhlIHY2IHNlcmllcywgdGh1cyBOT1QgaW1wb3J0aW5nIGl0cyBpbXByb3ZlbWVudHM/CgpUaGUg
b3RoZXIgc2VyaWVzIGhhdmUgYmVlbiBwYXJ0aWFsbHkgYWNjZXB0ZWQgaW50byBtZWRpYS1jb21t
aXRlcnMgbmV4dApicmFuY2gsIGluY2x1ZGluZyB0aGlzIHBhdGNoLiBNZWFuaW5nIHlvdSBjYW4g
c2ltcGx5IHJlbW92ZSB0aGF0IHBhdGNoCmluIHlvdXIgbmV4dCBzdWJtaXNzaW9uLgoKcmVnYXJk
cywKTmljb2xhcwoKPiAKPiA+IMKgwqDCoMKgICogLSBWNEwyX1BJWF9GTVRfTlYxMk0KPiA+IMKg
wqDCoMKgwqDCoCAtICdOTTEyJwo+ID4gwqDCoMKgwqDCoMKgIC0gOAo+ID4gQEAgLTE3Miw2ICsx
NzksMTMgQEAgQWxsIGNvbXBvbmVudHMgYXJlIHN0b3JlZCB3aXRoIHRoZSBzYW1lIG51bWJlciBv
ZiBiaXRzIHBlciBjb21wb25lbnQuCj4gPiDCoMKgwqDCoMKgwqAgLSBDciwgQ2IKPiA+IMKgwqDC
oMKgwqDCoCAtIFllcwo+ID4gwqDCoMKgwqDCoMKgIC0gTGluZWFyCj4gPiArwqDCoMKgICogLSBW
NEwyX1BJWF9GTVRfTlYyMAo+ID4gK8KgwqDCoMKgwqAgLSAnTlYyMCcKPiA+ICvCoMKgwqDCoMKg
IC0gMTAKPiA+ICvCoMKgwqDCoMKgIC0gNDoyOjIKPiA+ICvCoMKgwqDCoMKgIC0gQ2IsIENyCj4g
PiArwqDCoMKgwqDCoCAtIFllcwo+ID4gK8KgwqDCoMKgwqAgLSBMaW5lYXIKPiA+IMKgwqDCoMKg
ICogLSBWNEwyX1BJWF9GTVRfTlYxNk0KPiA+IMKgwqDCoMKgwqDCoCAtICdOTTE2Jwo+ID4gwqDC
oMKgwqDCoMKgIC0gOAo+IAo+IFRoZSBzYW1lIHRoaW5nIHNlZW1lZCB0byBoYXZlIGhhcHBlbmVk
IGhlcmU/Cj4gCj4gQ2hlZXJzLAo+IMKgIERpZWRlcmlrCj4gCj4gPiBAQCAtMzAyLDYgKzMxNiw1
NyBAQCBvZiB0aGUgbHVtYSBwbGFuZS4KPiA+IMKgwqDCoMKgwqDCoCAtIENyXCA6c3ViOmAxMWAK
PiA+IMKgCj4gPiDCoAo+ID4gKy4uIF9WNEwyLVBJWC1GTVQtTlYxNToKPiA+ICsKPiA+ICtOVjE1
Cj4gPiArLS0tLQo+ID4gKwo+ID4gK1NlbWktcGxhbmFyIDEwLWJpdCBZVVYgNDoyOjAgZm9ybWF0
IHNpbWlsYXIgdG8gTlYxMiwgdXNpbmcgMTAtYml0IGNvbXBvbmVudHMKPiA+ICt3aXRoIG5vIHBh
ZGRpbmcgYmV0d2VlbiBlYWNoIGNvbXBvbmVudC4gQSBncm91cCBvZiA0IGNvbXBvbmVudHMgYXJl
IHN0b3JlZCBvdmVyCj4gPiArNSBieXRlcyBpbiBsaXR0bGUgZW5kaWFuIG9yZGVyLgo+ID4gKwo+
ID4gKy4uIGZsYXQtdGFibGU6OiBTYW1wbGUgNHg0IE5WMTUgSW1hZ2UgKDEgYnl0ZSBwZXIgY2Vs
bCkKPiA+ICvCoMKgwqAgOmhlYWRlci1yb3dzOsKgIDAKPiA+ICvCoMKgwqAgOnN0dWItY29sdW1u
czogMAoKLS0gCk5pY29sYXMgRHVmcmVzbmUKUHJpbmNpcGFsIEVuZ2luZWVyIGF0IENvbGxhYm9y
YQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
