Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DDBBC4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Dec 2022 13:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dp4IZTsm9kLSeAAZKRFxGaxrWSMuvN1Xfy/TmU3uq3U=; b=WNpWO1nwR2ykDH
	6CPx9tkPp/pHASlt1v4GskYuoWrRYeKGF3Gzrdhjbi/ifQwAPQhpFMUC74H02cdTFqFTdGPY3qpoS
	/NH7LR4KKvVGHGWnW03PeQaYPBrm+G8kA1XaXjtdLAZXItYCWTPrr/9wwsHkum0asPMAe8PvJGM2g
	ogwAyG6NtN1IKkdkmTnqZDci6A7M10E9KLdcD4ExkHT304fQoN9q/36RlZdk1gxuhvf+K4z7dd9qT
	rREG6ymIzwanq4MhrCV15+JJ0JIDhSGXZdnGw8oVc1hMJB4+1HWhAhLDMZa/2W9X9ne6JhdZ5cnGR
	XW0JlaAaVNkSODTKrC6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p94LC-00HP3X-Hz; Sat, 24 Dec 2022 13:13:30 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8zVm-00GHLe-D7
	for linux-rockchip@lists.infradead.org; Sat, 24 Dec 2022 08:04:44 +0000
Received: from [IPV6:2a01:e0a:120:3210:9071:5495:b8e6:e417] (unknown [IPv6:2a01:e0a:120:3210:9071:5495:b8e6:e417])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 116216602CE4;
	Sat, 24 Dec 2022 08:04:01 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671869041;
	bh=gwiI8vPLAipPEAg6suP/Gdgsidzj+89aU3MlnmFb6CI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fudwGN1x/TMpFiYZC3wdz3auwHOAy9z/AbFYWiGILCgmSIFO6lQOvhTqFGHu54D2B
	 h84fruUR8owRI43OQx6xmLr4ss9+Me0O0gZvTrdMzrCffz4E9BSk7O/oqC4NcrfqUl
	 9g6EtkBgY8cDBaBhQFtXdElBNrb7GgV7jjEdK3UsJb5ttPf/WMmOwNlZ29swZIgSVC
	 wQyz25uUHNahL5Ov0ONvcQ+4ESsyaR5R9HyHvme7OC5PLS9XT/Lu5MsN9iw+Ec6quZ
	 z3gBAL+AZtV8DAuaXhH7HLL8yjag6NxFPdVST6ntOkMUEEN8NWDsFCAjDMcdq846hM
	 5qEtr/gIrZjtA==
Message-ID: <8d13ffb9-74cb-00f9-072a-0614e341e1ef@collabora.com>
Date: Sat, 24 Dec 2022 09:03:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2] hantro: Fix JPEG encoder ENUM_FRMSIZE on RK3399
Content-Language: en-US
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: kernel@collabora.com, Robert Mader <robert.mader@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221223181647.720918-1-nicolas.dufresne@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20221223181647.720918-1-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221224_000406_715736_CC71AA67 
X-CRM114-Status: GOOD (  19.21  )
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

CkxlIDIzLzEyLzIwMjIgw6AgMTk6MTYsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBT
aW5jZSA3OWM5ODdkZThiMzU0LCBlbnVtZXJhdGluZyBmcmFtZXNpemUgb24gZm9ybWF0IHNldCB3
aXRoICJNT0RFX05PTkUiCj4gKGFueSByYXcgZm9ybWF0cykgaXMgcmVwb3J0aW5nIGFuIGludmFs
aWQgZnJtc2l6ZS4KPgo+ICAgIFNpemU6IFN0ZXB3aXNlIDB4MCAtIDB4MCB3aXRoIHN0ZXAgMC8w
Cj4KPiBCZWZvcmUgdGhpcyBjaGFuZ2UsIHRoZSBkcml2ZXIgd291bGQgcmV0dXJuIEVJTlZBTCwg
d2hpY2ggaXMgYWxzbyBpbnZhbGlkIGJ1dAo+IHdvcmtlZCBpbiBHU3RyZWFtZXIuIFRoZSBvcmln
aW5hbCBpbnRlbnQgd2FzIG5vdCB0byBpbXBsZW1lbnQgaXQsIGhlbmNlIHRoZQo+IC1FTk9UVFkg
cmV0dXJuIGluIHRoaXMgY2hhbmdlLiBXaGlsZSBkcml2ZXJzIHNob3VsZCBpbXBsZW1lbnQgRU5V
TV9GUk1TSVpFIGZvcgo+IGFsbCBmb3JtYXRzIGFuZCBxdWV1ZXMsIHRoaXMgY2hhbmdlIGlzIGxp
bWl0ZWQgaW4gc2NvcGUgdG8gZml4IHRoZSByZWdyZXNzaW9uLgo+Cj4gVGhpcyBmaXhlcyB0YWtp
bmcgcGljdHVyZSBpbiBHbm9tZSBDaGVlc2Ugc29mdHdhcmUsIG9yIGFueSBzb2Z0d2FyZSB1c2lu
Zwo+IEdTdGVhbWVyIHRvIGVuY29kZSBKUEVHIHdpdGggaGFyZHdhcmUgYWNjZWxlcmF0aW9uLgo+
Cj4gRml4ZXM6IDc5Yzk4N2RlOGIzNTQgKCJtZWRpYTogaGFudHJvOiBVc2UgcG9zdCBwcm9jZXNz
b3Igc2NhbGluZyBjYXBhY2l0aWVzIikKPiBSZXBvcnRlZC1ieTogUm9iZXJ0IE1hZGVyIDxyb2Jl
cnQubWFkZXJAY29sbGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIER1ZnJlc25l
IDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogQmVuamFtaW4g
R2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICAgZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jIHwgNyArKysrKy0t
Cj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0
bDIuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+
IGluZGV4IDJjN2E4MDUyODllN2IuLjMwZTY1MGVkYWVhOGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gKysrIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gQEAgLTE2MSw4ICsx
NjEsMTEgQEAgc3RhdGljIGludCB2aWRpb2NfZW51bV9mcmFtZXNpemVzKHN0cnVjdCBmaWxlICpm
aWxlLCB2b2lkICpwcml2LAo+ICAgCX0KPiAgIAo+ICAgCS8qIEZvciBub24tY29kZWQgZm9ybWF0
cyBjaGVjayBpZiBwb3N0cHJvY2Vzc2luZyBzY2FsaW5nIGlzIHBvc3NpYmxlICovCj4gLQlpZiAo
Zm10LT5jb2RlY19tb2RlID09IEhBTlRST19NT0RFX05PTkUgJiYgaGFudHJvX25lZWRzX3Bvc3Rw
cm9jKGN0eCwgZm10KSkgewo+IC0JCXJldHVybiBoYW50b19wb3N0cHJvY19lbnVtX2ZyYW1lc2l6
ZXMoY3R4LCBmc2l6ZSk7Cj4gKwlpZiAoZm10LT5jb2RlY19tb2RlID09IEhBTlRST19NT0RFX05P
TkUpIHsKPiArCQlpZiAoaGFudHJvX25lZWRzX3Bvc3Rwcm9jKGN0eCwgZm10KSkKPiArCQkJcmV0
dXJuIGhhbnRvX3Bvc3Rwcm9jX2VudW1fZnJhbWVzaXplcyhjdHgsIGZzaXplKTsKPiArCQllbHNl
Cj4gKwkJCXJldHVybiAtRU5PVFRZOwo+ICAgCX0gZWxzZSBpZiAoZnNpemUtPmluZGV4ICE9IDAp
IHsKPiAgIAkJdnB1X2RlYnVnKDAsICJpbnZhbGlkIGZyYW1lIHNpemUgaW5kZXggKGV4cGVjdGVk
IDAsIGdvdCAlZClcbiIsCj4gICAJCQkgIGZzaXplLT5pbmRleCk7CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
