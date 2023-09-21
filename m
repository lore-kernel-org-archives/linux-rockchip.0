Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ECB1E71062
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Sep 2023 12:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mIv79KC4nDTfnwZRmbdR9DMZxy0gYferJPrcHKtG/Y=; b=By+Fr8WZ6Ifa1u
	DY5Kc+v8HpSnZLJmebpskDWkzOtxSKY7jqmuBZKQdos1HSDqAt6dX8BYQJ9M+kWuZ0v9s6g4ZyOdK
	ixRNFlWGhLnaehg3GObd+vLBlqzIwowbumLeWSlkKCqKgf10ke869s4ar1gpXj32sSCZ1V0nAovDX
	ZvAQb3mO8ahJDV9ihagbswSqjVaNqebsH8QEjyvfyeGh/I6r4UrOshfCDwCJhUjX4bOPYn3zugBfz
	HSzZrN66VB26jcPh11PA1xTg3yDc6jyKLwyz2oYt8wQH3ajGJhZGmwI5KVB3iMOSUdimlH2n8oJ/n
	hppAO4fvZK2qvP8SNB4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIYi-005zC2-0G;
	Thu, 21 Sep 2023 12:13:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIYe-005zAs-1m;
	Thu, 21 Sep 2023 12:13:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0FC3061EF0;
	Thu, 21 Sep 2023 12:13:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02EA9C4E67C;
	Thu, 21 Sep 2023 12:13:19 +0000 (UTC)
Message-ID: <a6a6da68-d9f2-44d3-9741-aa2cf83fac6d@xs4all.nl>
Date: Thu, 21 Sep 2023 14:13:17 +0200
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
 <b10a7414-b710-4fb9-a72d-e2d7eff2616d@xs4all.nl>
 <aa649adf-8faf-801b-f6bd-d4a4760e040f@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <aa649adf-8faf-801b-f6bd-d4a4760e040f@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_051324_673550_49623B11 
X-CRM114-Status: GOOD (  19.30  )
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

T24gMjEvMDkvMjAyMyAxNDowNSwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCj4gTGUgMjEv
MDkvMjAyMyDDoCAxMjoyNCwgSGFucyBWZXJrdWlsIGEgw6ljcml0wqA6Cj4+IE9uIDIxLzA5LzIw
MjMgMTE6MjgsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pj4gTGUgMjAvMDkvMjAyMyDDoCAx
Njo1NiwgSGFucyBWZXJrdWlsIGEgw6ljcml0wqA6Cj4+Pj4gT24gMjAvMDkvMjAyMyAxNjozMCwg
QmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4+Pj4gPHNuaXA+Cj4+Pj4KPj4+Pj4+PiDCoMKgwqDC
oMKgwqDCoCBudW1fYnVmZmVycyA9IG1pbl90KHVuc2lnbmVkIGludCwgbnVtX2J1ZmZlcnMsCj4+
Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcS0+bWF4X2FsbG93
ZWRfYnVmZmVycyAtIHZiMl9nZXRfbnVtX2J1ZmZlcnMocSkpOwo+Pj4+Pj4+IMKgwqDCoCAtwqDC
oMKgIGZpcnN0X2luZGV4ID0gdmIyX2dldF9udW1fYnVmZmVycyhxKTsKPj4+Pj4+PiArwqDCoMKg
IGZpcnN0X2luZGV4ID0gYml0bWFwX2ZpbmRfbmV4dF96ZXJvX2FyZWEocS0+YnVmc19tYXAsIHEt
Pm1heF9hbGxvd2VkX2J1ZmZlcnMsCj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwLCBudW1fYnVmZmVycywgMCk7Cj4+Pj4+Pj4gwqDCoMKg
IMKgwqDCoMKgwqAgaWYgKGZpcnN0X2luZGV4ID49IHEtPm1heF9hbGxvd2VkX2J1ZmZlcnMpCj4+
Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4+Pj4+PiBAQCAtNjc1LDcg
KzY3OCwxMyBAQCBzdGF0aWMgdm9pZCBfX3ZiMl9xdWV1ZV9mcmVlKHN0cnVjdCB2YjJfcXVldWUg
KnEsIHVuc2lnbmVkIGludCBidWZmZXJzKQo+Pj4+Pj4+IMKgwqDCoCDCoCBzdHJ1Y3QgdmIyX2J1
ZmZlciAqdmIyX2dldF9idWZmZXIoc3RydWN0IHZiMl9xdWV1ZSAqcSwgdW5zaWduZWQgaW50IGlu
ZGV4KQo+Pj4+Pj4+IMKgwqDCoCB7Cj4+Pj4+Pj4gLcKgwqDCoCBpZiAoaW5kZXggPCBxLT5udW1f
YnVmZmVycykKPj4+Pj4+PiArwqDCoMKgIGlmICghcS0+YnVmc19tYXAgfHwgIXEtPmJ1ZnMpCj4+
Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBOVUxMOwo+Pj4+Pj4gSSBkb24ndCB0aGluayB0
aGlzIGNhbiBldmVyIGhhcHBlbi4KPj4+Pj4gSSBnb3Qga2VybmVsIGNyYXNoIHdpdGhvdXQgdGhl
bS4KPj4+Pj4gSSB3aWxsIGtlZXAgdGhlbS4KPj4+PiBXaGF0IGlzIHRoZSBiYWNrdHJhY2U/IEhv
dyBjYW4gdGhpcyBoYXBwZW4/IEl0IGZlZWxzIHdyb25nIHRoYXQgdGhpcyBjYW4gYmUKPj4+PiBj
YWxsZWQgd2l0aCBhIHZiMl9xdWV1ZSB0aGF0IGFwcGFyZW50bHkgaXMgbm90IHByb3Blcmx5IGlu
aXRpYWxpemVkLgo+Pj4gSSBoYXZlIHRoaXMgbG9nIHdoZW4gYWRkaW5nIGR1bXBfc3RhY2soKSBp
biB2YjJfZ2V0X2J1ZmZlcigpIGlmICFxLT5idWZzX2JpdG1hcDoKPj4+Cj4+PiBbwqDCoCAxOC45
MjQ2MjddIENhbGwgdHJhY2U6Cj4+PiBbwqDCoCAxOC45MjcwOTBdwqAgZHVtcF9iYWNrdHJhY2Ur
MHg5NC8weGVjCj4+PiBbwqDCoCAxOC45MzA3ODddwqAgc2hvd19zdGFjaysweDE4LzB4MjQKPj4+
IFvCoMKgIDE4LjkzNDEzN13CoCBkdW1wX3N0YWNrX2x2bCsweDQ4LzB4NjAKPj4+IFvCoMKgIDE4
LjkzNzgzM13CoCBkdW1wX3N0YWNrKzB4MTgvMHgyNAo+Pj4gW8KgwqAgMTguOTQxMTY2XcKgIF9f
dmIyX3F1ZXVlX2NhbmNlbCsweDIzYy8weDJmMAo+Pj4gW8KgwqAgMTguOTQ1MzY1XcKgIHZiMl9j
b3JlX3F1ZXVlX3JlbGVhc2UrMHgyNC8weDZjCj4+PiBbwqDCoCAxOC45NDk3NDBdwqAgdmIyX3F1
ZXVlX3JlbGVhc2UrMHgxMC8weDFjCj4+PiBbwqDCoCAxOC45NTM2NzddwqAgdjRsMl9tMm1fY3R4
X3JlbGVhc2UrMHgyMC8weDQwCj4+PiBbwqDCoCAxOC45NTc4OTJdwqAgaGFudHJvX3JlbGVhc2Ur
MHgyMC8weDU0Cj4+PiBbwqDCoCAxOC45NjE1ODRdwqAgdjRsMl9yZWxlYXNlKzB4NzQvMHhlYwo+
Pj4gW8KgwqAgMTguOTY1MTEwXcKgIF9fZnB1dCsweGI0LzB4Mjc0Cj4+PiBbwqDCoCAxOC45Njgy
MDVdwqAgX19mcHV0X3N5bmMrMHg1MC8weDVjCj4+PiBbwqDCoCAxOC45NzE2MjZdwqAgX19hcm02
NF9zeXNfY2xvc2UrMHgzOC8weDdjCj4+PiBbwqDCoCAxOC45NzU1NjJdwqAgaW52b2tlX3N5c2Nh
bGwrMHg0OC8weDExNAo+Pj4gW8KgwqAgMTguOTc5MzI5XcKgIGVsMF9zdmNfY29tbW9uLmNvbnN0
cHJvcC4wKzB4YzAvMHhlMAo+Pj4gW8KgwqAgMTguOTg0MDY4XcKgIGRvX2VsMF9zdmMrMHgxYy8w
eDI4Cj4+PiBbwqDCoCAxOC45ODc0MDJdwqAgZWwwX3N2YysweDQwLzB4ZTgKPj4+IFvCoMKgIDE4
Ljk5MDQ3MF3CoCBlbDB0XzY0X3N5bmNfaGFuZGxlcisweDEwMC8weDEyYwo+Pj4gW8KgwqAgMTgu
OTk0ODQyXcKgIGVsMHRfNjRfc3luYysweDE5MC8weDE5NAo+Pj4KPj4+IFRoaXMgaGFwcGVuIGF0
IGJvb3QgdGltZSB3aGVuIGhhbnRybyBkcml2ZXIgaXMgb3BlbiBhbmQgY2xvc2Ugd2l0aG91dCBv
dGhlciBhY3Rpb25zLgo+PiBBaCwgbm93IEkgc2VlIHRoZSBwcm9ibGVtLiBxLT5idWZzIGFuZCBx
LT5idWZzX21hcCBhcmUgYWxsb2NhdGVkIGluCj4+IHZiMl9jb3JlX2NyZWF0ZV9idWZzIGFuZCB2
YjJfY29yZV9yZXFidWZzLCBidXQgdGhleSBzaG91bGQgYmUgYWxsb2NhdGVkCj4+IGluIHZiMl9x
dWV1ZV9pbml0OiB0aGF0J3MgdGhlIGNvdW50ZXJwYXJ0IG9mIHZiMl9jb3JlX3F1ZXVlX3JlbGVh
c2UuCj4+Cj4+IFdpdGggdGhhdCBjaGFuZ2UgeW91IHNob3VsZG4ndCBoYXZlIHRvIGNoZWNrIGZv
ciBxLT5idWZzL2J1ZnNfbWFwIGFueW1vcmUuCj4gCj4gSXQgaXMgYSBiZXR0ZXIgc29sdXRpb24g
YnV0IGV2ZW4gbGlrZSB0aGlzIHZiMl9jb3JlX3F1ZXVlX3JlbGVhc2UoKSBpcyBjYWxsZWQKPiBh
dCBsZWFzdCAyIHRpbWVzIG9uIHRoZSBzYW1lIHZpdmlkIHF1ZXVlIGFuZCB3aXRob3V0IHRlc3Rp
bmcgcS0+YnVmc19iaXRtYXAKPiBtYWtlcyBrZXJuZWwgY3Jhc2guCgpEbyB5b3UgaGF2ZSBhIHN0
YWNrdHJhY2UgZm9yIHRoYXQ/IFBlcmhhcHMgdmIyX2NvcmVfcXVldWVfcmVsZWFzZSBzaG91bGQg
Y2hlY2sKZm9yIHEtPmJ1ZnMvcS0+YnVmc19tYXAgYW5kIHJldHVybiBpZiB0aG9zZSBhcmUgTlVM
TC4gQnV0IGl0IGNvdWxkIGFsc28gYmUgYQpidWcgdGhhdCBpdCBpcyBjYWxsZWQgdHdpY2UsIGl0
IGp1c3Qgd2FzIG5ldmVyIG5vdGljZWQgYmVjYXVzZSBpdCB3YXMgaGFybWxlc3MKYmVmb3JlLgoK
UmVnYXJkcywKCglIYW5zCgo+IAo+Pgo+PiBSZWdhcmRzLAo+Pgo+PiDCoMKgwqDCoEhhbnMKPj4K
Pj4+IMKgwqDCoAo+Pj4+Pj4+ICsKPj4+Pj4+PiArwqDCoMKgIHJldHVybiAoYml0bWFwX3dlaWdo
dChxLT5idWZzX21hcCwgcS0+bWF4X2FsbG93ZWRfYnVmZmVycykgPiAwKTsKPj4+Pj4+IEhvdyBh
Ym91dDoKPj4+Pj4+Cj4+Pj4+PiDCoMKgwqDCoMKgwqByZXR1cm4gdmIyX2dldF9udW1fYnVmZmVy
cyhxKSA+IDA7Cj4+Pj4+IHZiMl9nZXRfbnVtX2J1ZmZlcnMgaXMgZGVmaW5lZCBpbiB2aWRlb2J1
ZjItY29yZS5jLCBJJ20gbm90IHN1cmUgdGhhdAo+Pj4+PiBhbiBpbmxpbmUgZnVuY3Rpb24gY291
bGQgZGVwZW5kIG9mIGEgbW9kdWxlIGZ1bmN0aW9uLgo+Pj4+IE5vdCBhIHByb2JsZW0uIEUuZy4g
djRsMi1jdHJscy5oIGlzIGZ1bGwgb2Ygc3VjaCBzdGF0aWMgaW5saW5lcy4KPj4+Pgo+Pj4+IFJl
Z2FyZHMsCj4+Pj4KPj4+PiDCoMKgwqDCoMKgSGFucwo+Pj4+Cj4+CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
