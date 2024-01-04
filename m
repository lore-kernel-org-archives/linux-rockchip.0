Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F352C47074
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 19:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DM1ZmktWTbhPkASPKbr6dZdZlRrgeLp9yO8sF5RTvQE=; b=kuujltgZKfPWEm
	nKY+lOHP4kdtSS6Hkg9Hm9MU1T3N9VlYZKKFcj8wFHL1DbS2LhMQR2dSJ9nCw1e0DT8sfj2xattbe
	YHbYgg+w4a6Xu++QSKTfQoQK8K9RgH+4U98+snuiCeRBbchBv0JOsuvfPVPqC1gCUPv9wQjk7JhV5
	aXmWIUzMv3eAHvD35TDFp0JMGFvWCaVMlQ6L91IGBps58l5VtmJn5KiZtrr0M8z8rTcxbfSyd5ZnA
	TK+mkbKFkIxCv/RkkQmThPqjAa88WBH31eOq0vkxyilH5X3qfYUxcw0siCYpW8g8x/StXKXFxEqyR
	B6reoxHvJKxd45l1h2AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLT9R-00F2cj-0E;
	Thu, 04 Jan 2024 19:13:09 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLT9O-00F2ZH-17
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jan 2024 19:13:07 +0000
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-595f8f7efbbso461099eaf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jan 2024 11:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1704395583; x=1705000383; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/+vYEuDAPJ/iEdESxX2pInRN4g9EPXyQ5h9FSdd/4u4=;
        b=MZYTNzJ+8NdnSUS2AqmQHsfLR2f9uxR6wDf/lukCkBFlufV/sUqnY/scFHdof48mjZ
         FkR4bDtpeV3J6wc5nzyop6aaGOlMNTy8O9qAxWrrQ76d5j2CsOrtkB7JcZTXf/70E5W3
         /yIBScYEuk2805Kb8/7If2AARrkWoMFJ1qYJRcJh7NoAWw4un81IBnWwk++7X/TFFkaA
         TOjRNKdUmFo5wiNz+LPRFAfWy+HxBnNAM9xJYf0Ptz8t33F7HIaoDnA2DW+CFCKIRdmc
         C6RNzaru2LLToxPlxczwVD++rs+2EpoCC4LAD8Ihci3NCflii71DTeeOU8YIm47GghTH
         KoYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704395583; x=1705000383;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/+vYEuDAPJ/iEdESxX2pInRN4g9EPXyQ5h9FSdd/4u4=;
        b=wm8XMyYJscxupRNAlr8GNpDZSdG8n7qhgef5CWwP6uz/CB/NGWGyBUn2dCNIeVgfnv
         Xq6lacvSq88gjBKGo2nZIYBIJ2qCbfoMtoN46As8f1oXOrtR7V8alEUE0BS8/VbR/v+H
         aOJTLytduwtR3f0Medy8okSFeUHSRl02CLC3le/s6g1QTqFCVSy7XzyIgu2N7dbK1ZPU
         TZYJN7kQwtJ3pTPWeud/7ME3/XydmvB1K1CCIXjawxJBFmtBtgTnAQb9sKjmYbmhg2Xz
         yCoOYlyFQwJgYkfXzY26NcLOMxd9g8J1RwlVvl148zbMCxlJVsJIXz0xmgkiNCqoQay6
         57hg==
X-Gm-Message-State: AOJu0Yy65vuImwhJQ9cACpvJYFJuWb+0kCUISzssHqye2mEUx+oMDatr
	zNbJqfYcYBN1+uyVKg8b225a9q8vAS+9pNXwsr9p4bwRW4JBLA==
X-Google-Smtp-Source: AGHT+IF/5x1qWEeEN53jwIdamLjEry3P/nE1f12xa2taaKft/YlEJdrBP6aDzExJ1bDcrqKpemuFKkiIEAFmrNQGE5k=
X-Received: by 2002:a05:6358:8828:b0:174:b7f2:51db with SMTP id
 hv40-20020a056358882800b00174b7f251dbmr1188037rwb.19.1704395582852; Thu, 04
 Jan 2024 11:13:02 -0800 (PST)
MIME-Version: 1.0
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
 <eqkpplwwyeqqd356ka3g6isaoboe62zrii77krsb7zwzmvdusr@5i3lzfhpt2xe>
 <CA+CK2bBE1bQuqZy3cbWiv8V3vJ8YNJZRayp6Wv-j2_9i37XT4g@mail.gmail.com> <eng4vwaci5hwlicszgcld6uny55vll2bfs3vp2yjbjf3exhamg@zf6yc2uhax7w>
In-Reply-To: <eng4vwaci5hwlicszgcld6uny55vll2bfs3vp2yjbjf3exhamg@zf6yc2uhax7w>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 4 Jan 2024 14:12:26 -0500
Message-ID: <CA+CK2bCUGepLLA2Hsmq00XEhPzLWPb5CjzY_UPT0qWSKastjAQ@mail.gmail.com>
Subject: Re: [PATCH v3 00/10] IOMMU memory observability
To: =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
	asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com, 
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com, 
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, 
	iommu@lists.linux.dev, jernej.skrabec@gmail.com, jonathanh@nvidia.com, 
	joro@8bytes.org, krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
	mhiramat@kernel.org, m.szyprowski@samsung.com, paulmck@kernel.org, 
	rdunlap@infradead.org, robin.murphy@arm.com, samuel@sholland.org, 
	suravee.suthikulpanit@amd.com, sven@svenpeter.dev, thierry.reding@gmail.com, 
	tj@kernel.org, tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, 
	will@kernel.org, yu-cheng.yu@intel.com, rientjes@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_111306_383390_29E8722C 
X-CRM114-Status: GOOD (  17.65  )
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

T24gVGh1LCBKYW4gNCwgMjAyNCBhdCAxMjowNOKAr1BNIE1pY2hhbCBLb3V0bsO9IDxta291dG55
QHN1c2UuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgSmFuIDA0LCAyMDI0IGF0IDExOjI5OjQzQU0g
LTA1MDAsIFBhc2hhIFRhdGFzaGluIDxwYXNoYS50YXRhc2hpbkBzb2xlZW4uY29tPiB3cm90ZToK
PiA+IFRoYW5rIHlvdSBmb3IgdGFraW5nIGEgbG9vayBhdCB0aGlzLiBUaGUgdHdvIHBhdGNoZXMg
WzFdIFsyXSB3aGljaCBhZGQKPiA+IEdGUF9LRVJORUxfQUNDT1VOVCB3ZXJlIHNlbnQgc2VwYXJh
dGUgZnJvbSB0aGlzIHNlcmllcyBhdCByZXF1ZXN0IG9mCj4gPiByZXZpZXdlcnM6Cj4KPiBBaCwg
SSBkaWRuJ3QgY2F0Y2ggdGhhdC4KPgo+IFRob3VnaCwgSSBtZWFuIHRoZSBwYXRjaCAwMi8xMCBj
YWxscyBpb21tdV9hbGxvY19wYWdlcygpIHdpdGggR0ZQX0tFUk5FTAo+IChhbmQgbm90IGEgcGFz
c2VkIGdmcCBmcm9tIGlvbW11X21hcCkuCj4gVGhlbiBwYXRjaCAwOS8xMCBhY2NvdW50cyBhbGwg
aW9tbXVfYWxsb2NfcGFnZXMoKSB1bmRlciBOUl9JT01NVV9QQUdFUy4KPgo+IEkgdGhpbmsgdGhl
cmUgaXMgYSBkaWZmZXJlbmNlIGJldHdlZW4gd2hhdCdzIHNob3duIE5SX0lPTU1VX1BBR0VTIGFu
ZAo+IHdoYXQgd2lsbCBoYXZlIF9fR0ZQX0FDQ09VTlQgYmVjYXVzZSBvZiB0aGF0Lgo+Cj4gSS5l
LiBpcyBpdCB0aGUgaW50ZW50aW9uIHRoYXQgdGhpcyBkaWZmZXJlbmNlIGlzIG5vdCBzdWJqZWN0
IHRvCj4gbGltaXRpbmc/CgpZZXMsIHdlIHdpbGwgaGF2ZSBhIGRpZmZlcmVuY2UgYmV0d2VlbiBH
RlBfQUNDT1VOVCBhbmQgd2hhdApOUl9JT01NVV9QQUdFUyBzaG93cy4gR0ZQX0FDQ09VTlQgaXMg
c2V0IG9ubHkgd2hlcmUgaXQgbWFrZXMgc2Vuc2UgdG8KY2hhcmdlIHRvIHVzZXIgcHJvY2Vzc2Vz
LCBpLmUuIElPTU1VIFBhZ2UgVGFibGVzLCBidXQgdGhlcmUgbW9yZSBJT01NVQpzaGFyZWQgZGF0
YSB0aGF0IHNob3VsZCBub3QgcmVhbGx5IGJlIGNoYXJnZWQgdG8gYSBzcGVjaWZpYyBwcm9jZXNz
LgpUaGUgY2hhcmdlZCBhbmQgdW5jaGFyZ2VkIGRhdGEgd2lsbCBiZSB2aXNpYmxlIHZpYSAvcHJv
Yy92bXN0YXQKbnJfaW9tbXVfcGFnZXMgZmllbGQuCgpQYXNoYQoKPgo+IChOb3RlOiBJJ20gbm90
IGZhbWlsaWFyIHdpdGggaW9tbXUgY29kZSBhbmQgbW9yZW92ZXIgSSdtIG9ubHkgbG9va2luZyBh
dAo+IHRoZSB0d28gcGF0Y2ggc2V0cywgbm90IHRoZSBjb21wbGV0ZSBjb2RlIGFwcGxpZWQuIFNv
IHlvdSBtYXkgY29ycmVjdCBteQo+IHJlYXNvbmluZy4pCj4KPgo+IFRoYW5rcywKPiBNaWNoYWwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
