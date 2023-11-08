Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A36EC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 10:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rl0VRuOBPTVb8K8WAdyyvWyE6Uqv1aRljoJjxVS8JxE=; b=Y1vyC20HSRkgoP
	KHcIby2FIkYB/ccNPk9YE4JTNdruAW/HF0hC69n73047WQHkuEf6fIGlKQ73MtmHiuVMt0rJfDRvE
	CNbw8HwCb9Ec+uj0TkL7dqGz0h5TL/LoXfXWDK+Etzb6qGdBTqq2dGN6DvoEwNDFSfgNJLltv5e6b
	1FDW5Qu4Hoy/TX5Fm+48ITICilysWjxsNw4dlXrbcGuPIc1lSIrGfml8aAoyd/BBwH8FTlJhaJAVv
	99TQ7g3G3mBX1fMiKFhOSgIY/TlLa6CBrgkDDHt5jmizhia7EtWI/KETc3XxT6jRMnEekl30lffpg
	Pxh14HoSlnLME719pY+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0fjb-003R2f-0U;
	Wed, 08 Nov 2023 10:24:31 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0fjX-003R1H-1J;
	Wed, 08 Nov 2023 10:24:29 +0000
Received: from [100.98.136.55] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2DE406607479;
	Wed,  8 Nov 2023 10:24:23 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699439064;
	bh=1WvgVc1+K2XUROLlhm8g5+A8m40Jn66cUsAkrEjr3jQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=inly/7/eYOOZIZyr4l+rz7Bn/JzCmL/k2f/YftO/dPe8S0VNL7c3+YfALP2E75l4V
	 Z8+JPFIeDksI97R07f4kJ539z4bpyUM1P5Kl58n2CwuNj15KtSb+dS8kr8janniR7o
	 aTxOZL9Ty1wvkNfJs/1RKZlTe5zs5+8+pom6nGUAPl0I8iWEFvP84Ryhd9xFc9MrCW
	 9PelD/WyxYauwICjNkrksg/MNL5AdKlsPlzMBuypLRZM/ly+HkCK9nFH7ByV+HxksI
	 fSey8d+1kG+b6Yhf1+USE7KudoMO4r1exbPug/Kk9YeP2zJDwfBArh34cB/9VCzG/o
	 8WX8OSP2EnyGg==
Message-ID: <795ef94f-23d3-433e-b5a3-0a2e0ab7a18c@collabora.com>
Date: Wed, 8 Nov 2023 11:24:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 05/56] media: videobuf2: Access vb2_queue bufs array
 through helper functions
Content-Language: en-US
To: Tomasz Figa <tfiga@chromium.org>
Cc: mchehab@kernel.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-6-benjamin.gaignard@collabora.com>
 <20231108085016.3kmhmdroh4qs53f5@chromium.org>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20231108085016.3kmhmdroh4qs53f5@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_022427_577463_C6492D8A 
X-CRM114-Status: GOOD (  25.17  )
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

CkxlIDA4LzExLzIwMjMgw6AgMDk6NTAsIFRvbWFzeiBGaWdhIGEgw6ljcml0wqA6Cj4gT24gVHVl
LCBPY3QgMzEsIDIwMjMgYXQgMDU6MzA6MTNQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+IFRoaXMgcGF0Y2ggYWRkcyAyIGhlbHBlcnMgZnVuY3Rpb25zIHRvIGFkZCBhbmQgcmVt
b3ZlIHZiMiBidWZmZXJzCj4+IGZyb20gYSBxdWV1ZS4gV2l0aCB0aGVzZSAyIGFuZCB2YjJfZ2V0
X2J1ZmZlcigpLCBidWZzIGZpZWxkIG9mCj4+IHN0cnVjdCB2YjJfcXVldWUgYmVjb21lcyBsaWtl
IGEgcHJpdmF0ZSBtZW1iZXIgb2YgdGhlIHN0cnVjdHVyZS4KPj4KPj4gQWZ0ZXIgZWFjaCBjYWxs
IHRvIHZiMl9nZXRfYnVmZmVyKCkgd2UgbmVlZCB0byBiZSBzdXJlIHRoYXQgd2UgZ2V0Cj4+IGEg
dmFsaWQgcG9pbnRlciBpbiBwcmVwYXJhdGlvbiBmb3Igd2hlbiBidWZmZXJzIGNhbiBiZSBkZWxl
dGVkLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2Fp
Z25hcmRAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICAgLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1
ZjIvdmlkZW9idWYyLWNvcmUuYyAgIHwgMTUxICsrKysrKysrKysrKystLS0tLQo+PiAgIC4uLi9t
ZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi12NGwyLmMgICB8ICA1MCArKysrLS0KPj4g
ICAyIGZpbGVzIGNoYW5nZWQsIDE0OSBpbnNlcnRpb25zKCspLCA1MiBkZWxldGlvbnMoLSkKPj4K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjIt
Y29yZS5jIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmMK
Pj4gaW5kZXggOTY4YjdjMGU3OTM0Li5iNDA2YTMwYTliMzUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jCj4+ICsrKyBiL2RyaXZl
cnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jCj4+IEBAIC00MDgsNiAr
NDA4LDMxIEBAIHN0YXRpYyB2b2lkIGluaXRfYnVmZmVyX2NhY2hlX2hpbnRzKHN0cnVjdCB2YjJf
cXVldWUgKnEsIHN0cnVjdCB2YjJfYnVmZmVyICp2YikKPj4gICAJCXZiLT5za2lwX2NhY2hlX3N5
bmNfb25fZmluaXNoID0gMTsKPj4gICB9Cj4+ICAgCj4+ICsvKioKPj4gKyAqIHZiMl9xdWV1ZV9h
ZGRfYnVmZmVyKCkgLSBhZGQgYSBidWZmZXIgdG8gYSBxdWV1ZQo+PiArICogQHE6CXBvaW50ZXIg
dG8gJnN0cnVjdCB2YjJfcXVldWUgd2l0aCB2aWRlb2J1ZjIgcXVldWUuCj4+ICsgKiBAdmI6CXBv
aW50ZXIgdG8gJnN0cnVjdCB2YjJfYnVmZmVyIHRvIGJlIGFkZGVkIHRvIHRoZSBxdWV1ZS4KPj4g
KyAqIEBpbmRleDogaW5kZXggd2hlcmUgYWRkIHZiMl9idWZmZXIgaW4gdGhlIHF1ZXVlCj4+ICsg
Ki8KPj4gK3N0YXRpYyB2b2lkIHZiMl9xdWV1ZV9hZGRfYnVmZmVyKHN0cnVjdCB2YjJfcXVldWUg
KnEsIHN0cnVjdCB2YjJfYnVmZmVyICp2YiwgdW5zaWduZWQgaW50IGluZGV4KQo+PiArewo+PiAr
CVdBUk5fT04oaW5kZXggPj0gVkIyX01BWF9GUkFNRSB8fCBxLT5idWZzW2luZGV4XSk7Cj4gbml0
OiBXb3VsZCBpdCBtYWtlIHNlbnNlIHRvIGFsc28gZW5zdXJlIHRoYXQgdmItPnZiMl9xdWV1ZSBp
cyBOVUxMPwoKU2luY2UgdmItPnZiMl9xdWV1ZSBhbmQgcS0+YnVmc1tpbmRleF0gYXJlIGFsd2F5
cyBzZXQgYW5kIGNsZWFyIGluIHRoZSBzYW1lCmZ1bmN0aW9ucyBJIGRvbid0IHRoaW5rIGl0IGlz
IHVzZWZ1bCB0byB0ZXN0IHRoZSBib3RoIGhlcmUuCgo+Cj4+ICsKPj4gKwlxLT5idWZzW2luZGV4
XSA9IHZiOwo+PiArCXZiLT5pbmRleCA9IGluZGV4Owo+PiArCXZiLT52YjJfcXVldWUgPSBxOwo+
PiArfQo+IFtzbmlwXQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9i
dWYyL3ZpZGVvYnVmMi12NGwyLmMgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlk
ZW9idWYyLXY0bDIuYwo+PiBpbmRleCBkMTlkODJhNzVhYzYuLjJmZmIwOTdiZjAwYSAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi12NGwyLmMK
Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi12NGwyLmMK
Pj4gQEAgLTM3Nyw2ICszNzcsMTIgQEAgc3RhdGljIGludCB2YjJfcXVldWVfb3JfcHJlcGFyZV9i
dWYoc3RydWN0IHZiMl9xdWV1ZSAqcSwgc3RydWN0IG1lZGlhX2RldmljZSAqbWQKPj4gICAJCXJl
dHVybiAtRUlOVkFMOwo+PiAgIAl9Cj4+ICAgCj4+ICsJdmIgPSB2YjJfZ2V0X2J1ZmZlcihxLCBi
LT5pbmRleCk7Cj4+ICsJaWYgKCF2Yikgewo+PiArCQlkcHJpbnRrKHEsIDEsICIlczogYnVmZmVy
ICV1IGlzIE5VTExcbiIsIG9wbmFtZSwgIGItPmluZGV4KTsKPj4gKwkJcmV0dXJuIC1FSU5WQUw7
Cj4+ICsJfQo+PiArCj4gSXMgdGhpcyBhIGxlZnRvdmVyIGZyb20gZWFybGllciByZXZpc2lvbnM/
IEkgdGhpbmsgaXQgc2hvdWxkbid0IGJlCj4gbmVlZGVkIGFueW1vcmUgYWZ0ZXIgdGhlIHByZXZp
b3VzIHBhdGNoIHdoaWNoIGNoYW5nZWQgdGhlIGZ1bmN0aW9uIHRvCj4gZ2V0IHZiIGFzIGFuIGFy
Z3VtZW50LgoKWW91IGFyZSByaWdodCBJIHdpbGwgZml4IGl0LgoKPgo+IEJlc3QgcmVnYXJkcywK
PiBUb21hc3oKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEtlcm5lbCBtYWlsaW5nIGxpc3QgLS0ga2VybmVsQG1haWxtYW4uY29sbGFib3JhLmNvbQo+
IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8ga2VybmVsLWxlYXZlQG1haWxtYW4uY29s
bGFib3JhLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
