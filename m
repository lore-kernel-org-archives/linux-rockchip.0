Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57241D78771
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 13:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKO9dTeQZT+BDbrOtEu1vKt1Gah7Q9+frCP2+yUzfys=; b=g7xLPhunkzQ3KT
	uUQw//akP+WF3V9goyUfeA5DIUfDIC4gFOHKgqZJ2ZWr7I6PrfY4170PiTeyG7wvJy9KBMfebmfPP
	NwpEnXt+zxsz/Qwq+yVylmtDcHsa18T5xenkU/QMFyA/c/IE1hxFYE3KWmokHSkIoVK1tsCWuoE1/
	GkSa4KJihhm9aaQZJwwQGCOoJiS+hPSo0MRb3gOX8CZYWboQiTGfnXvp6+Imepze54hyl8stSdjE+
	F0CjMgdwvIcpVjJiGQ0V+Ps6/LqDT7C59r2zYrk781kxCcQqWZ/ysQ0s6K556HVZoXNS1J8TCc4oK
	LKzYcP3jujX99N2ZbJ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWaBi-0000000AKlg-1alx;
	Fri, 19 Dec 2025 13:06:30 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWaBg-0000000AKlC-1AKY;
	Fri, 19 Dec 2025 13:06:29 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1766149581; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GmOprmdjNaFHk6r6ISU1szVfxMlr/+pLO2C+weD2Rv4jD8wnNcugOy+YO2M3bo2+PZAr4ozOIVPHucvwrdzJRdZ1DfaJ/G0FQFNY8UJ/AjqFiL2LvvUTXpSeA9rIB8kBh31UsPC2Ul+iu/0kDI9bdas0jcbpvcT+gAMGOy2ohO8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1766149581; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=GqV1TxuZGmM0+l+LbeX4CZHJeCwyepPdOcdQFGFKo1c=; 
	b=fE7F3kB6LAwNlS7W94d1iezckMYLkR/ngheNSK97dhE8Yjw+yTXOH3PvuBBSyJRks1qc/dDL6ywlOchnClZxGzHxG52t7Yj4f8mvJj1/1/DyAvveh5tefNGxcGDxJovozi3lEt8jPWL7YPPyvOf/L7V2PeC3jiYpuMfi27+4lEw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1766149581;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=GqV1TxuZGmM0+l+LbeX4CZHJeCwyepPdOcdQFGFKo1c=;
	b=U3zPlNJ46asIrZunAiVyNdQwQnHLj85spUcDSI7cTRefvUfw/tiU49oiLP4yZYDF
	jde88XzHjxuGSTqcXYIK5+aMGoz7C6qcgkD33XzT4pv58xgOuioFBIS4C/Unr/a0CLF
	VI+oPnrIBJdT6uXnpqgmmOBJ8cJZV94NN8mDvZVY=
Received: by mx.zohomail.com with SMTPS id 1766149579059588.8359306488277;
	Fri, 19 Dec 2025 05:06:19 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Martin =?UTF-8?B?SG9sb3Zza8O9IChQcm9iYWJseSBOb3RoaW5nIHMuci5vLik=?=
 <mh@probably.group>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable both 2.5GbE ports on Rock 5T
Date: Fri, 19 Dec 2025 14:06:12 +0100
Message-ID: <3903009.mvXUDI8C0e@workhorse>
In-Reply-To: <034BDB37-34FB-441F-B79E-1631CA501576@probably.group>
References: <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
 <034BDB37-34FB-441F-B79E-1631CA501576@probably.group>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_050628_391405_0E254AEF 
X-CRM114-Status: GOOD (  17.47  )
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

T24gVGh1cnNkYXksIDE4IERlY2VtYmVyIDIwMjUgMDc6Mjc6MDYgQ2VudHJhbCBFdXJvcGVhbiBT
dGFuZGFyZCBUaW1lIE1hcnRpbiBIb2xvdnNrw70gKFByb2JhYmx5IE5vdGhpbmcgcy5yLm8uKSB3
cm90ZToKPiBUaGUgUmFkeGEgUm9jayA1VCBib2FyZCBmZWF0dXJlcyB0d28gUlRMODEyNUIgMi41
R2JFIEV0aGVybmV0IGNvbnRyb2xsZXJzCj4gY29ubmVjdGVkIHZpYSBQQ0llIGxhbmVzIHBjaWUy
eDFsMCAoZmUxNzAwMDApIGFuZCBwY2llMngxbDIgKGZlMTkwMDAwKS4KPiBDdXJyZW50bHkgb25s
eSBvbmUgaW50ZXJmYWNlIGlzIGZ1bmN0aW9uYWwgYmVjYXVzZSB0aGUgUENJZSBjb250cm9sbGVy
Cj4gbm9kZXMgbGFjayB0aGUgbmVjZXNzYXJ5IHJlc2V0IEdQSU8gY29uZmlndXJhdGlvbi4KPiAK
PiBXaXRob3V0IHRoZSByZXNldC1ncGlvcyBwcm9wZXJ0eSwgdGhlIFJUTDgxMjVCIFBIWXMgcmVt
YWluIGluIHJlc2V0IHN0YXRlCj4gYW5kIGFyZSBub3QgZW51bWVyYXRlZCBieSB0aGUgUENJZSBi
dXMuIFRoaXMgcmVzdWx0cyBpbiBvbmx5IG9uZSBFdGhlcm5ldAo+IGludGVyZmFjZSBiZWluZyBk
ZXRlY3RlZCwgb3Igbm9uZSBhdCBhbGwgZGVwZW5kaW5nIG9uIFUtQm9vdCBpbml0aWFsaXphdGlv
bi4KPiAKPiBUaGlzIHBhdGNoIGFkZHMgdGhlIG1pc3NpbmcgY29uZmlndXJhdGlvbiBmb3IgYm90
aCBQQ0llIGNvbnRyb2xsZXJzOgo+IC0gRW5hYmxlcyBib3RoIHBjaWUyeDFsMCBhbmQgcGNpZTJ4
MWwyIG5vZGVzIChzdGF0dXMgPSAib2theSIpCj4gLSBDb25maWd1cmVzIHJlc2V0IEdQSU9zIChH
UElPNF9QQTUgYW5kIEdQSU8zX1BCMCByZXNwZWN0aXZlbHkpCj4gLSBBZGRzIGNvcnJlc3BvbmRp
bmcgcGluY3RybCBkZWZpbml0aW9ucwo+IAo+IFdpdGggdGhpcyBjaGFuZ2UsIGJvdGggMi41R2JF
IGludGVyZmFjZXMgYXJlIHByb3Blcmx5IGRldGVjdGVkIGFuZAo+IGZ1bmN0aW9uYWwgb24gdGhl
IFJvY2sgNVQuCj4gCj4gVGVzdGVkIG9uIFJhZHhhIFJvY2sgNVQgdjEuMiBydW5uaW5nIExpbnV4
IDYuMTIuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFydGluIEhvbG92c2t5IDxtaEBwcm9iYWJseS5n
cm91cD4KPiAtLS0KPiBDaGFuZ2VzIGluIHYyOgo+IC0gU29ydGVkIHBjaWUgbm9kZXMgYWxwaGFu
dW1lcmljYWxseQo+IC0gU29ydGVkIHBpbmN0cmwgbm9kZXMgYWxwaGFudW1lcmljYWxseQo+IC0g
QWRkZWQgU2lnbmVkLW9mZi1ieSBsaW5lCj4gCj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtcm9jay01dC5kdHMgICAgICB8IDI4ICsrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNo
YW5nZWQsIDI4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01dC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1yb2NrLTV0LmR0cwo+IGluZGV4IDBkZDkwYzc0NDM4MC4uYWViOGUwZDQy
ZjA5IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJv
Y2stNXQuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9j
ay01dC5kdHMKPiBAQCAtNjgsMTAgKzY4LDI0IEBAICZwY2llMngxbDEgewo+ICAJcmVzZXQtZ3Bp
b3MgPSA8JmdwaW80IFJLX1BBMiBHUElPX0FDVElWRV9ISUdIPjsKPiAgCXN0YXR1cyA9ICJva2F5
IjsKPiAgfTsKPiAgCj4gKyZwY2llMngxbDAgewo+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKPiArCXBpbmN0cmwtMCA9IDwmcGNpZTJfMF9yc3Q+Owo+ICsJcmVzZXQtZ3Bpb3MgPSA8Jmdw
aW80IFJLX1BBNSBHUElPX0FDVElWRV9ISUdIPjsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsK
PiArCj4gKyZwY2llMngxbDIgewo+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCXBp
bmN0cmwtMCA9IDwmcGNpZTJfMl9yc3Q+Owo+ICsJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8zIFJLX1BC
MCBHUElPX0FDVElWRV9ISUdIPjsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gICZw
Y2llMzBwaHkgewo+ICAJZGF0YS1sYW5lcyA9IDwxIDEgMiAyPjsKPiAgfTsKPiBAQCAtMTAxLDYg
KzExNSwxNCBAQCBwY2llMiB7Cj4gKwkJcGNpZTJfMF9yc3Q6IHBjaWUyLTAtcnN0IHsKPiArCQkJ
cm9ja2NoaXAscGlucyA9IDw0IFJLX1BBNSBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsK
PiArCQl9Owo+ICsKPiAgCQlwY2llMl8xX3JzdDogcGNpZTItMS1yc3Qgewo+ICAJCQlyb2NrY2hp
cCxwaW5zID0gPDQgUktfUEEyIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ICAJCX07
Cj4gKwo+ICsJCXBjaWUyXzJfcnN0OiBwY2llMi0yLXJzdCB7Cj4gKwkJCXJvY2tjaGlwLHBpbnMg
PSA8MyBSS19QQjAgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gKwkJfTsKPiArCj4g
IAkJcGNpZTJfMF92Y2MzdjNfZW46IHBjaWUyLTAtdmNjLWVuIHsKPiAgCQkJcm9ja2NoaXAscGlu
cyA9IDwyIFJLX1BDMCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiAgCQl9Owo+IAoK
VGhpcyBzdHVmZiBpcyBhbHJlYWR5IGluIHJrMzU4OC1yb2NrLTViLTVicC01dC5kdHNpLiBFcmdv
LCB0aGlzIHBhdGNoCmRvZXMgbm90aGluZyBhdCBhbGwuIFdoYXQgYXJlIHlvdSBhY3R1YWxseSB0
cnlpbmcgdG8gc29sdmU/CgpIZWlrbywgcGxlYXNlIGRvbid0IGFwcGx5IHRoaXMuCgpLaW5kIHJl
Z2FyZHMsCk5pY29sYXMgRnJhdHRhcm9saQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
