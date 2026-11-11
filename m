Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244F9606A338
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 09:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=30kGH2pe;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=NPO9Siu5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pbrWV+p8Z1BfMXzjdPxpJf/fF7QaxxWi5lJI6T+fDOM=; b=30kGH2peadDz6kM5D1/N12u+gJ
	Btfi+IjTh+oWJQEpJoJZ8+TRebuT4XqLs3+550z+xquSKZVHruiE3p24MIhU9pDv4EPlThAahbY3Z
	y4rG1gxTsZZaJsZbvMyfURBXMgeHg4iom1HKREdQkRou1NrTs8zpwbXdTSyH6ov2LdJ7lBscKoJZw
	NsqvQdBKtVJhbjIo7wsfbUwOQYjloWhhQays9p659c6yhWIDAoYar7kgvl9qejA1wjx1bucOa7e4R
	Nurx3qenqTFomvAtZ2lBo1yE+4P9utnTqA0uOwHUMJv/i2wzB1bcLinARdw67B/Lfa5H8mVyHXoun
	D7Z+eksg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR53w-00000006GV9-2Q7b;
	Wed, 11 Nov 2026 09:56:16 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR53o-00000006GTv-06DO;
	Wed, 11 Nov 2026 09:56:14 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794390959; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=af/0lRDissNzwJALOr/P1m/GFsSM74WEEz4Cm4KkV7VVzRmKU5VNWaGjvZfLocobjdKpGwRe4hBP66jYNTaZzyWNZOnpfCsMGuEqhu48dSBM+tL+UeyBNMeKtj+7gKLaWgI7BiPg6lnZCc51vi5zb2yP9JfCWMdcPCuRQ6qhZps=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1794390959; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=LJaA6HtGKmrxTdDdOmAvwarGqI59rOjtDYGgfbVCI0c=; 
	b=SIrxzL+TMeUZeg9ZuVUj9Itep1BPqVpRmdyJ9IAtZmh/sW6IOqg/mfpuvf2278wrN4Tt748BrshkVn0U8WS14l3489aoOVQ2c6UVgM1A6wZ55o32r+VJbiCG1Xs1HZmCEtKqFRySGjTGPBbKUe7VLT8MBt2v/D7gMmrc0Qklf+M=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: a=rsa-sha256; b=NPO9Siu5VR34VfGZ6i7tUOjD1JcuFY6w1SejwYzSb81YgEAvz2dPhKUmWrpPmGb/BAv6lPJ6IXG+G36YhxgTvoJyyTn1yKMo5n49WQNZfMP2rHcXnOQeD8LlS6IbnGx0eHampwEZUbJz4qtbtdhLSjJeav5SEQAA6eBFGrWS2lQ=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=LJaA6HtGKmrxTdDdOmAvwarGqI59rOjtDYGgfbVCI0c=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 179439095914522.51825314890425;
	Wed, 11 Nov 2026 01:55:59 -0800 (PST)
Message-ID: <e76c2d98-b543-4a3e-bfa2-c0e6e27bfe4f@collabora.com>
Date: Wed, 11 Nov 2026 10:55:55 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] media: rockchip: rkcif: Filter enumerated formats by
 media bus code
To: Faizel K B <faizel.kb@gmail.com>,
 Mehdi Djait <mehdi.djait@linux.intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, libcamera-devel@lists.libcamera.org,
 Robert Mader <robert.mader@collabora.com>
References: <20261105232310.385463-1-faizel.kb@gmail.com>
 <20261105232310.385463-2-faizel.kb@gmail.com> <avG782VCMTWTNax0@mdjait-mobl>
 <7lkixkkeumy7l32usxweltclro5tqhgiio6xjyiyx45jnsq3lz@dx43ee4u6ffq>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <7lkixkkeumy7l32usxweltclro5tqhgiio6xjyiyx45jnsq3lz@dx43ee4u6ffq>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_015608_867940_0DF5DD05 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgdGhlcmUsCgpPbiAxMS85LzI2IDIwOjU0LCBGYWl6ZWwgSyBCIHdyb3RlOgo+IEhpIE1laGRp
LAo+IAo+IE9uIE1vbiwgTm92IDA5LCAyMDI2IGF0IDAxOjI3OjM0UE0gKzAxMDAsIE1laGRpIERq
YWl0IHdyb3RlOgo+IAo+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
a2NpZi9ya2NpZi1zdHJlYW0uYwo+Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9ya2NpZi9ya2NpZi1zdHJlYW0uYwo+Pj4gQEAgLTM5NSwxMyArMzk1LDIwIEBAIHN0YXRp
YyBpbnQgcmtjaWZfc3RyZWFtX2VudW1fZm9ybWF0cyhzdHJ1Y3QKPj4+IGZpbGUgKmZpbGUsIHZv
aWQgKnByaXYsCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
c3RydWN0IHY0bDJfZm10ZGVzYyAqZikKPj4+IMKgewo+Pj4gwqDCoMKgwqAgc3RydWN0IHJrY2lm
X3N0cmVhbSAqc3RyZWFtID0gdmlkZW9fZHJ2ZGF0YShmaWxlKTsKPj4+ICvCoMKgwqAgdW5zaWdu
ZWQgaW50IGksIG4gPSAwOwo+Pj4KPj4+IC3CoMKgwqAgaWYgKGYtPmluZGV4ID49IHN0cmVhbS0+
b3V0X2ZtdHNfbnVtKQo+Pj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+Pj4gK8Kg
wqDCoCBmb3IgKGkgPSAwOyBpIDwgc3RyZWFtLT5vdXRfZm10c19udW07IGkrKykgewo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGlmIChmLT5tYnVzX2NvZGUgJiYKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0cmVhbS0+b3V0X2ZtdHNbaV0ubWJ1c19jb2RlICE9IGYtPm1idXNfY29kZSkKPj4KPj4g
d2hhdCBhYm91dCBkdnAgY2FwdHVyZS4gVGhlIGR2cF9vdXRfZm10c1tdIGRvZXMgbm90IGhhdmUg
dGhlIG1idXNfY29kZQo+PiBzZXQuCj4+Cj4gCj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3LiBZZXMs
IHRoZSBEVlAgY2FzZSBpcyBtaXNzaW5nLiBIb3cgYWJvdXQgb25secKgwqAKPiBmaWx0ZXJpbmcg
dGhlIGZvcm1hdHMgdGhhdCBoYXZlIGEgbWVkaWEgYnVzIGNvZGUsIHNvIERWUCBiZWhhdmVzIGFz
Cj4gYmVmb3JlIChzZWUgdGhlIGNoYW5nZSkuCgpUaGlzIHNvdW5kcyByZWFzb25hYmxlLgoKPiAK
PiDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IHJrY2lmX291dHB1dF9mbXQgKmZtdCA9ICZzdHJl
YW0tPm91dF9mbXRzW2ldOwo+IAo+IMKgwqDCoMKgwqDCoCBpZiAoZi0+bWJ1c19jb2RlICYmIGZt
dC0+bWJ1c19jb2RlICYmCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgZm10LT5tYnVzX2NvZGUgIT0g
Zi0+bWJ1c19jb2RlKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4g
Cj4gSSBkb24ndCBoYXZlIERWUCBoYXJkd2FyZSB0byB0ZXN0IHdpdGguIEkgY2FuIHN1Ym1pdCBh
IHYyIGlmIHRoYXQncyBvay4KCkxvb2tpbmcgZm9yd2FyZCB0byB0aGUgdjIuCgpCZXN0IHJlZ2Fy
ZHMsCk1pY2hhZWwKCj4gCj4gUmVnYXJkcywKPiBGYWl6ZWwKPiAKPiAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
