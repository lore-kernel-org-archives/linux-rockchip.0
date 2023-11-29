Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5FBDC46CA3
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 00:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HT69WyQUUhKM706ADMs+2BaPdiqyTltlrc4Ju8SE2f8=; b=ayo9WAJdKsomUZ
	2TbysKqeuaJkRjU5oMisN7HeeXpywltQ34G2U9g9Os4QUsMuYWuqf9NZehT3GwG05kqEykmKcbEB5
	p3HVC+B+v/ywEHI/qIJE2MD/cQO/ePMdhNrC6fmst+NQZQmKW4mi3ONd/LUeCPYnTSQYUGjrZq2PH
	y39o25A00vxZxUBqWjWPTnBWMhT4WJMYCpFHUOe+7dsRvvbRLNCSivQFKTDJC/cRRtbBYEDlccSwv
	zvuiGlRmpXoBvQA1Dm0fdGAyTQ2+JmiWZLtySuIF2LiAF3zpca1srfUBIa6UODDnroSQ9hT7QuR1x
	IEoaBbAz5+qci1bXRhAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r88qv-006jgH-2A;
	Wed, 29 Nov 2023 00:54:57 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r88qr-006jeR-2z
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 00:54:56 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-1fa289a3b6aso2221002fac.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 16:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1701219291; x=1701824091; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KD7A1Mi78WcdpTbacYeqydWRhhJC6MIZ9wADFHK3ceE=;
        b=dVhn48ashxOwhheNv1aXui6jrslEhZRIeJaYbDW7oxTdGY/WesB1z171DWKJLW4X7N
         0jlHRrpOQpLqC8eeUMtghKciAPmMJ96e3jS0jHq0aOvX04sffP6dzZdSui/xp3Q2HYC8
         QIH19N938gma0cTAJh/nPyDbJvPglJMN0i0Y0q/b6B4HOD1+ZK9iybGUcvby0kFqg+Uh
         Lw6K2wRLw+xkAu9H4C7DGuwRRIR59c9Elvv4PTkcBimXdCiJz3xd0uUsehFAyqDkKUf2
         9Vmdamucf5K6Rsv1spOz9iKrZgKOobZpZZK2PHJcu4olXMLmdjbCwkmDB7R0Fln9b3Tc
         Ug5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701219291; x=1701824091;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KD7A1Mi78WcdpTbacYeqydWRhhJC6MIZ9wADFHK3ceE=;
        b=tyRvIy/79vN/x6toHxfnjNlRSVNeIAJ1aLiYsjROS+PO4dGdGbvKYyL/aFIGH0Vg34
         AvPYY4OgTn0+Y34mtJzohE1RUiuiTmWSWxL4MZJRtcljw4i7TKisVtjRfhE7S/zkctoN
         2ZhC9KLOhMp2BCVNLCXqTu8fY6hdPjkzpw2Vm+XY+9Gus7Hc4ALVUI6U1LMxB2zDDqcT
         J6Ehd7UevmrgRP+1HBm2zDto48KuQQfDdfK4Ih0jcgOX9OVSTfWWzm4IdbueogLfxBDH
         OO9C96W+33z3pfVvZrCkstVGaHtBPpIPsPcQ4uLjzqc/8Rb0CTVVoOgNzArd971FEUIT
         U2Ew==
X-Gm-Message-State: AOJu0YzsIDOSBM1UzGTHFxX8Ird44rJuwWEkX3n+doSBDH0Gf/FQW874
	2C16GYuAkux8x2uUKIhbtVSgKA==
X-Google-Smtp-Source: AGHT+IGKiwEuykqxh29J1y1VqvKSA4pC1uEUHtE7SoQBvdHo0iXpRqPiFg8DX/ZmKtSwphh/2Jx77g==
X-Received: by 2002:a05:6870:c690:b0:1fa:2f8:c734 with SMTP id cv16-20020a056870c69000b001fa02f8c734mr16951479oab.5.1701219291679;
        Tue, 28 Nov 2023 16:54:51 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-134-23-187.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.134.23.187])
        by smtp.gmail.com with ESMTPSA id b1-20020a056830344100b006d81e704023sm945291otu.2.2023.11.28.16.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 16:54:51 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1r88qo-005kIY-2m;
	Tue, 28 Nov 2023 20:54:50 -0400
Date: Tue, 28 Nov 2023 20:54:50 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Yosry Ahmed <yosryahmed@google.com>
Cc: Pasha Tatashin <pasha.tatashin@soleen.com>, akpm@linux-foundation.org,
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
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com,
	samuel@sholland.org, suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org,
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com,
	virtualization@lists.linux.dev, wens@csie.org, will@kernel.org,
	yu-cheng.yu@intel.com
Subject: Re: [PATCH 00/16] IOMMU memory observability
Message-ID: <20231129005450.GH1312390@ziepe.ca>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <CAJD7tkb1FqTqwONrp2nphBDkEamQtPCOFm0208H3tp0Gq2OLMQ@mail.gmail.com>
 <CA+CK2bB3nHfu1Z6_6fqN3YTAzKXMiJ12MOWpbs8JY7rQo4Fq0g@mail.gmail.com>
 <CAJD7tkZZNhf4KGV+7N+z8NFpJrvyeNudXU-WdVeE8Rm9pobfgQ@mail.gmail.com>
 <20231128235214.GD1312390@ziepe.ca>
 <CAJD7tkbbq6bHtPn7yE3wSS693OSthh1eBDvF-_MWZfDMXDYPKw@mail.gmail.com>
 <20231129002826.GG1312390@ziepe.ca>
 <CAJD7tkbxhK7XFcf7h+XE2poNuOsFBQFrxZyeFr=9DoEG_acssA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJD7tkbxhK7XFcf7h+XE2poNuOsFBQFrxZyeFr=9DoEG_acssA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_165453_964761_112AE8FE 
X-CRM114-Status: GOOD (  23.82  )
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

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgMDQ6MzA6MjdQTSAtMDgwMCwgWW9zcnkgQWhtZWQgd3Jv
dGU6Cj4gT24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgNDoyOOKAr1BNIEphc29uIEd1bnRob3JwZSA8
amdnQHppZXBlLmNhPiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUsIE5vdiAyOCwgMjAyMyBhdCAwNDoy
NTowM1BNIC0wODAwLCBZb3NyeSBBaG1lZCB3cm90ZToKPiA+Cj4gPiA+ID4gPiBSaWdodCwgYnV0
IGFzIEkgbWVudGlvbiBhYm92ZSwgaWYgdXNlcnNwYWNlIHN0YXJ0cyBkZXBlbmRpbmcgb24gdGhp
cwo+ID4gPiA+ID4gZXF1YXRpb24sIHdlIHdvbid0IGJlIGFibGUgdG8gYWRkIGFueSBtb3JlIGNs
YXNzZXMgb2YgInNlY29uZGFyeSIgcGFnZQo+ID4gPiA+ID4gdGFibGVzIHRvIFNlY1BhZ2VUYWJs
ZXMuIEknZCBsaWtlIHRvIGF2b2lkIHRoYXQgaWYgcG9zc2libGUuIFdlIGNhbiBkbwo+ID4gPiA+
ID4gdGhlIHN1YnRyYWN0aW9uIGluIHRoZSBrZXJuZWwuCj4gPiA+ID4KPiA+ID4gPiBXaGF0IFNl
YW4gaGFkIHN1Z2dlc3RlZCB3YXMgdGhhdCBTZWNQYWdlVGFibGVzIHdhcyBhbHdheXMgaW50ZW5k
ZWQgdG8KPiA+ID4gPiBhY2NvdW50IGFsbCB0aGUgbm9uLXByaW1hcnkgbW11IG1lbW9yeSB1c2Vk
IGJ5IHBhZ2UgdGFibGVzLiBJZiB0aGlzIGlzCj4gPiA+ID4gdGhlIGNhc2Ugd2Ugc2hvdWxkbid0
IGJlIHRyeWluZyB0byBicmVhayBpdCBhcGFydCBpbnRvIGZpbmVyCj4gPiA+ID4gY291bnRlcnMu
IFRoZXNlIGFyZSBiaWcgcGljdHVyZSBjb3VudGVycywgbm90IGRldGFpbGVkIGFsbG9jYXRpb24g
YnkKPiA+ID4gPiBvd25lciBjb3VudGVycy4KPiA+ID4KPiA+ID4gUmlnaHQsIEkgYWdyZWUgd2l0
aCB0aGF0LCBidXQgaWYgU2VjUGFnZVRhYmxlcyBpbmNsdWRlcyBwYWdlIHRhYmxlcwo+ID4gPiBm
cm9tIG11bHRpcGxlIHNvdXJjZXMsIGFuZCBpdCBpcyBvYnNlcnZlZCB0byBiZSBzdXNwaWNpb3Vz
bHkgaGlnaCwgdGhlCj4gPiA+IGxvZ2ljYWwgbmV4dCBzdGVwIGlzIHRvIHRyeSB0byBmaW5kIHRo
ZSBjdWxwcml0LCByaWdodD8KPiA+Cj4gPiBZb3UgY2FuIG1ha2UgdGhhdCBjYXNlIGFscmVhZHks
IGlmIGl0IGlzIGhpZ2ggd291bGRuJ3QgeW91IHdhbnQgdG8KPiA+IGZpbmQgdGhlIGV4YWN0IFZN
TSBwcm9jZXNzIHRoYXQgd2FzIG1ha2luZyBpdCBoaWdoPwo+ID4KPiA+IEl0IGlzIGEgc2lnbiBv
ZiBmaXJlLCBub3QgYSBkZXRhaWxlZCBkZWJ1ZyB0b29sLgo+IAo+IEZhaXIgZW5vdWdoLiBXZSBj
YW4gYWx3YXlzIGFkZCBzZXBhcmF0ZSBjb3VudGVycyBsYXRlciBpZiBuZWVkZWQsCj4gcG90ZW50
aWFsbHkgdW5kZXIgS1ZNIHN0YXRzIHRvIGdldCBtb3JlIGZpbmUtZ3JhaW5lZCBkZXRhaWxzIGFz
IHlvdQo+IG1lbnRpb25lZC4KPiAKPiBJIGFtIG9ubHkgd29ycmllZCBhYm91dCB1c2VycyBzdWJ0
cmFjdGluZyB0aGUgaW9tbXUtb25seSBjb3VudGVyIHRvCj4gZ2V0IGEgS1ZNIGNvdW50ZXIuIFdl
IHNob3VsZCBhdCBsZWFzdCBkb2N1bWVudCB0aGF0ICBTZWNQYWdlVGFibGVzIG1heQo+IGJlIGV4
cGFuZGVkIHRvIGluY2x1ZGUgb3RoZXIgc291cmNlcyBsYXRlciB0byBhdm9pZCB0aGF0LgoKV2Vs
bCwgd2UganVzdCBicm9rZSBpdCBhbHJlYWR5LCBhbnlvbmUgdGhpbmtpbmcgaXQgd2FzIG9ubHkg
a3ZtCmNvdW50ZXJzIGlzIGdvaW5nIHRvIGJlIHNhZCBub3cgOikgQXMgSSB1bmRlcnN0YW5kIGl0
IHdhcyBhbHJlYWR5CmRlc2NyaWJlZCB0byBiZSBtb3JlIGdlbmVyYWwgdGhhdCBrdm0gc28gcHJv
YmFibHkgbm90aGluZyB0byBkbyByZWFsbHkKCkphc29uCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
