Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1CCCC83F25
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jul 2025 12:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mj5zzovZHiS9uhz5Ana0e0RIY/a3mAbgZ4Xc6T6G/xQ=; b=n9Gv0m8HdsJ/PA
	Mc/ddKR9Apy9Z3LDjMbpTy8XGJcMAfyMmQf8WVRSV42EDkyKCpmRfBFyETnxEgN+RS+AaAOh/ndK+
	iNZtgvGY/7xPmDbBXRiU+zMjPiZcP6KhQfqyAzm+XTxXcUEM9tFHOlU3mcOPJR3lZJ4H5d1EGIEYA
	9xs8AIajLKtvmslU2c4Rnp3aAfu4NGsaZ2ayvi2aSqgUKQCrrrPoemG2xiBxnk+XuJDRzlVwHKpvJ
	dmMkmggkQ1Xi9Tn0RnOYU/xKVpOBxSPxA0HvjkC0cuQffeQI4AL5Pd4HVF6lPU7U0dfI+LtMI8+Jq
	o0klLeVn8rvTd2PHKflA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udq5C-0000000HJWg-35D8;
	Mon, 21 Jul 2025 12:57:30 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udoTg-0000000H3Nm-0C4K;
	Mon, 21 Jul 2025 11:14:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1753096461; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=jYDbMhT8vW1zZ55sI4R7g1B58Oih9oqWj6/OHCkN7i3soW0oBjrysLGZCIOIwKpbi/S4R9R6I9DzaB3/a/jfCHc0jge426lJOeXddipzWya2vUv9BJR51q/V5Ym2hd6Xn9XhbIccR0vCC1hhPJZp8pixppyUATKFwpUQMuTxQx4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1753096461; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=apcXxEnb0qJg1v9Cl7JQ6npH3CzfQYbUnRtZrZ2JRQo=; 
	b=DtIObIS9tuE0ada0VjeUzVrB6+WAlE06f1oeU6I4KkV87vFL40WUPjQkWn0Qvkk+z/tZ+6ikJFy0J8KzcQ5xIFLHApyCEqyFnQQKMzI3t6NyqUtKahukCqEiCOiFghfwduWM2LKZhq6e47wNS9VpVwcFtxfkHF+Am+V/Z49XFrg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1753096461;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=apcXxEnb0qJg1v9Cl7JQ6npH3CzfQYbUnRtZrZ2JRQo=;
	b=Ng8qHnwKp0kseIgsBGNF47L3UKdRF5Gn/rEgrTYuEvTl8P3sWznvC3DDRjddwmj/
	MrPA+UxXE8ZA3+nMRDuFpZDlOLPlg8RZ57XhLM8Pjv+PN+NFaBihL/2tuYAEDBCTEsB
	N3aDH1R05bBv2dMGMnp79lTpx9sLG7SNaiWUlAz4=
Received: by mx.zohomail.com with SMTPS id 1753096458959568.7003735740404;
	Mon, 21 Jul 2025 04:14:18 -0700 (PDT)
Message-ID: <e96b1d2f-bff8-4b79-9995-6929648a810b@collabora.com>
Date: Mon, 21 Jul 2025 13:14:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/5] iommu: Add verisilicon IOMMU driver
To: Jason Gunthorpe <jgg@ziepe.ca>, Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>, joro@8bytes.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20250710082450.125585-1-benjamin.gaignard@collabora.com>
 <20250710082450.125585-4-benjamin.gaignard@collabora.com>
 <aHTzPwTob8_5rtBS@willie-the-truck>
 <baa1fcde-f167-4a1b-afca-0a2957a688cc@collabora.com>
 <aHozv0NG1OBlAH6c@willie-the-truck>
 <b4169471-fcd0-4415-8281-c5bd722e5f2b@arm.com>
 <aHpQXy-bnwW56rCn@willie-the-truck> <20250718141401.GD2206214@ziepe.ca>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250718141401.GD2206214@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_041440_157791_366C40EA 
X-CRM114-Status: GOOD (  19.63  )
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

CkxlIDE4LzA3LzIwMjUgw6AgMTY6MTQsIEphc29uIEd1bnRob3JwZSBhIMOpY3JpdMKgOgo+IE9u
IEZyaSwgSnVsIDE4LCAyMDI1IGF0IDAyOjQ3OjExUE0gKzAxMDAsIFdpbGwgRGVhY29uIHdyb3Rl
Ogo+Cj4+IEp1c3QgYmVjYXVzZSB0aGUgZXhpc3RpbmcgZHJpdmVycyBhcmUgYSBtZXNzIGRvZXNu
J3QgbWVhbiB3ZSBzaG91bGQKPj4gcHJvbGlmZXJhdGUgaXQhCj4gSWYgeW91IHdhbnQgdG8gaW5z
aXN0IG9uIHNvbWV0aGluZyBoZXJlIGl0IHNob3VsZCBiZSBmb3IgdGhpcyBkcml2ZXIKPiB0byB1
c2UgdGhlIG5ldyBnZW5lcmljIHBhZ2UgdGFibGUgY29kZSBJJ3ZlIHdyaXR0ZW4uCj4KPiBPdGhl
cndpc2UgSSBkb24ndCBzZWUgdGhlIHBvaW50IGluIHRyeWluZyB0byBpbXByb3ZlIHRoaXMgaW4g
c29tZQo+IGxlc3NlciB3YXkuCj4KPiBJZiB0aGlzIGhhZCBjb21lIGluIGEgeWVhcnMgdGltZSBJ
IHdvdWxkIHByb2JhYmx5IGluc2lzdCBvbiB0aGF0LCBidXQKPiByaWdodCBub3cgaXQgaXNuJ3Qg
bWVyZ2VkIHlldCBhbmQgaXQgd2lsbCBzdGlsbCBiZSBhIGxpdHRsZSBiaXQgYmVmb3JlCj4gcGVv
cGxlIGhhdmUgdGltZSB0byByZXZpZXcgaXQuCj4KPiBQZXJoYXBzIGEgY29tcHJvbWlzZSB3aGVy
ZSBCZW5qYW1pbiBjb21lcyB3aXRoIGFuIGlvbW11cHQgZm9ybWF0Cj4gaGVhZGVyIHRoYXQgd29y
a3MgZm9yIHRoaXMgYW5kIHdlIGNhbiBwcm9ncmVzcyB0aGlzIHNlcmllcyBhbmQgYmUKPiByZWFk
eSB0byBzd2FwIGl0IG91dCBkb3duIHRoZSByb2FkPwoKSSBoYXZlIHRha2Ugc29tZSB0aW1lIHRv
IHRyeSB0byB1bmRlcnN0YW5kIHRoaXMgbmV3IGZyYW1ld29yayBhbmQgSSBoYXZlCnRvIGFkbWl0
IGl0IGlzbid0IHN1cGVyIGNsZWFyIGluIG15IG1pbmQgaG93IHRvIHVzZSBpdCByaWdodCBub3cu
CkkgZG9uJ3QgaGF2ZSBjYXRjaCB0aGUgYmVuZWZpdCBiZWhpbmQgdGhlIG1hY3JvIGFuZCB0aGUg
bmVzdGVkIHN0cnVjdHVyZXMuCgpBbnl3YXksIGlmIFZTSSBkcml2ZXIgbmVlZCB0byBiZSB1cGRh
dGVkIEkgY291bGQsIGF0IGxlYXN0LCB2YWxpZGF0ZSB0aGUKY2hhbmdlcyBvbiBteSBib2FyZCBv
ciBtYWtlIHRoZSBmaXggbWFrZSBzZWxmIChidXQgSSB3aWxsIG5lZWQgdG8gc2VlCm1vcmUgZXhh
bXBsZSBvZiBkcml2ZXJzIHVzaW5nIHRoaXMgbmV3IGZlYXR1cmUuCgpCZW5qYW1pbgoKPgo+IEph
c29uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
