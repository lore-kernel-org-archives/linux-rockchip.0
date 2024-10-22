Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 713FAD2C54A
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 12:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5MN1KffDF238GGdJ2Z2ekn576tZtWHusXt23Sa0AwPo=; b=s5FAqLHNc9i2wg
	BaBcwo7YnQUU2p57koR6Ag6ERIVmeu1n0mh3HXlsnzi3RfkIQ90qNdhk7XY1EiAITmBAB6DEMsD/4
	0u8bp0mqGaIsWW4qAUcaYPME1rB7P4wFPrZDujomqBq2LW4E1hGaBXcwqe10H6uION+ViwPVEKQ6p
	bXMGvPmMjsFoGPLz2fHOkhA3PS7hFVEwYkwG6z7fkmSuBSymDIdjxYGmfjIbDi4g/0HoqYBNQVPiB
	AFybgCytlbbQ0elMCiD4wMHLUzUO+jMzcrDPnCUkqaWcsFn98yL9EpBeOgiIlykyUXr45RoUBbAT6
	q+oNtgFdtPC3lp6RJQqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3ELk-0000000As9m-0fWB;
	Tue, 22 Oct 2024 12:51:00 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3ELg-0000000As85-1lHB;
	Tue, 22 Oct 2024 12:50:58 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1729601440; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LtnsdME6hfcDtgoX/lLs7ii2FcMF03EVMxGBYb634KrXGMaZ6iHFYWqlPaHFWPMJpbD9J9CPGW1mvh+XhwuspTNQmGpGDSG9k1X/E14knPmOE6rGDp74g+f617tGyN98e+eAc5+VJW9got8mBzk4JqkxdAC5rIcTF1Mjq8oGcWA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1729601440; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=EY2bEWQLnfSWP5vcB4FJYNm/3VT2vI8eDwK6W9Y/wJg=; 
	b=QLHkX8lB4II08YLdRlw3SAdTN5yKR0DAj+yHAoVv2Bqq1I/FEGwh5jw8Ft12RNSC6SVF2ddVBN0X3wkTBa7QYdqtP9CWPTjNj3FnYtnnlZqKZAI356CFimVaCtSKA0jAYCDtJjNCnm+FTXjGqduLMqdmf/kNmXvCeSUXRyB4W+g=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1729601440;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=EY2bEWQLnfSWP5vcB4FJYNm/3VT2vI8eDwK6W9Y/wJg=;
	b=FKK0k5s47WJxXetdOdcxoGg/DEnqX7ORXHrtmR29XVZVFmAftRM+5bsLTWEgENQR
	PYE/HjG4SiIeHylJTaIf8v7DHTripbJ1ulCzs+iric2fCiLg2ltK038jJi3lpW5ltQK
	zkSv15E/cEYwu+q+0ACOE8gDEIFnzYwAbJhMs1e0=
Received: by mx.zohomail.com with SMTPS id 1729601437154315.6561653307675;
	Tue, 22 Oct 2024 05:50:37 -0700 (PDT)
Message-ID: <cb8f8576-34a2-4db0-b063-8d7a1a0b114b@collabora.com>
Date: Tue, 22 Oct 2024 14:50:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: verisilicon: av1: Store chroma and mv offsets
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com
References: <01020192afc4f87b-fd9b4515-9e30-41e7-8cf9-029cf5c0c7b6-000000@eu-west-1.amazonses.com>
 <26e78427fdd3699e237a20d803c02202c868c2ff.camel@collabora.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <26e78427fdd3699e237a20d803c02202c868c2ff.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_055056_540475_27BB5CA4 
X-CRM114-Status: GOOD (  18.91  )
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

CkxlIDIyLzEwLzIwMjQgw6AgMTQ6NDYsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBI
aSwKPgo+IExlIGx1bmRpIDIxIG9jdG9icmUgMjAyNCDDoCAxNTo0OSArMDAwMCwgQmVuamFtaW4g
R2FpZ25hcmQgYSDDqWNyaXTCoDoKPj4gU3RvcmUgY2hyb21hIGFuZCBtb3Rpb24gdmVjdG9ycyBv
ZmZzZXRzIGZvciBlYWNoIGZyYW1lIHNvCj4+IHRoZXkgY2FuIGJlIHVzZWQgbGF0ZXIgd2hlbiBy
ZXNvbHV0aW9uIGNoYW5nZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQg
PGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gVGhpcyBpcyBuaWNlciB0aGVuIHJl
Y2FsY3VsYXRpbmcgaXQgZnJvbSB3aWR0aC9oZWlnaHQgb2YgdGhlIHJlZiBmcmFtZSBsaWtlIHdl
Cj4gZG8gaW4gUksgVlA5IGRyaXZlci4gSSB0aGluayB0aGlzIHBhdGNoIGNvdWxkIGhhdmUgYSBG
aXhlcyB0YWcuIEFzIHdlIGRpc2N1c3MsIEkKPiBiZWxpZXZlIEFPTSB0ZXN0IHN1aXRlIGRvZXMg
bm90IGNvdmVyIHRoaXMgY2FzZSA/IGFuZCB0aHVzIHRoZSBmbHVzdGVyIHNjb3JlIGlzCj4gdW5j
aGFuZ2VkID8KClRoaXMgY2FzZSBpc24ndCBjb3ZlcmVkIGJ5IEZsdXN0ZXIgdGVzdCBzdWl0ZXMg
c28gdGhlIHNjb3JlIGlzIHN0aWxsIHRoZSBzYW1lLgpBdCBsZWFzdCBJIGhhdmVuJ3QgaW50cm9k
dWNlIHJlZ3Jlc3Npb25zIDstKQoKQmVuamFtaW4KCj4KPiBJIHN0aWxsIHRoaW5rIHRoaXMgcGF0
Y2ggaXMgY29ycmVjdCwgc286Cj4KPiBSZXZpZXdlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmlj
b2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvLmggICAgICAgICAgICAgIHwgNyArKysrKysrCj4+
ICAgLi4uL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9od19hdjFfZGVjLmMg
ICAgfCA5ICsrKysrLS0tLQo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
dmVyaXNpbGljb24vaGFudHJvLmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29u
L2hhbnRyby5oCj4+IGluZGV4IDgxMTI2MGRjM2M3Ny4uNmQzNjM3MWMxZDEzIDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyby5oCj4+ICsrKyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvLmgKPj4gQEAgLTMzMiwx
MiArMzMyLDE5IEBAIHN0cnVjdCBoYW50cm9fdnA5X2RlY29kZWRfYnVmZmVyX2luZm8gewo+PiAg
IAl1MzIgYml0X2RlcHRoIDogNDsKPj4gICB9Owo+PiAgIAo+PiArc3RydWN0IGhhbnRyb19hdjFf
ZGVjb2RlZF9idWZmZXJfaW5mbyB7Cj4+ICsJLyogSW5mbyBuZWVkZWQgd2hlbiB0aGUgZGVjb2Rl
ZCBmcmFtZSBzZXJ2ZXMgYXMgYSByZWZlcmVuY2UgZnJhbWUuICovCj4+ICsJc2l6ZV90IGNocm9t
YV9vZmZzZXQ7Cj4+ICsJc2l6ZV90IG12X29mZnNldDsKPj4gK307Cj4+ICsKPj4gICBzdHJ1Y3Qg
aGFudHJvX2RlY29kZWRfYnVmZmVyIHsKPj4gICAJLyogTXVzdCBiZSB0aGUgZmlyc3QgZmllbGQg
aW4gdGhpcyBzdHJ1Y3QuICovCj4+ICAgCXN0cnVjdCB2NGwyX20ybV9idWZmZXIgYmFzZTsKPj4g
ICAKPj4gICAJdW5pb24gewo+PiAgIAkJc3RydWN0IGhhbnRyb192cDlfZGVjb2RlZF9idWZmZXJf
aW5mbyB2cDk7Cj4+ICsJCXN0cnVjdCBoYW50cm9fYXYxX2RlY29kZWRfYnVmZmVyX2luZm8gYXYx
Owo+PiAgIAl9Owo+PiAgIH07Cj4+ICAgCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9od19hdjFfZGVjLmMgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9od19hdjFfZGVjLmMK
Pj4gaW5kZXggZTU0ZjVmYWMzMjViLi42OWI1ZDllMTI5MjYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMu
Ywo+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3Zw
dTk4MV9od19hdjFfZGVjLmMKPj4gQEAgLTY4Niw4ICs2ODYsNiBAQCByb2NrY2hpcF92cHU5ODFf
YXYxX2RlY19zZXRfcmVmKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsIGludCByZWYsIGludCBpZHgs
Cj4+ICAgCXN0cnVjdCBoYW50cm9fZGV2ICp2cHUgPSBjdHgtPmRldjsKPj4gICAJc3RydWN0IGhh
bnRyb19kZWNvZGVkX2J1ZmZlciAqZHN0Owo+PiAgIAlkbWFfYWRkcl90IGx1bWFfYWRkciwgY2hy
b21hX2FkZHIsIG12X2FkZHIgPSAwOwo+PiAtCXNpemVfdCBjcl9vZmZzZXQgPSByb2NrY2hpcF92
cHU5ODFfYXYxX2RlY19sdW1hX3NpemUoY3R4KTsKPj4gLQlzaXplX3QgbXZfb2Zmc2V0ID0gcm9j
a2NoaXBfdnB1OTgxX2F2MV9kZWNfY2hyb21hX3NpemUoY3R4KTsKPj4gICAJaW50IGN1cl93aWR0
aCA9IGZyYW1lLT5mcmFtZV93aWR0aF9taW51c18xICsgMTsKPj4gICAJaW50IGN1cl9oZWlnaHQg
PSBmcmFtZS0+ZnJhbWVfaGVpZ2h0X21pbnVzXzEgKyAxOwo+PiAgIAlpbnQgc2NhbGVfd2lkdGgg
PQo+PiBAQCAtNzQ0LDggKzc0Miw4IEBAIHJvY2tjaGlwX3ZwdTk4MV9hdjFfZGVjX3NldF9yZWYo
c3RydWN0IGhhbnRyb19jdHggKmN0eCwgaW50IHJlZiwgaW50IGlkeCwKPj4gICAKPj4gICAJZHN0
ID0gdmIyX3RvX2hhbnRyb19kZWNvZGVkX2J1ZigmYXYxX2RlYy0+ZnJhbWVfcmVmc1tpZHhdLnZi
Ml9yZWYtPnZiMl9idWYpOwo+PiAgIAlsdW1hX2FkZHIgPSBoYW50cm9fZ2V0X2RlY19idWZfYWRk
cihjdHgsICZkc3QtPmJhc2UudmIudmIyX2J1Zik7Cj4+IC0JY2hyb21hX2FkZHIgPSBsdW1hX2Fk
ZHIgKyBjcl9vZmZzZXQ7Cj4+IC0JbXZfYWRkciA9IGx1bWFfYWRkciArIG12X29mZnNldDsKPj4g
KwljaHJvbWFfYWRkciA9IGx1bWFfYWRkciArIGRzdC0+YXYxLmNocm9tYV9vZmZzZXQ7Cj4+ICsJ
bXZfYWRkciA9IGx1bWFfYWRkciArIGRzdC0+YXYxLm12X29mZnNldDsKPj4gICAKPj4gICAJaGFu
dHJvX3dyaXRlX2FkZHIodnB1LCBBVjFfUkVGRVJFTkNFX1kocmVmKSwgbHVtYV9hZGRyKTsKPj4g
ICAJaGFudHJvX3dyaXRlX2FkZHIodnB1LCBBVjFfUkVGRVJFTkNFX0NCKHJlZiksIGNocm9tYV9h
ZGRyKTsKPj4gQEAgLTIwODksNiArMjA4Nyw5IEBAIHJvY2tjaGlwX3ZwdTk4MV9hdjFfZGVjX3Nl
dF9vdXRwdXRfYnVmZmVyKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4+ICAgCWNocm9tYV9hZGRy
ID0gbHVtYV9hZGRyICsgY3Jfb2Zmc2V0Owo+PiAgIAltdl9hZGRyID0gbHVtYV9hZGRyICsgbXZf
b2Zmc2V0Owo+PiAgIAo+PiArCWRzdC0+YXYxLmNocm9tYV9vZmZzZXQgPSBjcl9vZmZzZXQ7Cj4+
ICsJZHN0LT5hdjEubXZfb2Zmc2V0ID0gbXZfb2Zmc2V0Owo+PiArCj4+ICAgCWhhbnRyb193cml0
ZV9hZGRyKHZwdSwgQVYxX1RJTEVfT1VUX0xVLCBsdW1hX2FkZHIpOwo+PiAgIAloYW50cm9fd3Jp
dGVfYWRkcih2cHUsIEFWMV9USUxFX09VVF9DSCwgY2hyb21hX2FkZHIpOwo+PiAgIAloYW50cm9f
d3JpdGVfYWRkcih2cHUsIEFWMV9USUxFX09VVF9NViwgbXZfYWRkcik7Cj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
