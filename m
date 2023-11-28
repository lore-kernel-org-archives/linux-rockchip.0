Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8199DC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvQtxsiEKDq2rHz5T+t9Pr0Zbxa6e5AWgo0gvdXYobk=; b=BCHBaU3CMkNykd
	lj21JCckWRseriM6VslhGlsNR8gYuPwE42Jtn1rCzbQguQzs6xVWcEoAx9wirczmAibDqXRsU/8h1
	3GRTt5dzGzhnlrGQ3PGrtiI0p7IEctgEe66TbAjkAOQI0Uer5Q/kxi/NiiU5sqZbuktRR56n7X8vP
	w3/GomeK0INpMU+JAprMowiU7rS0wjimrvTj3n4G/17ri2QZbYcm2cqX8FOkUcOqk7bf1LHZ1+zYW
	MDcXMvq02aa2yhao6paIKTrPEm0afF0t6x9ZB6Ad4yvkcMwxL+quzT7vpIsq8xcvzHydbt/Xendaw
	b3AfT+daI8LQQ5IqxOKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r86ug-006WZe-0k;
	Tue, 28 Nov 2023 22:50:42 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r86ue-006WY4-0D
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 22:50:41 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-4239f2c1209so24884081cf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 14:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701211838; x=1701816638; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dCerhjjG9KrYi0TXMgF4xJvZ7AQK4ONjRJhrC9AuZik=;
        b=oVnI6Zv6m6CpEIuNyng1uVP69R2CaHLHX0MFNgP6n6ip4jKXlAgaAt5B8FBnukO6ab
         IIT0k2/2D0lwqDRyErGJn1NyE+KH/d9Ozb44K1Z+Y8qKwg77YySUL7C8aJ4iYvTMseJD
         FoigYy7o+JpOOntAAMp22vctMlUAM3drTbuqmRR3XzneWSBwllbk3+CqzaUSw0A6OE2W
         70bKUNmRGDpm2kuM3J/pVaWNiXX3VY7rUAEAKCIiTGxlIs35FyUSXW4yFloBR36bd/Iw
         WL9mxQp1Zqzobjddo0uK07Z/dAFRYoPfktpV4ZzSffG/CEfmebbVT0pgtSY9qIxfeCIM
         bTtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701211838; x=1701816638;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dCerhjjG9KrYi0TXMgF4xJvZ7AQK4ONjRJhrC9AuZik=;
        b=A/vYx0dwchxSCd1/z8JSF90aJY69tXxADfkpeZTTTHyAuGw/7ld0AGPqoTkbzTo9AU
         SK8ti+2749IilFT5zdiopcH6ZydKzpbq0+inn5o5c9DBwonEQFUeq6TFiejOCsoUg9MV
         mkCllezw53W+37BjNpAXvS4YTV5jzy6DKyaXcnCQGKaxJbve9hljE8+b9eIGtv8zePfR
         bobx3We60KLKH74+9dylXOlbFJYkp7GB8xcG5g25WaCBnObmqG3fNvs+4jwCbmyg+rEa
         lk8/KFbUGxQZC1L02mCxo+fNZC3NcHlrPyHqAEB7Fgh3supeBJ7xqxKx8nYuW64WGY/V
         vaMA==
X-Gm-Message-State: AOJu0YxZQokPqE9feSQt8wYYgjVqdwzEUr/vE7l1qbKyQTw9b68Rdvg1
	ChrSHSAsuipYqnducBBMWPfqabUAgWQj0bszMkb8hA==
X-Google-Smtp-Source: AGHT+IFxEAQBwk403dZeGueHLhec0OT/vzBcOBPxuj+Prssp33QGReImzhYCBhKzogO690G6BVR/8UVJbn/fn+bRF6c=
X-Received: by 2002:a05:622a:10f:b0:423:78b4:d136 with SMTP id
 u15-20020a05622a010f00b0042378b4d136mr24659151qtw.54.1701211837930; Tue, 28
 Nov 2023 14:50:37 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-7-pasha.tatashin@soleen.com> <d99e0d4a-94a9-482b-b5b5-833cba518b86@arm.com>
In-Reply-To: <d99e0d4a-94a9-482b-b5b5-833cba518b86@arm.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 28 Nov 2023 17:50:01 -0500
Message-ID: <CA+CK2bDswtrqiOMt3+0LBb0+7nJY9aBpzZdsmrWRzy9WxBqKEg@mail.gmail.com>
Subject: Re: [PATCH 06/16] iommu/dma: use page allocation function provided by iommu-pages.h
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
X-CRM114-CacheID: sfid-20231128_145040_102032_596C58AA 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
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

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgNTozNOKAr1BNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gT24gMjAyMy0xMS0yOCA4OjQ5IHBtLCBQYXNoYSBUYXRh
c2hpbiB3cm90ZToKPiA+IENvbnZlcnQgaW9tbXUvZG1hLWlvbW11LmMgdG8gdXNlIHRoZSBuZXcg
cGFnZSBhbGxvY2F0aW9uIGZ1bmN0aW9ucwo+ID4gcHJvdmlkZWQgaW4gaW9tbXUtcGFnZXMuaC4K
Pgo+IFRoZXNlIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIElPTU1VIHBhZ2V0YWJsZXMsIHRoZXkg
YXJlIERNQSBidWZmZXJzIGFuZAo+IHRoZXkgYmVsb25nIHRvIHdob2V2ZXIgY2FsbGVkIHRoZSBj
b3JyZXNwb25kaW5nIGRtYV9hbGxvY18qIGZ1bmN0aW9uLgoKSGkgUm9iaW4sCgpUaGlzIGlzIHRy
dWUsIGhvd2V2ZXIsIHdlIHdhbnQgdG8gYWNjb3VudCBhbmQgb2JzZXJ2ZSB0aGUgcGFnZXMKYWxs
b2NhdGVkIGJ5IElPTU1VIHN1YnN5c3RlbSBmb3IgRE1BIGJ1ZmZlcnMsIGFzIHRoZXkgYXJlIGVz
c2VudGlhbGx5CnVubW92YWJsZSBsb2NrZWQgcGFnZXMuIFNob3VsZCB3ZSBzZXBhcmF0ZSBJT01N
VSBtZW1vcnkgZnJvbSBLVk0KbWVtb3J5IGFsbCB0b2dldGhlciBhbmQgYWRkIGFub3RoZXIgZmll
bGQgdG8gL3Byb2MvbWVtaW5mbywgc29tZXRoaW5nCmxpa2UgImlvbW11IC0+IGlvbW11IHBhZ2V0
YWJsZSBhbmQgZG1hIG1lbW9yeSIsIG9yIGRvIHdlIHdhbnQgdG8KZXhwb3J0IERNQSBtZW1vcnkg
c2VwYXJhdGVseSBmcm9tIElPTU1VIHBhZ2UgdGFibGVzPwoKU2luY2UsIEkgaW5jbHVkZWQgRE1B
IG1lbW9yeSwgSSBzcGVjaWZpY2FsbHkgcmVtb3ZlZCBtZW50aW9uaW5nIG9mCklPTU1VIHBhZ2Ug
dGFibGVzIGluIHRoZSBtb3N0IG9mIHBsYWNlcywgYW5kIG9ubHkgcmVwb3J0IGl0IGFzIElPTU1V
Cm1lbW9yeS4gSG93ZXZlciwgc2luY2UgaXQgaXMgc3RpbGwgYnVuZGxlZCB0b2dldGhlciB3aXRo
IFNlY1BhZ2VUYWJsZXMKaXQgY2FuIGJlIGNvbmZ1c2luZy4KClBhc2hhCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
