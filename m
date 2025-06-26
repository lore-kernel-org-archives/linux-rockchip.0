Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DAE8C7EE30
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 13:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wK5M4P4Jhyp1aXIaP4LvQUl7YAKiqp6GK5JDpj/OtvQ=; b=JUyzwEqblY3zhg
	ne4SrqOH+D5mL3fEPNOviiiifsaoAXYu26Xi0gF1X09j5ginQoUUepgNw75CLU46Gxl++xsX+dR9F
	JOfrci9iiG1rC41dt5duclIzb5CRrT0imyCHsQxhrl0kZsYM2/8HSdvxq2Vdh4iYfr2XE42KFZ2ir
	T92Z27g7hRNHwbXkdBCOJBE/g99QsrfC34AyyCcWmaBYWTDuzNK/xVfgYgAL2+VGlx2zAuR0AhdYy
	oq5VBiUcLiEYBfYgEV33IfxiGX/neCDdHWfmlyvB/u9xn7QARFKx/PhHIb2sh0kTz3pCRiEk7BkJs
	Ng9NM93j1NF0PuxyaWaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUmR9-0000000BdMT-0WVX;
	Thu, 26 Jun 2025 13:14:43 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUmOq-0000000Bd3K-1UC4;
	Thu, 26 Jun 2025 13:12:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 7B5CCA4F546;
	Thu, 26 Jun 2025 13:12:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 780F7C4CEEB;
	Thu, 26 Jun 2025 13:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750943539;
	bh=hgnNwmNHQIaHTRV7by3eS6rJbwsUw32zvUf2T8ZhwYs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NOElbKXY02VgrNiUrX1G/CcXLwzVfADp9KoK5skUSphltZI3P73cgUEtUXAMBGo/u
	 ixImxf7cXZRPS5KU1ivVi4KzG8HICGYn2MGL9v2RFIXcIjMJOUwzE8jhqL7cHSW1bD
	 rmdb6hLTdQvoSQI6kEeUGpNW6fj2hTjo3VIkIzHpu7hTUPVg29f2yBjwFKygytBFo/
	 HU/W3V3hkgnjSh/dyeYkByQBU1a64SlDNz6/GvGyqoeta8oZDxIYMeYSQqQOlu4oAy
	 ScfKU5DiHBQoOEd2zHamINSZJKEq2WqjAFhMA3+rbw7I9CKAr5+Nh0k+y/4JgvHLRN
	 ldBCrWUtWU9tA==
Date: Thu, 26 Jun 2025 14:12:13 +0100
From: Lee Jones <lee@kernel.org>
To: Quentin Schulz <foss+kernel@0leil.net>
Subject: Re: [PATCH v3 2/5] mfd: rk8xx-core: allow to customize RK806 reset
 mode
Message-ID: <20250626131213.GD10134@google.com>
References: <20250618-rk8xx-rst-fun-v3-0-081f02d3d348@cherry.de>
 <20250618-rk8xx-rst-fun-v3-2-081f02d3d348@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250618-rk8xx-rst-fun-v3-2-081f02d3d348@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_061220_520312_EDAB021D 
X-CRM114-Status: GOOD (  27.88  )
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
Cc: Daniel Semkowicz <dse@thaumatec.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCAxOCBKdW4gMjAyNSwgUXVlbnRpbiBTY2h1bHogd3JvdGU6Cgo+IEZyb206IFF1ZW50
aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+Cj4gCj4gVGhlIFJLODA2IFBNSUMg
aGFzIGEgYml0ZmllbGQgZm9yIGNvbmZpZ3VyaW5nIHRoZSByZXN0YXJ0L3Jlc2V0IGJlaGF2aW9y
Cj4gKHdoaWNoIEkgYXNzdW1lIFJvY2tjaGlwIGNhbGxzICJmdW5jdGlvbiIpIHdoZW5ldmVyIHRo
ZSBQTUlDIGlzIHJlc2V0Cj4gZWl0aGVyIHByb2dyYW1tYXRpY2FsbHkgKGMuZi4gREVWX1JTVCBp
biB0aGUgZGF0YXNoZWV0KSBvciB2aWEgUFdSQ1RSTAo+IG9yIFJFU0VUQiBwaW5zLgo+IAo+IEZv
ciBSSzgwNiwgdGhlIGZvbGxvd2luZyB2YWx1ZXMgYXJlIHBvc3NpYmxlIGZvciBSU1RfRlVOOgo+
IAo+IDBiMDAgbWVhbnMgInJlc3RhcnQgUE1VIgoKIlJlc3RhcnQgUE1VIgoKPiAwYjAxIG1lYW5z
ICJSZXNldCBhbGwgdGhlIHBvd2VyIG9mZiByZXNldCByZWdpc3RlcnMsIGZvcmNpbmcKPiAJdGhl
IHN0YXRlIHRvIHN3aXRjaCB0byBBQ1RJVkUgbW9kZSIKPiAwYjEwIG1lYW5zICJSZXNldCBhbGwg
dGhlIHBvd2VyIG9mZiByZXNldCByZWdpc3RlcnMsIGZvcmNpbmcKPiAJdGhlIHN0YXRlIHRvIHN3
aXRjaCB0byBBQ1RJVkUgbW9kZSwgYW5kIHNpbXVsdGFuZW91c2x5Cj4gCXB1bGwgZG93biB0aGUg
UkVTRVRCIFBJTiBmb3IgNW1TIGJlZm9yZSByZWxlYXNpbmciCj4gMGIxMSBtZWFucyB0aGUgc2Ft
ZSBhcyBmb3IgMGIxMCBqdXN0IGFib3ZlLgo+IAo+IFRoaXMgYWRkcyB0aGUgYXBwcm9wcmlhdGUg
bG9naWMgaW4gdGhlIGRyaXZlciB0byBwYXJzZSB0aGUgbmV3Cj4gcm9ja2NoaXAscmVzZXQtbW9k
ZSBEVCBwcm9wZXJ0eSB0byBwYXNzIHRoaXMgaW5mb3JtYXRpb24uIEl0IGp1c3QKPiBoYXBwZW5z
IHRoYXQgdGhlIHZhbHVlcyBpbiB0aGUgYmluZGluZyBtYXRjaCB0aGUgdmFsdWVzIHRvIHdyaXRl
IGluIHRoZQo+IGJpdGZpZWxkIHNvIG5vIG1hcHBpbmcgaXMgbmVjZXNzYXJ5Lgo+IAo+IElmIGl0
IGlzIG1pc3NpbmcsIHRoZSByZWdpc3RlciBpcyBsZWZ0IHVudG91Y2hlZCBhbmQgcmVsaWVzIGVp
dGhlciBvbgo+IHRoZSBzaWxpY29uIGRlZmF1bHQgb3Igb24gd2hhdGV2ZXIgd2FzIHNldCBlYXJs
aWVyIGluIHRoZSBib290IHN0YWdlcwo+IChlLmcuIHRoZSBib290bG9hZGVyKS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRlPgo+IC0t
LQo+ICBkcml2ZXJzL21mZC9yazh4eC1jb3JlLmMgIHwgMTUgKysrKysrKysrKysrKysrCj4gIGlu
Y2x1ZGUvbGludXgvbWZkL3JrODA4LmggfCAgMiArKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDE3IGlu
c2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvcms4eHgtY29yZS5jIGIv
ZHJpdmVycy9tZmQvcms4eHgtY29yZS5jCj4gaW5kZXggNzFjMmI4MGE0Njc4ZDYyN2U4NmNmYmVj
ODEzNWYwOGUyNjI1NTlkMy4uMjNmZjkyZjg5ZjMzNTdlM2Y0N2M1ZGQwZTlmODBjY2E0NTNmMjJj
MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21mZC9yazh4eC1jb3JlLmMKPiArKysgYi9kcml2ZXJz
L21mZC9yazh4eC1jb3JlLmMKPiBAQCAtMTAsNiArMTAsNyBAQAo+ICAgKiBBdXRob3I6IFdhZGlt
IEVnb3JvdiA8dy5lZ29yb3ZAcGh5dGVjLmRlPgo+ICAgKi8KPiAgCj4gKyNpbmNsdWRlIDxsaW51
eC9iaXRmaWVsZC5oPgo+ICAjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+Cj4gICNpbmNsdWRl
IDxsaW51eC9tZmQvcms4MDguaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21mZC9jb3JlLmg+Cj4gQEAg
LTY5OSw2ICs3MDAsNyBAQCBpbnQgcms4eHhfcHJvYmUoc3RydWN0IGRldmljZSAqZGV2LCBpbnQg
dmFyaWFudCwgdW5zaWduZWQgaW50IGlycSwgc3RydWN0IHJlZ21hcAo+ICAJY29uc3Qgc3RydWN0
IG1mZF9jZWxsICpjZWxsczsKPiAgCWludCBkdWFsX3N1cHBvcnQgPSAwOwo+ICAJaW50IG5yX3By
ZV9pbml0X3JlZ3M7Cj4gKwl1MzIgcnN0X2Z1biA9IDA7Cj4gIAlpbnQgbnJfY2VsbHM7Cj4gIAlp
bnQgcmV0Owo+ICAJaW50IGk7Cj4gQEAgLTcyNiw2ICs3MjgsMTkgQEAgaW50IHJrOHh4X3Byb2Jl
KHN0cnVjdCBkZXZpY2UgKmRldiwgaW50IHZhcmlhbnQsIHVuc2lnbmVkIGludCBpcnEsIHN0cnVj
dCByZWdtYXAKPiAgCQljZWxscyA9IHJrODA2czsKPiAgCQlucl9jZWxscyA9IEFSUkFZX1NJWkUo
cms4MDZzKTsKPiAgCQlkdWFsX3N1cHBvcnQgPSBJUlFGX1NIQVJFRDsKPiArCj4gKwkJcmV0ID0g
ZGV2aWNlX3Byb3BlcnR5X3JlYWRfdTMyKGRldiwgInJvY2tjaGlwLHJlc2V0LW1vZGUiLCAmcnN0
X2Z1bik7Cj4gKwkJaWYgKHJldCkgewo+ICsJCQlkZXZfZGJnKGRldiwKPiArCQkJCSJyb2NrY2hp
cCxyZXNldC1tb2RlIHByb3BlcnR5IG1pc3NpbmcsIG5vdCBzZXR0aW5nIFJTVF9GVU5cbiIpOwoK
SSBzdWdnZXN0IHRoYXQgdGhpcyBkZWJ1ZyBtZXNzYWdlIGlzIG5vdCB0aGF0IHVzZWZ1bCBhbmQg
Y2FuIGJlIHJlbW92ZWQuCgo+ICsJCQlicmVhazsKPiArCQl9Cj4gKwo+ICsJCXJldCA9IHJlZ21h
cF91cGRhdGVfYml0cyhyazgwOC0+cmVnbWFwLCBSSzgwNl9TWVNfQ0ZHMywKPiArCQkJCQkgUks4
MDZfUlNUX0ZVTl9NU0ssCgpQbGFjZSBvbiB0aGUgbGluZSBhYm92ZT8KCj4gKwkJCQkJIEZJRUxE
X1BSRVAoUks4MDZfUlNUX0ZVTl9NU0ssIHJzdF9mdW4pKTsKPiArCQlpZiAocmV0KQo+ICsJCQly
ZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIHJldCwgIlJTVF9GVU4gd3JpdGUgZXJyXG4iKTsKCkZh
aWxlZCB0byBjb25maWd1cmUgcmVxdWVzdGVkIHJlc3RhcnQvcmVzZXQgYmVoYXZpb3IiCgo+ICAJ
CWJyZWFrOwo+ICAJY2FzZSBSSzgwOF9JRDoKPiAgCQlyazgwOC0+cmVnbWFwX2lycV9jaGlwID0g
JnJrODA4X2lycV9jaGlwOwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21mZC9yazgwOC5o
IGIvaW5jbHVkZS9saW51eC9tZmQvcms4MDguaAo+IGluZGV4IDY5Y2JlYTc4YjQzMGI1NjJhMjNk
OTk1MjYzMzY5ZDQ3NWRhYTYyODcuLjI4MTcwZWUwODg5OGNhNTljNzZhNzQxYTFkNDI3NjNhNDJi
NzIzODAgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9tZmQvcms4MDguaAo+ICsrKyBiL2lu
Y2x1ZGUvbGludXgvbWZkL3JrODA4LmgKPiBAQCAtODEyLDYgKzgxMiw4IEBAIGVudW0gcms4MDZf
cGluX2RyX3NlbCB7Cj4gICNkZWZpbmUgUks4MDZfSU5UX1BPTF9ICQkJQklUKDEpCj4gICNkZWZp
bmUgUks4MDZfSU5UX1BPTF9MCQkJMAo+ICAKPiArLyogU1lTX0NGRzMgKi8KPiArI2RlZmluZSBS
SzgwNl9SU1RfRlVOX01TSwkJR0VOTUFTSyg3LCA2KQo+ICAjZGVmaW5lIFJLODA2X1NMQVZFX1JF
U1RBUlRfRlVOX01TSwlCSVQoMSkKPiAgI2RlZmluZSBSSzgwNl9TTEFWRV9SRVNUQVJUX0ZVTl9F
TglCSVQoMSkKPiAgI2RlZmluZSBSSzgwNl9TTEFWRV9SRVNUQVJUX0ZVTl9PRkYJMAo+IAo+IC0t
IAo+IDIuNDkuMAo+IAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
