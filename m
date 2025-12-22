Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1A36E6749F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 12:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/x+l6rG6oBL6gsjhyWc9V/uKGfn7ZNHU7AqwEGCzq0=; b=mLK9KJVa0AmRYy
	/ES23nAK8XcSxPO2HD3ZbL8DhC+eS2dQ8vNUeecjHf1dvN/vVh/qBm+MLTasOdlHvbYCf5iELRObg
	F7nyZrVQAtJ6tmZH1eDLp7qMYrBkMkuink285Ei476ZdgL9BJb7PPNdRiuEDhLlo/wAIauAO6DNt2
	yZ8WXPz1OnXUyPpO3t8P5FEKAhZzPSHgCFDDFj3KNidImLXf0e6LsmfVNxxQ8hPZuY5f50UJzVqMX
	UMKAlKPUs7T1rAB62+AI91Kfunttju+LEAaaf40566YSCQWacVyhrUkruXwRcmoaADIPDthv0qGVU
	8CBVaTqmBRCqDf5tQNnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXerr-0000000Djhh-3xwG;
	Mon, 22 Dec 2025 12:18:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXerp-0000000DjhD-0dC6;
	Mon, 22 Dec 2025 12:18:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=InnbTxM3f/wDfQC//0Q8/OnFX1X5UMvCqLa3Cym9qos=; b=Rqum/xwuZ3U6nPNRJZ6j4sm0An
	yIt0IXG2ecYP9sVf8DVtTJh46L9HrUV5BRumtRBGYuvZbd6hmNMXTsGuv3rqeFPDCE0O4/O75TQTi
	YodXKuTb8eegjIkN1cvmBn81lPsbXAsKBHBqk0CZiMKTejHDnHrdmd8UxGvdButOlFWODnYfWpBgP
	ZRbJWlt2gmWE5K468pc0+jqE9JI9B6ijHAAZ4epfAxtInFEQsQgkwXYeeqCbX1xbD0UGNC1zN1hEz
	+z4mrNKcIvGuIpC206JL5cPZmkdi8obtVprZTp2gjN2RhyevE4eKoSN3Q4W+AMEV2pFgzAUSQYOs3
	Fp3Z4aIQ==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXerf-0005Na-Tu; Mon, 22 Dec 2025 13:18:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Martin =?UTF-8?B?SG9sb3Zza8O9IChQcm9iYWJseSBOb3RoaW5nIHMuci5vLik=?=
 <mh@probably.group>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable both 2.5GbE ports on Rock 5T
Date: Mon, 22 Dec 2025 13:18:15 +0100
Message-ID: <5037086.R56niFO833@phil>
In-Reply-To: <3903009.mvXUDI8C0e@workhorse>
References: <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
 <034BDB37-34FB-441F-B79E-1631CA501576@probably.group>
 <3903009.mvXUDI8C0e@workhorse>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_041825_305831_CDFBEC3A 
X-CRM114-Status: GOOD (  22.86  )
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

QW0gRnJlaXRhZywgMTkuIERlemVtYmVyIDIwMjUsIDE0OjA2OjEyIE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IE9uIFRodXJzZGF5LCAx
OCBEZWNlbWJlciAyMDI1IDA3OjI3OjA2IENlbnRyYWwgRXVyb3BlYW4gU3RhbmRhcmQgVGltZSBN
YXJ0aW4gSG9sb3Zza8O9IChQcm9iYWJseSBOb3RoaW5nIHMuci5vLikgd3JvdGU6Cj4gPiBUaGUg
UmFkeGEgUm9jayA1VCBib2FyZCBmZWF0dXJlcyB0d28gUlRMODEyNUIgMi41R2JFIEV0aGVybmV0
IGNvbnRyb2xsZXJzCj4gPiBjb25uZWN0ZWQgdmlhIFBDSWUgbGFuZXMgcGNpZTJ4MWwwIChmZTE3
MDAwMCkgYW5kIHBjaWUyeDFsMiAoZmUxOTAwMDApLgo+ID4gQ3VycmVudGx5IG9ubHkgb25lIGlu
dGVyZmFjZSBpcyBmdW5jdGlvbmFsIGJlY2F1c2UgdGhlIFBDSWUgY29udHJvbGxlcgo+ID4gbm9k
ZXMgbGFjayB0aGUgbmVjZXNzYXJ5IHJlc2V0IEdQSU8gY29uZmlndXJhdGlvbi4KPiA+IAo+ID4g
V2l0aG91dCB0aGUgcmVzZXQtZ3Bpb3MgcHJvcGVydHksIHRoZSBSVEw4MTI1QiBQSFlzIHJlbWFp
biBpbiByZXNldCBzdGF0ZQo+ID4gYW5kIGFyZSBub3QgZW51bWVyYXRlZCBieSB0aGUgUENJZSBi
dXMuIFRoaXMgcmVzdWx0cyBpbiBvbmx5IG9uZSBFdGhlcm5ldAo+ID4gaW50ZXJmYWNlIGJlaW5n
IGRldGVjdGVkLCBvciBub25lIGF0IGFsbCBkZXBlbmRpbmcgb24gVS1Cb290IGluaXRpYWxpemF0
aW9uLgo+ID4gCj4gPiBUaGlzIHBhdGNoIGFkZHMgdGhlIG1pc3NpbmcgY29uZmlndXJhdGlvbiBm
b3IgYm90aCBQQ0llIGNvbnRyb2xsZXJzOgo+ID4gLSBFbmFibGVzIGJvdGggcGNpZTJ4MWwwIGFu
ZCBwY2llMngxbDIgbm9kZXMgKHN0YXR1cyA9ICJva2F5IikKPiA+IC0gQ29uZmlndXJlcyByZXNl
dCBHUElPcyAoR1BJTzRfUEE1IGFuZCBHUElPM19QQjAgcmVzcGVjdGl2ZWx5KQo+ID4gLSBBZGRz
IGNvcnJlc3BvbmRpbmcgcGluY3RybCBkZWZpbml0aW9ucwo+ID4gCj4gPiBXaXRoIHRoaXMgY2hh
bmdlLCBib3RoIDIuNUdiRSBpbnRlcmZhY2VzIGFyZSBwcm9wZXJseSBkZXRlY3RlZCBhbmQKPiA+
IGZ1bmN0aW9uYWwgb24gdGhlIFJvY2sgNVQuCj4gPiAKPiA+IFRlc3RlZCBvbiBSYWR4YSBSb2Nr
IDVUIHYxLjIgcnVubmluZyBMaW51eCA2LjEyLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXJ0
aW4gSG9sb3Zza3kgPG1oQHByb2JhYmx5Lmdyb3VwPgo+ID4gLS0tCj4gPiBDaGFuZ2VzIGluIHYy
Ogo+ID4gLSBTb3J0ZWQgcGNpZSBub2RlcyBhbHBoYW51bWVyaWNhbGx5Cj4gPiAtIFNvcnRlZCBw
aW5jdHJsIG5vZGVzIGFscGhhbnVtZXJpY2FsbHkKPiA+IC0gQWRkZWQgU2lnbmVkLW9mZi1ieSBs
aW5lCj4gPiAKPiA+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNXQuZHRzICAg
ICAgfCAyOCArKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2Vy
dGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LXJvY2stNXQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtcm9jay01dC5kdHMKPiA+IGluZGV4IDBkZDkwYzc0NDM4MC4uYWViOGUwZDQyZjA5IDEwMDY0
NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01dC5k
dHMKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNXQu
ZHRzCj4gPiBAQCAtNjgsMTAgKzY4LDI0IEBAICZwY2llMngxbDEgewo+ID4gIAlyZXNldC1ncGlv
cyA9IDwmZ3BpbzQgUktfUEEyIEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gIAlzdGF0dXMgPSAib2th
eSI7Cj4gPiAgfTsKPiA+ICAKPiA+ICsmcGNpZTJ4MWwwIHsKPiA+ICsJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKPiA+ICsJcGluY3RybC0wID0gPCZwY2llMl8wX3JzdD47Cj4gPiArCXJlc2V0
LWdwaW9zID0gPCZncGlvNCBSS19QQTUgR1BJT19BQ1RJVkVfSElHSD47Cj4gPiArCXN0YXR1cyA9
ICJva2F5IjsKPiA+ICt9Owo+ID4gKwo+ID4gKyZwY2llMngxbDIgewo+ID4gKwlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwo+ID4gKwlwaW5jdHJsLTAgPSA8JnBjaWUyXzJfcnN0PjsKPiA+ICsJ
cmVzZXQtZ3Bpb3MgPSA8JmdwaW8zIFJLX1BCMCBHUElPX0FDVElWRV9ISUdIPjsKPiA+ICsJc3Rh
dHVzID0gIm9rYXkiOwo+ID4gK307Cj4gPiArCj4gPiAgJnBjaWUzMHBoeSB7Cj4gPiAgCWRhdGEt
bGFuZXMgPSA8MSAxIDIgMj47Cj4gPiAgfTsKPiA+IEBAIC0xMDEsNiArMTE1LDE0IEBAIHBjaWUy
IHsKPiA+ICsJCXBjaWUyXzBfcnN0OiBwY2llMi0wLXJzdCB7Cj4gPiArCQkJcm9ja2NoaXAscGlu
cyA9IDw0IFJLX1BBNSBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiA+ICsJCX07Cj4g
PiArCj4gPiAgCQlwY2llMl8xX3JzdDogcGNpZTItMS1yc3Qgewo+ID4gIAkJCXJvY2tjaGlwLHBp
bnMgPSA8NCBSS19QQTIgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gPiAgCQl9Owo+
ID4gKwo+ID4gKwkJcGNpZTJfMl9yc3Q6IHBjaWUyLTItcnN0IHsKPiA+ICsJCQlyb2NrY2hpcCxw
aW5zID0gPDMgUktfUEIwIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ID4gKwkJfTsK
PiA+ICsKPiA+ICAJCXBjaWUyXzBfdmNjM3YzX2VuOiBwY2llMi0wLXZjYy1lbiB7Cj4gPiAgCQkJ
cm9ja2NoaXAscGlucyA9IDwyIFJLX1BDMCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsK
PiA+ICAJCX07Cj4gPiAKPiAKPiBUaGlzIHN0dWZmIGlzIGFscmVhZHkgaW4gcmszNTg4LXJvY2st
NWItNWJwLTV0LmR0c2kuIEVyZ28sIHRoaXMgcGF0Y2gKPiBkb2VzIG5vdGhpbmcgYXQgYWxsLiBX
aGF0IGFyZSB5b3UgYWN0dWFsbHkgdHJ5aW5nIHRvIHNvbHZlPwo+IAo+IEhlaWtvLCBwbGVhc2Ug
ZG9uJ3QgYXBwbHkgdGhpcy4KClRoYW5rcyBmb3IgdGhlIGhlYWRzLXVwLCBib3RoIHRvIHlvdSBh
bmQgTmFva2kgOi0pCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
