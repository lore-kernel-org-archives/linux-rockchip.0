Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B37E9CD5BDE
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Sep 2023 12:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXVkOl95H80tPr8fy5JEJ0xHiT8T5B30UhIYe6kdwTw=; b=fMpghRvS+Upn1T
	Fq5BHRlGJNoZ+B5TYIGWkXm5L6kEBpVm7eRIzyWHLw6UF12BYVkXyLbnCoDcOlRn8vRXC6K9j34bj
	mCoIP8s1cOeMkQ1mXRitLQmXPxjRLvOeko2Kdjx0+MVJoTc6+6UjGtMpxfxwGjPLcvf9QJ2MF5p+B
	2ANWIpkSphyiN4G+LgQUENE/C7/0UiJYDXXAU3I2/a7RcnCCnVerLNbFVys2uGp/MzxticW0WoibJ
	s4Y0Qs1p9a4IVue2fqL6typZP+YnDtf20oJT/Wx6eJ9c76hAYDTmmBLJ2f3zOlbU1auGKOZy5dyAG
	sP56eoiZC9BrdPThLrxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIRK-005y3v-06;
	Thu, 21 Sep 2023 12:05:50 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIRB-005y0b-0T;
	Thu, 21 Sep 2023 12:05:42 +0000
Received: from [IPV6:2a01:e0a:120:3210:9fdf:789a:7434:5a59] (unknown [IPv6:2a01:e0a:120:3210:9fdf:789a:7434:5a59])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 164DD66072FC;
	Thu, 21 Sep 2023 13:05:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695297935;
	bh=PBeBL+YRZtH0bYoq08uc36OyCfZON3dY/vzl0bwJacs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Ueie0msr8g+x4ffM/JVIo7jX3lp0NPzHfeYTFXEzFW4+Xj2vqGGFwJn/QWynhofzU
	 JNOVGeOiKr5RNOR1Bzn8k2nZuGSVrQ7iJAww0vAeBzEgKgOh6A5ChsBGpYXEm8Cm+3
	 lgJCoSs+ifIZ9Hu/QZEqtgVIq5W+6UM5Vin4cgqc2h46r16F+tHGaqBoDVwtve97Q+
	 e2EPbyxwY9mK8pKlk71qVIc0KuoKvfjYJIo/XqaVfNa6rY21EHNXLI+/WxxLBTx3jL
	 8ptXikVq5KH/LBkHFaJtJUC9XwOTSj0btr+O2Anglxrqk2tY7aiINhOvQJyKvKEQIk
	 njXRo/kvdvuaw==
Message-ID: <aa649adf-8faf-801b-f6bd-d4a4760e040f@collabora.com>
Date: Thu, 21 Sep 2023 14:05:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 45/49] media: core: Add bitmap manage bufs array
 entries
Content-Language: en-US
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, mchehab@kernel.org,
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
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <b10a7414-b710-4fb9-a72d-e2d7eff2616d@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_050541_494563_86320954 
X-CRM114-Status: GOOD (  16.80  )
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

CkxlIDIxLzA5LzIwMjMgw6AgMTI6MjQsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDIx
LzA5LzIwMjMgMTE6MjgsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBMZSAyMC8wOS8yMDIz
IMOgIDE2OjU2LCBIYW5zIFZlcmt1aWwgYSDDqWNyaXTCoDoKPj4+IE9uIDIwLzA5LzIwMjMgMTY6
MzAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pj4gPHNuaXA+Cj4+Pgo+Pj4+Pj4gIMKgwqDC
oMKgwqDCoCBudW1fYnVmZmVycyA9IG1pbl90KHVuc2lnbmVkIGludCwgbnVtX2J1ZmZlcnMsCj4+
Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHEtPm1heF9hbGxvd2Vk
X2J1ZmZlcnMgLSB2YjJfZ2V0X251bV9idWZmZXJzKHEpKTsKPj4+Pj4+ICDCoMKgIC3CoMKgwqAg
Zmlyc3RfaW5kZXggPSB2YjJfZ2V0X251bV9idWZmZXJzKHEpOwo+Pj4+Pj4gK8KgwqDCoCBmaXJz
dF9pbmRleCA9IGJpdG1hcF9maW5kX25leHRfemVyb19hcmVhKHEtPmJ1ZnNfbWFwLCBxLT5tYXhf
YWxsb3dlZF9idWZmZXJzLAo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAwLCBudW1fYnVmZmVycywgMCk7Cj4+Pj4+PiAgwqDCoCDCoMKgwqDC
oMKgIGlmIChmaXJzdF9pbmRleCA+PSBxLT5tYXhfYWxsb3dlZF9idWZmZXJzKQo+Pj4+Pj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+Pj4+Pj4gQEAgLTY3NSw3ICs2NzgsMTMgQEAg
c3RhdGljIHZvaWQgX192YjJfcXVldWVfZnJlZShzdHJ1Y3QgdmIyX3F1ZXVlICpxLCB1bnNpZ25l
ZCBpbnQgYnVmZmVycykKPj4+Pj4+ICDCoMKgIMKgIHN0cnVjdCB2YjJfYnVmZmVyICp2YjJfZ2V0
X2J1ZmZlcihzdHJ1Y3QgdmIyX3F1ZXVlICpxLCB1bnNpZ25lZCBpbnQgaW5kZXgpCj4+Pj4+PiAg
wqDCoCB7Cj4+Pj4+PiAtwqDCoMKgIGlmIChpbmRleCA8IHEtPm51bV9idWZmZXJzKQo+Pj4+Pj4g
K8KgwqDCoCBpZiAoIXEtPmJ1ZnNfbWFwIHx8ICFxLT5idWZzKQo+Pj4+Pj4gK8KgwqDCoMKgwqDC
oMKgIHJldHVybiBOVUxMOwo+Pj4+PiBJIGRvbid0IHRoaW5rIHRoaXMgY2FuIGV2ZXIgaGFwcGVu
Lgo+Pj4+IEkgZ290IGtlcm5lbCBjcmFzaCB3aXRob3V0IHRoZW0uCj4+Pj4gSSB3aWxsIGtlZXAg
dGhlbS4KPj4+IFdoYXQgaXMgdGhlIGJhY2t0cmFjZT8gSG93IGNhbiB0aGlzIGhhcHBlbj8gSXQg
ZmVlbHMgd3JvbmcgdGhhdCB0aGlzIGNhbiBiZQo+Pj4gY2FsbGVkIHdpdGggYSB2YjJfcXVldWUg
dGhhdCBhcHBhcmVudGx5IGlzIG5vdCBwcm9wZXJseSBpbml0aWFsaXplZC4KPj4gSSBoYXZlIHRo
aXMgbG9nIHdoZW4gYWRkaW5nIGR1bXBfc3RhY2soKSBpbiB2YjJfZ2V0X2J1ZmZlcigpIGlmICFx
LT5idWZzX2JpdG1hcDoKPj4KPj4gW8KgwqAgMTguOTI0NjI3XSBDYWxsIHRyYWNlOgo+PiBbwqDC
oCAxOC45MjcwOTBdwqAgZHVtcF9iYWNrdHJhY2UrMHg5NC8weGVjCj4+IFvCoMKgIDE4LjkzMDc4
N13CoCBzaG93X3N0YWNrKzB4MTgvMHgyNAo+PiBbwqDCoCAxOC45MzQxMzddwqAgZHVtcF9zdGFj
a19sdmwrMHg0OC8weDYwCj4+IFvCoMKgIDE4LjkzNzgzM13CoCBkdW1wX3N0YWNrKzB4MTgvMHgy
NAo+PiBbwqDCoCAxOC45NDExNjZdwqAgX192YjJfcXVldWVfY2FuY2VsKzB4MjNjLzB4MmYwCj4+
IFvCoMKgIDE4Ljk0NTM2NV3CoCB2YjJfY29yZV9xdWV1ZV9yZWxlYXNlKzB4MjQvMHg2Ywo+PiBb
wqDCoCAxOC45NDk3NDBdwqAgdmIyX3F1ZXVlX3JlbGVhc2UrMHgxMC8weDFjCj4+IFvCoMKgIDE4
Ljk1MzY3N13CoCB2NGwyX20ybV9jdHhfcmVsZWFzZSsweDIwLzB4NDAKPj4gW8KgwqAgMTguOTU3
ODkyXcKgIGhhbnRyb19yZWxlYXNlKzB4MjAvMHg1NAo+PiBbwqDCoCAxOC45NjE1ODRdwqAgdjRs
Ml9yZWxlYXNlKzB4NzQvMHhlYwo+PiBbwqDCoCAxOC45NjUxMTBdwqAgX19mcHV0KzB4YjQvMHgy
NzQKPj4gW8KgwqAgMTguOTY4MjA1XcKgIF9fZnB1dF9zeW5jKzB4NTAvMHg1Ywo+PiBbwqDCoCAx
OC45NzE2MjZdwqAgX19hcm02NF9zeXNfY2xvc2UrMHgzOC8weDdjCj4+IFvCoMKgIDE4Ljk3NTU2
Ml3CoCBpbnZva2Vfc3lzY2FsbCsweDQ4LzB4MTE0Cj4+IFvCoMKgIDE4Ljk3OTMyOV3CoCBlbDBf
c3ZjX2NvbW1vbi5jb25zdHByb3AuMCsweGMwLzB4ZTAKPj4gW8KgwqAgMTguOTg0MDY4XcKgIGRv
X2VsMF9zdmMrMHgxYy8weDI4Cj4+IFvCoMKgIDE4Ljk4NzQwMl3CoCBlbDBfc3ZjKzB4NDAvMHhl
OAo+PiBbwqDCoCAxOC45OTA0NzBdwqAgZWwwdF82NF9zeW5jX2hhbmRsZXIrMHgxMDAvMHgxMmMK
Pj4gW8KgwqAgMTguOTk0ODQyXcKgIGVsMHRfNjRfc3luYysweDE5MC8weDE5NAo+Pgo+PiBUaGlz
IGhhcHBlbiBhdCBib290IHRpbWUgd2hlbiBoYW50cm8gZHJpdmVyIGlzIG9wZW4gYW5kIGNsb3Nl
IHdpdGhvdXQgb3RoZXIgYWN0aW9ucy4KPiBBaCwgbm93IEkgc2VlIHRoZSBwcm9ibGVtLiBxLT5i
dWZzIGFuZCBxLT5idWZzX21hcCBhcmUgYWxsb2NhdGVkIGluCj4gdmIyX2NvcmVfY3JlYXRlX2J1
ZnMgYW5kIHZiMl9jb3JlX3JlcWJ1ZnMsIGJ1dCB0aGV5IHNob3VsZCBiZSBhbGxvY2F0ZWQKPiBp
biB2YjJfcXVldWVfaW5pdDogdGhhdCdzIHRoZSBjb3VudGVycGFydCBvZiB2YjJfY29yZV9xdWV1
ZV9yZWxlYXNlLgo+Cj4gV2l0aCB0aGF0IGNoYW5nZSB5b3Ugc2hvdWxkbid0IGhhdmUgdG8gY2hl
Y2sgZm9yIHEtPmJ1ZnMvYnVmc19tYXAgYW55bW9yZS4KCkl0IGlzIGEgYmV0dGVyIHNvbHV0aW9u
IGJ1dCBldmVuIGxpa2UgdGhpcyB2YjJfY29yZV9xdWV1ZV9yZWxlYXNlKCkgaXMgY2FsbGVkCmF0
IGxlYXN0IDIgdGltZXMgb24gdGhlIHNhbWUgdml2aWQgcXVldWUgYW5kIHdpdGhvdXQgdGVzdGlu
ZyBxLT5idWZzX2JpdG1hcAptYWtlcyBrZXJuZWwgY3Jhc2guCgo+Cj4gUmVnYXJkcywKPgo+IAlI
YW5zCj4KPj4gICAgIAo+Pj4+Pj4gKwo+Pj4+Pj4gK8KgwqDCoCByZXR1cm4gKGJpdG1hcF93ZWln
aHQocS0+YnVmc19tYXAsIHEtPm1heF9hbGxvd2VkX2J1ZmZlcnMpID4gMCk7Cj4+Pj4+IEhvdyBh
Ym91dDoKPj4+Pj4KPj4+Pj4gIMKgwqDCoMKgwqByZXR1cm4gdmIyX2dldF9udW1fYnVmZmVycyhx
KSA+IDA7Cj4+Pj4gdmIyX2dldF9udW1fYnVmZmVycyBpcyBkZWZpbmVkIGluIHZpZGVvYnVmMi1j
b3JlLmMsIEknbSBub3Qgc3VyZSB0aGF0Cj4+Pj4gYW4gaW5saW5lIGZ1bmN0aW9uIGNvdWxkIGRl
cGVuZCBvZiBhIG1vZHVsZSBmdW5jdGlvbi4KPj4+IE5vdCBhIHByb2JsZW0uIEUuZy4gdjRsMi1j
dHJscy5oIGlzIGZ1bGwgb2Ygc3VjaCBzdGF0aWMgaW5saW5lcy4KPj4+Cj4+PiBSZWdhcmRzLAo+
Pj4KPj4+ICDCoMKgwqDCoEhhbnMKPj4+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
