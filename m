Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FB43D30CC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 20:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uw36M4+ehv9T5hrDd0sHn8hl+PXLPnCg76joNjrxkjc=; b=PMR0YZOJSuw7QR
	HpQ3rHhvQ2EyrR1q3aX6yrSNytwo0TJg5aAUXnPAPCtQwG5sd3YzlQza4iFd1GjQelwNN5PhvXsBa
	fn3WmQhPBXXwWBlRt/k3YTWyge7WvI7y79G2rIwwYLpCeUTPcpcYNYTQlbb92PSvhs+AgkbMKk5AT
	RBl5b5Fx7541kOzuMx+/bJHaMHOYKBqgvVgnyBLR4cZG1Ag7TBHU1nmYc3HyNlX5Z/8vMESwdUx7I
	bO9BWC7EVdj/GWv5nBRvoVhHJ0bhu3SSZo4S0HFKWEbPdMHg1Hd6/Za5vQ3/yqL7Oqtyiquwe2LiJ
	tXf69HpeVZ65vfp+40Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vflIZ-00000007hnF-13qA;
	Tue, 13 Jan 2026 20:47:31 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vflIW-00000007hml-0IAW;
	Tue, 13 Jan 2026 20:47:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1768337245; bh=hWrZZunWsipzcghZEAhCAL3jHCIwP3xLLsKe63y96aw=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=q4zE4dhNymRMRVwEENUGImW2GppYGQLpzE7No0RPawTtNhaG3Srv/ap3p3vSZd+4o
	 /qCWZE0OAQnzxi9hsg6z0pfwIZ01oImCDR+Y6wWCbFJnloMxINicKyXF04Oir0pvwR
	 e7JT1/IIBm95ogLzn4UgziDNf4rKn32ZxptWU850=
Date: Tue, 13 Jan 2026 21:47:25 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: guptarud@gmail.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Martijn Braam <martijn@brixit.nl>, Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>, 
	Danct12 <danct12@disroot.org>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add modem to the Pinephone Pro
Message-ID: <ngikrgfwonxbgim2cp3xiqbahgxhsmsaou6lblcbna7wrb6wdr@djb46eqys7tx>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	guptarud@gmail.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Martijn Braam <martijn@brixit.nl>, Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>, 
	Danct12 <danct12@disroot.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
 <20260112-ppp_connectivity-v1-1-284d6e83b212@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260112-ppp_connectivity-v1-1-284d6e83b212@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_124728_379042_EB6BEC72 
X-CRM114-Status: GOOD (  15.91  )
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

SGVsbG8gUnVkcmFrc2hhLAoKT24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgMTA6NDI6MjRQTSAtMDgw
MCwgUnVkcmFrc2hhIEd1cHRhIHZpYSBCNCBSZWxheSB3cm90ZToKPiBGcm9tOiBSdWRyYWtzaGEg
R3VwdGEgPGd1cHRhcnVkQGdtYWlsLmNvbT4KPiAKPiBUaGlzIGFkZHMgdGhlIFF1ZWN0ZWwgRUcy
NS1HIG1vZGVtIHRvIHRoZSBQaW5lcGhvbmUgUHJvLgo+IAo+IENvLWRldmVsb3BlZC1ieTogTWFy
dGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+Cj4gU2lnbmVkLW9mZi1ieTogTWFydGlqbiBC
cmFhbSA8bWFydGlqbkBicml4aXQubmw+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBLYW1pbCBUcnpjacWE
c2tpIDxheXVmYW5AYXl1ZmFuLmV1Pgo+IFNpZ25lZC1vZmYtYnk6IEthbWlsIFRyemNpxYRza2kg
PGF5dWZhbkBheXVmYW4uZXU+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdp
QHhmZi5jej4KPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiBD
by1kZXZlbG9wZWQtYnk6IERhbmN0MTIgPGRhbmN0MTJAZGlzcm9vdC5vcmc+Cj4gU2lnbmVkLW9m
Zi1ieTogRGFuY3QxMiA8ZGFuY3QxMkBkaXNyb290Lm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBSdWRy
YWtzaGEgR3VwdGEgPGd1cHRhcnVkQGdtYWlsLmNvbT4KPiAtLS0KPiAgLi4uL2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyAgICAgfCA4MyArKysrKysrKysrKysrKysr
KysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA4MyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRz
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMK
PiBpbmRleCA2YjM1ZjU5Y2Q1OGUuLjk3ZDBiZjQ1NTI1OCAxMDA2NDQKPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cwo+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCj4gQEAg
LTk3LDYgKzk3LDQ2IEBAIG11bHRpLWxlZCB7Cj4gIAkJbGVkcyA9IDwmbGVkX3JlZD4sIDwmbGVk
X2dyZWVuPiwgPCZsZWRfYmx1ZT47Cj4gIAl9Owo+ICAKPiArCXZjY180Z181djogcmVndWxhdG9y
LXZjYy00Zy01diB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ICsJCWVu
YWJsZS1hY3RpdmUtaGlnaDsKPiArCQlncGlvID0gPCZncGlvMSBSS19QQzcgR1BJT19BQ1RJVkVf
SElHSD47Cj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8
JnZjY180Z181dl9lbj47Cj4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjXzRnXzV2IjsKPiArCQly
ZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiArCQlyZWd1bGF0b3ItbWF4LW1p
Y3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKPiAr
CQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICsJfTsKPiArCj4gKwl2Y2NfNGc6IHJlZ3VsYXRvci12
Y2MtNGcgewo+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiArCQllbmFibGUt
YWN0aXZlLWhpZ2g7Cj4gKwkJZ3BpbyA9IDwmZ3BpbzQgUktfUEM3IEdQSU9fQUNUSVZFX0hJR0g+
Owo+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwkJcGluY3RybC0wID0gPCZ2Y2Nf
NGdfZW4+Owo+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjY180ZyI7Cj4gKwkJcmVndWxhdG9yLW1p
bi1taWNyb3ZvbHQgPSA8MzgwMDAwMD47Cj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8
MzgwMDAwMD47Cj4gKwkJdmluLXN1cHBseSA9IDwmdmNjX3N5cz47Cj4gKwkJcmVndWxhdG9yLWFs
d2F5cy1vbjsKPiArCX07Cj4gKwo+ICsJdmNjNXYwX3N5czogcmVndWxhdG9yLXZjYzV2MC1ob3N0
IHsKPiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gKwkJcmVndWxhdG9yLW5h
bWUgPSAidmNjNXYwX3N5cyI7Cj4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAw
MD47Cj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4gKwkJcmVndWxh
dG9yLWFsd2F5cy1vbjsKPiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiArCQl2aW4tc3VwcGx5ID0g
PCZib29zdF9vdGc+Owo+ICsKPiArCQlyZWd1bGF0b3Itc3RhdGUtbWVtIHsKPiArCQkJcmVndWxh
dG9yLW9uLWluLXN1c3BlbmQ7Cj4gKwkJfTsKClRoaXMgZG9lcyBub3RoaW5nIGZvciByZWd1bGF0
b3ItZml4ZWQuIEFuZCBpbiBhbnkgY2FzZSwgdGhlcmUncyBubyBzdWNoCnJlZ3VsYXRvciBpbiB0
aGUgc2NoZW1hdGljLiB2Y2M1djBfc3lzIGlzIGp1c3QgYWxpYXMgZm9yIGJvb3N0IG91dHB1dCBm
cm9tClJLODE4LgoKU2VlOiBodHRwczovL3hmZi5jei9kbC90bXAvMDg2NGFmYWY4ZDIxYjFhNS5w
bmcKClNvIHlvdSBjYW4gcmVtb3ZlIHRoaXMgY29tcGxldGVseSBhbmQganVzdCBhZGQgdmNjNXYw
X3N5cyBhbGlhcyB0byBEQ0RDX0JPT1NULgoKQmVzdCByZWdhcmRzLAoJby4KCj4gKwl9Owo+ICsK
PiAgCXZjY19zeXM6IHJlZ3VsYXRvci12Y2Mtc3lzIHsKPiAgCQljb21wYXRpYmxlID0gInJlZ3Vs
YXRvci1maXhlZCI7Cj4gIAkJcmVndWxhdG9yLW5hbWUgPSAidmNjX3N5cyI7Cj4gQEAgLTI3NCw2
ICszMTQsMTcgQEAgcms4MTg6IHBtaWNAMWMgewo+ICAJCXZjYzktc3VwcGx5ID0gPCZ2Y2MzdjNf
c3lzPjsKPiAgCj4gIAkJcmVndWxhdG9ycyB7Cj4gKwkJCWJvb3N0X290ZzogRENEQ19CT09TVCB7
Cj4gKwkJCQlyZWd1bGF0b3ItbmFtZSA9ICJib29zdF9vdGciOwo+ICsJCQkJcmVndWxhdG9yLWFs
d2F5cy1vbjsKPiArCQkJCXJlZ3VsYXRvci1ib290LW9uOwo+ICsJCQkJcmVndWxhdG9yLW1pbi1t
aWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4gKwkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw1
MDAwMDAwPjsKPiArCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ICsJCQkJCXJlZ3VsYXRvci1v
bi1pbi1zdXNwZW5kOwo+ICsJCQkJfTsKPiArCQkJfTsKPiArCj4gIAkJCXZkZF9jcHVfbDogRENE
Q19SRUcxIHsKPiAgCQkJCXJlZ3VsYXRvci1uYW1lID0gInZkZF9jcHVfbCI7Cj4gIAkJCQlyZWd1
bGF0b3ItYWx3YXlzLW9uOwo+IEBAIC03MDIsNiArNzUzLDE2IEBAIGJsdWVfbGVkX3BpbjogYmx1
ZS1sZWQtcGluIHsKPiAgCQl9Owo+ICAJfTsKPiAgCj4gKwltb2RlbSB7Cj4gKwkJdmNjXzRnXzV2
X2VuOiB2Y2MtNGctNXYtZW4tcGluIHsKPiArCQkJcm9ja2NoaXAscGlucyA9IDwxIFJLX1BDNyBS
S19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiArCQl9Owo+ICsKPiArCQl2Y2NfNGdfZW46
IHZjYy00Zy1lbi1waW4gewo+ICsJCQlyb2NrY2hpcCxwaW5zID0gPDQgUktfUEM3IFJLX0ZVTkNf
R1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ICsJCX07Cj4gKwl9Owo+ICsKPiAgCXBtaWMgewo+ICAJ
CXBtaWNfaW50X2w6IHBtaWMtaW50LWwgewo+ICAJCQlyb2NrY2hpcCxwaW5zID0gPDEgUktfUEM1
IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKPiBAQCAtODI3LDYgKzg4OCwxNiBAQCAmdHNh
ZGMgewo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICAKPiArCj4gKyZ1MnBoeTEgewo+ICsJ
c3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJnUycGh5MV9ob3N0IHsKPiArCXN0YXR1cyA9
ICJva2F5IjsKPiArCXBoeS1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+ICt9Owo+ICsKPiAgJnVh
cnQwIHsKPiAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gIAlwaW5jdHJsLTAgPSA8JnVh
cnQwX3hmZXIgJnVhcnQwX2N0cyAmdWFydDBfcnRzPjsKPiBAQCAtODUyLDYgKzkyMywxOCBAQCAm
dWFydDIgewo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICAKPiArJnVhcnQzIHsKPiArCXN0
YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gKyZ1c2JfaG9zdDFfZWhjaSB7Cj4gKwlzdGF0dXMg
PSAib2theSI7Cj4gK307Cj4gKwo+ICsmdXNiX2hvc3QxX29oY2kgewo+ICsJc3RhdHVzID0gIm9r
YXkiOwo+ICt9Owo+ICsKPiAgJnZvcGIgewo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICAJYXNzaWdu
ZWQtY2xvY2tzID0gPCZjcnUgRENMS19WT1AwX0RJVj4sIDwmY3J1IERDTEtfVk9QMD4sCj4gCj4g
LS0gCj4gMi41Mi4wCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
