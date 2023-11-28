Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7FCAC07CA9
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 23:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EL4yKyMJG1Bex+vxS/93YqNK8DB2AjNe2WS07XQHPr4=; b=BTRbQUaL1XEwIZ
	Yewms1DxKmIYa2iJrPAJfrEZUmLy5VZRG8Y/5BrR5kR1y7bnl/NrpnYJeedzW2TooNAe6E5DkJqEH
	Jd5OeXXVpAxhZG3mpJhmUCj+0psCRIEP4n0yL2DrVzTEZXfvzta9YW7A4p6H3FiDVAhqT8c4CxdZ8
	p7//f0b9mdjkCt4bYm2Kcm8otA8bFDYvu803A2T5vuOSCCVfuR9A6U7VBx3999Vq/DlPybLMQI40N
	W7t5NqXQXvMTfhXWAA8dUXNj+eZPU7qU6COirIcGo7Xk83zmUs6BWi0fKr0TfpQBkn0Y37OpSKuqo
	3jKBUtppKe/B/eWvL2QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r877r-006YCQ-37;
	Tue, 28 Nov 2023 23:04:19 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r877o-006Y9p-1X
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 23:04:17 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-58d564b98c9so2252857eaf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 15:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1701212652; x=1701817452; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=43/GorJHph6wZf7ST1s9EfwOKwV7OvTpzkca3ztNxsA=;
        b=l7Wfzxq8xSyKKPKrpN7hBdzc3E28GMq9ciKYrjnYckkYNhZ189o+Vz2asz2+/N3uWB
         F7IDg5GjXq5ewHzVcM631F3kZT5p4R92f/XfPXOw3DzwAwNppjQYtGYLqIk/yIi8RAME
         UQ6L5GPHMln8FZVOhyjhTbe3Y3QY4hWTHNuo9emLIftcxiFi71t4u1g5FDA6ICZu3qax
         VqTlEnfw55HwZl19T1sktn5Nyab9AHtwqO9vJV2DSd3kj751WX/Wi055qCtSaLzl4WZi
         leVG/EQ7HlY/B9fjOLHghQAWF7+OGa3BM8I+BPPqt1BO9nOecnY/ggvBh2PbtQnJaWI5
         7RRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701212652; x=1701817452;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=43/GorJHph6wZf7ST1s9EfwOKwV7OvTpzkca3ztNxsA=;
        b=ED41ja4VuBvpa+dklSaEELik5nHWdSEhYIWSpcFPKNMfYjDAAfkJwzPhKBatTrwJFE
         Ko5bnf6sVKVsPehqpdmUpXyuL4NfrZBf+s7cQqqxNu2yfqN4k7Lc24SkvsG9iPZgL4ad
         7lMXS79or6UoxyhvtltOn40gbOrvEOl2nboEJ4NUjD+al/yiPK4Ed56kz4emCQmlDWdK
         gt6IA13zjFgbX6fm5BuA+07rICeG5vSV9QebW1C/LwUVfFe8i5OzrksbsUR2KFXE7vaR
         jq3kbHl5NKIsx7JBtgV2wglJcesxmk+pxdJCDMOVlGhy1quQOj6ubfSM7MvJ1X5ivwwm
         oabw==
X-Gm-Message-State: AOJu0YzPOAlu6rPtgoGwNjyaRE5nU+34jKEKfAfgqJgUyiK8YX9EmTI7
	jrMrOxrmjORqlY8bF6o56Sz8uhvC2Ct/x7l6u93h3g==
X-Google-Smtp-Source: AGHT+IGHG/fZ39GpQH7XprtM75RYsFLPLsqrr/P3BS2SaFOkE/NfcmuncSRUnInNrgp9PW0qlhq9u6ZhURJEjUsg//c=
X-Received: by 2002:a05:6359:67a9:b0:16d:bd74:19c9 with SMTP id
 sq41-20020a05635967a900b0016dbd7419c9mr14576065rwb.16.1701212651861; Tue, 28
 Nov 2023 15:04:11 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <CAJD7tkb1FqTqwONrp2nphBDkEamQtPCOFm0208H3tp0Gq2OLMQ@mail.gmail.com> <CA+CK2bB3nHfu1Z6_6fqN3YTAzKXMiJ12MOWpbs8JY7rQo4Fq0g@mail.gmail.com>
In-Reply-To: <CA+CK2bB3nHfu1Z6_6fqN3YTAzKXMiJ12MOWpbs8JY7rQo4Fq0g@mail.gmail.com>
From: Yosry Ahmed <yosryahmed@google.com>
Date: Tue, 28 Nov 2023 15:03:30 -0800
Message-ID: <CAJD7tkZZNhf4KGV+7N+z8NFpJrvyeNudXU-WdVeE8Rm9pobfgQ@mail.gmail.com>
Subject: Re: [PATCH 00/16] IOMMU memory observability
To: Pasha Tatashin <pasha.tatashin@soleen.com>
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
	robin.murphy@arm.com, samuel@sholland.org, suravee.suthikulpanit@amd.com, 
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org, 
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, virtualization@lists.linux.dev, 
	wens@csie.org, will@kernel.org, yu-cheng.yu@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_150416_513682_49CA9541 
X-CRM114-Status: GOOD (  25.37  )
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

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgMjozMuKAr1BNIFBhc2hhIFRhdGFzaGluCjxwYXNoYS50
YXRhc2hpbkBzb2xlZW4uY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgTm92IDI4LCAyMDIzIGF0IDQ6
MzTigK9QTSBZb3NyeSBBaG1lZCA8eW9zcnlhaG1lZEBnb29nbGUuY29tPiB3cm90ZToKPiA+Cj4g
PiBPbiBUdWUsIE5vdiAyOCwgMjAyMyBhdCAxMjo0OeKAr1BNIFBhc2hhIFRhdGFzaGluCj4gPiA8
cGFzaGEudGF0YXNoaW5Ac29sZWVuLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEZyb206IFBhc2hh
IFRhdGFzaGluIDx0YXRhc2hpbkBnb29nbGUuY29tPgo+ID4gPgo+ID4gPiBJT01NVSBzdWJzeXN0
ZW0gbWF5IGNvbnRhaW4gc3RhdGUgdGhhdCBpcyBpbiBnaWdhYnl0ZXMuIE1ham9yaXR5IG9mIHRo
YXQKPiA+ID4gc3RhdGUgaXMgaW9tbXUgcGFnZSB0YWJsZXMuIFlldCwgdGhlcmUgaXMgY3VycmVu
dGx5LCBubyB3YXkgdG8gb2JzZXJ2ZQo+ID4gPiBob3cgbXVjaCBtZW1vcnkgaXMgYWN0dWFsbHkg
dXNlZCBieSB0aGUgaW9tbXUgc3Vic3lzdGVtLgo+ID4gPgo+ID4gPiBUaGlzIHBhdGNoIHNlcmll
cyBzb2x2ZXMgdGhpcyBwcm9ibGVtIGJ5IGFkZGluZyBib3RoIG9ic2VydmFiaWxpdHkgdG8KPiA+
ID4gYWxsIHBhZ2VzIHRoYXQgYXJlIGFsbG9jYXRlZCBieSBJT01NVSwgYW5kIGFsc28gYWNjb3Vu
dGFiaWxpdHksIHNvCj4gPiA+IGFkbWlucyBjYW4gbGltaXQgdGhlIGFtb3VudCBpZiB2aWEgY2dy
b3Vwcy4KPiA+ID4KPiA+ID4gVGhlIHN5c3RlbS13aWRlIG9ic2VydmFiaWxpdHkgaXMgdXNpbmcg
L3Byb2MvbWVtaW5mbzoKPiA+ID4gU2VjUGFnZVRhYmxlczogICAgNDM4MTc2IGtCCj4gPiA+Cj4g
PiA+IENvbnRhaW5zIElPTU1VIGFuZCBLVk0gbWVtb3J5Lgo+ID4gPgo+ID4gPiBQZXItbm9kZSBv
YnNlcnZhYmlsaXR5Ogo+ID4gPiAvc3lzL2RldmljZXMvc3lzdGVtL25vZGUvbm9kZU4vbWVtaW5m
bwo+ID4gPiBOb2RlIE4gU2VjUGFnZVRhYmxlczogICAgNDIyMjA0IGtCCj4gPiA+Cj4gPiA+IENv
bnRhaW5zIElPTU1VIGFuZCBLVk0gbWVtb3J5IG1lbW9yeSBpbiB0aGUgZ2l2ZW4gTlVNQSBub2Rl
Lgo+ID4gPgo+ID4gPiBQZXItbm9kZSBJT01NVSBvbmx5IG9ic2VydmFiaWxpdHk6Cj4gPiA+IC9z
eXMvZGV2aWNlcy9zeXN0ZW0vbm9kZS9ub2RlTi92bXN0YXQKPiA+ID4gbnJfaW9tbXVfcGFnZXMg
MTA1NTU1Cj4gPiA+Cj4gPiA+IENvbnRhaW5zIG51bWJlciBvZiBwYWdlcyBJT01NVSBhbGxvY2F0
ZWQgaW4gdGhlIGdpdmVuIG5vZGUuCj4gPgo+ID4gRG9lcyBpdCBtYWtlIHNlbnNlIHRvIGhhdmUg
YSBLVk0tb25seSBlbnRyeSB0aGVyZSBhcyB3ZWxsPwo+ID4KPiA+IEluIHRoYXQgY2FzZSwgaWYg
U2VjUGFnZVRhYmxlcyBpbiAvcHJvYy9tZW1pbmZvIGlzIGZvdW5kIHRvIGJlCj4gPiBzdXNwaWNp
b3VzbHkgaGlnaCwgaXQgc2hvdWxkIGJlIGVhc3kgdG8gdGVsbCB3aGljaCBjb21wb25lbnQgaXMK
PiA+IGNvbnRyaWJ1dGluZyBtb3N0IHVzYWdlIHRocm91Z2ggdm1zdGF0LiBJIHVuZGVyc3RhbmQg
dGhhdCB1c2VycyBjYW4gZG8KPiA+IHRoZSBzdWJ0cmFjdGlvbiwgYnV0IHdlIHdvdWxkbid0IHdh
bnQgdXNlcnNwYWNlIGRlcGVuZGluZyBvbiB0aGF0LCBpbgo+ID4gY2FzZSBhIHRoaXJkIGNsYXNz
IG9mICJzZWNvbmRhcnkiIHBhZ2UgdGFibGVzIGVtZXJnZXMgdGhhdCB3ZSB3YW50IHRvCj4gPiBh
ZGQgdG8gU2VjUGFnZVRhYmxlcy4gVGhlIGluLWtlcm5lbCBpbXBsZW1lbnRhdGlvbiBjYW4gZG8g
dGhlCj4gPiBzdWJ0cmFjdGlvbiBmb3Igbm93IGlmIGl0IG1ha2VzIHNlbnNlIHRob3VnaC4KPgo+
IEhpIFlvc3J5LAo+Cj4gWWVzLCBhbm90aGVyIGNvdW50ZXIgZm9yIEtWTSBjb3VsZCBiZSBhZGRl
ZC4gT24gdGhlIG90aGVyIGhhbmQgS1ZNCj4gb25seSBjYW4gYmUgY29tcHV0ZWQgYnkgc3VidHJh
Y3Rpbmcgb25lIGZyb20gYW5vdGhlciBhcyB0aGVyZSBhcmUgb25seQo+IHR3byB0eXBlcyBvZiBz
ZWNvbmRhcnkgcGFnZSB0YWJsZXMsIEtWTSBhbmQgSU9NTVU6Cj4KPiAvc3lzL2RldmljZXMvc3lz
dGVtL25vZGUvbm9kZTAvbWVtaW5mbwo+IE5vZGUgMCBTZWNQYWdlVGFibGVzOiAgICA0MjIyMDQg
a0IKPgo+ICAvc3lzL2RldmljZXMvc3lzdGVtL25vZGUvbm9kZU4vdm1zdGF0Cj4gbnJfaW9tbXVf
cGFnZXMgMTA1NTU1Cj4KPiBLVk0gb25seSA9IFNlY1BhZ2VUYWJsZXMgLSBucl9pb21tdV9wYWdl
cyAqIFBBR0VfU0laRSAvIDEwMjQKPgoKUmlnaHQsIGJ1dCBhcyBJIG1lbnRpb24gYWJvdmUsIGlm
IHVzZXJzcGFjZSBzdGFydHMgZGVwZW5kaW5nIG9uIHRoaXMKZXF1YXRpb24sIHdlIHdvbid0IGJl
IGFibGUgdG8gYWRkIGFueSBtb3JlIGNsYXNzZXMgb2YgInNlY29uZGFyeSIgcGFnZQp0YWJsZXMg
dG8gU2VjUGFnZVRhYmxlcy4gSSdkIGxpa2UgdG8gYXZvaWQgdGhhdCBpZiBwb3NzaWJsZS4gV2Ug
Y2FuIGRvCnRoZSBzdWJ0cmFjdGlvbiBpbiB0aGUga2VybmVsLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
