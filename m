Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F614C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 17:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAA801jO+D/8TUkCYPKQ+1r9MUk8I/y79tfG987PVII=; b=ji60M0NaItEdMD
	ZKkqNcpnDgDelyJxzjj1OHC+k5sPjZ3Q8/r03c4OYi12RBNJj9A2zs+meyOaaXm+9AzP04XdNxZ12
	dZkKGWC/ZKyGkRCqcR9O2bpzH2qoTpWMaQdQYp9XKIGISGlSf26T4NkOinx/1fqHAXdvW0ecWrNWZ
	6HCjDV/iXkeOH6f8LT7G7AioX2c9fnnjmHfHkrh4F+irGloHpOTfA2hhVcfVhFK+/y0n7iDZfMJC/
	xWji/7dACHZqLgCqYxyelRx8xaK1fYYSWR4iVyUiSBHi0WoxpOvqrSCVcOlm0aMkZ/F+aH4LRACFy
	TwF46HnpnFHmUnOECRew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfNNt-0000000AE7j-2S7W;
	Wed, 28 Feb 2024 17:06:21 +0000
Received: from stravinsky.debian.org ([2001:41b8:202:deb::311:108])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfNNp-0000000AE4B-2FJM;
	Wed, 28 Feb 2024 17:06:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description;
	bh=4Eg2lwg3X3LAMV1YyL8y2sgCKnGrJ6OQTRJ35Rq1CVg=; b=SxmHS533VfDl5V8NG+y4FRwoSg
	hW0D3UuedkiTPJrc0TbBXKvYg/8pmgqqVz4WNlUzilwEHH0jw1cGEBCrifeW268zmGt73t+8hDB5E
	Ta2h3vFploxlO10OgvZ6r+l9Q2HtRkwIfserun2ho7pVZ8c1VBkeXI6cqrdYebJ3fA26kUyiq6oTm
	tZrscjT3d/EtMSX6FissL8VgKHUtmht34uucbk6FZvDfTtxatbGkHtLXdR+R56FjIzz4TniJFpqNS
	Q45vx/suj7SXY7vjOizsxpTjGJ6olj0KO4k6wOQtL0OiK9HDewm6gdDJC4OxMDp7r/RC0cTFOB6qb
	jWmVtJQA==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128)
	(Exim 4.94.2)
	(envelope-from <ukleinek@debian.org>)
	id 1rfNNX-00G7sb-Ah; Wed, 28 Feb 2024 17:05:59 +0000
Message-ID: <3268d0dd-0351-4dbd-b707-eb3691147111@debian.org>
Date: Wed, 28 Feb 2024 18:05:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add basic support for QNAP
 TS-433
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Oleksij Rempel <ore@pengutronix.de>
References: <cover.1709034476.git.ukleinek@debian.org>
 <0d9fa5d730ac1cb91261b25b6809fcef3a12f03a.1709034476.git.ukleinek@debian.org>
 <b48cde05-c583-4414-9424-fbb2db3a53ce@lunn.ch>
 <lcvokzcmifxl7skfz2h2shewuou7xpazuhtpnpkgtcyejcfgcy@vvdn5ypyklsx>
 <3295af58-4015-4962-91a0-87b70f18754e@lunn.ch>
Content-Language: en-US, de-DE
From: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Autocrypt: addr=ukleinek@debian.org; keydata=
 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
 MaQkyqbBqIbxBNgANCE5eTk=
In-Reply-To: <3295af58-4015-4962-91a0-87b70f18754e@lunn.ch>
X-Debian-User: ukleinek
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_090617_605605_7A921C51 
X-CRM114-Status: GOOD (  22.15  )
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

T24gMjguMDIuMjQgMTQ6NTMsIEFuZHJldyBMdW5uIHdyb3RlOgo+IE9uIFdlZCwgRmViIDI4LCAy
MDI0IGF0IDA4OjIzOjMzQU0gKzAxMDAsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+PiBPbiBU
dWUsIEZlYiAyNywgMjAyNCBhdCAxMDowMDo0OFBNICswMTAwLCBBbmRyZXcgTHVubiB3cm90ZToK
Pj4+PiArJmdtYWMwIHsKPj4+PiArCWFzc2lnbmVkLWNsb2NrcyA9IDwmY3J1IFNDTEtfR01BQzBf
UlhfVFg+LCA8JmNydSBTQ0xLX0dNQUMwPjsKPj4+PiArCWFzc2lnbmVkLWNsb2NrLXBhcmVudHMg
PSA8JmNydSBTQ0xLX0dNQUMwX1JHTUlJX1NQRUVEPiwgPCZjcnUgQ0xLX01BQzBfMlRPUD47Cj4+
Pj4gKwlhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwwPiwgPDEyNTAwMDAwMD47Cj4+Pj4gKwljbG9j
a19pbl9vdXQgPSAib3V0cHV0IjsKPj4+PiArCXBoeS1oYW5kbGUgPSA8JnJnbWlpX3BoeTA+Owo+
Pj4+ICsJcGh5LW1vZGUgPSAicmdtaWkiOwo+Pj4+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKPj4+PiArCXBpbmN0cmwtMCA9IDwmZ21hYzBfbWlpbQo+Pj4+ICsJCSAgICAgJmdtYWMwX3R4
X2J1czIKPj4+PiArCQkgICAgICZnbWFjMF9yeF9idXMyCj4+Pj4gKwkJICAgICAmZ21hYzBfcmdt
aWlfY2xrCj4+Pj4gKwkJICAgICAmZ21hYzBfcmdtaWlfYnVzPjsKPj4+PiArCXJ4X2RlbGF5ID0g
PDB4MmY+Owo+Pj4+ICsJdHhfZGVsYXkgPSA8MHgzYz47Cj4+Pgo+Pj4gSGF2ZSB5b3UgdHJpZWQg
cGh5LW1vZGUgPSAicmdtaWktaWQiOyBhbmQgbm90IGhhdmUgdGhlc2UgdHdvIF9kZWxheQo+Pj4g
c2V0dGluZ3M/Cj4+Cj4+IEkgZGlkbnQnIHVwIHRvIG5vdy4gSSBhcHBsaWVkIHRoZSBmb2xsb3dp
bmcgb24gdG9wIG9mIG15IGR0czoKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKPj4gaW5kZXggYmE3MTM3ZjgwMDc1Li5hODc0
N2Q5ZjM2ZGEgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LXFuYXAtdHM0MzMuZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTY4LXFuYXAtdHM0MzMuZHRzCj4+IEBAIC0zOSwxNSArMzksMTMgQEAgJmdtYWMwIHsKPj4g
ICAJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MD4sIDwxMjUwMDAwMDA+Owo+PiAgIAljbG9ja19p
bl9vdXQgPSAib3V0cHV0IjsKPj4gICAJcGh5LWhhbmRsZSA9IDwmcmdtaWlfcGh5MD47Cj4+IC0J
cGh5LW1vZGUgPSAicmdtaWkiOwo+PiArCXBoeS1tb2RlID0gInJnbWlpLWlkIjsKPj4gICAJcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gICAJcGluY3RybC0wID0gPCZnbWFjMF9taWltCj4+
ICAgCQkgICAgICZnbWFjMF90eF9idXMyCj4+ICAgCQkgICAgICZnbWFjMF9yeF9idXMyCj4+ICAg
CQkgICAgICZnbWFjMF9yZ21paV9jbGsKPj4gICAJCSAgICAgJmdtYWMwX3JnbWlpX2J1cz47Cj4+
IC0JcnhfZGVsYXkgPSA8MHgyZj47Cj4+IC0JdHhfZGVsYXkgPSA8MHgzYz47Cj4+ICAgCXN0YXR1
cyA9ICJva2F5IjsKPj4gICB9Owo+PiAgIAo+PiBhbmQgdGhpcyBtYWtlcyB0aGUgbWFjaGluZSB1
bmFibGUgdG8gY29tcGxldGUgZGhjcC4gSSBzZWUgdGhlIHJlcXVlc3RzCj4+IGFuZCByZXBsaWVz
IG9uIHRoZSBkaGNwIHNlcnZlciBzaWRlLCBidXQgdGhlIG1hY2hpbmUgdGVsbHMgbWUgbm90IHRv
Cj4+IHJlY2VpdmUgYSBkaGNwIHJlcGx5LiBTbyB0aGUgYWJvdmUgcGF0Y2ggYnJlYWtzIHRoZSBy
ZWNlaXZlIHBhdGguCj4gCj4gTy5LLgo+IAo+IFRoaXMgYmluZGluZyBpcyBwYXJ0aWN1bGFybHkg
YmFkLiBXaGF0IGRvZXMgMHgzYyBtZWFuPyBHZW5lcmFsbHksIHdlCj4gdXNlIHJ4LWludGVybmFs
LWRlbGF5LXBzIG1ha2luZyBpdCBjbGVhciB3aGF0IHRoZSB2YWx1ZSBtZWFucy4KPiAKPiBSR01J
SSByZXF1aXJlcyBhIDJucyBkZWxheSBiZXR3ZWVuIHRoZSBjbG9jayBhbmQgdGhlIGRhdGEuIEdl
bmVyYWxseSwKPiB3ZSBoYXZlIHRoZSBNQUMgaW5zZXJ0IDAgZGVsYXksIGFuZCByZXF1ZXN0IHRo
ZSBQSFkgYWRkIHRoZSAybnMgZGVsYXkKPiBieSBzcGVjaWZ5aW5nICJyZ21paS1pZCIuIFNvbWV0
aW1lcyB5b3UgbmVlZCB0byBmaW5lIHR1bmUgdGhpcywKPiBiZWNhdXNlIG9mIHRoZSBsZW5ndGgg
b2YgdGhlIHRyYWNrcyBldGMuIFlvdSBjYW4gdGhlbiBkbyB0aGF0IGZpbmUKPiB0dW5pbmcgZWl0
aGVyIGluIHRoZSBQSFksIG9yIHRoZSBNQUMuCj4gCj4gTG9va2luZyBhdCB0aGUgYmluZGluZzoK
PiAKPiAgICB0eF9kZWxheToKPiAgICAgIGRlc2NyaXB0aW9uOiBEZWxheSB2YWx1ZSBmb3IgVFhE
IHRpbWluZy4KPiAgICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3Vp
bnQzMgo+ICAgICAgbWluaW11bTogMAo+ICAgICAgbWF4aW11bTogMHg3Rgo+ICAgICAgZGVmYXVs
dDogMHgzMAo+IAo+ICAgIHJ4X2RlbGF5Ogo+ICAgICAgZGVzY3JpcHRpb246IERlbGF5IHZhbHVl
IGZvciBSWEQgdGltaW5nLgo+ICAgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5p
dGlvbnMvdWludDMyCj4gICAgICBtaW5pbXVtOiAwCj4gICAgICBtYXhpbXVtOiAweDdGCj4gICAg
ICBkZWZhdWx0OiAweDEwCj4gCj4gRm9yIHlvdXIgYm9hcmQsIHlvdSBoYXZlIGluY3JlYXNlZCBi
b3RoIHZhbHVlcyBmcm9tIHRoZXJlIGRlZmF1bHQKPiB2YWx1ZXMuIE15IGd1ZXNzIGlzIDB4MzAg
dHhfZGVsYXkgaXMgMm5zLCBhbmQgMHgxMCByeF9kZWxheSBpcyBhbHNvCj4gMm5zLgo+IAo+IFNv
IG1heWJlIHRyeToKPiAKPiByeF9kZWxheSA9IDwweDFmPjsKPiB0eF9kZWxheSA9IDwweDBjPjsK
PiAKPiBjb21iaW5lZCB3aXRoIHJtZ2lpLWlkLgoKV2l0aCB0aGUgcmlnaHQgcGh5IGRyaXZlciAo
TU9UT1JDT01NX1BIWSkgZW5hYmxlZCwgaXQgd29ya3MgYWxzbyB3aXRob3V0IApzcGVjaWZ5aW5n
IHtyeCx0eH1fZGVsYXkuIFRoYW5rcyB0byBPbGVrc2lqIGZvciB0aGUgcmVsZXZhbnQgaGludC4g
SSdsbCAKc3dpdGNoIHRvIHRoYXQgdGhlbi4KCkJlc3QgcmVnYXJkcwpVd2UKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
