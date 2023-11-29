Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76218C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 20:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FTP7HyVIJtV8xupqA4gLJL1DJnNYhfzjowYonsw6xfo=; b=OQpreDmVVQHI1O
	wbtVTWQ+Za4RddqhWvN5Md4LpQiFEBGds5EvrvjNxx43I6j4a2VCMUj+ca5zgWdULgwMY157jn8RM
	50Xm35/BNeuoxRYQiBoE7RO2SfCZvgMMM6aRUBkG6kVfeOtYnv2+zPsgr1GOZcW5cRvvC6SJmF5cK
	0SXk/caOvU/zcYNprN5XOKXDOTMwhXqLS+eQ02b6sWZASzKvGHyBKIKG4dE2Q/KThZM1hJElK2zym
	9JHt50mAr+/GJgIx09aKWPXDk7qvHuThCUGZuaTeO+PdpsW5BejZ+kcpCPICeEDuFY8vf9aWD2I56
	Wa5btIQrFSd1kygHUX0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8RQj-009GvY-2m;
	Wed, 29 Nov 2023 20:45:09 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8RQg-009Gsm-0f
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 20:45:08 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507bd19eac8so365505e87.0
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Nov 2023 12:45:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701290700; x=1701895500; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tlZYiStM5KCC7J/v+177rjHqt9KWJCfJWFMkelab9t4=;
        b=kpt4WmZbBw9OHJXjhKDoAzdCleS5t3cQyLYvNRW3yEpYZOBF0YrZ7tvCXwEureqUMh
         dxdIwMLuSTqhdfiI9iCItXC1uv/uWvj+AkmYb+oWNew/nsuVJ8jmeR9FTNgt0vnY4Q57
         BbdrxO2CsyUXh38mFzznIhzu4vUiRhxuTFbZUpgl37G3dAMu+tOFnPWg/WrTjHCNHn4v
         rETpUHlaoCiPgBqL9sdxFyXjJdC5FS9iHth6Hi18hn2f5NUgFejkuxYOP2+RpJV80rwe
         5d7Hv0NBx7c3QolPkzvmb3vdFNhuV/zmhRyFnwVYLnnxCPFYWMczdEn5g+g9kStvAKJE
         bsLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701290700; x=1701895500;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tlZYiStM5KCC7J/v+177rjHqt9KWJCfJWFMkelab9t4=;
        b=Sh0kH7uc1Aq+tXycZXsf/DBuLdnlgjauIM+qAPVmrp+EvCy0a4A/+yzjT/00dO59V5
         +ePtUYLa2Dz7a0Db3c9DF+CVi6I4sTH10O1fqENZGt6JkLs/QrnBwazcELFJlCgT7+ct
         pmneZTTHS6dJz/Ye3mMZwWhjWkCkCmmd0mtCX7e/JxiNg8wSMXMNyJ2jexNmqrRlmFKp
         qU16oBh6rr0bsSbXLtfuyWLlt4s1YUYgewzEgR5lQ0m2M/YHi/WAnuvvRmvyawmzyKuB
         tIpWNqn11qJ5Di62qfb9tlCxRbteSj1bX4AfOSHfVU7fDU5CWcJwqa5fwETeYF4qaRgG
         m66g==
X-Gm-Message-State: AOJu0Yzg4cId6Z3zsAMJysvrBtq/eviATCIf4iKHeAZSxkCRi6MB1dNM
	p6Jsg8rtvsNez4PFbg/yExVxD/WMFsJoy/4YIdxPiQ==
X-Google-Smtp-Source: AGHT+IGMB2fUN71OTthlqnqBV10GCXDIRhuYgMFmlKYXWcCU4XgzYTup+BcRc5IJEjmMB4Fgw8Ibq0j5FX6Di+vVaiM=
X-Received: by 2002:ac2:4a6f:0:b0:50b:cb50:401 with SMTP id
 q15-20020ac24a6f000000b0050bcb500401mr153882lfp.34.1701290700342; Wed, 29 Nov
 2023 12:45:00 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-9-pasha.tatashin@soleen.com> <1c6156de-c6c7-43a7-8c34-8239abee3978@arm.com>
 <CA+CK2bCOtwZxTUS60PHOQ3szXdCzau7OpopgFEbbC6a9Frxafg@mail.gmail.com>
 <20231128235037.GC1312390@ziepe.ca> <52de3aca-41b1-471e-8f87-1a77de547510@arm.com>
 <CA+CK2bCcfS1Fo8RvTeGXj_ejPRX9--sh5Jz8nzhkZnut4juDmg@mail.gmail.com> <20231129200305.GI1312390@ziepe.ca>
In-Reply-To: <20231129200305.GI1312390@ziepe.ca>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 29 Nov 2023 15:44:21 -0500
Message-ID: <CA+CK2bA05Bh+H4qsP7ZM6ZcnBXu64frEfpCDYZuLOQ4UxJC4EA@mail.gmail.com>
Subject: Re: [PATCH 08/16] iommu/fsl: use page allocation function provided by iommu-pages.h
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Robin Murphy <robin.murphy@arm.com>, akpm@linux-foundation.org, 
	alex.williamson@redhat.com, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
	asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com, 
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com, 
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, 
	iommu@lists.linux.dev, jasowang@redhat.com, jernej.skrabec@gmail.com, 
	jonathanh@nvidia.com, joro@8bytes.org, kevin.tian@intel.com, 
	krzysztof.kozlowski@linaro.org, kvm@vger.kernel.org, 
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
X-CRM114-CacheID: sfid-20231129_124506_245379_76010743 
X-CRM114-Status: GOOD (  20.01  )
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

T24gV2VkLCBOb3YgMjksIDIwMjMgYXQgMzowM+KAr1BNIEphc29uIEd1bnRob3JwZSA8amdnQHpp
ZXBlLmNhPiB3cm90ZToKPgo+IE9uIFdlZCwgTm92IDI5LCAyMDIzIGF0IDAyOjQ1OjAzUE0gLTA1
MDAsIFBhc2hhIFRhdGFzaGluIHdyb3RlOgo+Cj4gPiA+IHNhbWUga2luZCBvZiBiaWcgc3lzdGVt
cyB3aGVyZSBJT01NVSBwYWdldGFibGVzIHdvdWxkIGJlIG9mIGFueSBjb25jZXJuLgo+ID4gPiBJ
IGJlbGlldmUgc29tZSBvZiB0aGUgc29tZSBvZiB0aGUgInNlcmlvdXMiIE5JQ3MgY2FuIGVhc2ls
eSBydW4gdXAKPiA+ID4gaHVuZHJlZHMgb2YgbWVnYWJ5dGVzIGlmIG5vdCBnaWdhYnl0ZXMgd29y
dGggb2YgcXVldWVzLCBTS0IgcG9vbHMsIGV0Yy4KPiA+ID4gLSB3b3VsZCB5b3UgcHJvcG9zZSBh
Y2NvdW50aW5nIHRob3NlIHRvbz8KPiA+Cj4gPiBZZXMuIEFueSBraW5kIG9mIGtlcm5lbCBtZW1v
cnkgdGhhdCBpcyBwcm9wb3J0aW9uYWwgdG8gdGhlIHdvcmtsb2FkCj4gPiBzaG91bGQgYmUgYWNj
b3VudGFibGUuIFNvbWVvbmUgaXMgdXNpbmcgdGhvc2UgcmVzb3VyY2VzIGNvbXBhcmVkIHRvCj4g
PiB0aGUgaWRsaW5nIHN5c3RlbSwgYW5kIHRoYXQgc29tZW9uZSBzaG91bGQgYmUgY2hhcmdlZC4K
Pgo+IFRoZXJlIGlzIGEgZGlmZmVyZW5jZSBiZXR3ZWVuIGNoYXJnZWQgYW5kIGFjY291bnRlZAo+
Cj4gWW91IHNob3VsZCBiZSBydW5uaW5nIGFyb3VuZCBhZGRpbmcgR0ZQX0tFUk5FTF9BQ0NPVU5U
LCB5ZXMuIEkgYWxyZWFkeQo+IGRpZCBhIGJ1bmNoIG9mIHRoYXQgd29yay4gU3BsaXQgdGhhdCBv
dXQgZnJvbSB0aGlzIHNlcmllcyBhbmQgc2VuZCBpdAo+IHRvIHRoZSByaWdodCBtYWludGFpbmVy
cy4KCkkgd2lsbCBkbyB0aGF0LgoKPgo+IEFkZGluZyBhIGNvdW50ZXIgZm9yIGFsbG9jYXRpb25z
IGFuZCBzaG93aW5nIGluIHByb2NmcyBpcyBhIHZlcnkKPiBkaWZmZXJlbnQgcXVlc3Rpb24uIElN
SE8gdGhhdCBzaG91bGQgbm90IGJlIGRvbmUgaW4gbWljcm8sIHRoZQo+IHRocmVzaG9sZCB0byBh
ZGQgYSBuZXcgY291bnRlciBzaG91bGQgYmUgaGlnaC4KCkkgYWdyZWUsIC9wcm9jL21lbWluZm8s
IHNob3VsZCBub3QgaW5jbHVkZSBldmVyeXRoaW5nLCBob3dldmVyIG92ZXJhbGwKbmV0d29yayBj
b25zdW1wdGlvbiB0aGF0IGluY2x1ZGVzIG1lbW9yeSBhbGxvY2F0ZWQgYnkgbmV0d29yayBkcml2
ZXIKd291bGQgYmUgdXNlZnVsIHRvIGhhdmUsIG1heSBiZSBpdCBzaG91bGQgYmUgZXhwb3J0ZWQg
YnkgZGV2aWNlCmRyaXZlcnMgYW5kIGFkZGVkIHRvIHRoZSBwcm90b2NvbCBtZW1vcnkuIFdlIGFs
cmVhZHkgaGF2ZSBuZXR3b3JrCnByb3RvY29sIG1lbW9yeSBjb25zdW1wdGlvbiBpbiBwcm9jZnM6
CgojIGF3ayAne3ByaW50ZiAiJS0xMHMgJXNcbiIsICQxLCAkNH0nIC9wcm9jL25ldC9wcm90b2Nv
bHMgfCBncmVwICAtdiAnXC0xJwpwcm90b2NvbCAgIG1lbW9yeQpVRFB2NiAgICAgIDIyNjczClRD
UHY2ICAgICAgMTY5NjEKCj4gVGhlcmUgaXMgZGVmaW5hdGVseSByb29tIGZvciBhIGdlbmVyaWMg
ZGVidWdnaW5nIGZlYXR1cmUgdG8gYnJlYWsgZG93bgo+IEdGUF9LRVJORUxfQUNDT1VOVCBieSBv
d2VybnNoaXAgc29tZWhvdy4gTWF5YmUgaXQgY2FuIGFscmVhZHkgYmUgZG9uZQo+IHdpdGggQlBG
LiBJREsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
