Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A576C4167D
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 15:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SR2Lfj2N5pGFs8RhClyBVgdWJBZA/6ZDD4UigPTfcGw=; b=doC5+nfGWKXdmc
	ruar4zNZxO7BW8T/x+Hvh8dSfdM9z+JEXy+VnFBqjBmaiG0WBVv3wmilsxdwyUyYHqBRr9xYhddDo
	POc/NJosGZeY2R0eC/c4wgcsnbAe7qV1JBzi9QBR3LmNAGXooXFvOllesMya+OAkP7wN9FyoiZKwd
	pZ9q9r4vQGXooiyMB5wBW/VTQmP6n1IYnaY2wQxalR5Vj3m+eKRTI2e9IUQqasbfZ0zpApTr/IQQN
	4MoRM+JFc0LNtdC4mWCIjK9YG0zSK0N7r6UBfwV7aJS3b3aXv8uC88885FE4mTEZvKnOjjh3sVd7u
	mqqpXn/YzBKaElQUW34w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r17MV-006f4V-1S;
	Thu, 09 Nov 2023 15:54:31 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r17MR-006f3T-17;
	Thu, 09 Nov 2023 15:54:29 +0000
Received: from [100.98.136.55] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6B90C66074E4;
	Thu,  9 Nov 2023 15:54:22 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699545263;
	bh=3WWL6wQEComAANvAj1qEV/UYxsJ1yDBfQ3tP5uX/YLk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=D/dUZwI3iQpedaY/GdQjHQS1scxyhcN7jhgn6D47iDVOWAXLkJYI6JlliE4PqmW/F
	 dMEOOPkxJ8ZlzQybUFvpUZmlGi79eHqyaJx0Yxup3HJ5Yd6Ze+dQnNfdhHKlpO8PSd
	 xeXAr05Z1tf0hQAm4iDfRDXdrOnBv1+GpDuUaeyED4Kd+IQ8QxcOkJsa+goDTcXPQg
	 cs+yV0VQgJo5pHMGahaM5nsibUwKDyBxIKWaWQhTwPBpbwc4vz7xxBxDOLmmP5aVKf
	 1weo50VNmE7smJkaFraV1l9OxfnyeJPl9QQ7xCmBW2qThbML61PtQ3rgYO5gVG8+gT
	 dko5b02V9ORdA==
Message-ID: <22f2aee0-aea7-465d-b7f3-b1add1bf7bd7@collabora.com>
Date: Thu, 9 Nov 2023 16:54:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 35/56] media: cedrus: Stop direct calls to queue
 num_buffers field
Content-Language: en-US
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: mchehab@kernel.org, tfiga@chromium.org, m.szyprowski@samsung.com,
 ming.qian@nxp.com, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 kernel@collabora.com, Maxime Ripard <mripard@kernel.org>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-36-benjamin.gaignard@collabora.com>
 <083e43d9-452a-4b11-b7f1-f75992bc795e@collabora.com>
 <ZUzpSXDbO60uGr0t@aptenodytes>
 <618d5b67-ba46-4c33-ae7f-990f4b522ba8@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <618d5b67-ba46-4c33-ae7f-990f4b522ba8@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_075427_650008_9175733D 
X-CRM114-Status: GOOD (  22.00  )
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

CkxlIDA5LzExLzIwMjMgw6AgMTY6NDgsIEFuZHJ6ZWogUGlldHJhc2lld2ljeiBhIMOpY3JpdMKg
Ogo+IEhpIFBhdWwsCj4KPiBXIGRuaXUgOS4xMS4yMDIzIG/CoDE1OjE0LCBQYXVsIEtvY2lhbGtv
d3NraSBwaXN6ZToKPj4gSGkgQW5kcnplaiwKPj4KPj4gT24gVGh1IDA5IE5vdiAyMywgMTI6Mjcs
IEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPj4+IEhpIFBhdWwsCj4+Pgo+Pj4gVyBkbml1
IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+Pj4+IFVzZSB2
YjJfZ2V0X251bV9idWZmZXJzKCkgdG8gYXZvaWQgdXNpbmcgcXVldWUgbnVtX2J1ZmZlcnMgZmll
bGQgCj4+Pj4gZGlyZWN0bHkuCj4+Pj4gVGhpcyBhbGxvd3MgdXMgdG8gY2hhbmdlIGhvdyB0aGUg
bnVtYmVyIG9mIGJ1ZmZlcnMgaXMgY29tcHV0ZWQgaW4gdGhlCj4+Pj4gZnV0dXJlLgo+Pj4+Cj4+
Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNv
bGxhYm9yYS5jb20+Cj4+Pj4gQWNrZWQtYnk6IFBhdWwgS29jaWFsa293c2tpIDxwYXVsLmtvY2lh
bGtvd3NraUBib290bGluLmNvbT4KPj4+Cj4+PiBHaXZlbiB5b3UndmUgYWxhcmVkeSBBLWIsIHdv
dWxkIHlvdSBiZSBvayB3aXRoIGFkZGluZyB0aGlzIHNlbnRlbmNlOgo+Pj4KPj4+ICJXaGlsZSBh
dCBpdCwgY2hlY2sgdGhlIHJldHVybiB2YWx1ZSBvZiB2YjJfZ2V0X2J1ZmZlcigpLiIKPj4+Cj4+
PiB0byB0aGUgY29tbWl0IG1lc3NhZ2UgYm9keT8KPj4KPj4gTm90IG9ubHkgZG8gSSBhZ3JlZSwg
YnV0IGJlY2F1c2UgdGhpcyBpcyBkb25lIGluIGEgZnVuY3Rpb24gcmV0dXJuaW5nIAo+PiB2b2lk
LAo+PiB5b3UgY291bGQgZXZlbjoKPj4KPj4gaWYgKFdBUk5fT04oIXZiKSkKPj4gwqDCoMKgwqBj
b250aW51ZTsKPj4KPj4gc28gdGhhdCBpdCBkb2Vzbid0IGdvIGNvbXBsZXRlbHkgdW5ub3RpY2Vk
Lgo+Pgo+PiBXaGF0IGRvIHlvdSB0aGluaz8KPj4KPgo+IEknZCBhc2sgQmVuamFtaW4uCj4KPiBC
dXQgbXkgdGFrZSBvbiB0aGUgZGlyZWN0aW9uIG9mIGNoYW5nZXMgaXMgdGhhdCB1bHRpbWF0ZWx5
Cj4gdGhlcmUgd2lsbCBiZSAiaG9sZXMiIGluIHRoZSBhcnJheSBvZiBhbGxvY2F0ZWQgYnVmZmVy
cyAoaGVuY2UgdGhlCj4gYml0bWFwIHRvIHRyYWNrIHdoaWNoIHNsb3RzIGFyZSB1c2VkIGFuZCB3
aGljaCBhcmUgbm90KS4gSW4gb3RoZXIgd29yZHMsCj4gZ2V0dGluZyBhIE5VTEwgc29tZXRpbWVz
IHdpbGwgYmUgYW4gZXhwZWN0ZWQgc2l0dWF0aW9uLCBhbmQgYSBXQVJOKCkgd2lsbAo+IG5vdCBi
ZSBhcHByb3ByaWF0ZSBmb3IgYW4gZXhwZWN0ZWQgc2l0dWF0aW9uLgo+Cj4gQEJlbmphbWluPwoK
VGhhdCBzaG91bGQgbmV2ZXIgaGFwcGVucyB1bmxlc3MgeW91IGFkZCBkZWxldGUgYnVmZmVycyBj
YXBhYmlsaXR5IHRvIHRoZSBkcml2ZXIKYW5kIGluIHRoaXMgY2FzZSBpdCBpcyBub3JtYWwgdG8g
aGF2ZSBob2xlcy4KT3RoZXIgZHJpdmVycyBkbyBub3QgdXNlIFdBUk5fT04oKSBzbyBJIHdpbGwg
bm90IGRvIGl0IGZvciB0aGlzIG9uZS4KClJlZ2FyZHMsCkJlbmphbWluCgo+Cj4gUmVnYXJkcywK
Pgo+IEFuZHJ6ZWoKPgo+PiBDaGVlcnMsCj4+Cj4+IFBhdWwKPj4KPj4+IEBCZW5qYW1pbjoKPj4+
Cj4+PiBXaXRoIHRoaXMgY2hhbmdlLCB5b3UgY2FuIGFkZCBteQo+Pj4KPj4+IFJldmlld2VkLWJ5
OiBBbmRyemVqIFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+Pj4KPj4+
PiBDQzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgo+Pj4+IC0tLQo+Pj4+IMKg
wqAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NC5jIHwgOSAr
KysrKysrLS0KPj4+PiDCoMKgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2Vk
cnVzX2gyNjUuYyB8IDkgKysrKysrKy0tCj4+Pj4gwqDCoCAyIGZpbGVzIGNoYW5nZWQsIDE0IGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NC5jIAo+Pj4+IGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NC5jCj4+Pj4gaW5kZXggZGZi
NDAxZGYxMzhhLi4zZTI4NDNlZjZjY2UgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NC5jCj4+Pj4gKysrIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NC5jCj4+Pj4gQEAgLTY1Myw4ICs2NTMs
MTMgQEAgc3RhdGljIHZvaWQgY2VkcnVzX2gyNjRfc3RvcChzdHJ1Y3QgY2VkcnVzX2N0eCAKPj4+
PiAqY3R4KQo+Pj4+IMKgwqDCoMKgwqDCoCB2cSA9IHY0bDJfbTJtX2dldF92cShjdHgtPmZoLm0y
bV9jdHgsIAo+Pj4+IFY0TDJfQlVGX1RZUEVfVklERU9fQ0FQVFVSRSk7Cj4+Pj4gLcKgwqDCoCBm
b3IgKGkgPSAwOyBpIDwgdnEtPm51bV9idWZmZXJzOyBpKyspIHsKPj4+PiAtwqDCoMKgwqDCoMKg
wqAgYnVmID0gdmIyX3RvX2NlZHJ1c19idWZmZXIodmIyX2dldF9idWZmZXIodnEsIGkpKTsKPj4+
PiArwqDCoMKgIGZvciAoaSA9IDA7IGkgPCB2YjJfZ2V0X251bV9idWZmZXJzKHZxKTsgaSsrKSB7
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHN0cnVjdCB2YjJfYnVmZmVyICp2YiA9IHZiMl9nZXRfYnVm
ZmVyKHZxLCBpKTsKPj4+PiArCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmICghdmIpCj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqDC
oCBidWYgPSB2YjJfdG9fY2VkcnVzX2J1ZmZlcih2Yik7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaWYgKGJ1Zi0+Y29kZWMuaDI2NC5tdl9jb2xfYnVmX3NpemUgPiAwKSB7Cj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfZnJlZV9hdHRycyhkZXYtPmRldiwKPj4+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NS5j
IAo+Pj4+IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NS5j
Cj4+Pj4gaW5kZXggZmM5Mjk3MjMyNDU2Li41MmU5NGM4ZjJmMDEgMTAwNjQ0Cj4+Pj4gLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NS5jCj4+Pj4gKysr
IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NS5jCj4+Pj4g
QEAgLTg2OSw4ICs4NjksMTMgQEAgc3RhdGljIHZvaWQgY2VkcnVzX2gyNjVfc3RvcChzdHJ1Y3Qg
Y2VkcnVzX2N0eCAKPj4+PiAqY3R4KQo+Pj4+IMKgwqDCoMKgwqDCoCB2cSA9IHY0bDJfbTJtX2dl
dF92cShjdHgtPmZoLm0ybV9jdHgsIAo+Pj4+IFY0TDJfQlVGX1RZUEVfVklERU9fQ0FQVFVSRSk7
Cj4+Pj4gLcKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgdnEtPm51bV9idWZmZXJzOyBpKyspIHsKPj4+
PiAtwqDCoMKgwqDCoMKgwqAgYnVmID0gdmIyX3RvX2NlZHJ1c19idWZmZXIodmIyX2dldF9idWZm
ZXIodnEsIGkpKTsKPj4+PiArwqDCoMKgIGZvciAoaSA9IDA7IGkgPCB2YjJfZ2V0X251bV9idWZm
ZXJzKHZxKTsgaSsrKSB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHN0cnVjdCB2YjJfYnVmZmVyICp2
YiA9IHZiMl9nZXRfYnVmZmVyKHZxLCBpKTsKPj4+PiArCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlm
ICghdmIpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4+Pj4gKwo+Pj4+
ICvCoMKgwqDCoMKgwqDCoCBidWYgPSB2YjJfdG9fY2VkcnVzX2J1ZmZlcih2Yik7Cj4+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqAgaWYgKGJ1Zi0+Y29kZWMuaDI2NS5tdl9jb2xfYnVmX3NpemUgPiAw
KSB7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfZnJlZV9hdHRycyhkZXYt
PmRldiwKPj4+Cj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+IEtlcm5lbCBtYWlsaW5nIGxpc3QgLS0ga2VybmVsQG1haWxtYW4uY29sbGFi
b3JhLmNvbQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGtlcm5lbC1sZWF2ZUBt
YWlsbWFuLmNvbGxhYm9yYS5jb20KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
