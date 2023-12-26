Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFEFCC46CD3
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 17:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JS2ahrSYksCQ/4yxYEDfhA7Kmy0M69lySVq/xWYVk1U=; b=pRRDQJ0M2ipeQW
	W9jhdeLCA9kVn18cBZMBi9lGYOJwzUmLu3cNOy5x4P1B2IhVSejlDm9FKLKFYryZihBbbPDg6CQxw
	46qKvchF9TmvpbsfCFGuFAw0k94odaHPDkppRPcVF16ut2igRFtv1I4M4hVRU40NnzgPCdhLKzxyx
	qPp5QjETMjNHCOisEPI6R2c20Fe1Oy/ojJ5Omuf8XaNxeGwQUCkHn4egPIuL1AaL1O3sAsNOUrNrZ
	80LFXBnnOFCSwyZ3dUyNrImrbUKGOMQGDIYnS7CieD10o9ZX8bZhU/82Gqa0ba6vMZ20G2EB7Rczm
	UGaA8Kj3LGTNubAWfAjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIBgu-00DKhk-19;
	Tue, 26 Dec 2023 17:58:08 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIBgq-00DKgO-2i
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Dec 2023 17:58:06 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-4277e7146abso42941771cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 09:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1703613482; x=1704218282; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eYH7udRxVOWUuYR1uviT4nzog+O468I+tsZ16QY52lY=;
        b=VQzhVB+MUDvVctnPXlHkwPiXWyRhJwou8i+sswlqZGiS2d/1EjLwRWV6pDGgFDlAiM
         +b80gDNF1owXjd13ZpSH4TXFHh93j4jGaeAiLX97DsTXUB8gxwINXx9xEbbAl6iXKFwK
         nzRydqphdzpOzvARNnpIm1BspyUUe3UUyueCLg7FZfcAnIbtrzrLbo3CG15OxFKfaUOn
         NMBJ+C/ha0kGIXDl4cMaxidqynHMPZvJzNk7Kz+COGMHKqzkCiT9QrRMpPAJClZeI8yN
         33kyc9JzOYip+E7ceoBL+dV+5hKXL+QM/7vs5/fYGkZtqp3d3wcDzMyBjN2595lDKwwf
         UegQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703613482; x=1704218282;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eYH7udRxVOWUuYR1uviT4nzog+O468I+tsZ16QY52lY=;
        b=DVjRKrtx/7bsRmmrWb5/3ko+AphuV0wF3sgLRWzjIK+bvf5K30yrgQb7yIsJxoMft2
         GqE4mKyu9Sv+iLW86wyDvohevLye/16UrByjFOedf8RLYPfIJUJB1gSo7/fVpGu2JVPt
         JDeuK9uuw2OfV7cy/QrALrKNWvsu5yGT/q71Xpf+EXTzxnN4Nsm9pdenvoh+Kbvof1AW
         7rEOVNDZugE2WQyGzSh+QwXlvZkCtFFoxRCPFQctgZ5GJ7EF89cxl5bwn7fX74vtof85
         7NsJl84Ti/M14iltgnJ/JGnm2+7AhjAmUhDQdws/uxRfbDl1jm8CdlcMkFPFISx5CjrV
         /86g==
X-Gm-Message-State: AOJu0YzmPTgkEc0NF1xG76ZSbWyOUbDOGnGzMhZ8a7jnWhCwd2QN/qpt
	d/l8Uz27fxLYv/3nSZjgerng2O5+FanArc7AsbMIQFDjH/k/yQ==
X-Google-Smtp-Source: AGHT+IF1mJ8zM3mxpNM9KsLehfwPoH0iCOIzFR/lBXLAAhZkeLDmK9jCB4DCOG5yTSpoP8aUapffGpK3Rjo+EEYkWKw=
X-Received: by 2002:ac8:5915:0:b0:427:9fad:896a with SMTP id
 21-20020ac85915000000b004279fad896amr10235427qty.56.1703613481775; Tue, 26
 Dec 2023 09:58:01 -0800 (PST)
MIME-Version: 1.0
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
 <20231130201504.2322355-2-pasha.tatashin@soleen.com> <776e17af-ae25-16a0-f443-66f3972b00c0@google.com>
 <CA+CK2bA8iJ_w8CSx2Ed=d2cVSujrC0-TpO7U9j+Ow-gfk1nyfQ@mail.gmail.com>
 <1fd66377-030c-2e48-e658-4669bbf037e9@google.com> <ZYinEGCdl8mZjmXi@casper.infradead.org>
In-Reply-To: <ZYinEGCdl8mZjmXi@casper.infradead.org>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 26 Dec 2023 12:57:25 -0500
Message-ID: <CA+CK2bDWRN__FBw1N9j9RD3EE+0pca89ASKROA6tK_CGH17gNw@mail.gmail.com>
Subject: Re: [PATCH v2 01/10] iommu/vt-d: add wrapper functions for page allocations
To: Matthew Wilcox <willy@infradead.org>
Cc: David Rientjes <rientjes@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev, 
	baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org, 
	corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org, 
	heiko@sntech.de, iommu@lists.linux.dev, jernej.skrabec@gmail.com, 
	jonathanh@nvidia.com, joro@8bytes.org, krzysztof.kozlowski@linaro.org, 
	linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	lizefan.x@bytedance.com, marcan@marcan.st, mhiramat@kernel.org, 
	m.szyprowski@samsung.com, paulmck@kernel.org, rdunlap@infradead.org, 
	robin.murphy@arm.com, samuel@sholland.org, suravee.suthikulpanit@amd.com, 
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org, 
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, will@kernel.org, 
	yu-cheng.yu@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_095804_907225_9C981650 
X-CRM114-Status: GOOD (  18.21  )
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

T24gU3VuLCBEZWMgMjQsIDIwMjMgYXQgNDo0OOKAr1BNIE1hdHRoZXcgV2lsY294IDx3aWxseUBp
bmZyYWRlYWQub3JnPiB3cm90ZToKPgo+IE9uIFN1biwgRGVjIDI0LCAyMDIzIGF0IDAxOjMwOjUw
UE0gLTA4MDAsIERhdmlkIFJpZW50amVzIHdyb3RlOgo+ID4gPiA+IHMvcGFnZXMvcGFnZS8gaGVy
ZSBhbmQgbGF0ZXIgaW4gdGhpcyBmaWxlLgo+ID4gPgo+ID4gPiBJbiB0aGlzIGZpbGUsIHdoZXJl
IHRoZXJlIGEgcGFnZSB3aXRoIGFuICJvcmRlciIsIEkgcmVmZXJlbmNlIGl0IHdpdGgKPiA+ID4g
InBhZ2VzIiwgd2hlbiBubyBvcmRlciAoaS5lLiBvcmRlciA9IDApLCBJIHJlZmVyZW5jZSBpdCB3
aXRoICJwYWdlIgo+ID4gPgo+ID4gPiBJLmUuOiBfX2lvbW11X2FsbG9jX3BhZ2UgdnMuIF9faW9t
bXVfYWxsb2NfcGFnZXMKPiA+ID4KPiA+Cj4gPiBFaCwgdGhlIHN0cnVjdCBwYWdlIHBvaW50cyB0
byBhIChwb3RlbnRpYWxseSBjb21wb3VuZCkgcGFnZSwgbm90IGEgc2V0IG9yCj4gPiBsaXN0IG9m
IHBhZ2VzLiAgSSB3b24ndCBiaWtlc2hlZCBvbiBpdCwgYnV0ICJzdHJ1Y3QgcGFnZSAqcGFnZXMi
IG5ldmVyCj4gPiBtYWtlcyBzZW5zZSB1bmxlc3MgaXQncyAqKnBhZ2VzIG9yICpwYWdlc1tdIDop
Cj4KPiBJJ2Qgc3VnZ2VzdCB0aGF0ICdwYWdlcycgYWxzbyBtYWtlcyBzZW5zZSB3aGVuIF9ub3Rf
IHVzaW5nIF9fR0ZQX0NPTVAsCj4gYXMgd2UgZG8gaW4gZmFjdCBhbGxvY2F0ZSBhbiBhcnJheSBv
ZiBwYWdlcyBpbiB0aGF0IGNhc2UuCj4KPiBUaGF0IHNhaWQsIHdlIHNob3VsZG4ndCBlbmNvdXJh
Z2UgdGhlIHVzZSBvZiBub24tY29tcG91bmQgYWxsb2NhdGlvbnMuCj4gSXQgd291bGQgYWxzbyBi
ZSBnb29kIGZvciBzb21lb25lIHRvIGRlZmluZSBhIG1lbWRlc2MgZm9yIGlvbW11IG1lbW9yeQo+
IGxpa2Ugd2UgaGF2ZSBhbHJlYWR5IGZvciBzbGFiLiAgV2UnbGwgbmVlZCBpdCBldmVudHVhbGx5
LCBhbmQgaXQnbGwgd29yawo+IG91dCBiZXR0ZXIgaWYgc29tZW9uZSB3aG8gdW5kZXJzdGFuZHMg
aW9tbXVzIChpZSBub3QgbWUpIGRvZXMgaXQuCgpJIHdhcyB0aGlua2luZyBvZiBhZGRpbmcgYW4g
SU9NTVUgcGFnZSB0YWJsZSBtZW1kZXNjLCBhdCBsZWFzdCBieQpzdGFydGluZyB3aXRoIEludGVs
IGltcGxlbWVudGF0aW9uLgoKLSBGb3IgZWZmaWNpZW50IGZyZWVpbmcgb24gcGFnZS11bm1hcCB3
ZSBuZWVkIGEgY291bnRlci4KLSBXZSBtaWdodCBhbHNvIG5lZWQgYSBwZXItcGFnZSBwYWdlIHRh
YmxlIGxvY2tpbmcgKGFrYSBQVEwgdHlwZQpsb2NrKSwgaWYgdGhlIGN1cnJlbnQgYXBwcm9hY2gg
SSBhbSBwcm9wb3NpbmcgaXMgbm90IHNjYWxhYmxlIGVub3VnaC4KLSBBY2Nlc3MgdG8gZGVidWdm
cyAoSSBhbSBzdHVkeWluZyB0aGlzIG5vdykuCgpIb3dldmVyLCBpb21tdSBtZW1kZXNjIHdvdWxk
IHJlYWxseSBtYWtlIHNlbnNlLCBvbmNlIGFsbCB0aGUgdmFyaW91cwpwYWdlIHRhYmxlIG1hbmFn
ZW1lbnQgSU9NTVUgaW1wbGVtZW50YXRpb25zIGFyZSB1bmlmaWVkLgoKUGFzaGEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
