Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37A39C0219B
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 19:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSNQN+Zz19r1o84w6hV+TPmpHHBVjX9Eg8QSbBd2HqI=; b=rabaCFC6lARMmY
	7cZZWk3y+Mn0vypPV/JVIlrB5nI0ipxSZ36gazD7P256bDiusQrEqNPzuQM83Fu7ZDkBzq8g2FqV1
	k15wpbkyH8XYMS6KasF/d0M6YazYxgYsBAn8TTGxSGdSiNX5KdoNs+mW+2t9IXZX1ede1A9TwhfDT
	MGW/LGk2j2NlQPGiENEz3fmGB9+od8lj3v8tSlj0fKQ2wdNGv5uKJBJKYwchA+vOYSIo1XpPZrcGs
	926mCMHpqMck9PncKFRuWFweA5CquQSY0iIMZuF2NfoN2srHdbGHpOeSVhM0Xj/nTDurv5hdCzgDN
	mfexQnPToKo+0a37Xipw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thvtQ-000000050nI-38Rg;
	Tue, 11 Feb 2025 19:26:00 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thupg-00000004onC-3kqL;
	Tue, 11 Feb 2025 18:18:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 87C9C13D5;
	Tue, 11 Feb 2025 10:18:22 -0800 (PST)
Received: from [10.57.35.63] (unknown [10.57.35.63])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4906B3F58B;
	Tue, 11 Feb 2025 10:17:59 -0800 (PST)
Message-ID: <4005a054-0bb7-4e1b-9c52-fa18aa2b0959@arm.com>
Date: Tue, 11 Feb 2025 18:17:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: adjust SMMU interrupt type
To: Niklas Cassel <cassel@kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Patrick Wildt <patrick@blueri.se>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <Z6pxme2Chmf3d3uK@windev.fritz.box> <25203566.ouqheUzb2q@diego>
 <Z6tBElUDaPNgkaIf@ryzen>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <Z6tBElUDaPNgkaIf@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_101805_024473_4AFC77D0 
X-CRM114-Status: GOOD (  20.65  )
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

T24gMjAyNS0wMi0xMSAxMjoyMiBwbSwgTmlrbGFzIENhc3NlbCB3cm90ZToKPiBPbiBUdWUsIEZl
YiAxMSwgMjAyNSBhdCAwODo0MDoyNUFNICswMTAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4g
QW0gTW9udGFnLCAxMC4gRmVicnVhciAyMDI1LCAyMjozNzoyOSBNRVogc2NocmllYiBQYXRyaWNr
IFdpbGR0Ogo+Pj4gVGhlIFNNTVUgYXJjaGl0ZWN0dXJlIHJlcXVpcmVzIHdpcmVkIGludGVycnVw
dHMgdG8gYmUgZWRnZSB0cmlnZ2VyZWQsCj4+PiB3aGljaCBkb2VzIG5vdCBhbGlnbiB3aXRoIHRo
ZSBEVCBkZXNjcmlwdGlvbiBmb3IgdGhlIFJLMzU4OC4gIFRoaXMgbGVhZHMKPj4+IHRvIGludGVy
cnVwdCBzdG9ybXMsIGFzIHRoZSBTTU1VIGNvbnRpbnVlcyB0byBob2xkIHRoZSBwaW4gaGlnaCBh
bmQgb25seQo+Pj4gcHVsbHMgaXQgZG93biBmb3IgYSBzaG9ydCBhbW91bnQgd2hlbiBpc3N1aW5n
IGFuIElSUS4gIFVwZGF0ZSB0aGUgRFQKPj4+IGRlc2NyaXB0aW9uIHRvIGJlIGluIGxpbmUgd2l0
aCB0aGUgc3BlYyBhbmQgcGVyY2VpdmVkIHJlYWxpdHkuCj4+Pgo+Pgo+PiBDYydlZCBOaWtsYXMK
Pj4KPj4gVGhpcyBzaG91bGQgcHJvYmFibHkgYWxzbyBnZXQgYQo+Pgo+PiBGaXhlczogY2Q4MWQz
YTA2OTVjICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCByazM1ODggcGNpZSBhbmQgcGhwIElP
TU1VcyIpCj4gCj4gQWdyZWVkLgo+IAo+IAo+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogUGF0cmljayBX
aWxkdCA8cGF0cmlja0BibHVlcmkuc2U+Cj4+PiAtLS0KPj4+ICAgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIHwgMTYgKysrKysrKystLS0tLS0tLQo+Pj4gICAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKPj4+IGluZGV4
IDhjZmEzMDgzN2NlNy4uNTIwZDA4MTRhNGRlIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpCj4+PiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKPj4+IEBAIC01NDksMTAgKzU0OSwxMCBA
QCB1c2JfaG9zdDJfeGhjaTogdXNiQGZjZDAwMDAwIHsKPj4+ICAgCW1tdTYwMF9wY2llOiBpb21t
dUBmYzkwMDAwMCB7Cj4+PiAgIAkJY29tcGF0aWJsZSA9ICJhcm0sc21tdS12MyI7Cj4+PiAgIAkJ
cmVnID0gPDB4MCAweGZjOTAwMDAwIDB4MCAweDIwMDAwMD47Cj4+PiAtCQlpbnRlcnJ1cHRzID0g
PEdJQ19TUEkgMzY5IElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4+PiAtCQkJICAgICA8R0lDX1NQ
SSAzNzEgSVJRX1RZUEVfTEVWRUxfSElHSCAwPiwKPj4+IC0JCQkgICAgIDxHSUNfU1BJIDM3NCBJ
UlFfVFlQRV9MRVZFTF9ISUdIIDA+LAo+Pj4gLQkJCSAgICAgPEdJQ19TUEkgMzY3IElSUV9UWVBF
X0xFVkVMX0hJR0ggMD47Cj4+PiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMzY5IElSUV9UWVBF
X0VER0VfUklTSU5HIDA+LAo+Pj4gKwkJCSAgICAgPEdJQ19TUEkgMzcxIElSUV9UWVBFX0VER0Vf
UklTSU5HIDA+LAo+Pj4gKwkJCSAgICAgPEdJQ19TUEkgMzc0IElSUV9UWVBFX0VER0VfUklTSU5H
IDA+LAo+Pj4gKwkJCSAgICAgPEdJQ19TUEkgMzY3IElSUV9UWVBFX0VER0VfUklTSU5HIDA+Owo+
Pj4gICAJCWludGVycnVwdC1uYW1lcyA9ICJldmVudHEiLCAiZ2Vycm9yIiwgInByaXEiLCAiY21k
cS1zeW5jIjsKPj4+ICAgCQkjaW9tbXUtY2VsbHMgPSA8MT47Cj4+PiAgIAl9Owo+Pj4gQEAgLTU2
MCwxMCArNTYwLDEwIEBAIG1tdTYwMF9wY2llOiBpb21tdUBmYzkwMDAwMCB7Cj4+PiAgIAltbXU2
MDBfcGhwOiBpb21tdUBmY2IwMDAwMCB7Cj4+PiAgIAkJY29tcGF0aWJsZSA9ICJhcm0sc21tdS12
MyI7Cj4+PiAgIAkJcmVnID0gPDB4MCAweGZjYjAwMDAwIDB4MCAweDIwMDAwMD47Cj4+PiAtCQlp
bnRlcnJ1cHRzID0gPEdJQ19TUEkgMzgxIElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4+PiAtCQkJ
ICAgICA8R0lDX1NQSSAzODMgSVJRX1RZUEVfTEVWRUxfSElHSCAwPiwKPj4+IC0JCQkgICAgIDxH
SUNfU1BJIDM4NiBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+LAo+Pj4gLQkJCSAgICAgPEdJQ19TUEkg
Mzc5IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4+PiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
MzgxIElSUV9UWVBFX0VER0VfUklTSU5HIDA+LAo+Pj4gKwkJCSAgICAgPEdJQ19TUEkgMzgzIElS
UV9UWVBFX0VER0VfUklTSU5HIDA+LAo+Pj4gKwkJCSAgICAgPEdJQ19TUEkgMzg2IElSUV9UWVBF
X0VER0VfUklTSU5HIDA+LAo+Pj4gKwkJCSAgICAgPEdJQ19TUEkgMzc5IElSUV9UWVBFX0VER0Vf
UklTSU5HIDA+Owo+Pj4gICAJCWludGVycnVwdC1uYW1lcyA9ICJldmVudHEiLCAiZ2Vycm9yIiwg
InByaXEiLCAiY21kcS1zeW5jIjsKPj4+ICAgCQkjaW9tbXUtY2VsbHMgPSA8MT47Cj4+PiAgIAkJ
c3RhdHVzID0gImRpc2FibGVkIjsKPj4+Cj4gCj4gUGF0cmljaywgdGhhbmsgeW91IGZvciB0aGUg
cGF0Y2ghCj4gCj4gRldJVywgdGhleSBoYXZlIHRoZSBzYW1lIGJ1ZyBpbiBkb3duc3RyZWFtOgo+
IGh0dHBzOi8vZ2l0aHViLmNvbS9yYWR4YS9rZXJuZWwvYmxvYi9saW51eC02LjEtc3Rhbi1ya3I0
LjEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kjTDI3NjEtTDI3ODMK
PiAKPiBIb3dldmVyLCB0aGUgUm9ja2NoaXAgUENJZSBWaXJ0dWFsaXphdGlvbiBEZXZlbG9wZXIg
R3VpZGUgY29ycmVjdGx5IGRlZmluZQo+IHRoZSBJUlFzIGFzIGVkZ2UgdHJpZ2dlcmVkOgo+IGh0
dHBzOi8vZGwucmFkeGEuY29tL3VzZXJzL2Rldi9Sb2NrY2hpcF9QQ0llX1ZpcnR1YWxpemF0aW9u
X0RldmVsb3Blcl9HdWlkZV9DTi5wZGYKPiAKPiBMb29raW5nIGF0IHRoZSBBUk0gU01NVXYzIGFy
Y2hpdGVjdHVyZSBzcGVjaWZpY2F0aW9uOgo+ICJBbiBpbXBsZW1lbnRhdGlvbiBtdXN0IHN1cHBv
cnQgb25lIG9mLCBvciBvcHRpb25hbGx5IGJvdGggb2YsIHdpcmVkCj4gaW50ZXJydXB0cyBhbmQg
TVNJcy4gV2hldGhlciBhbiBpbXBsZW1lbnRhdGlvbiBzdXBwb3J0cyBNU0lzIGlzIGRpc2NvdmVy
YWJsZQo+IGZyb20gU01NVV9JRFIwLk1TSSBhbmQgU01NVV9TX0lEUjAuTVNJLiBBbiBpbXBsZW1l
bnRhdGlvbiBtaWdodCBzdXBwb3J0IHdpcmVkCj4gaW50ZXJydXB0IG91dHB1dHMgdGhhdCBhcmUg
ZWRnZS10cmlnZ2VyZWQuIFRoZSBkaXNjb3Zlcnkgb2Ygc3VwcG9ydCBmb3Igd2lyZWQKPiBpbnRl
cnJ1cHRzIGlzIElNUExFTUVOVEFUSU9OIERFRklORUQuIgoKWXVwLCByaXNpbmcgZWRnZSBpcyBj
ZXJ0YWlubHkgd2hhdCBNTVUtNjAwIHNwaXRzIG91dC4KClRoYW5rcywKUm9iaW4uCgo+IAo+IFRo
dXM6Cj4gUmV2aWV3ZWQtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgo+IAo+
IAo+IEhlaWtvLCB0aGlzIHBhdGNoIHNob3VsZCBnbyB0byA2LjE0Lgo+IAo+IFNpZGUgbm90ZTog
V2UgYWxzbyBoYXZlIGFub3RoZXIgU01NVSBwYXRjaCB0aGF0IHNob3VsZCBnbyB0byA2LjE0Ogo+
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjUwMjA3MTQzOTAwLjIw
NDc5NDktMi1jYXNzZWxAa2VybmVsLm9yZy8KPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gTmlrbGFz
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
