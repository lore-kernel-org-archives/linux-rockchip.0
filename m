Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C14A1C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 16:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ni0tk9e7i14kgguwfsdIzX7qjM4Kt11L52gFIOTNadk=; b=yb1GTAu8Awgp9t
	0xKPlsSQbZ/tUmh/8TaPDekOkZ5sUG9KCRI8n0SxXovh/Wp0ROqKhhYc16zhVbFjh8QU7MdIOc2+a
	fMaqGRsUN1cFguxAb3QuoWD7UMNC0xZJB8ipz+cC1ILATocZjnIAYI5iLEnfA0UWicEFh/qtZURYb
	sm3fEYUqHQN3qdaHhzOXtElDdadMqfShzGz6VAAZZo2yV/7OQSAASZrLcRymzn8KM7LOWFIqOpDme
	4WKF3Ur+/s4WKqkqm0NY8NRJZIGGmFhP0gGWGfEpKa0ZMFnSFt6AwFYskkALS5HnTVBJsneLCUi+G
	NrnFF8hJ2yuVlMCrsz4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8NkD-008w8T-0p;
	Wed, 29 Nov 2023 16:49:01 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Nk8-008w6N-2f;
	Wed, 29 Nov 2023 16:48:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96AD0C15;
	Wed, 29 Nov 2023 08:49:40 -0800 (PST)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 69D1A3F73F;
	Wed, 29 Nov 2023 08:48:47 -0800 (PST)
Message-ID: <52de3aca-41b1-471e-8f87-1a77de547510@arm.com>
Date: Wed, 29 Nov 2023 16:48:43 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/16] iommu/fsl: use page allocation function provided by
 iommu-pages.h
Content-Language: en-GB
To: Jason Gunthorpe <jgg@ziepe.ca>, Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com,
 alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev,
 baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org,
 corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org,
 heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com,
 jernej.skrabec@gmail.com, jonathanh@nvidia.com, joro@8bytes.org,
 kevin.tian@intel.com, krzysztof.kozlowski@linaro.org, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st,
 mhiramat@kernel.org, mst@redhat.com, m.szyprowski@samsung.com,
 netdev@vger.kernel.org, paulmck@kernel.org, rdunlap@infradead.org,
 samuel@sholland.org, suravee.suthikulpanit@amd.com, sven@svenpeter.dev,
 thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com,
 vdumpa@nvidia.com, virtualization@lists.linux.dev, wens@csie.org,
 will@kernel.org, yu-cheng.yu@intel.com
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-9-pasha.tatashin@soleen.com>
 <1c6156de-c6c7-43a7-8c34-8239abee3978@arm.com>
 <CA+CK2bCOtwZxTUS60PHOQ3szXdCzau7OpopgFEbbC6a9Frxafg@mail.gmail.com>
 <20231128235037.GC1312390@ziepe.ca>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20231128235037.GC1312390@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_084856_961028_53EADE26 
X-CRM114-Status: GOOD (  23.13  )
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

T24gMjgvMTEvMjAyMyAxMTo1MCBwbSwgSmFzb24gR3VudGhvcnBlIHdyb3RlOgo+IE9uIFR1ZSwg
Tm92IDI4LCAyMDIzIGF0IDA2OjAwOjEzUE0gLTA1MDAsIFBhc2hhIFRhdGFzaGluIHdyb3RlOgo+
PiBPbiBUdWUsIE5vdiAyOCwgMjAyMyBhdCA1OjUz4oCvUE0gUm9iaW4gTXVycGh5IDxyb2Jpbi5t
dXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4gT24gMjAyMy0xMS0yOCA4OjQ5IHBtLCBQYXNo
YSBUYXRhc2hpbiB3cm90ZToKPj4+PiBDb252ZXJ0IGlvbW11L2ZzbF9wYW11LmMgdG8gdXNlIHRo
ZSBuZXcgcGFnZSBhbGxvY2F0aW9uIGZ1bmN0aW9ucwo+Pj4+IHByb3ZpZGVkIGluIGlvbW11LXBh
Z2VzLmguCj4+Pgo+Pj4gQWdhaW4sIHRoaXMgaXMgbm90IGEgcGFnZXRhYmxlLiBUaGlzIHRoaW5n
IGRvZXNuJ3QgZXZlbiAqaGF2ZSogcGFnZXRhYmxlcy4KPj4+Cj4+PiBTaW1pbGFyIHRvIHBhdGNo
ZXMgIzEgYW5kICMyIHdoZXJlIHlvdSdyZSBsdW1waW5nIGluIGNvbmZpZ3VyYXRpb24KPj4+IHRh
YmxlcyB3aGljaCBiZWxvbmcgdG8gdGhlIElPTU1VIGRyaXZlciBpdHNlbGYsIGFzIG9wcG9zZWQg
dG8gcGFnZXRhYmxlcwo+Pj4gd2hpY2ggZWZmZWN0aXZlbHkgYmVsb25nIHRvIGFuIElPTU1VIGRv
bWFpbidzIHVzZXIuIEJ1dCB0aGVuIHRoZXJlIGFyZQo+Pj4gc3RpbGwgZHJpdmVycyB3aGVyZSB5
b3UncmUgKm5vdCogYWNjb3VudGluZyBzaW1pbGFyIGNvbmZpZ3VyYXRpb24KPj4+IHN0cnVjdHVy
ZXMsIHNvIEkgcmVhbGx5IHN0cnVnZ2xlIHRvIHNlZSBob3cgdGhpcyBtZXRyaWMgaXMgdXNlZnVs
IHdoZW4KPj4+IGl0J3Mgc28gY29tcGxldGVseSBpbmNvbnNpc3RlbnQgaW4gd2hhdCBpdCdzIGNv
dW50aW5nIDovCj4+Cj4+IFRoZSB3aG9sZSBJT01NVSBzdWJzeXN0ZW0gYWxsb2NhdGVzIGEgc2ln
bmlmaWNhbnQgYW1vdW50IG9mIGtlcm5lbAo+PiBsb2NrZWQgbWVtb3J5IHRoYXQgd2Ugd2FudCB0
byBhdCBsZWFzdCBvYnNlcnZlLiBUaGUgbmV3IGZpZWxkIGluCj4+IHZtc3RhdCBkb2VzIGp1c3Qg
dGhhdDogaXQgcmVwb3J0cyBBTEwgYnVkZHkgYWxsb2NhdG9yIG1lbW9yeSB0aGF0Cj4+IElPTU1V
IGFsbG9jYXRlcy4gSG93ZXZlciwgZm9yIGFjY291bnRpbmcgcHVycG9zZXMsIEkgYWdyZWUsIHdl
IG5lZWQgdG8KPj4gZG8gYmV0dGVyLCBhbmQgc2VwYXJhdGUgYXQgbGVhc3QgaW9tbXUgcGFnZXRh
YmxlcyBmcm9tIHRoZSByZXN0Lgo+Pgo+PiBXZSBjYW4gc2VwYXJhdGUgdGhlIG1ldHJpYyBpbnRv
IHR3bzoKPj4gaW9tbXUgcGFnZXRhYmxlIG9ubHkKPj4gaW9tbXUgZXZlcnl0aGluZwo+Pgo+PiBv
ciBpbnRvIHRocmVlOgo+PiBpb21tdSBwYWdldGFibGUgb25seQo+PiBpb21tdSBkbWEKPj4gaW9t
bXUgZXZlcnl0aGluZwo+Pgo+PiBXaGF0IGRvIHlvdSB0aGluaz8KPiAKPiBJIHRoaW5rIEkgc2Fp
ZCB0aGlzIGF0IExQQyAtIGlmIHlvdSB3YW50IHRvIGhhdmUgZmluZSBncmFpbmVkCj4gYWNjb3Vu
dGluZyBvZiBtZW1vcnkgYnkgb3duZXIgeW91IG5lZWQgdG8gZ28gdGFsayB0byB0aGUgY2dyb3Vw
IHBlb3BsZQo+IGFuZCBjb21lIHVwIHdpdGggc29tZXRoaW5nIGdlbmVyaWMuIEFkZGluZyBldmVy
IG9wZW4gY29kZWQgZmluZXIKPiBjYXRlZ29yeSBicmVha2Rvd25zIGp1c3QgZm9yIGlvbW11IGRv
ZXNuJ3QgbWFrZSBhbG90IG9mIHNlbnNlLgo+IAo+IFlvdSBjYW4gbWFrZSBzb21lIGFyZ3VtZW50
IHRoYXQgdGhlIHBhZ2V0YWJsZSBtZW1vcnkgc2hvdWxkIGJlIGNvdW50ZWQKPiBiZWNhdXNlIGt2
bSBjb3VudHMgaXQncyBzaGFkb3cgbWVtb3J5LCBidXQgSSB3b3VsZG4ndCBnbyBpbnRvIGZ1cnRo
ZXIKPiBkZXRhaWwgdGhhbiB0aGF0IHdpdGggaGFuZCBjb2RlZCBjb3VudGVycy4uCgpSaWdodCwg
cGFnZXRhYmxlIG1lbW9yeSBpcyBpbnRlcmVzdGluZyBzaW5jZSBpdCdzIHNvbWV0aGluZyB0aGF0
IGFueSAKcmFuZG9tIGtlcm5lbCB1c2VyIGNhbiBpbmRpcmVjdGx5IGFsbG9jYXRlIHZpYSBpb21t
dV9kb21haW5fYWxsb2MoKSBhbmQgCmlvbW11X21hcCgpLCBhbmQgc29tZSBvZiB0aG9zZSB1c2Vy
cyBtYXkgZXZlbiBiZSBkb2luZyBzbyBvbiBiZWhhbGYgb2YgCnVzZXJzcGFjZS4gSSBoYXZlIG5v
IG9iamVjdGlvbiB0byBhY2NvdW50aW5nIGFuZCBwb3RlbnRpYWxseSBhcHBseWluZyAKbGltaXRz
IHRvICp0aGF0Ki4KCkJleW9uZCB0aGF0LCB0aG91Z2gsIHRoZXJlIGlzIG5vdGhpbmcgc3BlY2lh
bCBhYm91dCAidGhlIElPTU1VIApzdWJzeXN0ZW0iLiBUaGUgYW1vdW50IG9mIG1lbW9yeSBhbiBJ
T01NVSBkcml2ZXIgbmVlZHMgdG8gYWxsb2NhdGUgZm9yIAppdHNlbGYgaW4gb3JkZXIgdG8gZnVu
Y3Rpb24gaXMgbm90IG9mIGludGVyZXN0IGJleW9uZCBjdXJpb3NpdHksIGl0IGp1c3QgCmlzIHdo
YXQgaXQgaXM7IGxpbWl0aW5nIGl0IHdvdWxkIG9ubHkgYnJlYWsgdGhlIElPTU1VLCBhbmQgaWYg
YSB1c2VyIAp0aGlua3MgaXQncyAidG9vIG11Y2giLCB0aGUgb25seSBhY3Rpb25hYmxlIHRoaW5n
IHRoYXQgbWlnaHQgaGVscCBpcyB0byAKcGh5c2ljYWxseSByZW1vdmUgZGV2aWNlcyBmcm9tIHRo
ZSBzeXN0ZW0uIFNpbWlsYXIgZm9yIERNQSBidWZmZXJzOyBpdCAKbWlnaHQgYmUgaW50cmlndWlu
ZyB0byBhY2NvdW50IHRob3NlLCBidXQgaXQncyBub3QgcmVhbGx5IGFuIGFjdGlvbmFibGUgCm1l
dHJpYyAtIGluIHRoZSBvdmVyd2hlbG1pbmcgbWFqb3JpdHkgb2YgY2FzZXMgeW91IGNhbid0IHNp
bXBseSB0ZWxsIGEgCmRyaXZlciB0byBhbGxvY2F0ZSBsZXNzIHRoYW4gd2hhdCBpdCBuZWVkcy4g
QW5kIHRoYXQgaXMgb2YgY291cnNlIAphc3N1bWluZyBpZiB3ZSB3ZXJlIHRvIGFjY291bnQgKmFs
bCogRE1BIGJ1ZmZlcnMsIHNpbmNlIHdoZXRoZXIgdGhleSAKaGFwcGVuIHRvIGhhdmUgYW4gSU9N
TVUgdHJhbnNsYXRpb24gb3Igbm90IGlzIGlycmVsZXZhbnQgKHdlJ2QgaGF2ZSAKYWxyZWFkeSBh
Y2NvdW50ZWQgdGhlIHBhZ2V0YWJsZXMgYXMgcGFnZXRhYmxlcyBpZiBzbykuCgpJIGJldCAidGhl
IG5ldHdvcmtpbmcgc3Vic3lzdGVtIiBhbHNvIGNvbnN1bWVzIHNpZ25pZmljYW50IG1lbW9yeSBv
biB0aGUgCnNhbWUga2luZCBvZiBiaWcgc3lzdGVtcyB3aGVyZSBJT01NVSBwYWdldGFibGVzIHdv
dWxkIGJlIG9mIGFueSBjb25jZXJuLiAKSSBiZWxpZXZlIHNvbWUgb2YgdGhlIHNvbWUgb2YgdGhl
ICJzZXJpb3VzIiBOSUNzIGNhbiBlYXNpbHkgcnVuIHVwIApodW5kcmVkcyBvZiBtZWdhYnl0ZXMg
aWYgbm90IGdpZ2FieXRlcyB3b3J0aCBvZiBxdWV1ZXMsIFNLQiBwb29scywgZXRjLiAKLSB3b3Vs
ZCB5b3UgcHJvcG9zZSBhY2NvdW50aW5nIHRob3NlIHRvbz8KClRoYW5rcywKUm9iaW4uCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
