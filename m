Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C13BC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 23:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaLhfyG69gNNWGU4MrsWqO3gf7g/beyj5ir/xQ4Ik6M=; b=WEVM8xLrXUiSkl
	JXjFU7o/8suC28pxsUXCxJn16Jp2qTQseSSPYy8COvO+f7k9abyGRmKu4lcujPo7xkA+uliwo7Z60
	bGSppAT3bW8ntqJFUXipI1imEvDks6tbfOsdsdS50Mwr866ZB/t8C38/gIEhYLr2nBt8wpvZFpvA9
	PUrSCKKuYw0FNsYe/b+a/IrpDtAavaDhD74WKzaJ8TnScuaO1yvyn4k4Kh/sRmWDkW+SEBtzPpWnS
	AB0PupmBXNi/bNzqA36nroX4uWH6DIvPQwpICLebF40cGKQ+BPLxjhy7OFSAlSOxXlL/Yjrph2g58
	VVEwsLBrhK09FAWQAzNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r873V-006XgB-1V;
	Tue, 28 Nov 2023 22:59:49 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r873S-006Xf0-16;
	Tue, 28 Nov 2023 22:59:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D85752F4;
	Tue, 28 Nov 2023 15:00:30 -0800 (PST)
Received: from [10.57.71.132] (unknown [10.57.71.132])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C33433F6C4;
	Tue, 28 Nov 2023 14:59:35 -0800 (PST)
Message-ID: <79c397ee-b71b-470e-9184-401b4b96a0d2@arm.com>
Date: Tue, 28 Nov 2023 22:59:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/16] iommu/dma: use page allocation function provided by
 iommu-pages.h
Content-Language: en-GB
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com,
 alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev,
 baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org,
 corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org,
 heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com,
 jernej.skrabec@gmail.com, jgg@ziepe.ca, jonathanh@nvidia.com,
 joro@8bytes.org, kevin.tian@intel.com, krzysztof.kozlowski@linaro.org,
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
 lizefan.x@bytedance.com, marcan@marcan.st, mhiramat@kernel.org,
 mst@redhat.com, m.szyprowski@samsung.com, netdev@vger.kernel.org,
 paulmck@kernel.org, rdunlap@infradead.org, samuel@sholland.org,
 suravee.suthikulpanit@amd.com, sven@svenpeter.dev, thierry.reding@gmail.com,
 tj@kernel.org, tomas.mudrunka@gmail.com, vdumpa@nvidia.com,
 virtualization@lists.linux.dev, wens@csie.org, will@kernel.org,
 yu-cheng.yu@intel.com
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-7-pasha.tatashin@soleen.com>
 <d99e0d4a-94a9-482b-b5b5-833cba518b86@arm.com>
 <CA+CK2bDswtrqiOMt3+0LBb0+7nJY9aBpzZdsmrWRzy9WxBqKEg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CA+CK2bDswtrqiOMt3+0LBb0+7nJY9aBpzZdsmrWRzy9WxBqKEg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_145946_423845_5E4633D8 
X-CRM114-Status: GOOD (  14.00  )
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

T24gMjAyMy0xMS0yOCAxMDo1MCBwbSwgUGFzaGEgVGF0YXNoaW4gd3JvdGU6Cj4gT24gVHVlLCBO
b3YgMjgsIDIwMjMgYXQgNTozNOKAr1BNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5j
b20+IHdyb3RlOgo+Pgo+PiBPbiAyMDIzLTExLTI4IDg6NDkgcG0sIFBhc2hhIFRhdGFzaGluIHdy
b3RlOgo+Pj4gQ29udmVydCBpb21tdS9kbWEtaW9tbXUuYyB0byB1c2UgdGhlIG5ldyBwYWdlIGFs
bG9jYXRpb24gZnVuY3Rpb25zCj4+PiBwcm92aWRlZCBpbiBpb21tdS1wYWdlcy5oLgo+Pgo+PiBU
aGVzZSBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCBJT01NVSBwYWdldGFibGVzLCB0aGV5IGFyZSBE
TUEgYnVmZmVycyBhbmQKPj4gdGhleSBiZWxvbmcgdG8gd2hvZXZlciBjYWxsZWQgdGhlIGNvcnJl
c3BvbmRpbmcgZG1hX2FsbG9jXyogZnVuY3Rpb24uCj4gCj4gSGkgUm9iaW4sCj4gCj4gVGhpcyBp
cyB0cnVlLCBob3dldmVyLCB3ZSB3YW50IHRvIGFjY291bnQgYW5kIG9ic2VydmUgdGhlIHBhZ2Vz
Cj4gYWxsb2NhdGVkIGJ5IElPTU1VIHN1YnN5c3RlbSBmb3IgRE1BIGJ1ZmZlcnMsIGFzIHRoZXkg
YXJlIGVzc2VudGlhbGx5Cj4gdW5tb3ZhYmxlIGxvY2tlZCBwYWdlcy4gU2hvdWxkIHdlIHNlcGFy
YXRlIElPTU1VIG1lbW9yeSBmcm9tIEtWTQo+IG1lbW9yeSBhbGwgdG9nZXRoZXIgYW5kIGFkZCBh
bm90aGVyIGZpZWxkIHRvIC9wcm9jL21lbWluZm8sIHNvbWV0aGluZwo+IGxpa2UgImlvbW11IC0+
IGlvbW11IHBhZ2V0YWJsZSBhbmQgZG1hIG1lbW9yeSIsIG9yIGRvIHdlIHdhbnQgdG8KPiBleHBv
cnQgRE1BIG1lbW9yeSBzZXBhcmF0ZWx5IGZyb20gSU9NTVUgcGFnZSB0YWJsZXM/CgpUaGVzZSBh
cmUgbm90IGFsbG9jYXRlZCBieSAidGhlIElPTU1VIHN1YnN5c3RlbSIsIHRoZXkgYXJlIGFsbG9j
YXRlZCBieSAKdGhlIERNQSBBUEkuIEV2ZW4gaWYgeW91IHdhbnQgdG8gY2xhaW0gdGhhdCBhIGRy
aXZlciBwaW5uaW5nIG1lbW9yeSB2aWEgCmlvbW11X2RtYV9vcHMgaXMgc29tZWhvdyBkaWZmZXJl
bnQgZnJvbSB0aGUgc2FtZSBkcml2ZXIgcGlubmluZyB0aGUgc2FtZSAKYW1vdW50IG9mIG1lbW9y
eSB2aWEgZG1hLWRpcmVjdCB3aGVuIGlvbW11LnBhc3N0aHJvdWdoPTEsIGl0J3Mgc3RpbGwgCm5v
bnNlbnNlIGJlY2F1c2UgeW91J3JlIGZhaWxpbmcgdG8gYWNjb3VudCB0aGUgcGFnZXMgd2hpY2gg
aW9tbXVfZG1hX29wcyAKZ2V0cyBmcm9tIENNQSwgZG1hX2NvbW1vbl9hbGxvY19wYWdlcygpLCBk
eW5hbWljIFNXSU9UTEIsIHRoZSB2YXJpb3VzIApwb29scywgYW5kIHNvIG9uLgoKVGhhbmtzLApS
b2Jpbi4KCj4gU2luY2UsIEkgaW5jbHVkZWQgRE1BIG1lbW9yeSwgSSBzcGVjaWZpY2FsbHkgcmVt
b3ZlZCBtZW50aW9uaW5nIG9mCj4gSU9NTVUgcGFnZSB0YWJsZXMgaW4gdGhlIG1vc3Qgb2YgcGxh
Y2VzLCBhbmQgb25seSByZXBvcnQgaXQgYXMgSU9NTVUKPiBtZW1vcnkuIEhvd2V2ZXIsIHNpbmNl
IGl0IGlzIHN0aWxsIGJ1bmRsZWQgdG9nZXRoZXIgd2l0aCBTZWNQYWdlVGFibGVzCj4gaXQgY2Fu
IGJlIGNvbmZ1c2luZy4KPiAKPiBQYXNoYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
