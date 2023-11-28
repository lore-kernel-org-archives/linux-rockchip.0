Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B708C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 23:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVX1SAtgnvZEZrLnB5LOgPrtkZ5yRfrlWgArO2QHgAY=; b=QJWQVTlmIcoQlt
	xhzrcJABZkKpc5rVWZ2aHK2VVV8C7Sg+1R/BSVl0pFyVVBFTr7K9nLpfDK7HOpLw9A8ID1K4q/Tip
	0ArjvDMRgaQR3tB3MV+8+eU6DFHTvAH9YnxZB9JptUPGQ4S+W5JXeCXQ6L5wJS9EHn8xdJvtrRmtX
	2VrtMX+MHYib2nHiioqTBYKEERUUAjWBYhj8K4NG0xpziAarGitm2Gu4/eAnaawwCoaJJiAdB70Sc
	dF2VD0NeLNscZAkbxcCz2icbpfokP2vGQHSb545ByhlE9/NzBgDFVZ42fph3AIrPWSwqKGQZVAkI4
	4LvzpHv4c2XG6Dis5Q4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r87Zd-006bAh-0i;
	Tue, 28 Nov 2023 23:33:01 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r87Za-006b9X-0y
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 23:32:59 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-423a9cb7e80so18586811cf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 15:32:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701214377; x=1701819177; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T5E8YxJ+6DFizX8w/tjdr1Q20AjeSOztly1v+T84HO0=;
        b=Slm1r5NKF2uNd2Jsvp0Ea2+WggY9uNf8e0qYT1dokVO2ciL5c5unXU5/z1xb1yR2dw
         I20voSAvy+vXvf+tfLKPTW8XeXF1sEfMH3MYy8N/qAVTEd/4OMiJIZQ/fF35j8IxYOuj
         J6OERFl8rAERAaBH1sYnCnHqEgjpT+EEafs60GTn80k6BODZZk+N3iZwtcJK/cjKQh9p
         qj7qk0+TUN4uukXB4cX2NCLUpZw2XU2ldFL7Yr+aFGRRj500s+HOy0lilhZt+O5Ns1t9
         n1HfuJu75aYrpUIJXNfhtXeHI2DcoMU6uKDY6X7DOGKwaNHoDaE+xN5XHntsq/Y9wHOI
         sHxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701214377; x=1701819177;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T5E8YxJ+6DFizX8w/tjdr1Q20AjeSOztly1v+T84HO0=;
        b=dRuibvjxcINRSM/WwVhsDFZhKndbAphos12AGqQlmKNyBxgztbvBLIxTXRHIIiIfS8
         sEdkf172b2hbEubZb3gzpXhaMT3N+ryFVOBBQvW9OU9hE17EA3r+YJrA8n2Cy9p4R317
         daQ8PViBlnbP56ynNQhql8cSllI58GzmuByMpAI3R4b+wNJNmKzsCKKwlj3QQSsYWXNI
         CCjquVxSbLHvUgxiram1trf+kMBTC5MitvEGFEQQhNzaMQLNYQkITNICg8jCi4Uq+4Q7
         KqCyCgjnhtGcOuCjMedIhGwKBAGs7Zuw9z7yWyt0NiDpKV6OsX4ViEr28J3pv6J19Q2T
         LRrw==
X-Gm-Message-State: AOJu0Yz2McNMVYwVN15n6eimC2NCJrwjHOdoqJyQSmBZshFCNliUi9gR
	iSfOBuvr2zEv4uKx11pe1exj1OJRGs9l1Y4kZVQsAQ==
X-Google-Smtp-Source: AGHT+IEOuxWHhR77aLWnHKpzlrX1TcnL7YFPpFLtYSrpaVGNIqLOq9dSsp5P0HO6NZm9ZocGV6nook5EATgkphMBWlk=
X-Received: by 2002:ac8:5c06:0:b0:419:a2c6:820e with SMTP id
 i6-20020ac85c06000000b00419a2c6820emr19578443qti.12.1701214377257; Tue, 28
 Nov 2023 15:32:57 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-6-pasha.tatashin@soleen.com> <8e1961c9-0359-4450-82d8-2b2fcb2c5557@arm.com>
 <CA+CK2bDFAi1+397fd4cYetUgmHxqE2hUG4fa2m9Fi3weykQdpA@mail.gmail.com> <6f9ff0aa-7713-4de1-869e-4725828942e4@arm.com>
In-Reply-To: <6f9ff0aa-7713-4de1-869e-4725828942e4@arm.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 28 Nov 2023 18:32:20 -0500
Message-ID: <CA+CK2bDKaXqemr2Hp=MRxxMB_=AoRnUK_D2SGm9cDkKa+JaT7A@mail.gmail.com>
Subject: Re: [PATCH 05/16] iommu/io-pgtable-arm-v7s: use page allocation
 function provided by iommu-pages.h
To: Robin Murphy <robin.murphy@arm.com>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com, 
	alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev, 
	baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org, 
	corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org, 
	heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com, 
	jernej.skrabec@gmail.com, jgg@ziepe.ca, jonathanh@nvidia.com, joro@8bytes.org, 
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_153258_670224_EF2D9721 
X-CRM114-Status: GOOD (  12.04  )
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

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgNjowOOKAr1BNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gT24gMjAyMy0xMS0yOCAxMDo1NSBwbSwgUGFzaGEgVGF0
YXNoaW4gd3JvdGU6Cj4gPj4+ICAgICAgICAgICAgICAgIGttZW1fY2FjaGVfZnJlZShkYXRhLT5s
Ml90YWJsZXMsIHRhYmxlKTsKPiA+Cj4gPiBXZSBvbmx5IGFjY291bnQgcGFnZSBhbGxvY2F0aW9u
cywgbm90IHN1YnBhZ2VzLCBob3dldmVyLCB0aGlzIGlzCj4gPiBzb21ldGhpbmcgSSB3YXMgc3Vy
cHJpc2VkIGFib3V0IHRoaXMgcGFydGljdWxhciBhcmNoaXRlY3R1cmUgb2Ygd2h5IGRvCj4gPiB3
ZSBhbGxvY2F0ZSBsMiB1c2luZyBrbWVtID8gQXJlIHRoZSBzZWNvbmQgbGV2ZWwgdGFibGVzIG9u
IGFybSB2N3MKPiA+IHJlYWxseSBzdWItcGFnZSBpbiBzaXplPwo+Cj4gWWVzLCBMMiB0YWJsZXMg
YXJlIDFLQiwgc28gdGhlIGttZW1fY2FjaGUgY291bGQgc3RpbGwgcXVpdGUgZWFzaWx5IGVuZAo+
IHVwIGNvbnN1bWluZyBzaWduaWZpY2FudGx5IG1vcmUgbWVtb3J5IHRoYW4gdGhlIEwxIHRhYmxl
LCB3aGljaCBpcwo+IHVzdWFsbHkgMTZLQiAoYnV0IGNvdWxkIHBvdGVudGlhbGx5IGJlIHNtYWxs
ZXIgZGVwZW5kaW5nIG9uIHRoZSBjb25maWcsCj4gb3IgdXAgdG8gNjRLQiB3aXRoIHRoZSBNZWRp
YXRlayBoYWNrcykuCgpJIGFtIE9LIHJlbW92aW5nIHN1cHBvcnQgZm9yIHRoaXMgYXJjaGl0ZWN0
dXJlLCBvciBrZWVwaW5nIG9ubHkgaW5mbwpmb3IgTDEsIEkgZG8gbm90IHRoaW5rIHRoZXJlIGlz
IGEgcmVhc29uIHRvIHdvcnJ5IGFib3V0IHN1Yi1wYWdlCmFjY291bnRpbmcgb25seSBmb3Igdjdz
LgoKUGFzaGEKCj4KPiBUaGFua3MsCj4gUm9iaW4uCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
