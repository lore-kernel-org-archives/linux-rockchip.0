Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A15F8E7717F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Dec 2024 18:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryZaFZlXXD/JRhbB0Jgv4ZwYiz4ByechLNEOWwsOxOY=; b=VsVbFGljBpz6wP
	DfCRHAyXIqMlJ78nxjcengBq6AKo3mJSEJWBLzgr8SNJP4K3y4ewCiX3QxtfM93X2f4UG9uV+h+sq
	mEuecfwnFEF6YtE8E74R/bZvKmjH/Tgx2QqmSgkIQZw08hpxpM7U4GWStD+hg5NTN7JAa0wpqSSt9
	LDaKUVV/Xn+jhQyMpNetccEq3GbBmd2l1y0LIU0SzFdMeKt2Qe0YvIUTE4qgfPiBTGVGgHXlz4kD7
	3Ob9YyadYenY8gQildjq7FiiM2kp0zeHErV6ohxgMcSKm9TpVNvgLnvS6sVDQveJidrWUXoc4HOFG
	BZVWo9XZBNhYjbPvtl6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMAVo-00000004hDR-1wEP;
	Fri, 13 Dec 2024 18:35:40 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tMAUi-00000004h5F-48Rg;
	Fri, 13 Dec 2024 18:34:34 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1734114847; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=SvAcOJY4ENjwkh4yqc8jzgQIfxnftgaq/eaNj7wJ7zOpHvNVDof2/8UZUAOZtn3UDGFiO5UxSEf2N+f/u1dwgt0JyjQfHtXqc6FyTifepQ5fDQ4Ko5ZrS2VbsJYu5zVnClkLDr/FTrfTU/4xsattOjY0e8Hye/LY6POLKztRoMw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1734114847; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=9Dm+phNaOF6lF+9DcLSZb4FaAsRUdmNhMpbAh3iEkgU=; 
	b=ZU+D4io+X1w4oKuq6ToZYMbh5iFAGnA1sJ2JDrggylvYCBA40E49jWo6mobOBca7I+JuBE5Ynxj5o+9T6D/CoYsuSqHgy0/yIfjCIVZWtBhoEQ6IBCtHkeshC9mvDyO2sj0VW+jZZ2/zHz5m4qEsd+sLcB7XO7s1SW8DSWq+iNg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1734114847;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=9Dm+phNaOF6lF+9DcLSZb4FaAsRUdmNhMpbAh3iEkgU=;
	b=fZnO6G4PjfRmzE1ndXHGkWFhk5VnRDMGhRwPOoouZRcQG6yh8BmRnfrVL48NL2Rv
	1dwxMrN/S0qxFh+9UrgVhJUs7xDWcUXFGMjz4eGbsrG1R12g3nczGvnyIphB/bMsUwa
	v9Z+yXOwQ4Qu8fIhnte1rR7FZ0K0xbWhm1k77qOg=
Received: by mx.zohomail.com with SMTPS id 1734114845510958.4473681288645;
	Fri, 13 Dec 2024 10:34:05 -0800 (PST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org,
 s.hauer@pengutronix.de, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 derek.foreman@collabora.com, Andy Yan <andy.yan@rock-chips.com>,
 kernel@collabora.com
Subject: Re: [PATCH v5 05/18] drm/rockchip: vop2: Set AXI id for rk3588
Date: Fri, 13 Dec 2024 13:34:03 -0500
Message-ID: <13660005.uLZWGnKmhe@bootstrap>
In-Reply-To: <3f1eace4.75cf.193b9daf585.Coremail.andyshrk@163.com>
References: <20241209122943.2781431-1-andyshrk@163.com> <5843712.DvuYhMxLoT@bootstrap>
 <3f1eace4.75cf.193b9daf585.Coremail.andyshrk@163.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_103433_064984_A374A324 
X-CRM114-Status: GOOD (  26.11  )
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

T24gVGh1cnNkYXksIDEyIERlY2VtYmVyIDIwMjQgMDI6NTI6MzQgRVNUIEFuZHkgWWFuIHdyb3Rl
Ogo+IEhpIERldGxldiwKPiAKPiBBdCAyMDI0LTEyLTExIDIzOjQ1OjAxLCAiRGV0bGV2IENhc2Fu
b3ZhIiA8ZGV0bGV2LmNhc2Fub3ZhQGNvbGxhYm9yYS5jb20+IAp3cm90ZToKPiA+T24gV2VkbmVz
ZGF5LCAxMSBEZWNlbWJlciAyMDI0IDAxOjM0OjM0IEVTVCBBbmR5IFlhbiB3cm90ZToKPiA+PiBI
aSBEZXRsZXYsCj4gPj4gCj4gPj4gQXQgMjAyNC0xMi0xMSAwMjo0MDoxNCwgIkRldGxldiBDYXNh
bm92YSIgPGRldGxldi5jYXNhbm92YUBjb2xsYWJvcmEuY29tPgo+ID4KPiA+d3JvdGU6Cj4gPj4g
PkhpIEFuZHksCj4gPj4gPgo+ID4+ID5PbiBNb25kYXksIDkgRGVjZW1iZXIgMjAyNCAwNzoyOTox
OCBFU1QgQW5keSBZYW4gd3JvdGU6Cj4gPj4gPj4gRnJvbTogQW5keSBZYW4gPGFuZHkueWFuQHJv
Y2stY2hpcHMuY29tPgo+ID4+ID4+IAo+ID4+ID4+IFRoZXJlIGFyZSB0d28gQVhJIGJ1cyBpbiB2
b3AyLCB3aW5kb3dzIGF0dGFjaGVkIG9uIHRoZSBzYW1lIGJ1cyBtdXN0Cj4gPj4gPj4gaGF2ZSBh
IHVuaXF1ZSBjaGFubmVsIFlVViBhbmQgUkdCIGNoYW5uZWwgSUQuCj4gPj4gPj4gCj4gPj4gPj4g
VGhlIGRlZmF1bHQgSURzIHdpbGwgY29uZmxpY3Qgd2l0aCBlYWNoIG90aGVyIG9uIHRoZSByazM1
ODgsIHNvIHRoZXkKPiA+PiA+PiBuZWVkIHRvIGJlIHJlYXNzaWduZWQuCj4gPj4gPj4gCj4gPj4g
Pj4gRml4ZXM6IDVhMDI4ZThmMDYyZiAoImRybS9yb2NrY2hpcDogdm9wMjogQWRkIHN1cHBvcnQg
Zm9yIHJrMzU4OCIpCj4gPj4gPj4gU2lnbmVkLW9mZi1ieTogQW5keSBZYW4gPGFuZHkueWFuQHJv
Y2stY2hpcHMuY29tPgo+ID4+ID4+IFRlc3RlZC1ieTogRGVyZWsgRm9yZW1hbiA8ZGVyZWsuZm9y
ZW1hbkBjb2xsYWJvcmEuY29tPgo+ID4+ID4+IAo+ID4+ID4+IC0tLQo+ID4+ID4+IAo+ID4+ID4+
IENoYW5nZXMgaW4gdjU6Cj4gPj4gPj4gLSBBZGRlZCBpbiBWNQo+ID4+ID4+IAo+ID4+ID4+ICBk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyB8IDE0ICsrKysrKysr
KysrCj4gPj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5o
IHwgIDkgKysrKysrKwo+ID4+ID4+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
dm9wMl9yZWcuYyB8IDI2Cj4gPj4gPj4gICsrKysrKysrKysrKysrKysrKystCj4gPj4gPj4gIDMg
ZmlsZXMgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4+ID4+IAo+
ID4+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcDIuYwo+ID4+ID4+IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92
b3AyLmMgaW5kZXgKPiA+PiA+PiBkYzRlZGQ2NWJjOWUuLjhiOWNhMDQ2ZWVlYiAxMDA2NDQKPiA+
PiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+
ID4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5j
Cj4gPj4gPj4gQEAgLTE0MjYsNiArMTQyNiwxMiBAQCBzdGF0aWMgdm9pZCB2b3AyX3BsYW5lX2F0
b21pY191cGRhdGUoc3RydWN0Cj4gPj4gPj4gZHJtX3BsYW5lICpwbGFuZSwgJmZiLT5mb3JtYXQt
PmZvcm1hdCwKPiA+PiA+PiAKPiA+PiA+PiAgCQlhZmJjX2VuID8gIkFGQkMiIDogIiIsICZ5cmdi
X21zdCk7Cj4gPj4gPj4gCj4gPj4gPj4gKwlpZiAodm9wMi0+ZGF0YS0+c29jX2lkID4gMzU2OCkg
ewo+ID4+ID4KPiA+PiA+U2hvdWxkbid0IHRoaXMgYmUgZG9uZSBvbmx5IGZvciByazM1ODgsIGFz
IHNwZWNpZmllZCBpbiB0aGUgY29tbWVudHMKPiA+PiA+YmVsb3cKPiA+PiA+PyBUaGUgdGVzdCB3
ZSBkaWQgYmVmb3JlIHNob3dlZCB0aGF0IGl0IGlzIGZhaWxpbmcgb24gcmszNTc2IGFuZCAzNTc2
IGlzCj4gPj4gPj4KPiA+PiA+MzU4OC4KPiA+PiAKPiA+PiBJIHRoaW5rIHRoaXMgaXMgYmVjYXVz
ZSB5b3UgdGVzdGVkIGJlZm9yZSB3aXRoIHRoZSBwYXRjaCBJIGdhdmUgRGVyZWsKPiA+PiB3aXRo
b3V0IGF4aSBpZCBhc3NpZ25lZCBmb3IgcmszNTc2Lgo+ID4+IEkgYXNzaWduZWQgYXhpIGlkIGZv
ciByazM1NzYgaW4gdGhpcyB2ZXJzaW9uIDE4LzE477yIVGhlIG5ldyBJRCBhc3NpZ25tZW50Cj4g
Pj4gY2FuIGFkYXB0IHRvIG1vcmUgYXBwbGljYXRpb24gc2NlbmFyaW9zLu+8iSwgY2FuIHlvdSB0
ZXN0IGl0IHdpdGggdGhlCj4gPj4gd2hvbGUgVjUgdmVyc2lvbiBhZ2Fpbj8KPiA+Cj4gPlllcywg
SSB3aWxsIGRvIHRoYXQuIEJ1dCBwYXRjaCAxOCBtZW50aW9uczoKPiA+KyAgICAgICAvKiBSZWFk
IG9ubHkgYml0IG9uIHJrMzU3NiovCj4gPisgICAgICAgW1ZPUDJfV0lOX0FYSV9CVVNfSURdID0g
UkVHX0ZJRUxEKFJLMzU2OF9DTFVTVEVSX0NUUkwsIDEzLCAxMyksCj4gPgo+ID5BbmQgdGhlIGJp
dCBpcyBiZWluZyB3cml0dGVuIGhlcmUuIElmIGl0IGlzIGluZGVlZCB3cml0YWJsZSwgdGhlbiBJ
IHdvdWxkCj4gPmRyb3AgdGhhdCBjb21tZW50Lgo+IAo+IFRoZSBBWElfQlVTX0lEIGZvciB0d28g
Q2x1c3RlciB3aW5kb3dzIG9uIFJLMzU3NiBhcmUgZml4ZWQgYnkgaGFyZHdhcmUsIHRoYXQKPiBt
ZWFucyB3aGV0aGVyIHdlIHdyaXRlIGl0IG9yIG5vdCwgaXQgd29uJ3QgY2hhbmdlIGFueXRoaW5n
Lgo+IEJ1dCB0aGUgQVhJX0JVU19JRCBmb3IgRXNtYXJ0IHdpbmRvd3Mgb24gcmszNTc2IGFuZCAg
QVhJX1lSR0IvVVZfUl9JRCBmb3IKPiBhbGwgY2x1c3Rlci9lc21hcnQgd2luZG93cyBvbiByazM1
NzYgYXJlIHdyaXRlYWJsZS4KPiBJIHRoaW5rIHdlIGRpcmVjdGx5IHdyaXRlIGl0IGhlcmUgYXMg
dGhlIGN1cnJlbnQgY29kZSBjYW4gbWFrZSB0aGluZ3MgZWFzeS4KCkkgc2VlLCBzYXlpbmcgaXQg
aXMgcmVhZCBvbmx5IG1heSBiZSBhIGJpdCBjb25mdXNpbmcgdGhlbiwgYnV0IGl0IG1ha2VzIHNl
bnNlLiAKWW91IGNvdWxkIGJlIG1vcmUgc3BlY2lmaWMgYWRkaW5nIHRoYXQgd3JpdGluZyBoYXMg
bm8gZWZmZWN0LgoKQW55d2F5LCBJIHRlc3RlZCB0aGlzIGFuZCBpdCB3b3JrcyBhcyBleHBlY3Rl
ZDoKClRlc3RlZC1ieTogRGV0bGV2IENhc2Fub3ZhIDxkZXRsZXYuY2FzYW5vdmFAY29sbGFib3Jh
LmNvbT4KClJlZ2FyZHMsCkRldGxldi4KCj4gPj4gPkkgc3VnZ2VzdAo+ID4+ID4KPiA+PiA+CWlm
ICh2b3AyLT5kYXRhLT5zb2NfaWQgPT0gMzU4OCkgewo+ID4+ID4KPiA+PiA+UmVnYXJkcywKPiA+
PiA+RGV0bGV2Cj4gPj4gPgo+ID4+ID4+ICsJCXZvcDJfd2luX3dyaXRlKHdpbiwgVk9QMl9XSU5f
QVhJX0JVU19JRCwgd2luLT5kYXRhLQo+ID4+ID4+Cj4gPj4gPj5heGlfYnVzX2lkKTsKPiA+PiA+
Pgo+ID4+ID4+ICsJCXZvcDJfd2luX3dyaXRlKHdpbiwgVk9QMl9XSU5fQVhJX1lSR0JfUl9JRCwg
d2luLT5kYXRhLQo+ID4+ID4+Cj4gPj4gPj5heGlfeXJnYl9yX2lkKTsKPiA+PiA+Pgo+ID4+ID4+
ICsJCXZvcDJfd2luX3dyaXRlKHdpbiwgVk9QMl9XSU5fQVhJX1VWX1JfSUQsIHdpbi0+ZGF0YS0K
PiA+PiA+Pgo+ID4+ID4+YXhpX3V2X3JfaWQpOwo+ID4+ID4+Cj4gPj4gPj4gKwl9Cj4gPj4gPj4g
Kwo+ID4+ID4+IAo+ID4+ID4+ICAJaWYgKHZvcDJfY2x1c3Rlcl93aW5kb3cod2luKSkKPiA+PiA+
PiAgCQo+ID4+ID4+ICAJCXZvcDJfd2luX3dyaXRlKHdpbiwgVk9QMl9XSU5fQUZCQ19IQUxGX0JM
T0NLX0VOLAo+ID4+ID4KPiA+PiA+aGFsZl9ibG9ja19lbik7Cj4gPgo+ID5EZXRsZXYuCj4gPgo+
ID4KPiA+Cj4gPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+ID5MaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCj4gPmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
