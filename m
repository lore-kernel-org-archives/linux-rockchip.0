Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41C38C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Aug 2024 14:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FN8ykte9aBQrBLMFfi6XlrCApnIOpagfkiUifyRhsKA=; b=fE7DxTsPxZR7dy8MnqEBw4N0hP
	FXlR1i8YXyzHI1paUW6hhRJp1DAtb06eSbTCGnNga7FO/LDZiTMsHCunNIRjyIAoH1/ma3u1GQefQ
	pK27qSLJdQIAATYbxaSbn4xJUQUK5mbr4ZKXCmE420DCAJI+83R6cbVTWErCrFEC0O/mz7artjCKh
	4C++mObk0LSGruubTNCBB7kXR2BiWp8e7LSTkg6AVgHyPqwAQMBsSZ7RbgpIuCBJJcHqrDxwiB3K6
	huHCQHAewOSls5Aq4p1yvLXsAiUlj5CdnQ4ua+4sqJsrNYxZ86yN6rdfo/rVfb7M6ET2I4mJljViH
	Fy7GcCHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sabmU-0000000DNho-3e6k;
	Sun, 04 Aug 2024 14:00:18 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sabla-0000000DNHy-3Ige;
	Sun, 04 Aug 2024 13:59:25 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722779960;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rDVqqHMfaEEHTE2gaEMvlP1sQ1gDIa9tG2Se9OHSLL8=;
	b=vgQ+2HYZKDw4h1vlBLtCMPbZ4yaTxEJdh60Kdl3VWWnjnoL5vUCaK/zb6VrebWIG9+GYeo
	aFAS1Bv5KMFQqf2eHeAo+ZFYCGrJjNUVn8pBlUiIzRjLX1Vyt914QjzkMfJk0FMeWBlIb9
	212lI9iLb7DKhRTVeBnYgr1yowupkX6eiIP8yW/qjIfO4smuid9SBp367nrPyy1/Pu6B5T
	3W0JRaaH1KtfT8g5Qz+Kkj7dUosQdDlXWs4eKbWgkSbAwvY6yyqd1A4E2218GNpe/Ve3Lu
	zOPwvmTedWvTO9D2LKX3RzbT/uYnh/PnIE3GXLLR1lKc/DKhzFChKzo82CjygQ==
Date: Sun, 04 Aug 2024 15:59:19 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Yao Zi <ziyao@disroot.org>, Krzysztof Kozlowski <krzk@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Chris
 Morgan <macromorgan@hotmail.com>, Jonas Karlman <jonas@kwiboo.se>, Tim Lunn
 <tim@feathertop.org>, Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin
 <efectn@protonmail.com>, Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman
 <megi@xff.cz>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
In-Reply-To: <2408413.9XhxPE3A7Q@diego>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <Zq-AFWYaqu7zGuz-@ziyaolaptop.my.domain>
 <88dd5910904c03280f37ca0051f5de4e@manjaro.org> <2408413.9XhxPE3A7Q@diego>
Message-ID: <81147f0205c2a9555c9c64e4f7a69b6b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_065923_223978_324BD9E5 
X-CRM114-Status: GOOD (  29.55  )
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

T24gMjAyNC0wOC0wNCAxNTo0NCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gU29ubnRhZywg
NC4gQXVndXN0IDIwMjQsIDE1OjI1OjQ3IENFU1Qgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4+IE9u
IDIwMjQtMDgtMDQgMTU6MjAsIFlhbyBaaSB3cm90ZToKPj4gPiBPbiBTdW4sIEF1ZyAwNCwgMjAy
NCBhdCAxMjowNToxMVBNICswMjAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiA+PiBP
biAwMy8wOC8yMDI0IDE0OjU1LCBZYW8gWmkgd3JvdGU6Cj4+ID4+ID4gVGhpcyBpbml0aWFsIGRl
dmljZSB0cmVlIGRlc2NyaWJlcyBDUFUsIGludGVycnVwdHMgYW5kIFVBUlQgb24gdGhlIGNoaXAK
Pj4gPj4gPiBhbmQgaXMgYWJsZSB0byBib290IGludG8gYmFzaWMga2VybmVsIHdpdGggb25seSBV
QVJULiBDYWNoZSBpbmZvcm1hdGlvbgo+PiA+PiA+IGlzIG9taXR0ZWQgZm9yIG5vdyBhcyB0aGVy
ZSBpcyBubyBwcmVjaXNlIGRvY3VtZW50YXRpb24uIFN1cHBvcnQgZm9yCj4+ID4+ID4gb3RoZXIg
ZmVhdHVyZXMgd2lsbCBiZSBhZGRlZCBsYXRlci4KPj4gPj4gPgo+PiA+PiA+IFNpZ25lZC1vZmYt
Ynk6IFlhbyBaaSA8eml5YW9AZGlzcm9vdC5vcmc+Cj4+ID4+ID4gLS0tCj4+ID4+ID4gIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LmR0c2kgfCAxODIgKysrKysrKysrKysrKysr
KysrKysrKysKPj4gPj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE4MiBpbnNlcnRpb25zKCspCj4+ID4+
ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUy
OC5kdHNpCj4+ID4+ID4KPj4gPj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1MjguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4
LmR0c2kKPj4gPj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiA+PiA+IGluZGV4IDAwMDAwMDAw
MDAwMC4uNzc2ODdkOWU3ZTgwCj4+ID4+ID4gLS0tIC9kZXYvbnVsbAo+PiA+PiA+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LmR0c2kKPj4gPj4gPiBAQCAtMCwwICsx
LDE4MiBAQAo+PiA+PiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9S
IE1JVCkKPj4gPj4gPiArLyoKPj4gPj4gPiArICogQ29weXJpZ2h0IChjKSAyMDIyIFJvY2tjaGlw
IEVsZWN0cm9uaWNzIENvLiwgTHRkLgo+PiA+PiA+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjQgWWFv
IFppIDx6aXlhb0BkaXNyb290Lm9yZz4KPj4gPj4gPiArICovCj4+ID4+ID4gKwo+PiA+PiA+ICsj
aW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+PiA+
PiA+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvaXJxLmg+Cj4+
ID4+ID4gKwo+PiA+PiA+ICsvIHsKPj4gPj4gPiArCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmsz
NTI4IjsKPj4gPj4gPiArCj4+ID4+ID4gKwlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+Owo+PiA+
PiA+ICsJI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4+ID4+ID4gKwkjc2l6ZS1jZWxscyA9IDwyPjsK
Pj4gPj4gPiArCj4+ID4+ID4gKwlhbGlhc2VzIHsKPj4gPj4gPiArCQlzZXJpYWwwID0gJnVhcnQw
Owo+PiA+PiA+ICsJCXNlcmlhbDEgPSAmdWFydDE7Cj4+ID4+ID4gKwkJc2VyaWFsMiA9ICZ1YXJ0
MjsKPj4gPj4gPiArCQlzZXJpYWwzID0gJnVhcnQzOwo+PiA+PiA+ICsJCXNlcmlhbDQgPSAmdWFy
dDQ7Cj4+ID4+ID4gKwkJc2VyaWFsNSA9ICZ1YXJ0NTsKPj4gPj4gPiArCQlzZXJpYWw2ID0gJnVh
cnQ2Owo+PiA+PiA+ICsJCXNlcmlhbDcgPSAmdWFydDc7Cj4+ID4+ID4gKwl9Owo+PiA+PiA+ICsK
Pj4gPj4gPiArCWNwdXMgewo+PiA+PiA+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+PiA+PiA+
ICsJCSNzaXplLWNlbGxzID0gPDA+Owo+PiA+PiA+ICsKPj4gPj4gPiArCQljcHUtbWFwIHsKPj4g
Pj4gPiArCQkJY2x1c3RlcjAgewo+PiA+PiA+ICsJCQkJY29yZTAgewo+PiA+PiA+ICsJCQkJCWNw
dSA9IDwmY3B1MD47Cj4+ID4+ID4gKwkJCQl9Owo+PiA+PiA+ICsJCQkJY29yZTEgewo+PiA+PiA+
ICsJCQkJCWNwdSA9IDwmY3B1MT47Cj4+ID4+ID4gKwkJCQl9Owo+PiA+PiA+ICsJCQkJY29yZTIg
ewo+PiA+PiA+ICsJCQkJCWNwdSA9IDwmY3B1Mj47Cj4+ID4+ID4gKwkJCQl9Owo+PiA+PiA+ICsJ
CQkJY29yZTMgewo+PiA+PiA+ICsJCQkJCWNwdSA9IDwmY3B1Mz47Cj4+ID4+ID4gKwkJCQl9Owo+
PiA+PiA+ICsJCQl9Owo+PiA+PiA+ICsJCX07Cj4+ID4+ID4gKwo+PiA+PiA+ICsJCWNwdTA6IGNw
dUAwIHsKPj4gPj4gPiArCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKPj4gPj4gPiArCQkJY29tcGF0
aWJsZSA9ICJhcm0sY29ydGV4LWE1MyI7Cj4+ID4+ID4gKwkJCXJlZyA9IDwweDA+Owo+PiA+PiA+
ICsJCQllbmFibGUtbWV0aG9kID0gInBzY2kiOwo+PiA+PiA+ICsJCX07Cj4+ID4+ID4gKwo+PiA+
PiA+ICsJCWNwdTE6IGNwdUAxIHsKPj4gPj4gPiArCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKPj4g
Pj4gPiArCQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE1MyI7Cj4+ID4+ID4gKwkJCXJlZyA9
IDwweDE+Owo+PiA+PiA+ICsJCQllbmFibGUtbWV0aG9kID0gInBzY2kiOwo+PiA+PiA+ICsJCX07
Cj4+ID4+ID4gKwo+PiA+PiA+ICsJCWNwdTI6IGNwdUAyIHsKPj4gPj4gPiArCQkJZGV2aWNlX3R5
cGUgPSAiY3B1IjsKPj4gPj4gPiArCQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE1MyI7Cj4+
ID4+ID4gKwkJCXJlZyA9IDwweDI+Owo+PiA+PiA+ICsJCQllbmFibGUtbWV0aG9kID0gInBzY2ki
Owo+PiA+PiA+ICsJCX07Cj4+ID4+ID4gKwo+PiA+PiA+ICsJCWNwdTM6IGNwdUAzIHsKPj4gPj4g
PiArCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKPj4gPj4gPiArCQkJY29tcGF0aWJsZSA9ICJhcm0s
Y29ydGV4LWE1MyI7Cj4+ID4+ID4gKwkJCXJlZyA9IDwweDM+Owo+PiA+PiA+ICsJCQllbmFibGUt
bWV0aG9kID0gInBzY2kiOwo+PiA+PiA+ICsJCX07Cj4+ID4+ID4gKwl9Owo+PiA+PiA+ICsKPj4g
Pj4gPiArCXBzY2kgewo+PiA+PiA+ICsJCWNvbXBhdGlibGUgPSAiYXJtLHBzY2ktMS4wIiwgImFy
bSxwc2NpLTAuMiI7Cj4+ID4+ID4gKwkJbWV0aG9kID0gInNtYyI7Cj4+ID4+ID4gKwl9Owo+PiA+
PiA+ICsKPj4gPj4gPiArCXRpbWVyIHsKPj4gPj4gPiArCQljb21wYXRpYmxlID0gImFybSxhcm12
OC10aW1lciI7Cj4+ID4+ID4gKwkJaW50ZXJydXB0cyA9IDxHSUNfUFBJIDEzIChHSUNfQ1BVX01B
U0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCj4+ID4+ID4gKwkJCSAgICAgPEdJ
Q19QUEkgMTQgKEdJQ19DUFVfTUFTS19TSU1QTEUoNCkgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwK
Pj4gPj4gPiArCQkJICAgICA8R0lDX1BQSSAxMSAoR0lDX0NQVV9NQVNLX1NJTVBMRSg0KSB8IElS
UV9UWVBFX0xFVkVMX0xPVyk+LAo+PiA+PiA+ICsJCQkgICAgIDxHSUNfUFBJIDEwIChHSUNfQ1BV
X01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT47Cj4+ID4+ID4gKwl9Owo+PiA+
PiA+ICsKPj4gPj4gPiArCXhpbjI0bTogeGluMjRtIHsKPj4gPj4KPj4gPj4gUGxlYXNlIHVzZSBu
YW1lIGZvciBhbGwgZml4ZWQgY2xvY2tzIHdoaWNoIG1hdGNoZXMgY3VycmVudCBmb3JtYXQKPj4g
Pj4gcmVjb21tZW5kYXRpb246ICdjbG9jay0oWzAtOV0rfFthLXowLTktXSspKycKPj4gPgo+PiA+
IFdpbGwgYmUgZml4ZWQgaW4gbmV4dCByZXZpc2lvbi4KPj4gCj4+IEhtbSwgd2h5IHNob3VsZCB3
ZSBhcHBseSB0aGF0IHJ1bGUgdG8gdGhlIHhpbjI0bSBjbG9jaywgd2hpY2ggaXMKPj4gbmFtZWQg
ZXhhY3RseSBsaWtlIHRoYXQgZXZlcnl3aGVyZSBlbHNlIGluIFJvY2tjaGlwIFNvQyBkdHNpIGZp
bGVzPwo+PiBJdCdzIG11Y2ggYmV0dGVyIHRvIHJlbWFpbiBjb25zaXN0ZW50Lgo+IAo+IGJpbmRp
bmdzIG9yIGhvdyB3ZSB3cml0ZSBkZXZpY2V0cmVlcyBldm9sdmUgb3ZlciB0aW1lIC4uLiBzaW1p
bGFybHkgdGhlCj4geGluMjRtIG5hbWUgY29tZXMgZnJvbSBtb3JlIHRoYW4gMTAgeWVhcnMgYWdv
Lgo+IAo+IFdlIGFsc28gbmFtZSBhbGwgdGhvc2UgcmVndWxhdG9yIG5vZGVzIHJlZ3VsYXRvci1m
b28gbm93LCB3aGljaCBpbiB0dXJuCj4gYXV0b21hdGljYWxseSBkb2VzIGVuZm9yY2UgYSBuaWNl
IHNvcnRpbmcgcnVsZSB0byBrZWVwIGFsbCB0aGUgCj4gcmVndWxhdG9ycwo+IGFyb3VuZCB0aGUg
c2FtZSBhcmVhIDstKQo+IAo+IFNvIEkgZG9uJ3Qgc2VlIGEgcHJvYmxlbSBvZiBnb2luZyB3aXRo
IHhpbjI0bTogY2xvY2steGluMjRtIHt9CgpJIGFncmVlIHRoYXQgdXNpbmcgImNsb2NrLXhpbjI0
bSIgbWFrZXMgbW9yZSBzZW5zZSBpbiBnZW5lcmFsLCBidXQgdGhlCnRyb3VibGUgaXMgdGhhdCB3
ZSBjYW4ndCByZW5hbWUgdGhlIGFscmVhZHkgZXhpc3RpbmcgaW5zdGFuY2VzIG9mIAoieGluMjRt
IiwKYmVjYXVzZSB0aGF0IGhhcyBiZWNvbWUgcGFydCBvZiB0aGUgQUJJLiAgVGh1cywgSSdtIG5v
dCBzdXJlIHRoYXQgCmJyZWFraW5nCmF3YXkgZnJvbSB0aGUgbGVnYWN5IGJyaW5ncyBiZW5lZml0
cyBpbiB0aGlzIHBhcnRpY3VsYXIgY2FzZS4KCj4+ID4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9maXhlZC1jbG9jay55YW1sP2g9djYuMTEt
cmMxCj4+ID4+Cj4+ID4+ID4gKwkJY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4+ID4+ID4g
KwkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+PiA+PiA+ICsJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNDAw
MDAwMD47Cj4+ID4+ID4gKwkJY2xvY2stb3V0cHV0LW5hbWVzID0gInhpbjI0bSI7Cj4+ID4+ID4g
Kwl9Owo+PiA+PiA+ICsKPj4gPj4gPiArCWdpYzogaW50ZXJydXB0LWNvbnRyb2xsZXJAZmVkMDEw
MDAgewo+PiA+Pgo+PiA+PiBXaHkgdGhpcyBhbGwgaXMgb3V0c2lkZSBvZiBTb0M/Cj4+ID4KPj4g
PiBKdXN0IGFzIEhlaWtvIHNheXMsIGRldmljZSB0cmVlIGZvciBhbGwgb3RoZXIgUm9ja2NoaXAg
U29DcyBkb24ndCBoYXZlCj4+ID4gYSAic29jIiBub2RlLiBJIGRpZG4ndCBrbm93IHdoeSBiZWZv
cmUgYnV0IGp1c3QgZm9sbG93IHRoZSBzdHlsZS4KPj4gPgo+PiA+IElmIHlvdSBwcmVmZXIgYWRk
IGEgc29jIG5vZGUsIEkgYW0gd2lsbGluZyB0by4KPj4gCj4gCj4gCj4gCj4gCj4gCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
