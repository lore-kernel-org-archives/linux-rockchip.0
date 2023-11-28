Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B666BC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AT1a1BrrsjEuRwgrX0BY6VAi4uJ0wuZcaYr2qV2Oqko=; b=gVLhQ1mje+OBSs
	KTfPkaY2f6Iiy8BZdeaw48mhvcfK7vytDNv3Yxwq/7VaQt1aVQ/n4H5sraVxzIWCusNdt8qvjrKmW
	YJL9cTp5KTl57vMY2iNKAkfqDwJNMzgpXYzWEKUw0F48WUxAnaA92odxo25A5NAmEESiIZMw3aHVH
	Uvyqc3LC9Hvzp7kxdv9KMJkA2HyyODHHR1MEXy0uLnJeouGjGegf/Sz0IsFRRjsjCd0J9+cR679LP
	9MB4GXh/vJrLZaBI8QqodI1uMEh9HNE+dTrthLDoNY1yZXpvHWlZLY+QcUVDTApyMblJLYHWhXTyg
	CFUpvVYqGvCBYNxDjVfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r87qm-006cZF-0q;
	Tue, 28 Nov 2023 23:50:44 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r87qh-006cX8-2q
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 23:50:41 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-58d564b98c9so2269906eaf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 15:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1701215438; x=1701820238; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XYTfkI+bm13XmNm4VDm7JNv4il6+T5S3nBbruRBN+40=;
        b=nQBOcWSjLlQyDFMFC/3o1HGC80XFjnYbLkMvEjtqmcIw+MZxvX2rK0E6L4thcB4mlK
         /a1uT8TsTmxRlXjhGKyWHkgb+l54xMtkxCYg9LlPPq4RkikjFYW9d17v+HAoJ+ppeD8j
         PqC0128tvTUYv2ogkMxnBTKd0jL5qy+UBVfZmnXuvoXgZR/1vgwR3sk5/esJ5wTXFY5B
         F+FKgLqn3h+WZOZjrrID28VGmlWfwtuqMcF+TywNKFd8JiuMb2W2Na5temY/9+MZCdyi
         p50zZYg5Xj+Uv52A39PPn//Jg4cKkzFSHL/j4ZhVEmCpbr+FfCoFxckeYaZMqdEwpPM8
         rX0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701215438; x=1701820238;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XYTfkI+bm13XmNm4VDm7JNv4il6+T5S3nBbruRBN+40=;
        b=JV/3Zu70DtaPXM6LNG9sB7qxIYfto0AnNAMECVoTBC6SIQiwfPQR93/ZgRyD8ZNryy
         OchaFyZ+Aq73zSmKEY2RFrHVt2MBjKWmejLrvXteZ609tfTPgeRRpN1rTcNxmXlEy2s6
         dxqeGM9idD8HS/kh33xUw8l6pj3aqVRFZ1zBjl8phhxm9gSxajYcTTEueLiIujYoEovG
         VWes9Kx1x3bXl8kYLTyc64dd2EuHU+LiFfET1oHY54TZLcp/cefN8enu0s1ZQSYwjHGJ
         2Zh1KkoZ4VfGpjuzMLau8NsdUW7NRULmdS2h9YHx6RLWyzuiaQKigis8HOAVkLH2VX0V
         JB+g==
X-Gm-Message-State: AOJu0YzXs8rX3suwo85O8EwGL3frA+WW2Dx/WAqTT08laZ3AfA18xUQA
	37qEDTde8IJS/qLkw5TGoAq2Xxvtwk/b6BrzF3U=
X-Google-Smtp-Source: AGHT+IGwgOr6qdtdfdMX4Rg2CnVVZBQ0aH/828IT9FkkN9y3SJG6wbzLt3OY2goWTqPUl1CtrUxcHA==
X-Received: by 2002:a05:6820:809:b0:58d:a6ed:5601 with SMTP id bg9-20020a056820080900b0058da6ed5601mr6252111oob.1.1701215438416;
        Tue, 28 Nov 2023 15:50:38 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-134-23-187.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.134.23.187])
        by smtp.gmail.com with ESMTPSA id b35-20020a4a98e6000000b0058d2ea19475sm1934017ooj.11.2023.11.28.15.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 15:50:37 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1r87qf-005jHH-5R;
	Tue, 28 Nov 2023 19:50:37 -0400
Date: Tue, 28 Nov 2023 19:50:37 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: Robin Murphy <robin.murphy@arm.com>, akpm@linux-foundation.org,
	alex.williamson@redhat.com, alim.akhtar@samsung.com,
	alyssa@rosenzweig.io, asahi@lists.linux.dev,
	baolu.lu@linux.intel.com, bhelgaas@google.com,
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com,
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de,
	iommu@lists.linux.dev, jasowang@redhat.com,
	jernej.skrabec@gmail.com, jonathanh@nvidia.com, joro@8bytes.org,
	kevin.tian@intel.com, krzysztof.kozlowski@linaro.org,
	kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-mm@kvack.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com,
	marcan@marcan.st, mhiramat@kernel.org, mst@redhat.com,
	m.szyprowski@samsung.com, netdev@vger.kernel.org,
	paulmck@kernel.org, rdunlap@infradead.org, samuel@sholland.org,
	suravee.suthikulpanit@amd.com, sven@svenpeter.dev,
	thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com,
	vdumpa@nvidia.com, virtualization@lists.linux.dev, wens@csie.org,
	will@kernel.org, yu-cheng.yu@intel.com
Subject: Re: [PATCH 08/16] iommu/fsl: use page allocation function provided
 by iommu-pages.h
Message-ID: <20231128235037.GC1312390@ziepe.ca>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-9-pasha.tatashin@soleen.com>
 <1c6156de-c6c7-43a7-8c34-8239abee3978@arm.com>
 <CA+CK2bCOtwZxTUS60PHOQ3szXdCzau7OpopgFEbbC6a9Frxafg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+CK2bCOtwZxTUS60PHOQ3szXdCzau7OpopgFEbbC6a9Frxafg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_155040_250752_99341D9E 
X-CRM114-Status: GOOD (  18.68  )
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

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgMDY6MDA6MTNQTSAtMDUwMCwgUGFzaGEgVGF0YXNoaW4g
d3JvdGU6Cj4gT24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgNTo1M+KAr1BNIFJvYmluIE11cnBoeSA8
cm9iaW4ubXVycGh5QGFybS5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIDIwMjMtMTEtMjggODo0OSBw
bSwgUGFzaGEgVGF0YXNoaW4gd3JvdGU6Cj4gPiA+IENvbnZlcnQgaW9tbXUvZnNsX3BhbXUuYyB0
byB1c2UgdGhlIG5ldyBwYWdlIGFsbG9jYXRpb24gZnVuY3Rpb25zCj4gPiA+IHByb3ZpZGVkIGlu
IGlvbW11LXBhZ2VzLmguCj4gPgo+ID4gQWdhaW4sIHRoaXMgaXMgbm90IGEgcGFnZXRhYmxlLiBU
aGlzIHRoaW5nIGRvZXNuJ3QgZXZlbiAqaGF2ZSogcGFnZXRhYmxlcy4KPiA+Cj4gPiBTaW1pbGFy
IHRvIHBhdGNoZXMgIzEgYW5kICMyIHdoZXJlIHlvdSdyZSBsdW1waW5nIGluIGNvbmZpZ3VyYXRp
b24KPiA+IHRhYmxlcyB3aGljaCBiZWxvbmcgdG8gdGhlIElPTU1VIGRyaXZlciBpdHNlbGYsIGFz
IG9wcG9zZWQgdG8gcGFnZXRhYmxlcwo+ID4gd2hpY2ggZWZmZWN0aXZlbHkgYmVsb25nIHRvIGFu
IElPTU1VIGRvbWFpbidzIHVzZXIuIEJ1dCB0aGVuIHRoZXJlIGFyZQo+ID4gc3RpbGwgZHJpdmVy
cyB3aGVyZSB5b3UncmUgKm5vdCogYWNjb3VudGluZyBzaW1pbGFyIGNvbmZpZ3VyYXRpb24KPiA+
IHN0cnVjdHVyZXMsIHNvIEkgcmVhbGx5IHN0cnVnZ2xlIHRvIHNlZSBob3cgdGhpcyBtZXRyaWMg
aXMgdXNlZnVsIHdoZW4KPiA+IGl0J3Mgc28gY29tcGxldGVseSBpbmNvbnNpc3RlbnQgaW4gd2hh
dCBpdCdzIGNvdW50aW5nIDovCj4gCj4gVGhlIHdob2xlIElPTU1VIHN1YnN5c3RlbSBhbGxvY2F0
ZXMgYSBzaWduaWZpY2FudCBhbW91bnQgb2Yga2VybmVsCj4gbG9ja2VkIG1lbW9yeSB0aGF0IHdl
IHdhbnQgdG8gYXQgbGVhc3Qgb2JzZXJ2ZS4gVGhlIG5ldyBmaWVsZCBpbgo+IHZtc3RhdCBkb2Vz
IGp1c3QgdGhhdDogaXQgcmVwb3J0cyBBTEwgYnVkZHkgYWxsb2NhdG9yIG1lbW9yeSB0aGF0Cj4g
SU9NTVUgYWxsb2NhdGVzLiBIb3dldmVyLCBmb3IgYWNjb3VudGluZyBwdXJwb3NlcywgSSBhZ3Jl
ZSwgd2UgbmVlZCB0bwo+IGRvIGJldHRlciwgYW5kIHNlcGFyYXRlIGF0IGxlYXN0IGlvbW11IHBh
Z2V0YWJsZXMgZnJvbSB0aGUgcmVzdC4KPiAKPiBXZSBjYW4gc2VwYXJhdGUgdGhlIG1ldHJpYyBp
bnRvIHR3bzoKPiBpb21tdSBwYWdldGFibGUgb25seQo+IGlvbW11IGV2ZXJ5dGhpbmcKPiAKPiBv
ciBpbnRvIHRocmVlOgo+IGlvbW11IHBhZ2V0YWJsZSBvbmx5Cj4gaW9tbXUgZG1hCj4gaW9tbXUg
ZXZlcnl0aGluZwo+IAo+IFdoYXQgZG8geW91IHRoaW5rPwoKSSB0aGluayBJIHNhaWQgdGhpcyBh
dCBMUEMgLSBpZiB5b3Ugd2FudCB0byBoYXZlIGZpbmUgZ3JhaW5lZAphY2NvdW50aW5nIG9mIG1l
bW9yeSBieSBvd25lciB5b3UgbmVlZCB0byBnbyB0YWxrIHRvIHRoZSBjZ3JvdXAgcGVvcGxlCmFu
ZCBjb21lIHVwIHdpdGggc29tZXRoaW5nIGdlbmVyaWMuIEFkZGluZyBldmVyIG9wZW4gY29kZWQg
ZmluZXIKY2F0ZWdvcnkgYnJlYWtkb3ducyBqdXN0IGZvciBpb21tdSBkb2Vzbid0IG1ha2UgYWxv
dCBvZiBzZW5zZS4KCllvdSBjYW4gbWFrZSBzb21lIGFyZ3VtZW50IHRoYXQgdGhlIHBhZ2V0YWJs
ZSBtZW1vcnkgc2hvdWxkIGJlIGNvdW50ZWQKYmVjYXVzZSBrdm0gY291bnRzIGl0J3Mgc2hhZG93
IG1lbW9yeSwgYnV0IEkgd291bGRuJ3QgZ28gaW50byBmdXJ0aGVyCmRldGFpbCB0aGFuIHRoYXQg
d2l0aCBoYW5kIGNvZGVkIGNvdW50ZXJzLi4KCkphc29uCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
