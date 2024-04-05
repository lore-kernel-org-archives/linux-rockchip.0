Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCB5ACD11C2
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 08:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LnmYu813Ikq4EACilcHUhSmspZk+6gng3OoTJZsZll0=; b=MScXbkaPpz1FnN
	0hBd8toNM/bW+68Jk475pC0JN5V+Z/OVJGj28wQjURq8a8O97AwnKGgtQUdEAa1v+OEaQh0L7rD7M
	S8BQv8n1z/0TlqEnBEJHubpzbUDM+GbFGyWk+tjSgfh7mSYCItc0NH3WEAciVHk61awiKXI8Eu5n7
	P2330vTaHNBSt9gPOZBIVGYtdhXmMvq1Anb6dS6EQMSa5xOze4NuY1sxSbiL2tEgie9lrgPi79SUn
	tNDXfmH/Qd6m+Zuv98nxJhw+qirTbrZiio6C7s1lKkXV3rIcsapiS98C0YgqDwTgd6HdRj8wSSkFT
	z6Dtrs8xjH2ZqZHY0k7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsehf-00000005sh3-3eaQ;
	Fri, 05 Apr 2024 08:13:39 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsehc-00000005sfX-00CG;
	Fri, 05 Apr 2024 08:13:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712304813;
	bh=BZivL1tsuPOsE7R9f+yNA2qQdac1vOe40dCDW47TSe0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TvY/fwRv4FCNyJ4kIFWQ4GAQvYvHXQosmeA79XzQQVZmhMAhgABODc0ClFqBdR4La
	 jZVMpOYuRDFJlhjyEzJPGBHFiqHwlexH2oaotmXB0yJriNS7k3YsM6jx1SaeUIIB+6
	 QG7/n1SVJ5u4CG+WdN67VtxHBBCv7f6N7bqQKDvg99CbFmRU/Ks2QP5814nyzLtYG2
	 SKv3edtBE1t6I7X2C+TEBcpnn/NTPkFRs8x3+Maa9a1xXJ6x8Dc6nsT1yQ6uoztTQI
	 459eJHX09fosEj7n2Il21Mw89BwmK8n5PzjzQ5il96UBbKpY5wcPI4ieOzouSqQTKk
	 g3MQxLYEOOP2w==
Received: from [100.93.89.217] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 8653F378212D;
	Fri,  5 Apr 2024 08:13:32 +0000 (UTC)
Message-ID: <2a3b897a-71f7-4a94-a13c-1aa8b2d96e78@collabora.com>
Date: Fri, 5 Apr 2024 10:13:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: verisilicon: Fix auxiliary buffers allocation size
To: Nicolas Dufresne <nicolas@ndufresne.ca>, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, mchehab@kernel.org, heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20240328093439.18712-1-benjamin.gaignard@collabora.com>
 <20240328093439.18712-2-benjamin.gaignard@collabora.com>
 <c8de69fc6cb6029e96f3e6b6c1eeb1de9304ccff.camel@ndufresne.ca>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <c8de69fc6cb6029e96f3e6b6c1eeb1de9304ccff.camel@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_011336_197981_43F4459E 
X-CRM114-Status: GOOD (  13.25  )
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

CkxlIDA0LzA0LzIwMjQgw6AgMjA6MDAsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBI
aSwKPgo+IExlIGpldWRpIDI4IG1hcnMgMjAyNCDDoCAxMDozNCArMDEwMCwgQmVuamFtaW4gR2Fp
Z25hcmQgYSDDqWNyaXTCoDoKPj4gVXNlIHY0bDJfYXYxX3RpbGVfaW5mby0+dGlsZV9jb2xzIHRv
IGtub3cgdGhlIG51bWJlciBvZiBjb2xvbnMKPj4gaW4gdGhlIGZyYW1lLiBUaGlzIG1hZGUgYXV4
aWxpYXJ5IGJ1ZmZlcnMgbWVvcnkgc2l6ZSBjb21wdXRhdGlvbgo+PiBtb3JlIGFjY3VyYXRlLgo+
IFNlZW1zIGxpa2UgdGhpcyBpcyBwb3RlbnRpYWxseSBnb2luZyB0byBpbXBhY3Qgc29tZSBjb25m
b3JtYW5jZSB0ZXN0cy4gQW55dGhpbmcKPiB0byByZXBvcnQgZnJvbSBmbHVzdGVyIHJlc3VsdHMg
PwoKRmx1c3RlcnMgQVYxIHNjb3JlIGlzIHRoZSBzYW1lLgpNYXliZSB3ZSBoYXZlIGJlZW4gbHVj
a3kgd2hlbiBhbGxvY2F0aW5nIG1lbW9yeSB1bnRpbCBub3cuClRoYXQgc2FpZCB0aGUgdGVzdCBz
dHJlYW0gaGF2ZSA4IHRpbGUgY29sdW1ucyB3aGljaCBpcyB1bnVzdWFsIGJ1dCBhZG1pdHRlZCBi
eSBBVjEgc3BlY2lmaWNhdGlvbnMuCgpCZW5qYW1pbgoKPgo+IE5pY29sYXMKPgo+PiBTaWduZWQt
b2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNv
bT4KPj4gRml4ZXM6IDcyN2E0MDA2ODZhMiAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogQWRkIFJvY2tj
aGlwIEFWMSBkZWNvZGVyIikKPj4gLS0tCj4+ICAgLi4uL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL3JvY2tjaGlwX3ZwdTk4MV9od19hdjFfZGVjLmMgICAgfCAzICsrLQo+PiAgIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2
MV9kZWMuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1
OTgxX2h3X2F2MV9kZWMuYwo+PiBpbmRleCBjYzQ0ODM4NTc0ODkuLjY1ZThmMmQwNzQwMCAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92
cHU5ODFfaHdfYXYxX2RlYy5jCj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNp
bGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+PiBAQCAtMjU3LDcgKzI1Nyw4IEBA
IHN0YXRpYyBpbnQgcm9ja2NoaXBfdnB1OTgxX2F2MV9kZWNfdGlsZXNfcmVhbGxvY2F0ZShzdHJ1
Y3QgaGFudHJvX2N0eCAqY3R4KQo+PiAgIAlzdHJ1Y3QgaGFudHJvX2RldiAqdnB1ID0gY3R4LT5k
ZXY7Cj4+ICAgCXN0cnVjdCBoYW50cm9fYXYxX2RlY19od19jdHggKmF2MV9kZWMgPSAmY3R4LT5h
djFfZGVjOwo+PiAgIAlzdHJ1Y3QgaGFudHJvX2F2MV9kZWNfY3RybHMgKmN0cmxzID0gJmF2MV9k
ZWMtPmN0cmxzOwo+PiAtCXVuc2lnbmVkIGludCBudW1fdGlsZV9jb2xzID0gMSA8PCBjdHJscy0+
dGlsZV9ncm91cF9lbnRyeS0+dGlsZV9jb2w7Cj4+ICsJY29uc3Qgc3RydWN0IHY0bDJfYXYxX3Rp
bGVfaW5mbyAqdGlsZV9pbmZvID0gJmN0cmxzLT5mcmFtZS0+dGlsZV9pbmZvOwo+PiArCXVuc2ln
bmVkIGludCBudW1fdGlsZV9jb2xzID0gdGlsZV9pbmZvLT50aWxlX2NvbHM7Cj4+ICAgCXVuc2ln
bmVkIGludCBoZWlnaHQgPSBBTElHTihjdHJscy0+ZnJhbWUtPmZyYW1lX2hlaWdodF9taW51c18x
ICsgMSwgNjQpOwo+PiAgIAl1bnNpZ25lZCBpbnQgaGVpZ2h0X2luX3NiID0gaGVpZ2h0IC8gNjQ7
Cj4+ICAgCXVuc2lnbmVkIGludCBzdHJpcGVfbnVtID0gKChoZWlnaHQgKyA4KSArIDYzKSAvIDY0
Owo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
