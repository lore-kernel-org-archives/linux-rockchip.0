Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E25FE7070A
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Sep 2023 10:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhp6xRWjThj/t+spj+gRu++Ou/qAgLqdoXPS5j0H7pE=; b=pghEIybwOJo01s
	e429k56HdBYYHmP4oEQAiAwCtLOObhpe6gNhMOtGMiZerGheEZCUEOLfw3FfCHIUbz+yc3Llh+SCT
	wc6F0B4iI8fdsYebkERPwCV3zNPExhIvHaJy8xNGto3gKvIWj89sJWaSnZthUvXiV3lcXKlVt6DaW
	enev9NfQ5a41nHJqNY3ON4VECTN8zZU5xDb6wDCZjYwfadicBWMtESRGw7UXGpwSYrQIpADrPsicz
	CoMa8EsabSLRiwtdhrXocJtSH4YYHl62gPDFGVhVVLL6yuEY6rqTAIlxMsMrtCKQvw0F2pJI2tG2Y
	aAC5FLQp9nhYoUX4YdJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGr7-005hxj-2H;
	Thu, 21 Sep 2023 10:24:21 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGr3-005hvG-2d;
	Thu, 21 Sep 2023 10:24:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id BB6A0CE219D;
	Thu, 21 Sep 2023 10:24:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4979C32794;
	Thu, 21 Sep 2023 10:24:10 +0000 (UTC)
Message-ID: <b10a7414-b710-4fb9-a72d-e2d7eff2616d@xs4all.nl>
Date: Thu, 21 Sep 2023 12:24:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 45/49] media: core: Add bitmap manage bufs array
 entries
Content-Language: en-US, nl
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
 <20230914133323.198857-46-benjamin.gaignard@collabora.com>
 <1142bbb4-b8f1-44ec-962e-9347a231782f@xs4all.nl>
 <20b6b93e-eef8-3d7b-a3c2-795f220059d4@collabora.com>
 <470682b4-c14b-4237-bc46-fddfdd085026@xs4all.nl>
 <31f298ec-6280-d21b-3d8a-c7bf1c9c0c30@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <31f298ec-6280-d21b-3d8a-c7bf1c9c0c30@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032418_190266_9C6794B4 
X-CRM114-Status: GOOD (  15.62  )
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

T24gMjEvMDkvMjAyMyAxMToyOCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCj4gTGUgMjAv
MDkvMjAyMyDDoCAxNjo1NiwgSGFucyBWZXJrdWlsIGEgw6ljcml0wqA6Cj4+IE9uIDIwLzA5LzIw
MjMgMTY6MzAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiA8c25pcD4KPj4KPj4+Pj4gwqDC
oMKgwqDCoMKgIG51bV9idWZmZXJzID0gbWluX3QodW5zaWduZWQgaW50LCBudW1fYnVmZmVycywK
Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHEtPm1heF9hbGxvd2Vk
X2J1ZmZlcnMgLSB2YjJfZ2V0X251bV9idWZmZXJzKHEpKTsKPj4+Pj4gwqDCoCAtwqDCoMKgIGZp
cnN0X2luZGV4ID0gdmIyX2dldF9udW1fYnVmZmVycyhxKTsKPj4+Pj4gK8KgwqDCoCBmaXJzdF9p
bmRleCA9IGJpdG1hcF9maW5kX25leHRfemVyb19hcmVhKHEtPmJ1ZnNfbWFwLCBxLT5tYXhfYWxs
b3dlZF9idWZmZXJzLAo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDAsIG51bV9idWZmZXJzLCAwKTsKPj4+Pj4gwqDCoCDCoMKgwqDCoMKgIGlm
IChmaXJzdF9pbmRleCA+PSBxLT5tYXhfYWxsb3dlZF9idWZmZXJzKQo+Pj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByZXR1cm4gMDsKPj4+Pj4gQEAgLTY3NSw3ICs2NzgsMTMgQEAgc3RhdGljIHZv
aWQgX192YjJfcXVldWVfZnJlZShzdHJ1Y3QgdmIyX3F1ZXVlICpxLCB1bnNpZ25lZCBpbnQgYnVm
ZmVycykKPj4+Pj4gwqDCoCDCoCBzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIyX2dldF9idWZmZXIoc3Ry
dWN0IHZiMl9xdWV1ZSAqcSwgdW5zaWduZWQgaW50IGluZGV4KQo+Pj4+PiDCoMKgIHsKPj4+Pj4g
LcKgwqDCoCBpZiAoaW5kZXggPCBxLT5udW1fYnVmZmVycykKPj4+Pj4gK8KgwqDCoCBpZiAoIXEt
PmJ1ZnNfbWFwIHx8ICFxLT5idWZzKQo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIE5VTEw7
Cj4+Pj4gSSBkb24ndCB0aGluayB0aGlzIGNhbiBldmVyIGhhcHBlbi4KPj4+IEkgZ290IGtlcm5l
bCBjcmFzaCB3aXRob3V0IHRoZW0uCj4+PiBJIHdpbGwga2VlcCB0aGVtLgo+PiBXaGF0IGlzIHRo
ZSBiYWNrdHJhY2U/IEhvdyBjYW4gdGhpcyBoYXBwZW4/IEl0IGZlZWxzIHdyb25nIHRoYXQgdGhp
cyBjYW4gYmUKPj4gY2FsbGVkIHdpdGggYSB2YjJfcXVldWUgdGhhdCBhcHBhcmVudGx5IGlzIG5v
dCBwcm9wZXJseSBpbml0aWFsaXplZC4KPiAKPiBJIGhhdmUgdGhpcyBsb2cgd2hlbiBhZGRpbmcg
ZHVtcF9zdGFjaygpIGluIHZiMl9nZXRfYnVmZmVyKCkgaWYgIXEtPmJ1ZnNfYml0bWFwOgo+IAo+
IFvCoMKgIDE4LjkyNDYyN10gQ2FsbCB0cmFjZToKPiBbwqDCoCAxOC45MjcwOTBdwqAgZHVtcF9i
YWNrdHJhY2UrMHg5NC8weGVjCj4gW8KgwqAgMTguOTMwNzg3XcKgIHNob3dfc3RhY2srMHgxOC8w
eDI0Cj4gW8KgwqAgMTguOTM0MTM3XcKgIGR1bXBfc3RhY2tfbHZsKzB4NDgvMHg2MAo+IFvCoMKg
IDE4LjkzNzgzM13CoCBkdW1wX3N0YWNrKzB4MTgvMHgyNAo+IFvCoMKgIDE4Ljk0MTE2Nl3CoCBf
X3ZiMl9xdWV1ZV9jYW5jZWwrMHgyM2MvMHgyZjAKPiBbwqDCoCAxOC45NDUzNjVdwqAgdmIyX2Nv
cmVfcXVldWVfcmVsZWFzZSsweDI0LzB4NmMKPiBbwqDCoCAxOC45NDk3NDBdwqAgdmIyX3F1ZXVl
X3JlbGVhc2UrMHgxMC8weDFjCj4gW8KgwqAgMTguOTUzNjc3XcKgIHY0bDJfbTJtX2N0eF9yZWxl
YXNlKzB4MjAvMHg0MAo+IFvCoMKgIDE4Ljk1Nzg5Ml3CoCBoYW50cm9fcmVsZWFzZSsweDIwLzB4
NTQKPiBbwqDCoCAxOC45NjE1ODRdwqAgdjRsMl9yZWxlYXNlKzB4NzQvMHhlYwo+IFvCoMKgIDE4
Ljk2NTExMF3CoCBfX2ZwdXQrMHhiNC8weDI3NAo+IFvCoMKgIDE4Ljk2ODIwNV3CoCBfX2ZwdXRf
c3luYysweDUwLzB4NWMKPiBbwqDCoCAxOC45NzE2MjZdwqAgX19hcm02NF9zeXNfY2xvc2UrMHgz
OC8weDdjCj4gW8KgwqAgMTguOTc1NTYyXcKgIGludm9rZV9zeXNjYWxsKzB4NDgvMHgxMTQKPiBb
wqDCoCAxOC45NzkzMjldwqAgZWwwX3N2Y19jb21tb24uY29uc3Rwcm9wLjArMHhjMC8weGUwCj4g
W8KgwqAgMTguOTg0MDY4XcKgIGRvX2VsMF9zdmMrMHgxYy8weDI4Cj4gW8KgwqAgMTguOTg3NDAy
XcKgIGVsMF9zdmMrMHg0MC8weGU4Cj4gW8KgwqAgMTguOTkwNDcwXcKgIGVsMHRfNjRfc3luY19o
YW5kbGVyKzB4MTAwLzB4MTJjCj4gW8KgwqAgMTguOTk0ODQyXcKgIGVsMHRfNjRfc3luYysweDE5
MC8weDE5NAo+IAo+IFRoaXMgaGFwcGVuIGF0IGJvb3QgdGltZSB3aGVuIGhhbnRybyBkcml2ZXIg
aXMgb3BlbiBhbmQgY2xvc2Ugd2l0aG91dCBvdGhlciBhY3Rpb25zLgoKQWgsIG5vdyBJIHNlZSB0
aGUgcHJvYmxlbS4gcS0+YnVmcyBhbmQgcS0+YnVmc19tYXAgYXJlIGFsbG9jYXRlZCBpbgp2YjJf
Y29yZV9jcmVhdGVfYnVmcyBhbmQgdmIyX2NvcmVfcmVxYnVmcywgYnV0IHRoZXkgc2hvdWxkIGJl
IGFsbG9jYXRlZAppbiB2YjJfcXVldWVfaW5pdDogdGhhdCdzIHRoZSBjb3VudGVycGFydCBvZiB2
YjJfY29yZV9xdWV1ZV9yZWxlYXNlLgoKV2l0aCB0aGF0IGNoYW5nZSB5b3Ugc2hvdWxkbid0IGhh
dmUgdG8gY2hlY2sgZm9yIHEtPmJ1ZnMvYnVmc19tYXAgYW55bW9yZS4KClJlZ2FyZHMsCgoJSGFu
cwoKPiDCoMKgwqAKPj4KPj4+Pj4gKwo+Pj4+PiArwqDCoMKgIHJldHVybiAoYml0bWFwX3dlaWdo
dChxLT5idWZzX21hcCwgcS0+bWF4X2FsbG93ZWRfYnVmZmVycykgPiAwKTsKPj4+PiBIb3cgYWJv
dXQ6Cj4+Pj4KPj4+PiDCoMKgwqDCoMKgcmV0dXJuIHZiMl9nZXRfbnVtX2J1ZmZlcnMocSkgPiAw
Owo+Pj4gdmIyX2dldF9udW1fYnVmZmVycyBpcyBkZWZpbmVkIGluIHZpZGVvYnVmMi1jb3JlLmMs
IEknbSBub3Qgc3VyZSB0aGF0Cj4+PiBhbiBpbmxpbmUgZnVuY3Rpb24gY291bGQgZGVwZW5kIG9m
IGEgbW9kdWxlIGZ1bmN0aW9uLgo+PiBOb3QgYSBwcm9ibGVtLiBFLmcuIHY0bDItY3RybHMuaCBp
cyBmdWxsIG9mIHN1Y2ggc3RhdGljIGlubGluZXMuCj4+Cj4+IFJlZ2FyZHMsCj4+Cj4+IMKgwqDC
oMKgSGFucwo+PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
