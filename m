Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31200EEE26C
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 22:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBHULuAjgcWbal9Rh39BrW8MOQszpe7HvRBOqIfP//U=; b=QSoRMFrhu9qNTt
	8+rFGz6037forHUom+u6mtFVwPSsoNl/j28scmdZodZSTlNA2xE2KU1SouQM8EZ85hxc5tCqmPUvZ
	eLP0Iaa78O6Wu2MLh4++42zU2q+gYt0IR2ViPkveqZGLejzCpyUHojIDSWvh+jfBMDh9iayJ/Fdf3
	aYzQQZFOIx/+MU8w1NO/acJaT5GHEp+DzqMz4h5yY3aoqIqZ5ktMOrb8ZYqYqc/yb9YNFMuKZ44AU
	Xti3/o6Wgy7FeYmeODPkAFaGjcLeJ/DrhCA91BDdx+0Z3lNOJP4sAw0VonVNUhR/sDy7xKyUSBQ80
	FcUpgJgW3FjSowUffOug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sosR6-0000000EN5f-3jcc;
	Thu, 12 Sep 2024 22:37:12 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sosQ2-0000000EN0B-29h8
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Sep 2024 22:36:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1726180531;
 bh=rns+bPTPYHjFxU/x4Zy7sEWc0Gr6ktnAqcJoJdO8VEg=;
 b=X85expuw4ZbdZykYAWLCoZxLKhdwvB7CYGRjVrLz6WUG0t1UBJELJfqGtX8SclAdVWj/1ln3S
 Wm4wvh4r+u0/UaTASkHgNWMzc0uJgFXTPDzGWJrO7BI+y3eoitdwFQELOnLlFYbupj8PnxDiKwA
 UytRVvISzj9WuWXknNKYtpy9YclWSAhGxDGSDZNSQZ+IKLHyXiaHnLENRZyMznW93UqlTAOBfS5
 +ONW9Q7xEWD+GSAY2dO7OnBn3Z6o6UH48kqBQxp2YiXQVk6KE29jgK66DPIaf5L451PJKI0ximo
 zI18lHZ2O1/2Mnmw+XAGNevxGyK5kPF+aBBaqFETrUeA==
Message-ID: <8c0b8145-3e90-42e6-8e1a-5be6424d1055@kwiboo.se>
Date: Fri, 13 Sep 2024 00:35:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: Enable all 3 USBs on Turing RK1
To: Sam Edwards <cfsworks@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>,
 Chris Morgan <macromorgan@hotmail.com>, Alex Zhao <zzc@rock-chips.com>,
 Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jing Luo <jing@jing.rocks>, Kever Yang <kever.yang@rock-chips.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Daniel_Kukie=C5=82a?= <daniel@kukiela.pl>,
 Joshua Riek <jjriek@verizon.net>
References: <20240912025034.180233-1-CFSworks@gmail.com>
 <20240912025034.180233-5-CFSworks@gmail.com>
 <ed4b6913-f19b-4280-b3b2-f5bb1e7f47eb@kwiboo.se>
 <CAH5Ym4jEMvBVQNNS6U49RWTAVPX4GmOVC-VjgXsFCR=X68QWgA@mail.gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <CAH5Ym4jEMvBVQNNS6U49RWTAVPX4GmOVC-VjgXsFCR=X68QWgA@mail.gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 66e36cb3fcb6c7d83e7bbd3c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_153606_638346_BCBFDE5E 
X-CRM114-Status: GOOD (  34.87  )
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

T24gMjAyNC0wOS0xMiAyMzowNiwgU2FtIEVkd2FyZHMgd3JvdGU6Cj4gT24gVGh1LCBTZXAgMTIs
IDIwMjQgYXQgMTI6NTPigK9QTSBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+IHdyb3Rl
Ogo+Pgo+PiBIaSBTYW0sCj4+Cj4+IFNvdW5kcyBsaWtlIHRoaXMgbWF5IGJlIG1pc3NpbmcKPj4K
Pj4gICAgICAgICByb2NrY2hpcCxkcC1sYW5lLW11eCA9IDwwIDEgMiAzPjsKPj4KPj4gb3IKPj4K
Pj4gICAgICAgICByb2NrY2hpcCxkcC1sYW5lLW11eCA9IDwzIDIgMSAwPjsKClNtYWxsIGNvcnJl
Y3Rpb24sIHRoZSBzZWNvbmQgNC1sYW5lIG1vZGUgd291bGQgYmUgZGVzY3JpYmVkIGFzOgoKCXJv
Y2tjaGlwLGRwLWxhbmUtbXV4ID0gPDIgMyAwIDE+OwoKPj4KPj4gaWYgYWxsIGxhbmVzIGFyZSB1
c2VkIGZvciBEUCBhbmQgbm9uZSBhcmUgdXNlZCBmb3IgVVNCLgo+Pgo+PiBJdCBzaG91bGQgaGVs
cCBkZXNjcmliZSB0aGUgaHcgYW5kIGFsc28gaGVscCB0aGUgZHJpdmVyIHNldCBtb2RlIHRvCj4+
IFVEUEhZX01PREVfRFAgYW5kIHRoYXQgc2hvdWxkIGRpc2FibGUgdGhlIHUzIHBvcnQsIG9yIHRo
ZXJlIG1heSBiZSBhbgo+PiBpc3N1ZSB0byBmaXggaW4gdGhlIHBoeSBkcml2ZXIuCj4gCj4gVGhh
bmtzIGZvciB5b3VyIGluc2lnaHRzIEpvbmFzIQo+IAo+IEkgaGF2ZW4ndCB5ZXQgZ290dGVuIHRv
IERQIGVuYWJsZW1lbnQgc28gSSBkb24ndCBrbm93IHRoZSBjb3JyZWN0IERQCj4gbGF5b3V0LiBV
bHRpbWF0ZWx5IEkgZG8gd2FudCB0aGUgVVNCRFAwIG5vZGUgdG8gaGF2ZSB0aGUgbmVjZXNzYXJ5
Cj4gcHJvcGVydGllcyBmb3IgRFAsIGJ1dCBhbGFzIHRoYXQncyBhIHBhdGNoIGZvciBhbm90aGVy
IGRheS4KPiAKPiBOb25ldGhlbGVzcywgSSBicmllZmx5IHRyaWVkIGl0IGFuZCBJIGRvbid0IHRo
aW5rIFVEUEhZX01PREVfRFAKPiBhZmZlY3RzIHRoZSBQSFkncyAiYmFja2VuZCIgKGN0cmw8LT5w
aHkgaWZhY2UpIGF0IGFsbCwgb25seSB0aGUKPiBhdmFpbGFiaWxpdHkgb2YgZnJvbnRlbmQgbGFu
ZXMgdG8gdGhlIFVTQi1zcGVjaWZpYyBiYWNrZW5kOiBTbyBwb3J0IHUzCj4gaXMgc3RpbGwgZW5h
YmxlZCwgdGhlcmUncyBqdXN0IG5vIHdheSB0byByZWFjaCBpdCBlbGVjdHJpY2FsbHkuCj4gCj4g
V2l0aCB0aGF0IGluIG1pbmQsIHdvdWxkIHlvdSByZWNvbW1lbmQgdGhhdCBJIGFkZCBhIHBsYWNl
aG9sZGVyCj4gZHAtbGFuZS1tdXggb2YgMCAxIDIgMyBmb3Igbm93LCBqdXN0IHRvIGtlZXAgdGhl
IFBIWSBmcm9tIGF0dGVtcHRpbmcKPiB0byBzcGVhayBVU0IgdG8gYSBEUCBkZXZpY2U/IEkgZG9u
J3QgZm9yZXNlZSBhbnkgaGFybSBpbiBsZWF2aW5nIGl0Cj4gYXMtaXMgYnV0IHlvdSBtYXkga25v
dyBzb21ldGhpbmcgdGhhdCBJIGRvbid0LgoKVGhlIHJrX3VkcGh5X3UzX3BvcnRfZGlzYWJsZSgp
IGNhbGwgaW4gdXNiZHAgcGh5IGRyaXZlciBzaG91bGQgaGVscCBzZXQKdGhlIHVzYjNvdGcwX2hv
c3RfbnVtX3UzX3BvcnQ9MCB5b3UgbWVudGlvbmVkOgoKICAudXNiM290ZzBfY2ZnID0gUktfVURQ
SFlfR0VOX0dSRl9SRUcoMHgwMDFjLCAxNSwgMCwgMHgxMTAwLCAweDAxODgpLAogIC51c2Izb3Rn
MV9jZmcgPSBSS19VRFBIWV9HRU5fR1JGX1JFRygweDAwMzQsIDE1LCAwLCAweDExMDAsIDB4MDE4
OCksCgpIZXJlIHRoZSBkaXNhYmxlL2VuYWJsZSB2YWx1ZXMgaXMgbGl0dGxlIGJpdCBpbnZlcnRl
ZCBpbiBtYWNybywgaS5lLgplbmFibGU9MHgwMTg4IGlzIHRoZSB2YWx1ZSBzZXQgd2hlbiB1M19w
b3J0X2Rpc2FibGUoZGlzYWJsZT10cnVlKSBpcwpjYWxsZWQuCgpHdWVzc2luZyB0aGF0IGJlY2F1
c2UgdGhlIHBoeSBpcyBub3QgcmVmZXJlbmNlZCBpdHMgaW5pdCgpIG9wcyBuZXZlcgpnZXRzIGNh
bGxlZCBhbmQgdTMgbmV2ZXIgZ2V0cyBkaXNhYmxlZCB1bmxlc3MgYSB1c2IzLXBoeSBpcyByZWZl
cmVuY2VkLgoKPiAKPj4KPj4+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsKPj4+ICt9Owo+Pj4gKwo+
Pj4gKyZ1c2JfaG9zdDBfeGhjaSB7Cj4+PiArICAgICBleHRjb24gPSA8JnUycGh5MD47Cj4+PiAr
ICAgICBtYXhpbXVtLXNwZWVkID0gImhpZ2gtc3BlZWQiOwo+Pgo+PiBJZiB0aGlzIG9ubHkgdXNl
IHRoZSBVU0IyIHBoeSwgdGhpcyBzaG91bGQgcHJvYmFibHkgYWxzbyBvdmVycmlkZSB0aGUKPj4g
ZGVmYXVsdCBwaHlzIGFuZCBwaHktbmFtZXMgcHJvcHMgd2l0aDoKPj4KPj4gICAgICAgICBwaHlz
ID0gPCZ1MnBoeTBfb3RnPjsKPj4gICAgICAgICBwaHktbmFtZXMgPSAidXNiMi1waHkiOwo+IAo+
IEkgYWdyZWUgY29tcGxldGVseTogaWYgdGhlIGNvbnRyb2xsZXIgZG9lc24ndCBuZWVkIHRoZSBV
U0IzIFBIWSwgdGhlbgo+IGl0IHNob3VsZCBub3QgKGltcGxpY2l0bHkpIGJlIHNwZWNpZmllZCBp
biB0aGUgRFQuIEJlaW5nIGFibGUgdG8gYWRkCj4gdGhlc2Ugb3ZlcnJpZGVzIGlzIGEgYmlnIGdv
YWwgb2YgbWluZSBhcyB3ZWxsLiA6KQo+IAo+IFNhZGx5LCBgcGh5c2AgaXMgd2hhdCBpbml0aWFs
aXplcyBVU0JEUCdzIFVTQi1zaWRlIGJhY2tlbmQsIHNvIHdpdGhvdXQKPiBpdCB0aGUgUlhfU1RB
VFVTIGxpbmUgZ29lcyBmbG9hdGluZywgYW5kIGJlY2F1c2UgdGhlIGNvbnRyb2xsZXIgc3RpbGwK
PiBleHBlY3RzIGEgcG9ydCB0aGVyZSwgaXQgbWlzYmVoYXZlczoKPiBbICAgMzAuOTgxMDc2XSB1
c2IgdXNiMi1wb3J0MTogY29ubmVjdC1kZWJvdW5jZSBmYWlsZWQKPiAKPiBJIGNhbiB0ZWxsIHRo
ZSBjb250cm9sbGVyIHRoYXQgdGhlcmUgaXMgbm8gdTMgcG9ydCBieSBkb2luZyB0aGlzIGluIFUt
Qm9vdDoKPiA9PiBtdy5sIDB4ZmQ1YWMwMWMgMHhmMDAwMDAwMCAjIHVzYjNvdGcwX2hvc3RfbnVt
X3UzX3BvcnQ9MAo+ID0+IGJvb3QKPiAuLi5hbmQgdGhhdCBtYWtlcyBzaW5nbGUtUEhZIG9wZXJh
dGlvbiB3b3JrIHBlcmZlY3RseSEgQnV0IHVubGVzcwo+IExpbnV4IGl0c2VsZiBlZmZlY3RzIHRo
YXQgY2hhbmdlLCB0aGlzIHBhdGNoIGNhbid0IHJlbHkgb24gdGhhdCBHUkYKPiBiZWluZyBzZXQg
Y29ycmVjdGx5Lgo+IAo+IERvIHlvdSBoYXZlIGEgcmVjb21tZW5kYXRpb24gb24gaG93IEkgbWln
aHQgZ28gYWJvdXQgZGlzYWJsaW5nIHRoaXMKPiBwb3J0PyBJIHNlbnQgYSBwYXRjaHNldCBsYXN0
IHllYXIgWzFdIHRoYXQgaGFkIHRoZSBEV0MzL3hIQ0kgZHJpdmVyCj4gaWdub3JlIGVudW1lcmF0
ZWQgdTMgcG9ydHMgd2hlbiB0aGUgbWF4aW11bS1zcGVlZCB3YXMgc2V0IHRvCj4gaGlnaC1zcGVl
ZCwgYnV0IHRoZSBjb25zZW5zdXMgc2VlbXMgdG8gYmUgdGhhdCB0aGlzIHNob3VsZG4ndCBiZQo+
IGFkZHJlc3NlZCBhdCB0aGUgeEhDSSBkcml2ZXIgbGV2ZWwsIHNvIHNvbWVob3cgemVyb2luZyB0
aGUgbmVjZXNzYXJ5Cj4gR1JGIGJpdHMgc291bmRzIGxpa2UgdGhlIHdheSB0byBnbyBoZXJlLiBX
aGF0IGRvIHlvdSB0aGluaz8KCk5vdCBzdXJlIGlmIGl0IHdvdWxkIGhlbHAgYnV0IGNvdWxkIGJl
IHRoYXQgcGFydCBvZiBpbml0KCkgb3BzIHNob3VsZCBiZQptb3ZlZCB0byBwcm9iZSgpLiBXb3Vs
ZCBzdGlsbCByZXF1aXJlIHRoZSBwaHkgZHJpdmVyIHRvIHByb2JlIGJlZm9yZSB1c2IKY29udHJv
bGxlciBmb3IgdGhhdCB0byBoZWxwL3dvcmsuCgpBZGRpbmcgYSByb2NrY2hpcCxkcC1sYW5lLW11
eCBwcm9wIGFuZCBrZWVwaW5nIHRoZSBwaHlzIHByb3AgYXMtaXMgaXMKcHJvYmFibHkgZWFzaWVz
dCB3YXkgZm9yIG5vdy4KCk9uZSBvcHRpb24gZm9yIGZ1dHVyZSBjb3VsZCBwb3NzaWJsZSBiZSB0
byBoYXZlIGdyZiBkcml2ZXIgZGlzYWJsZSB1MwphbmQgbW9kaWZ5IHVzYmRwIHBoeSBkcml2ZXIg
dG8gZW5hYmxlIHUzIGluc3RlYWQgb2YgZGlzYWJsZSB1Mywgbm90CnN1cmUgdGhpcyB3aWxsIGZ1
bGx5IHdvcmssIGluaXQgb2YgdGhlIHVzYmRwIHBoeSBzZWVtIHZlcnkgc2Vuc2l0aXZlCmFuZCBw
b3NzaWJsZSBhIG9uZS10aW1lIG9wLiBUcnlpbmcgdG8gInVzYiBzdGFydCIgaW4gVS1Cb290IHdp
bGwgb25seQp3b3JrIG9uZSB0aW1lLCB1c2luZyAidXNiIHJlc2V0IiBvciBhICJ1c2Igc3RvcC9z
dGFydCIgY3ljbGUgd2lsbCBjYXVzZQp1c2JkcCBwaHkgaW5pdCB0byBmYWlsIGFuZCBhIGZ1bGwg
Ym9hcmQgcmVzZXQgaXMgbmVlZGVkIHRvIGdldCBwb3J0CndvcmtpbmcgYWdhaW4uCgpSZWdhcmRz
LApKb25hcwoKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gU2FtCj4gCj4gWzFdOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyMzEyMDgyMTA0NTguOTEyNzc2LTEtQ0ZTd29ya3NAZ21haWwuY29t
LwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
