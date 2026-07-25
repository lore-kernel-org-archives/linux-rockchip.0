Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8A0EC531D0
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jul 2026 14:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:Cc:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qd0MJxyEYaoXHZpKn/aDpwSj68SLa7MqQIBQks2hCw=; b=pkti2JMME3bWXj
	MRImVPpH0sgKj123uUhK9u6DWBAg19oG0RBQy5/pQTemzg7jzCJUGehwNFrQFstcxgNeF+rso01fn
	8wnupOD2XvybYEgxkpgVTNIRQj7067f75aWbvSXPUsMlc1Wk5v3jWJI057e3loEceJl5GGIHyybjy
	oUoMnaF9ZqtKMWCOTPZS5FO/gzrIyKJVO3hefr8YIRx0vFRCUdyi4KJcO1FAdhO+Ioxzk+tVj69Yg
	q2i3IsFoHI+6C152Hy4Wbd5ZIm0KHBjVyjcwtt4M9ajS9ZPMeuLO8ucyGA0L4rf5Kn1MAcVJJGLKy
	vIDt8Zn+qHPvooZW1meA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnd8k-00000000QWd-2Hm2;
	Sat, 25 Jul 2026 14:14:10 +0000
Received: from out-177.mta1.migadu.com ([95.215.58.177])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnd8f-00000000QVh-3rp7
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Jul 2026 14:14:09 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1784988826;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aurhGwZBtBlsxKOKCfqWZVexhQ9NLkHWaOYsLZ76OpY=;
	b=da3/HJr1HSGbmZyx2j9hWWmH/1NxbPWVXq53bqxfd0z44gcBfNWmUIIA6poL2n64I8AuhQ
	uRHFtQfiyIIfxu8b/wyNuRkBxvQN3BM0BJfvHvei1IPRL4KeXvslOUP9ZiE66TA+Otldtv
	hRIQf1bPl6eVm6eCP6JLYkI4iPPpCAG4g1JCSP9zKpHY0ubdI06qGvyfrPkGNyIR5aDcBu
	nCjm1OdSU9fHObwgOmGP+BVHPMGnGxKbOyZygf/C3kQjZ1gSMQCRPRuew+tMnCp2EHx4cY
	fTuUI51v5ibUUcc94fhxhBG8aXJlReALfZbHTprdNh640ubIcPrefCADtSLD0g==
Date: Sat, 25 Jul 2026 16:13:20 +0200
Message-Id: <DK7PPYNCUU5F.31BXH4215WDKI@cknow-tech.com>
To: "Dawid Olesinski" <dawidro@gmail.com>, =?utf-8?q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: "Sebastian Reichel" <sebastian.reichel@collabora.com>, "Herbert Xu"
 <herbert@gondor.apana.org.au>, "David S . Miller" <davem@davemloft.net>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Corentin
 Labbe" <clabbe@baylibre.com>, <linux-crypto@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: Add crypto node to
 rk356x-base
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
References: <20260708175837.1718437-1-dawidro@gmail.com>
 <20260708175837.1718437-4-dawidro@gmail.com> <ak7jEYTAGgeDdi1W@venus>
 <4011768.FjKLVJYuhi@diego> <20260710153012.0a840512@enyo>
In-Reply-To: <20260710153012.0a840512@enyo>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260725_071406_528145_ADAB30A3 
X-CRM114-Status: GOOD (  24.21  )
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

T24gRnJpIEp1bCAxMCwgMjAyNiBhdCA0OjMwIFBNIENFU1QsIERhd2lkIE9sZXNpbnNraSB3cm90
ZToKPiBPbiBUaHUsIDA5IEp1bCAyMDI2IDA5OjA3OjIzICswMjAwCj4gSGVpa28gU3TDvGJuZXIg
PGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4KPj4gQW0gRG9ubmVyc3RhZywgOS4gSnVsaSAyMDI2
LCAwMTo1NjoxMCBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdAo+PiBzY2hyaWViIFNlYmFz
dGlhbiBSZWljaGVsOgo+PiA+IEhpLAo+PiA+IAo+PiA+IE9uIFdlZCwgSnVsIDA4LCAyMDI2IGF0
IDA2OjU4OjI0UE0gKzAxMDAsIERhd2lkIE9sZXNpbnNraSB3cm90ZTogIAo+PiA+ID4gQWRkIHRo
ZSBkZXZpY2UgdHJlZSBub2RlIGZvciB0aGUgVjIgY3J5cHRvZ3JhcGhpYyBoYXJkd2FyZQo+PiA+
ID4gYWNjZWxlcmF0b3Igb24gUkszNTZ4IFNvQ3MgKFJLMzU2NiwgUkszNTY4KS4KPj4gPiA+IAo+
PiA+ID4gVGhlIElQIGJsb2NrIHNpdHMgaW4gdGhlIG5vbi1zZWN1cmUgcGVyaXBoZXJhbCBkb21h
aW4uIEl0cyB0aHJlZQo+PiA+ID4gY2xvY2tzIChjb3JlLCBhY2xrLCBoY2xrKSBhbmQgcmVzZXQg
bGluZSBhcmUgYWNjZXNzaWJsZSBkaXJlY3RseQo+PiA+ID4gdGhyb3VnaCB0aGUgbWFpbiBub24t
c2VjdXJlIENSVSwgc28gbm8gZmlybXdhcmUgaW50ZXJtZWRpYXJ5IGlzCj4+ID4gPiByZXF1aXJl
ZC4KPj4gPiA+IAo+PiA+ID4gVGhlIG5vZGUgaXMgZGlzYWJsZWQgYnkgZGVmYXVsdDsgYm9hcmQg
ZmlsZXMgdGhhdCB3aXNoIHRvIHVzZQo+PiA+ID4gaGFyZHdhcmUgY3J5cHRvIG9mZmxvYWQgbXVz
dCBlbmFibGUgaXQuICAKPj4gPiAKPj4gPiBXaHkgaXMgaXQgZGlzYWJsZWQgYnkgZGVmYXVsdD8g
SXQgZG9lc24ndCBzZWVtIHRvIGJlIGJvYXJkIHNwZWNpZmljCj4+ID4gYXQgYWxsIHRvIG1lICh0
aGUgc2FtZSBxdWVzdGlvbiBhcHBsaWVzIHRvIHRoZSBSSzM1ODggRFQpLiAgCj4+IAo+PiBZb3Un
cmUgZGVmaW5pdGx5IHJpZ2h0IGFib3V0IHRoYXQgLi4uIHRoZXJlIGFyZSBubyBib2FyZCBzcGVj
aWZpYwo+PiByZXNvdXJjZXMgbmVlZGVkLCBzbyBEYXdpZCBwbGVhc2UgZHJvcCB0aGUgc3RhdHVz
IGZyb20gYm90aCBub2Rlcy4KPj4gCj4KPiBJJ2xsIGRyb3AgdGhlIGBzdGF0dXMgPSAiZGlzYWJs
ZWQiO2AgCj4gbGluZXMgZnJvbSBib3RoIHRoZSBSSzM1NnggYW5kIFJLMzU4OCBkZXZpY2UgdHJl
ZXMgaW4gdjMuCgpUaGF0IGFsc28gbWVhbnMgeW91IGNhbiBkcm9wIHRoZSBsYWJlbC9waGFuZGxl
IGFzIHRoZXJlJ3Mgbm8gbG9uZ2VyIGEgbmVlZAp0byByZWZlcmVuY2UgaXQgaW4gYm9hcmQgZmls
ZXMuCgpDaGVlcnMsCiAgRGllZGVyaWsKCj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3IQo+Cj4gRGF3
aWQKPgo+PiA+ID4gCj4+ID4gPiBTaWduZWQtb2ZmLWJ5OiBEYXdpZCBPbGVzaW5za2kgPGRhd2lk
cm9AZ21haWwuY29tPgo+PiA+ID4gLS0tCj4+ID4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NngtYmFzZS5kdHNpIHwgMTIgKysrKysrKysrKysrCj4+ID4gPiAgMSBmaWxlIGNo
YW5nZWQsIDEyIGluc2VydGlvbnMoKykKPj4gPiA+IAo+PiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LWJhc2UuZHRzaQo+PiA+ID4gYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kgaW5kZXgKPj4gPiA+IGE1ODMy
ODk1YmQzOS4uOWRlN2U3NDg3Y2ExIDEwMDY0NCAtLS0KPj4gPiA+IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNpICsrKwo+PiA+ID4gYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kgQEAgLTExMTIsNgo+PiA+ID4gKzExMTIs
MTggQEAgc2RoY2k6IG1tY0BmZTMxMDAwMCB7IHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+ID4gPiAg
CX07Cj4+ID4gPiAgCj4+ID4gPiArCWNyeXB0bzogY3J5cHRvQGZlMzgwMDAwIHsKPj4gPiA+ICsJ
CWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LWNyeXB0byI7Cj4+ID4gPiArCQlyZWcgPSA8
MHgwIDB4ZmUzODAwMDAgMHgwIDB4MjAwMD47Cj4+ID4gPiArCQlpbnRlcnJ1cHRzID0gPEdJQ19T
UEkgNCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gPiA+ICsJCWNsb2NrcyA9IDwmY3J1IENMS19D
UllQVE9fTlNfQ09SRT4sIDwmY3J1Cj4+ID4gPiBBQ0xLX0NSWVBUT19OUz4sCj4+ID4gPiArCQkJ
IDwmY3J1IEhDTEtfQ1JZUFRPX05TPjsKPj4gPiA+ICsJCWNsb2NrLW5hbWVzID0gImNvcmUiLCAi
YWNsayIsICJoY2xrIjsKPj4gPiA+ICsJCXJlc2V0cyA9IDwmY3J1IFNSU1RfQ1JZUFRPX05TX0NP
UkU+Owo+PiA+ID4gKwkJcmVzZXQtbmFtZXMgPSAiY29yZSI7Cj4+ID4gPiArCQlzdGF0dXMgPSAi
ZGlzYWJsZWQiOwo+PiA+ID4gKwl9Owo+PiA+ID4gKwo+PiA+ID4gIAkvKgo+PiA+ID4gIAkgKiBU
ZXN0aW5nIHNob3dlZCB0aGF0IHRoZSBIV1JORyBmb3VuZCBpbiBSSzM1NjYKPj4gPiA+IHByb2R1
Y2VzIHVuYWNjZXB0YWJseQo+PiA+ID4gIAkgKiBsb3cgcXVhbGl0eSBvZiByYW5kb20gZGF0YSwg
c28gdGhlIEhXUk5HIGlzbid0Cj4+ID4gPiBlbmFibGVkIGZvciBhbGwgUkszNTZ4ICAKPj4gPiAg
IAo+PiAKPj4gCj4+IAo+PiAKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
