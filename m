Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 686D7C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 09:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPlfwNex1zNbjgI6qWyWEAOGe9PofdWMZdLZpjAnP1w=; b=tSfqrwXPNCBuql
	DWUK6t+Sahkvq+glvQdKjprPIygvPK5c3Dc5lt3J6AKKYwE9Fk59YPDz06r4Oz3LhzEWDf+qqPaVV
	CAU4qQ1HOBe0QQGNPqMsvSN6fANJr7hltaE7+boTWylHu0n9wdIi4tmCg4XOs5Y2vsG1i9ej70M0w
	sYUqXW/MeODysnpoXrgOra8NlzNysHCV98u8tu8B/3rhjgTNXnbdUOBr4jmepI7EJXqa7pjiNL/n3
	EWx37WM2d5mn8IVe2bZufOFAL1ZRrHpulPADFEHMzLJcolZ9gWCjCScsFr7vFiAvL+JmfayrrZYqD
	/thYMk3EWO/t2UktTEOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peuu1-00FSen-1C;
	Wed, 22 Mar 2023 09:37:05 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peutp-00FSbl-02
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Mar 2023 09:37:03 +0000
Received: from [IPV6:2a01:e0a:120:3210:cd0d:1462:ffab:ab3a] (unknown [IPv6:2a01:e0a:120:3210:cd0d:1462:ffab:ab3a])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0FB7566003AE;
	Wed, 22 Mar 2023 09:36:50 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679477810;
	bh=PG6CX5ajqtdLi2tzLr2luOtl3CwHO03O+WLnE2aRKAw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lCP+okL1HpozS00eimFUyuYxd4HkDX0N6Bt75CbT7z5LnCZHxqXlEfTWHK56NJOF8
	 ptnN6IFaQFwWGCZysac0wJ2wfoHX5mMmGvw3ZCfCYxFvdfvdt1e2DItZ/2IxcishQn
	 65d/SIqvad1YHJWySE2W8pIuDOS1HvuUwVVcNoZ2HvUQe3k+8awhw6ZLw3li29Qn0a
	 kze1mDH6SI4qHQ9ounD46I5RAbU4ZEYYgxnI30HPf/r0dSzIHvqGkejiVCuVCBLmHi
	 gveFPCKOTMlT+GA9pz3jbprSIYyni/ocKC9WzoiVxpCjQ+imuUQTvxEvI3ZrO9iv2M
	 j1YwLxCp7CTOQ==
Message-ID: <5d5c8c7b-b926-8397-7994-623ac9b37e83@collabora.com>
Date: Wed, 22 Mar 2023 10:36:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] media: hantro: HEVC: Fix exception handling in
 tile_buffer_reallocate()
Content-Language: en-US
To: Markus Elfring <Markus.Elfring@web.de>, kernel-janitors@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Adrian Ratiu <adrian.ratiu@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: cocci@inria.fr, LKML <linux-kernel@vger.kernel.org>
References: <f9303bdc-b1a7-be5e-56c6-dfa8232b8b55@web.de>
 <e3aaeecf-8e74-2e74-c58a-d80e153e98f9@web.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <e3aaeecf-8e74-2e74-c58a-d80e153e98f9@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_023702_209761_9653D57C 
X-CRM114-Status: GOOD (  21.13  )
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

SGkgTWFya3VzLAoKVGhhbmtzIGZvciB5b3VyIHBhdGNoLAoKTGUgMjAvMDMvMjAyMyDDoCAxOTo0
MywgTWFya3VzIEVsZnJpbmcgYSDDqWNyaXTCoDoKPiBEYXRlOiBNb24sIDIwIE1hciAyMDIzIDE5
OjEzOjIwICswMTAwCj4KPiBUaGUgbGFiZWwg4oCcZXJyX2ZyZWVfdGlsZV9idWZmZXJz4oCdIHdh
cyB1c2VkIHRvIGp1bXAgdG8gYW5vdGhlciBwb2ludGVyCj4gY2hlY2sgZGVzcGl0ZSBvZiB0aGUg
ZGV0YWlsIGluIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGUgZnVuY3Rpb24KPiDigJx0aWxlX2J1
ZmZlcl9yZWFsbG9jYXRl4oCdIHRoYXQgaXQgd2FzIGRldGVybWluZWQgYWxyZWFkeSB0aGF0Cj4g
YSBjb3JyZXNwb25kaW5nIHZhcmlhYmxlIGNvbnRhaW5lZCBhIG51bGwgcG9pbnRlciBiZWNhdXNl
IG9mIGEgZmFpbGVkCj4gZnVuY3Rpb24gY2FsbCDigJxkbWFfYWxsb2NfY29oZXJlbnTigJ0uCj4K
PiAqIFRodXMgdXNlIGFuIGFkZGl0aW9uYWwgbGFiZWwgaW5zdGVhZC4KPgo+ICogRGVsZXRlIGEg
cmVkdW5kYW50IGNoZWNrLgo+Cj4KPiBUaGlzIGlzc3VlIHdhcyBkZXRlY3RlZCBieSB1c2luZyB0
aGUgQ29jY2luZWxsZSBzb2Z0d2FyZS4KCklmIHlvdSB3YW50IHRvIG9wdGltaXplIHRoZSBlcnJv
ciBwYXRoIEkgdGhpbmsgdGhlIGJlc3QKb3B0aW9uIGlzIHRvIHJldHVybiAtRU5PTUVNIHdoZW4g
aGV2Y19kZWMtPnRpbGVfZmlsdGVyLmNwdSBpcyBOVUxMLApyZW1vdmUKCWlmIChoZXZjX2RlYy0+
dGlsZV9ic2QuY3B1KQoJCWRtYV9mcmVlX2NvaGVyZW50KHZwdS0+ZGV2LCBoZXZjX2RlYy0+dGls
ZV9ic2Quc2l6ZSwKCQkJCSAgaGV2Y19kZWMtPnRpbGVfYnNkLmNwdSwKCQkJCSAgaGV2Y19kZWMt
PnRpbGVfYnNkLmRtYSk7CmFuZCByZW9yZGVyIHRoZSB0d28gb3RoZXIgZG1hX2ZyZWUgdG8gZ2V0
IHNvbWV0aGluZyBjbGVhbi4KClJlZ2FyZHMsCkJlbmphbWluCgo+Cj4gRml4ZXM6IGNiNWRkNWEw
ZmE1MThkZmYxNGZmMmI5MDgzN2MzYzhmOThmNGRkNWMgKCJtZWRpYTogaGFudHJvOiBJbnRyb2R1
Y2UgRzIvSEVWQyBkZWNvZGVyIikKPiBTaWduZWQtb2ZmLWJ5OiBNYXJrdXMgRWxmcmluZyA8ZWxm
cmluZ0B1c2Vycy5zb3VyY2Vmb3JnZS5uZXQ+Cj4gLS0tCj4gIMKgZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faGV2Yy5jIHwgMTAgKysrKystLS0tLQo+ICDCoDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faGV2Yy5jIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faGV2Yy5jCj4gaW5kZXggOTM4
M2ZiNzA4MWY2Li5hYzYwZGYxOGVmYjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faGV2Yy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faGV2Yy5jCj4gQEAgLTEwOSw3ICsxMDksNyBAQCBzdGF0
aWMgaW50IHRpbGVfYnVmZmVyX3JlYWxsb2NhdGUoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiAg
wqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgwqDCoMKgwqAg
JmhldmNfZGVjLT50aWxlX2ZpbHRlci5kbWEsCj4gIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDC
oCDCoMKgwqAgwqDCoMKgIMKgwqDCoMKgwqDCoMKgIEdGUF9LRVJORUwpOwo+ICDCoMKgwqAgwqBp
ZiAoIWhldmNfZGVjLT50aWxlX2ZpbHRlci5jcHUpCj4gLcKgwqAgwqDCoMKgIMKgZ290byBlcnJf
ZnJlZV90aWxlX2J1ZmZlcnM7Cj4gK8KgwqAgwqDCoMKgIMKgZ290byByZWNoZWNrX3RpbGVfc2Fv
X2NwdTsKPiAgwqDCoMKgIMKgaGV2Y19kZWMtPnRpbGVfZmlsdGVyLnNpemUgPSBzaXplOwo+ICAg
Cj4gIMKgwqDCoCDCoHNpemUgPSAoVkVSVF9TQU9fUkFNX1NJWkUgKiBoZWlnaHQ2NCAqIChudW1f
dGlsZV9jb2xzIC0gMSkgKiBjdHgtPmJpdF9kZXB0aCkgLyA4Owo+IEBAIC0xMzMsMTIgKzEzMywx
MiBAQCBzdGF0aWMgaW50IHRpbGVfYnVmZmVyX3JlYWxsb2NhdGUoc3RydWN0IGhhbnRyb19jdHgg
KmN0eCkKPiAgwqDCoMKgIMKgcmV0dXJuIDA7Cj4gICAKPiAgwqBlcnJfZnJlZV90aWxlX2J1ZmZl
cnM6Cj4gLcKgwqAgwqBpZiAoaGV2Y19kZWMtPnRpbGVfZmlsdGVyLmNwdSkKPiAtwqDCoCDCoMKg
wqAgwqBkbWFfZnJlZV9jb2hlcmVudCh2cHUtPmRldiwgaGV2Y19kZWMtPnRpbGVfZmlsdGVyLnNp
emUsCj4gLcKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoCBoZXZjX2RlYy0+dGlsZV9maWx0
ZXIuY3B1LAo+IC3CoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqAgaGV2Y19kZWMtPnRpbGVf
ZmlsdGVyLmRtYSk7Cj4gK8KgwqAgwqBkbWFfZnJlZV9jb2hlcmVudCh2cHUtPmRldiwgaGV2Y19k
ZWMtPnRpbGVfZmlsdGVyLnNpemUsCj4gK8KgwqAgwqDCoMKgIMKgwqDCoCDCoMKgIGhldmNfZGVj
LT50aWxlX2ZpbHRlci5jcHUsCj4gK8KgwqAgwqDCoMKgIMKgwqDCoCDCoMKgIGhldmNfZGVjLT50
aWxlX2ZpbHRlci5kbWEpOwo+ICDCoMKgwqAgwqBoZXZjX2RlYy0+dGlsZV9maWx0ZXIuY3B1ID0g
TlVMTDsKPiAgIAo+ICtyZWNoZWNrX3RpbGVfc2FvX2NwdToKPiAgwqDCoMKgIMKgaWYgKGhldmNf
ZGVjLT50aWxlX3Nhby5jcHUpCj4gIMKgwqDCoCDCoMKgwqAgwqBkbWFfZnJlZV9jb2hlcmVudCh2
cHUtPmRldiwgaGV2Y19kZWMtPnRpbGVfc2FvLnNpemUsCj4gIMKgwqDCoCDCoMKgwqAgwqDCoMKg
IMKgwqDCoCDCoMKgIGhldmNfZGVjLT50aWxlX3Nhby5jcHUsCj4gLS0KPiAyLjQwLjAKPgo+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
