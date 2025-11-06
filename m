Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BC3CCCFA05
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 19:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rraxySPxq+GOsgDaCmV8DfqrXLQ2sKlElrlFo2DdVxA=; b=PRTZ3Uc5SwMbmh
	gspITNr9fmZJv8W/uiXCTSeYD5nWDTZE85sCbnzbof00cU8paU5or4dm7b/qDux4E2+g+bw0V9u3w
	Ka59oB5T4Q+GgLjwy5USFWTYT6HyJFRGMBqe3e7r9YwFRqwmuNouIGoGIGbvagIOEcLdXczi6D8WY
	aNemVwQdUZg6jKBqpwIpNZ4dnFXkBUc/0nfDjKoO79OnhmjMOLM3pZuPbX+XqbPXCaUg8WIrVJpGQ
	HE8aTivLVlQTITs/f5dw6+yZq7hUkK3taJq0UJCfhj9B8mOseK0yTSgeroEvFW4WF/gMQHdFoSKbR
	fmnBIMZwmbECpv2vaFUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH5vN-0000000GB52-3d0b;
	Thu, 06 Nov 2025 19:45:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH5vL-0000000GB4b-3HX6
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 19:45:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=bNCTfdUYGfYwpTXCs05Wi92PJgfBGxwDffQgA/Eoyhg=; b=lwfghxUygOTW5wy+ryDKWkrh4q
	4ykv+c62oXDCezOSS/pvo8TizGZKIkv5/x6bGWQcDQ6mGAZO9Fw36MU86CznIrjxFRwSgleORlNyq
	xk2mzWdS2iS3KMwZXlaBODbdKXtllFg0v00X13zpRCvXD2BQQP9vMskC+EbGRf4wPF0894BWPIxqr
	HYmsGlEHc559+yksOE9PishRL4cKu8pN9DQodr8ggBJEz3BNqoy61h/jsv+tgZxgbyb0vRsOhA8Oe
	0LPOQHUPKWkzVKulK7IIbg0nedXreSkG+L2hMALPmpq3bIhJqiEKwwfZpx4Y3sU48lXMiLKm87BYY
	uKFHBwZA==;
Received: from i53875bac.versanet.de ([83.135.91.172] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vH5vK-0000jx-0F; Thu, 06 Nov 2025 20:45:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 damon.ding@rock-chips.com, jbx6244@gmail.com, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/5] arm64: dts: rockchip: Add Additional pinctrl defs for
 Indiedroid Nova
Date: Thu, 06 Nov 2025 20:45:33 +0100
Message-ID: <3438819.aeNJFYEL58@phil>
In-Reply-To: <20251105205708.732125-3-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
 <20251105205708.732125-3-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_114535_958601_00B28755 
X-CRM114-Status: GOOD (  16.69  )
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

SGkgQ2hyaXMsCgpBbSBNaXR0d29jaCwgNS4gTm92ZW1iZXIgMjAyNSwgMjE6NTc6MDUgTWl0dGVs
ZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBDaHJpcyBNb3JnYW46Cj4gRnJvbTogQ2hy
aXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiAKPiBEZWZpbmUgdGhlIHBpbmN0
cmwgbm9kZXMgZm9yIHRoZSBXaUZpIGludGVycnVwdHMsIGNvcnJlY3QgdGhlIHBpbmN0cmwKPiBm
b3IgdGhlIGV0aGVybmV0IGFjY29yZGluZyB0byB0aGUgc2NoZW1hdGljLCBhbmQgYWRkIHRoZSBj
bGszMmtfaW4KPiBjb250cm9sIGZvciB0aGUgUlRDLiBBZGQgdGhlIGNvcnJlY3QgcmVndWxhdG9y
IG1hcHBpbmcgZm9yIHRoZSBQQ0lFCj4gdG9vLgoKd2F5IHRvbyBtdWNoIGNvbXBsZXRlbHkgZGlm
ZmVyZW50IHRoaW5ncyB0byBzdHVmZiBpbnRvIG9uZSBwYXRjaC4KCi0gQWRkaW5nIHRoZSBzZGlv
IHdpZmkgaXMgb25lCi0gZXRoZXJuZXQgaXMgbmV4dCAuLi4geW91J3JlIG5vdCBmaXhpbmcsIGJ1
dCByZW1vdmluZyB0aGUgcGluY3RybD8KLSBwY2llMiBmaXhlcyBpcyBhbm90aGVyIG9uZQotIGFu
ZCB0aGUgY2xraW4zMmsgYXMgd2VsbAoKCkhlaWtvCgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gLS0tCj4gIC4uLi9kdHMvcm9ja2No
aXAvcmszNTg4cy1pbmRpZWRyb2lkLW5vdmEuZHRzICB8IDQzICsrKysrKysrKysrKy0tLS0tLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtaW5kaWVk
cm9pZC1ub3ZhLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1pbmRp
ZWRyb2lkLW5vdmEuZHRzCj4gaW5kZXggZGViYWI3NzMyYjcxLi5mNDA3ODJiNmM3ZGIgMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLWluZGllZHJvaWQt
bm92YS5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtaW5k
aWVkcm9pZC1ub3ZhLmR0cwo+IEBAIC00MDYsNyArNDA2LDcgQEAgcnRjX2h5bTg1NjM6IHJ0Y0A1
MSB7Cj4gIAkJY2xvY2stb3V0cHV0LW5hbWVzID0gImh5bTg1NjMiOwo+ICAJCWludGVycnVwdC1w
YXJlbnQgPSA8JmdwaW8wPjsKPiAgCQlpbnRlcnJ1cHRzID0gPFJLX1BCMCBJUlFfVFlQRV9MRVZF
TF9MT1c+Owo+IC0JCXBpbmN0cmwtMCA9IDwmaHltODU2M19pbnQ+Owo+ICsJCXBpbmN0cmwtMCA9
IDwmaHltODU2M19pbnQ+LCA8JmNsazMya19pbj47Cj4gIAkJcGluY3RybC1uYW1lcyA9ICJkZWZh
dWx0IjsKPiAgCQl3YWtldXAtc291cmNlOwo+ICAJfTsKPiBAQCAtNDU5LDggKzQ1OSwxMSBAQCAm
aTJzNV84Y2ggewo+ICB9Owo+ICAKPiAgJnBjaWUyeDFsMiB7Cj4gLQlwaW5jdHJsLTAgPSA8JnJ0
bDgxMTFfcGVyc3RiPjsKPiArCXBpbmN0cmwtMCA9IDwmcGNpZTIweDFtMF9wZXJzdG4+LCA8JnBj
aWUyMHgxbTBfY2xrcmVxbj4sCj4gKwkJICAgIDwmcGNpZTIweDFtMF93YWtlbj47Cj4gIAlwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8zIFJLX1BEMSBH
UElPX0FDVElWRV9ISUdIPjsKPiArCXZwY2llM3YzLXN1cHBseSA9IDwmdmNjXzN2M19zMz47Cj4g
IAlzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4gIAo+IEBAIC00ODYsMTIgKzQ4OSw2IEBAIGJ0X3dh
a2VfaG9zdDogYnQtd2FrZS1ob3N0IHsKPiAgCQl9Owo+ICAJfTsKPiAgCj4gLQlldGhlcm5ldC1w
aW5zIHsKPiAtCQlydGw4MTExX3BlcnN0YjogcnRsODExMS1wZXJzdGIgewo+IC0JCQlyb2NrY2hp
cCxwaW5zID0gPDMgUktfUEQxIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKPiAtCQl9Owo+
IC0JfTsKPiAtCj4gIAloeW04NTYzIHsKPiAgCj4gIAkJaHltODU2M19pbnQ6IGh5bTg1NjMtaW50
IHsKPiBAQCAtNTAwLDEzICs0OTcsNiBAQCBoeW04NTYzX2ludDogaHltODU2My1pbnQgewo+ICAJ
CX07Cj4gIAl9Owo+ICAKPiAtCXNkaW8tcHdyc2VxIHsKPiAtCQl3aWZpX2VuYWJsZV9oOiB3aWZp
LWVuYWJsZS1oIHsKPiAtCQkJcm9ja2NoaXAscGlucyA9Cj4gLQkJCQk8MCBSS19QQzcgUktfRlVO
Q19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gLQkJfTsKPiAtCX07Cj4gLQo+ICAJdXNiLXR5cGVj
IHsKPiAgCQl1c2JjMF9pbnQ6IHVzYmMwLWludCB7Cj4gIAkJCXJvY2tjaGlwLHBpbnMgPQo+IEBA
IC01MTgsNiArNTA4LDE4IEBAIHR5cGVjNXZfcHdyZW46IHR5cGVjNXYtcHdyZW4gewo+ICAJCQkJ
PDQgUktfUEE1IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ICAJCX07Cj4gIAl9Owo+
ICsKPiArCXdpZmkgewo+ICsJCXdpZmlfZW5hYmxlX2g6IHdpZmktZW5hYmxlLWggewo+ICsJCQly
b2NrY2hpcCxwaW5zID0KPiArCQkJCTwwIFJLX1BDNyBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9u
b25lPjsKPiArCQl9Owo+ICsKPiArCQl3aWZpX2hvc3Rfd2FrZV9pcnE6IHdpZmktaG9zdC13YWtl
LWlycSB7Cj4gKwkJCXJvY2tjaGlwLHBpbnMgPQo+ICsJCQkJPDAgUktfUEEwIFJLX0ZVTkNfR1BJ
TyAmcGNmZ19wdWxsX2Rvd24+Owo+ICsJCX07Cj4gKwl9Owo+ICB9Owo+ICAKPiAgJnNhcmFkYyB7
Cj4gQEAgLTUzOCw2ICs1NDAsNyBAQCAmc2RoY2kgewo+ICB9Owo+ICAKPiAgJnNkaW8gewo+ICsJ
I2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gIAlidXMtd2lkdGggPSA8ND47Cj4gIAljYXAtc2QtaGln
aHNwZWVkOwo+ICAJY2FwLXNkaW8taXJxOwo+IEBAIC01NDksOSArNTUyLDE5IEBAICZzZGlvIHsK
PiAgCW5vLXNkOwo+ICAJbm9uLXJlbW92YWJsZTsKPiAgCXNkLXVocy1zZHIxMDQ7Cj4gKwkjc2l6
ZS1jZWxscyA9IDwwPjsKPiAgCXZtbWMtc3VwcGx5ID0gPCZ2Y2NfM3YzX3MzPjsKPiAgCXZxbW1j
LXN1cHBseSA9IDwmdmNjXzF2OF9zMz47Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gKwo+ICsJc2Rp
b193aWZpOiB3aWZpQDEgewo+ICsJCXJlZyA9IDwxPjsKPiArCQlpbnRlcnJ1cHQtcGFyZW50ID0g
PCZncGlvMD47Cj4gKwkJaW50ZXJydXB0cyA9IDxSS19QQTAgSVJRX1RZUEVfTEVWRUxfTE9XPjsK
PiArCQlpbnRlcnJ1cHQtbmFtZXMgPSAiaG9zdC13YWtlIjsKPiArCQlwaW5jdHJsLTAgPSA8Jndp
ZmlfaG9zdF93YWtlX2lycT47Cj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCX07
Cj4gIH07Cj4gIAo+ICAmc2RtbWMgewo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
