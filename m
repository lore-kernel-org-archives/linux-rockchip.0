Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC010C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 00:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkrfnbD/VNlb5fGHETEzi7EKSKKGGo/dA4RHN8nHkCU=; b=F5Ef+ZW5JTHzFN
	G3kprnegsIcEOfHH6hESFE+9/oclEZ0pNYu78ST3QR356rlgf3f9bX4PWl05TyyqRmr4Z4HRIuxyZ
	pceLFmCgWXJaxd20r/TtBUtVL6y6X5uiQdOAhf1sME2moZD1qE73PdCpZ62Tg99BVgXPzxlQHyJqj
	XtBr+0RLCM7Or0+ClBgvTr6hukF3B5cQQLUuIzG/OFedezk43Hd9Ad00LdeT6e3uugA+0TR0WSMWl
	tAomCGKE6zb+0HaQQpex3MSI0b1BReKnUc/4ivtMDEoh5iF8q0fv+Z9GL5EkJDswgvpiQ3ctbc8V4
	ao5cd5ZwCmqC4SlgNDZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r88Ok-006fZ7-2H;
	Wed, 29 Nov 2023 00:25:50 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r88Of-006fX4-1l
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 00:25:48 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a00a9c6f283so828094066b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 16:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1701217542; x=1701822342; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s79KKQuQOw+McryaEibHTjOFNeepmOvGc+6XuFBzp3c=;
        b=4ggwirS+KjJD1WFv0jBqaviS3XVUDryL6EIwe1BtFcYbiOK23iu8N3MKfpkETC2gaD
         HsHjb11LiZV1xTkFgxYLc5a0+v4LlpAGe0sSSxl1kp8SunLTblQXVsnJu4GDdynqgkJ8
         7i66YOpJ4w50bBYrCMNRAxGHhxNyfQPsGOfdhE3qP+mQuDnCmEUd2iU3AAR0JV4jJp/2
         vptKB9J1Tv9fA4HuAjoiCiZBtBu0/Q4OhelaAoHDpcVA+v6xsdRuO98pmI1WjMgBLueD
         amduXnrB16q7OioLK8a99py0nDIG9lbuu1dqqlFJx25AZBXEzA4AUVW9ZsHYp35sDmNC
         D6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701217542; x=1701822342;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s79KKQuQOw+McryaEibHTjOFNeepmOvGc+6XuFBzp3c=;
        b=HkiNTrsAymPU1F91PX84kk5z/TBoFTImvCEdxLT1/hWq+8w5VGoNqWiFHRsIuiZ7Ma
         Sr6+74BrvNrMBIoDYEbk7v3hjGi/4Is8ebsIHOA07pT0j8ci34zTCuU16ca7gTbdXKVu
         9SeeOREmrLwuoIcnA7lKGStNKmdCs8BZeqdqwdGdyffTDfcPabXpHRuObK8igYxzEP45
         cRlEqyBzVqeiDNX7bunEW2+Y2XxHP/ncs1n6+SgxCiU/FNkDXi/TAkU2vGC8PhI5adAY
         aBA+7/agybv3pvV4DIbNPPsudcjxMqSWgEXlJU63CkRUpCybLtJd6lHg4M5g3ElDv9/x
         u1ew==
X-Gm-Message-State: AOJu0YwA68JJECIedI6BMtw10o/Hbqk0QbjYE2qbPsHm6QWkOvRpxyGw
	PkcnDWBCLpFQkwrJBFNRt8RNjDzyIk7iHZhS61j/2g==
X-Google-Smtp-Source: AGHT+IFhvJD8pcFDSUkXj7rCXo1krioxrjZU+Fh9ydxhF7LIckb5ecLVgf1lGuB42STpvzRSm1nEjeoSzXAsfJKhmOQ=
X-Received: by 2002:a17:906:1091:b0:a0c:c09f:65fe with SMTP id
 u17-20020a170906109100b00a0cc09f65femr7312731eju.38.1701217542589; Tue, 28
 Nov 2023 16:25:42 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <CAJD7tkb1FqTqwONrp2nphBDkEamQtPCOFm0208H3tp0Gq2OLMQ@mail.gmail.com>
 <CA+CK2bB3nHfu1Z6_6fqN3YTAzKXMiJ12MOWpbs8JY7rQo4Fq0g@mail.gmail.com>
 <CAJD7tkZZNhf4KGV+7N+z8NFpJrvyeNudXU-WdVeE8Rm9pobfgQ@mail.gmail.com> <20231128235214.GD1312390@ziepe.ca>
In-Reply-To: <20231128235214.GD1312390@ziepe.ca>
From: Yosry Ahmed <yosryahmed@google.com>
Date: Tue, 28 Nov 2023 16:25:03 -0800
Message-ID: <CAJD7tkbbq6bHtPn7yE3wSS693OSthh1eBDvF-_MWZfDMXDYPKw@mail.gmail.com>
Subject: Re: [PATCH 00/16] IOMMU memory observability
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Pasha Tatashin <pasha.tatashin@soleen.com>, akpm@linux-foundation.org, 
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
	robin.murphy@arm.com, samuel@sholland.org, suravee.suthikulpanit@amd.com, 
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org, 
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, virtualization@lists.linux.dev, 
	wens@csie.org, will@kernel.org, yu-cheng.yu@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_162545_607550_E78A1F66 
X-CRM114-Status: GOOD (  17.17  )
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

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgMzo1MuKAr1BNIEphc29uIEd1bnRob3JwZSA8amdnQHpp
ZXBlLmNhPiB3cm90ZToKPgo+IE9uIFR1ZSwgTm92IDI4LCAyMDIzIGF0IDAzOjAzOjMwUE0gLTA4
MDAsIFlvc3J5IEFobWVkIHdyb3RlOgo+ID4gPiBZZXMsIGFub3RoZXIgY291bnRlciBmb3IgS1ZN
IGNvdWxkIGJlIGFkZGVkLiBPbiB0aGUgb3RoZXIgaGFuZCBLVk0KPiA+ID4gb25seSBjYW4gYmUg
Y29tcHV0ZWQgYnkgc3VidHJhY3Rpbmcgb25lIGZyb20gYW5vdGhlciBhcyB0aGVyZSBhcmUgb25s
eQo+ID4gPiB0d28gdHlwZXMgb2Ygc2Vjb25kYXJ5IHBhZ2UgdGFibGVzLCBLVk0gYW5kIElPTU1V
Ogo+ID4gPgo+ID4gPiAvc3lzL2RldmljZXMvc3lzdGVtL25vZGUvbm9kZTAvbWVtaW5mbwo+ID4g
PiBOb2RlIDAgU2VjUGFnZVRhYmxlczogICAgNDIyMjA0IGtCCj4gPiA+Cj4gPiA+ICAvc3lzL2Rl
dmljZXMvc3lzdGVtL25vZGUvbm9kZU4vdm1zdGF0Cj4gPiA+IG5yX2lvbW11X3BhZ2VzIDEwNTU1
NQo+ID4gPgo+ID4gPiBLVk0gb25seSA9IFNlY1BhZ2VUYWJsZXMgLSBucl9pb21tdV9wYWdlcyAq
IFBBR0VfU0laRSAvIDEwMjQKPiA+ID4KPiA+Cj4gPiBSaWdodCwgYnV0IGFzIEkgbWVudGlvbiBh
Ym92ZSwgaWYgdXNlcnNwYWNlIHN0YXJ0cyBkZXBlbmRpbmcgb24gdGhpcwo+ID4gZXF1YXRpb24s
IHdlIHdvbid0IGJlIGFibGUgdG8gYWRkIGFueSBtb3JlIGNsYXNzZXMgb2YgInNlY29uZGFyeSIg
cGFnZQo+ID4gdGFibGVzIHRvIFNlY1BhZ2VUYWJsZXMuIEknZCBsaWtlIHRvIGF2b2lkIHRoYXQg
aWYgcG9zc2libGUuIFdlIGNhbiBkbwo+ID4gdGhlIHN1YnRyYWN0aW9uIGluIHRoZSBrZXJuZWwu
Cj4KPiBXaGF0IFNlYW4gaGFkIHN1Z2dlc3RlZCB3YXMgdGhhdCBTZWNQYWdlVGFibGVzIHdhcyBh
bHdheXMgaW50ZW5kZWQgdG8KPiBhY2NvdW50IGFsbCB0aGUgbm9uLXByaW1hcnkgbW11IG1lbW9y
eSB1c2VkIGJ5IHBhZ2UgdGFibGVzLiBJZiB0aGlzIGlzCj4gdGhlIGNhc2Ugd2Ugc2hvdWxkbid0
IGJlIHRyeWluZyB0byBicmVhayBpdCBhcGFydCBpbnRvIGZpbmVyCj4gY291bnRlcnMuIFRoZXNl
IGFyZSBiaWcgcGljdHVyZSBjb3VudGVycywgbm90IGRldGFpbGVkIGFsbG9jYXRpb24gYnkKPiBv
d25lciBjb3VudGVycy4KClJpZ2h0LCBJIGFncmVlIHdpdGggdGhhdCwgYnV0IGlmIFNlY1BhZ2VU
YWJsZXMgaW5jbHVkZXMgcGFnZSB0YWJsZXMKZnJvbSBtdWx0aXBsZSBzb3VyY2VzLCBhbmQgaXQg
aXMgb2JzZXJ2ZWQgdG8gYmUgc3VzcGljaW91c2x5IGhpZ2gsIHRoZQpsb2dpY2FsIG5leHQgc3Rl
cCBpcyB0byB0cnkgdG8gZmluZCB0aGUgY3VscHJpdCwgcmlnaHQ/Cgo+Cj4gSmFzb24KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
