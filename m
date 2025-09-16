Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 438FDCAC598
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Sep 2025 09:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EN93PE4XiFv8OOfnYcupQrjghAJRAAxQwjWyq+ALfFw=; b=eZheWlbxxnKGNI
	JsEr6jDtbD1elWaCThFQrIQmUsPEvQjCS64RVg1J01a+FHnZwtxkFqqxQbcpYEwieJOWLvkEmTSIf
	ci2QdFlK9SzKfQuvEnV/FTVnXs332wi90hwYq9Z819/5y/nVRJRnr5t9rWx+hO02c8LO9jp0ehXKy
	L0FDM53Nae/bbDnB8fbGF50o2NSlFobxgAtq/CQ3YaNXeesac3r3F3Gbh7BpQSA6xwDntrCWgPmMp
	75rE+37tWSwGlm8GD0zSRcFhzqGUCRP+8OBhTFPikjPJw1xCdT0OKze0qAuvfgEo8/gg5Rrw+iCjm
	C1xDW2Wfb8NMo83utqcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyS1Y-00000007Nh5-1UDg;
	Tue, 16 Sep 2025 09:30:56 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyS1V-00000007Nek-0eqv;
	Tue, 16 Sep 2025 09:30:54 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1758015027; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=g6fls8GpQFdJJPyn2BerMzHDaaltYp454eYLzT43Cl3hYaunv53ulpBxzd2zf8brKdIqfRJ18z3CNS7/uuslxP4w3OxLub0yh04coNNzQkt+UroO79VnUcDa0tLgS9JEpf+CzmEQX4tukcO5x+4poGC5xwHMdvXscmnCAHWCNns=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1758015027; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=UkZWILK+JDAs4j04OIqHn/mytGnhx9VYR5zccLHHIAw=; 
	b=NPqS+DC2xqz9tx6skzBnfs9/piXDoU5PraVJi9PGCcXDw5I1edab4aepZ2WnfO7Ig660pH1Ln/8n1JkhgcncrYc9cKT4sjSx7NQOQIlJbbP4i19hoOkH5AR8hwP6bk8F4SP9ZcJb0kmUwb4rwRnJ6Xq6W3rH7NLJX+Cq/IiruPY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1758015027;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=UkZWILK+JDAs4j04OIqHn/mytGnhx9VYR5zccLHHIAw=;
	b=iAkofwVwvYWxN35eWDQYbLtMQHEW3Ayh0AdYskiOVW83Ky184bRoIjqvjkqDgmuB
	c88TJFdUgtOQB0tIbKsVtwf7B0BE9uzfwxLNQXhBiLlhI6BRLNu0kDRmyk7XXSOZHX7
	QFjd6wEm4ia9MCMkyq68jx3DYNwhJiTJmy/lj4js=
Received: by mx.zohomail.com with SMTPS id 1758015025274111.17127971304149;
	Tue, 16 Sep 2025 02:30:25 -0700 (PDT)
Message-ID: <0eff8b1a-c45f-47b1-a871-59f4a0101f0f@collabora.com>
Date: Tue, 16 Sep 2025 11:30:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/7] iommu: Add verisilicon IOMMU driver
To: Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>
Cc: =?UTF-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, robin.murphy@arm.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 p.zabel@pengutronix.de, mchehab@kernel.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-media@vger.kernel.org
References: <20250911155720.180465-1-benjamin.gaignard@collabora.com>
 <20250911155720.180465-4-benjamin.gaignard@collabora.com>
 <vrngq76nnms3jyl5hnxqnkimjc6kil66o6fdyqn5vm3fpovmja@cfynipjw7ktp>
 <694b9ba15cd67f41a38f4a65a3811f035cf8e99d.camel@collabora.com>
 <rt6nvgazcl6mvyy4iuut3n7irf72t7rex2iwabbkuxp7cdvez5@2nanenqgxjdy>
 <20250915225806.GM882933@ziepe.ca> <aMkkYU-p2ouknnAc@willie-the-truck>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <aMkkYU-p2ouknnAc@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_023053_278833_5559C300 
X-CRM114-Status: GOOD (  25.70  )
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

CkxlIDE2LzA5LzIwMjUgw6AgMTA6NDgsIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4gT24gTW9u
LCBTZXAgMTUsIDIwMjUgYXQgMDc6NTg6MDZQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBlIHdyb3Rl
Ogo+PiBPbiBTYXQsIFNlcCAxMywgMjAyNSBhdCAwNzo1ODowNEFNICswMjAwLCBKw7ZyZyBSw7Zk
ZWwgd3JvdGU6Cj4+PiBbQWRkaW5nIFdpbGwgYmFjayB0byBDY10KPj4+Cj4+PiBPbiBGcmksIFNl
cCAxMiwgMjAyNSBhdCAwMTozNzoxMVBNIC0wNDAwLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+
Pj4+IFRvIG1lIHRoaXMgcmVqZWN0aW9uIGlzbid0IGFib3V0IEJlbmphbWluJ3MgZHJpdmVyLCBh
bGwgaW9tbXUgc2VlbXMgdG8gbG9vawo+Pj4+IGFsaWtlLCBzbyBhbnlvbmUgZWxzZSB0aGF0IHdv
dWxkIGhhdmUgc2VudCBuZXcgZHJpdmVyIHdvdWxkIGhhdmUgZmFjZSB0aGUgc2FtZQo+Pj4+IGlz
c3VlLgo+Pj4gVGhpcyBpcyBhYm91dCBpZ25vcmluZyBjb21tZW50cyBmcm9tIG9uZSBvZiB0aGUg
SU9NTVUgbWFpbnRhaW5lcnMuIEkgYW0gbm90Cj4+PiBnb2luZyB0byBtZXJnZSBhIGRyaXZlciB3
aXRoIG9wZW4gY29tbWVudHMvb2JqZWN0aW9uc1sxXSBmcm9tIFdpbGwgKGFuZCBhIGZldwo+Pj4g
b3RoZXJzKSwgc28gcmVzb2x2ZSB0aGlzIHdpdGggaGltIGFuZCBnZXQgaGlzIEFjay4KPj4gSSB3
b3VsZCBzdHJvbmdseSBvYmplY3QgdG8gdHJ5aW5nIHRvIHNoYXJlIG1hcF9wYWdlcywgdW5tYXBf
cGFnZXMsCj4+IGlvdmFfdG9fcGh5cywgZnJlZSBhbmQgb3RoZXIgaW9tbXUgcHQgcmVsYXRlZCBm
dW5jdGlvbnMgaW4gc29tZQo+PiBsaW1pdGVkIHdheSBpbnN0ZWFkIG9mIGhlbHBpbmcgb24gdGhl
IG11Y2ggbW9yZSBjb21wbGV0ZSBpb21tdSBwdAo+PiB3b3JrLiBXaGljaCBpcyB3aGF0IEkgc2Fp
ZCB0byBXaWxsLCBidXQgZm9yIHNvbWUgcmVhc29uIGhlIHN1Z2dlc3RlZAo+PiBpdCBhbnlob3cu
Cj4gSWYgdGhlIGFuc3dlciBpcyB0byBjb252ZXJ0IHRoaXMgdG8gaW9tbXUgcHQsIHRoZW4gc28g
YmUgaXQuIE15Cj4gdW5kZXJzdGFuZGluZyB3YXMgdGhhdCB3YXMgc3RpbGwgcHJlbWF0dXJlIGF0
IHRoaXMgc3RhZ2UgYnV0IHlvdSBrbm93Cj4gYmV0dGVyIHRoYW4gbWUuCj4KPiBXaGVuIEkgYm90
aGVyZWQgdG8gbG9vayBhdCB0aGlzIGRyaXZlciBzaWRlLWJ5LXNpZGUgd2l0aCB0aGUgcm9ja2No
aXAKPiBkcml2ZXIgd2hpY2gsIGRlc3BpdGUgYXBwYXJlbnRseSBiZWluZyB0b3RhbGx5IGRpZmZl
cmVudCBJUCAoaG9uZXN0ISksCj4gaXMgKnJlbWFya2FibHkqIHNpbWlsYXIsIEkgc3VtbWFyaXNl
ZCB0aGUgc2ltaWxhcml0eSBpbiB0aGUgZGVmYXVsdAo+IGRvbWFpbiBvcHM6Cj4KPiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvYUg1eVI5Q2tZU0o0UGFaVkB3aWxsaWUtdGhlLXRydWNrLwo+
Cj4gQnV0IHJhdGhlciB0aGFuIHJlc3BvbmQgdG8gdGhhdCwgQmVuamFtaW4ganVzdCBzZW50IGEg
bmV3IHZlcnNpb24uIEkKPiB3YXMgaG9waW5nIGZvciBhIGJpdCBtb3JlIGRpc2N1c3Npb24uLi4K
ClNvcnJ5IGlmIHRoYXQgaGFkIG9mZmVuZCwgeW91IGl0IHdhc24ndCB0aGUgcHVycG9zZS4KCldo
ZXJlIHlvdSBzZWUgc2ltaWxhcml0aWVzIGluIHRoZSBwYXR0ZXJuIEkgc2VlIGxvdCBvZiBkaWZm
ZXJlbmNlcwpldmVyeXdoZXJlIHRoYXQgd2lsbCByZXF1aXJlZCB0byBkdXBsaWNhdGUgdGhlIGZ1
bmN0aW9ucyBmb3IgZWFjaApoYXJkd2FyZSAobG9ja2luZyBzY2hlbWEsIGJpdCBkZWZpbml0aW9u
LCBwb3dlciBtYW5hZ2VtZW50LCBlbmFibGUvZGlzYWJsZSkuCgpTaW5jZSB0aGUgdjYgSSBoYXZl
IGZpeCBsb3Qgb2YgbG9ja2luZyBhbmQgcG1fcnVudGltZSBpc3N1ZSBhbmQgYWRkIGEKZnVuY3Rp
b24sIG5lZWRlZCBieSB0aGUgdmlkZW8gZGVjb2RlciwgdG8gZmx1c2ggdGhlIFRMQi4KCk15IGZp
cnN0IGF0dGVtcHQgd2hlbiB3cml0aW5nIFZlcmlzaWxpY29uIGRyaXZlciB3YXMgdG8gYWRkIGEg
dmFyaWFudAoobGlrZSBmb3IgcmsgaW9tbXUgdjIgSSBoYWQgYWxyZWFkeSBkb25lKSB0byBSb2Nr
Y2hpcCBkcml2ZXIgYnV0IG1peGluZyBvcgpzaGFyaW5nIHN0cnVjdHVyZXMgb3IgZnVuY3Rpb25z
IGJldHdlZW4gUm9ja2NoaXAgYW5kIFZlcmlzaWxpY29uIGlzIGp1c3QgYQpuaWdodG1hcmUgYmVj
YXVzZSBpdCByZXF1aXJlcyB0byBhZGQgImlmIGVsc2UiIGV2ZXJ5d2hlcmUuCgpCZW5qYW1pbgoK
Pgo+PiBTb3JyeSwgYnV0IGl0IGRvZXNuJ3QgbWFrZSBzZW5zZSB0byBjb21wbGFpbiBhYm91dCBk
dXBsaWNhdGlvbiBpbgo+PiBkcml2ZXJzIGFuZCB0aGVuIG5vdCBoZWxwIGFkdmFuY2Ugb25lIG9m
IHRoZSBiaWdnZXN0IHByb2plY3RzIHRvCj4+IGFjdHVhbGx5IGNvbmNyZXRlbHkgYW5kIGNvbXBy
ZWhlbnNpdmVseSBhZGRyZXNzIHRoYXQgZHVwbGljYXRpb24uCj4gSSBkb24ndCB0aGluayBpdCBu
ZWVkcyB0byBiZSBvbmUgb3IgdGhlIG90aGVyLiBhZmFpY3QsIHRoZXNlIGRyaXZlcnMKPiBzaG91
bGQgc2hhcmUgdGhlIGRlZmF1bHQgZG9tYWluIG9wcyBhbmQgaWYgdGhlIHBhZ2UtdGFibGUgY29k
ZSBpcyB1c2luZwo+IGlvbW11LXB0IHRoZW4gdGhhdCdzIGV2ZW4gYmV0dGVyLgo+Cj4gV2lsbAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
