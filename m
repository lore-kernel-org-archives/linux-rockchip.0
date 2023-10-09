Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0336E95A8D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hpo5sWgOL+igR8vr/vfZE0UkjhP4pEYWshkkQxj6U0I=; b=hIrLdOruyL1Mwj
	eGPDMTBUWwXcNu8wELJSmWw/ECP0VG+ntkjzjy84wnLJCKFI30DI+I964cJu/OQxVSZKH9R5c8jbE
	QIx8uvJLY1Zm7vbekrf9Nk86zvQaloKfse4zTg20o2PffZbK2+tCajJwJaZhGjiwqE14V+HV/kCGg
	mo8+dWc9lpkeXmpakTwGCzbYRVTdp1upLHcD3zNFtQhSeIG1aTlAScx0qqMPfWXCLmHF0If4v8ocs
	jU5pR4FCI4+I+brPUIDQHO9Kjhn0FTRtYhA1qVFL08RVLQUZGkii1HKCfEsBJS3U2NsxrwX82ol58
	AtQKT5Fn5gs+O+gBB03g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpj0q-009nLC-0g;
	Mon, 09 Oct 2023 05:41:04 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpj0m-009nKa-0D;
	Mon, 09 Oct 2023 05:41:02 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3995eZMZ056348;
	Mon, 9 Oct 2023 00:40:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696830035;
	bh=uH1s6pUcj06GVFmMzVsYyW292JwkPCIrAGTeZPFkZrI=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=KHDtihLb5/nkre8mGz6ZsxjQbhIUSuhMoNmGdRCaSURHNnGDmJfE9XnTxjQ/fvnbh
	 CEJhh/zcFr75PmyqL83NaZRSuXfwJr+Tq7AjJ8Rh2yeQiEPnyM/d4Zym3JYhoS7Fqi
	 20qH3sZbn2o/eT/M1hYtTeCCtvmJdBC+PvZtWq64=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3995eZF2018233
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 9 Oct 2023 00:40:35 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 9
 Oct 2023 00:40:35 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 9 Oct 2023 00:40:35 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3995eYQV043957;
	Mon, 9 Oct 2023 00:40:35 -0500
Date: Mon, 9 Oct 2023 11:10:34 +0530
From: Dhruva Gole <d-gole@ti.com>
To: Muhammed Efe Cetin <efectn@6tel.net>
CC: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>, <heiko@sntech.de>,
        <jonas@kwiboo.se>, <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>, <megi@xff.cz>,
        <robh+dt@kernel.org>, <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: Add Orange Pi 5
Message-ID: <20231009054034.am2e4hcmwoworeml@dhruva>
References: <20230928105137.5ljhuoxjc7et5thw@dhruva>
 <20231005135405.257495-1-efectn@6tel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231005135405.257495-1-efectn@6tel.net>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_224100_210851_13FD38AE 
X-CRM114-Status: GOOD (  31.84  )
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

SGVsbG8sCgpPbiBPY3QgMDUsIDIwMjMgYXQgMTY6NTQ6MDQgKzAzMDAsIE11aGFtbWVkIEVmZSBD
ZXRpbiB3cm90ZToKPiBIZWxsbywKPiAKPiBPbiAyOC4wOS4yMDIzIDEzOjUxLCBEaHJ1dmEgR29s
ZSB3cm90ZToKPiA+IEhpLAo+ID4gCj4gPiBPbiBBdWcgMjEsIDIwMjMgYXQgMTg6NDc6NTkgKzAz
MDAsIE11aGFtbWVkIEVmZSBDZXRpbiB3cm90ZToKPiA+PiBBZGQgaW5pdGlhbCBzdXBwb3J0IGZv
ciBPUGk1IHRoYXQgaW5jbHVkZXMgc3VwcG9ydCBmb3IgVVNCMiwgUENJZTIsIFNhdGEsCj4gPj4g
U2RtbWMsIFNQSSBGbGFzaCwgUE1JQy4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IE11aGFtbWVk
IEVmZSBDZXRpbiA8ZWZlY3RuQDZ0ZWwubmV0Pgo+ID4+IFJldmlld2VkLWJ5OiBPbmTFmWVqIEpp
cm1hbiA8bWVnaUB4ZmYuY3o+Cj4gPj4gLS0tCj4gPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgIDEgKwo+ID4+ICAgLi4uL2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OHMtb3JhbmdlcGktNS5kdHMgIHwgNjczICsrKysrKysrKysrKysrKysrKwo+ID4+
ICAgMiBmaWxlcyBjaGFuZ2VkLCA2NzQgaW5zZXJ0aW9ucygrKQo+ID4+ICAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01LmR0
cwo+ID4+Cj4gPiAuLi4KPiA+IAo+ID4gQ2FuIHlvdSBwcm92aWRlIHNvbWUgc29ydCBvZiBkb2N1
bWVudGF0aW9uIG9uIGhvdyBJIGNhbiBidWlsZCBhbmQgYm9vdAo+ID4gdGhlIGtlcm5lbCBvbiB0
aGlzIGJvYXJkPyBJIHdhcyB1bmFibGUgdG8gdXNlIHRoZSB1cHN0cmVhbSBhcm02NAo+ID4gZGVm
Y29uZmlnIHdpdGggdGhpcyBleGFjdCBzZXJpZXMgYXBwbGllZCB0byBib290IHRoZSBib2FyZC4K
PiAKPiBXaGF0IHdhcyB3cm9uZyB3aGVuIHlvdSB0cmllZCB0byBjb21waWxlICYgYm9vdCB0aGUg
Ym9hcmQ/IENhbiB5b3UgcHJvdmlkZSBzb21lIGxvZ3M/CgpVbW0gZG9uJ3QgaGF2ZSBsb2dzIGF0
IGhhbmQsIGJ1dCBJIHJlbWVtYmVyIGl0IGRpZG4ndCByZWFsbHkgcmVhY2ggdGhlCmxpbnV4IGZp
cnN0IGxpbmUgZWl0aGVyLCBpdCB3ZW50IGludG8gc29ydCBvZiBhIGJvb3Rsb29wIGp1c3QgYWZ0
ZXIKdGhlIHVib290IHN0YWdlLgoKPiAKPiA+IAo+ID4+ICsKPiA+PiArJmkyYzYgewo+ID4+ICsJ
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+PiArCXBpbmN0cmwtMCA9IDwmaTJjNm0zX3hm
ZXI+Owo+ID4+ICsJc3RhdHVzID0gIm9rYXkiOwo+ID4+ICsKPiA+PiArCWh5bTg1NjM6IHJ0Y0A1
MSB7Cj4gPj4gKwkJY29tcGF0aWJsZSA9ICJoYW95dSxoeW04NTYzIjsKPiA+PiArCQlyZWcgPSA8
MHg1MT47Cj4gPj4gKwkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+ID4+ICsJCWNsb2NrLW91dHB1dC1u
YW1lcyA9ICJoeW04NTYzIjsKPiA+PiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4+
ICsJCXBpbmN0cmwtMCA9IDwmaHltODU2M19pbnQ+Owo+ID4+ICsJCWludGVycnVwdC1wYXJlbnQg
PSA8JmdwaW8wPjsKPiA+PiArCQlpbnRlcnJ1cHRzID0gPFJLX1BCMCBJUlFfVFlQRV9MRVZFTF9M
T1c+Owo+ID4+ICsJCXdha2V1cC1zb3VyY2U7Cj4gPiAKPiA+IEFyZSB5b3UgYWJsZSB0byBhY3R1
YWxseSB1c2UgcnRjIGFzIGEgd2FrZXVwIHNvdXJjZT8gSSB0cmllZCB0aGlzCj4gPiBvbiBhIGRv
d25zdHJlYW0ga2VybmVsIHRoYXQgSSBtZW50aW9uIGJlbG93Li4KPiA+IAo+ID4gcnRjd2FrZSAt
cyAxMCAtbSBtZW0KPiA+IAo+ID4gZGlkbid0IGFjdHVhbGx5IHNlZW0gdG8gd2FrZSB0aGUgZGV2
aWNlIGZyb20gZGVlcHNsZWVwIGFmdGVyIDEwIHNlY29uZHMuCj4gPiBEbyB5b3Uga25vdyB3aGF0
IG90aGVyIHBpbnMgSSBjYW4gdXNlIGFzIHdha2V1cCBzb3VyY2VzPwo+IAo+IE5vLCBpJ3ZlIG5v
dCB0cmllZCBpdCBiZWZvcmUuCgphaCBva2F5Cgo+IAo+ID4gCj4gPj4gKwl9Owo+ID4+ICt9Owo+
ID4+ICsKPiA+PiArJm1kaW8xIHsKPiA+PiArCXJnbWlpX3BoeTE6IGV0aGVybmV0LXBoeUAxIHsK
PiA+PiArCQljb21wYXRpYmxlID0gImV0aGVybmV0LXBoeS1pZWVlODAyLjMtYzIyIjsKPiA+IAo+
ID4gSnVzdCB3b25kZXJpbmcsIGNhbiB5b3UgcGxlYXNlIGdpdmUgc29tZSBsb2dzIG9mIHRoZSBi
b2FyZCB3aXRoIGV0aAo+ID4gd29ya2luZz8gVGhlIGltYWdlIHRoYXQgSSBoYXZlIGZyb20gb3Bp
IHNlZW1zIHRvIGZhaWwgZXRoPyBBcyBpbiBJIGFtCj4gPiBub3QgYWJsZSB0byBzZWUgYW55IGlw
IGFkZHJlc3MuIGhlcmUgYXJlIHRoZSBsb2dzOgo+ID4gCj4gPiBodHRwczovL2dpc3QuZ2l0aHVi
LmNvbS9EaHJ1dmFHMjAwMC9lZGEyNzYyZTM1MDEzYzhkNWFjOWYzN2U4MTgxMDNhMwo+IAo+IFVu
Zm9ydHVuYXRlbHkgdGhlIGJvYXJkIGlzIG5vdCBuZWFyIG1lIGN1cnJlbnRseS4gSG93ZXZlciwg
aSB3YXMgYWJsZSB0byB1c2UgR01BQyBldGhlcm5ldCBpbiBib3RoIHRoZSB1cHN0cmVyYW0gYW5k
IGRvd25zdHJlYW0ga2VybmVscy4gRGlkIHlvdSB0cnkgYW55IGltYWdlcyBvdGhlciB0aGFuIE9y
YW5nZSBQaSBvbmVzPwoKTm9wZSwgYXJlIHRoZXJlIGFueSBvdGhlciBpbWFnZXMgdGhhdCBtYXli
ZSBtb3JlIHN1aXRhYmxlPyBQbGVhc2UgY2FuIHlvdSBwb2ludCBtZSB0byB0aGVtPwoKPiAKPiA+
IAo+ID4gLi4uCj4gPiAKPiAKCi0tIApCZXN0IHJlZ2FyZHMsCkRocnV2YSBHb2xlIDxkLWdvbGVA
dGkuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
