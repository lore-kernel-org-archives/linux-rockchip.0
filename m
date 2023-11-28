Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 846C2C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 21:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKsrhWsryBoC7cSVc3elXFqIYiacOKuhVQ60x68hTVA=; b=DX6RboQTrUQbqC
	B0qhCgfH+qYusz9EYAyIURl6xqFUjAuatxduu+s9YjgqgCOisCFV07zIJHRyL7uyO5q/TzhRML1ck
	getUqJrDMFrbT792oL2xTrutQwBjOyyLDWveuvYVkO1LjNhtghoYm0yhT1AJHMgiCwK8ol1jACPxs
	rdBaiCBdVYZbE0XbAcWMkcO3dQaHtGVQi9v0xMxhSSNdKME9yxy5+Q/4H+Ts2O7UfTxV5pBhjX5S0
	EMnE4n/V7rm0gtEt94xZmE6+Lcvu05CJfm9BAiCx4vAIpbxfER0RXbUpLTrcZr5i1t8UKoqMxo78p
	nhHyj1vHiHvgU+RCx/9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r85jB-006PQa-1b;
	Tue, 28 Nov 2023 21:34:45 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r85j6-006PNS-1V
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 21:34:43 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a0b7f793b8aso488840466b.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 13:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1701207274; x=1701812074; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8NXFzGfhAzOfJO06Gf5RsXFoYKrXmtsSvTLzk7MbcCk=;
        b=rzOAOXix/nNfdExS0rdGJcTImRlDfeYKLxbxC/HcKG5BZybjqxArAJPC18m9d9MXB1
         Cg0r72pxTRJc7OeWsLiqn+4gkLYJkOr/ZUN8u8hBvA2e4obgFyxMfi9P23POlFlfoqoc
         h4Km2p9gK8Fxnz7b7IZ4syARVbvhlwgmwyEJtx7bABMFgXSj6gvbuKHRbuVHrPWYuxaH
         +2+3E/11EU+htFRVfoIGCuXpawhIcv/zkTfwZVFX/LB8godSirHLQjax6Nt1g4z7+klu
         zoQQ2AKGnQTZ5ED7s986QDsEnJbM0H5FGV+LaxGOh9zQhPu96p1BS6mWdf9FVME47jub
         elIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701207274; x=1701812074;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8NXFzGfhAzOfJO06Gf5RsXFoYKrXmtsSvTLzk7MbcCk=;
        b=G+dVt1Jdnohrj1wHmpkj3XD0JYUqfWuWh1BSyb4qv83Ie2vISuT2xCDWkW9qpsGSry
         saAnY+RHwknjCnZi9UeMUOnookuMtVtUba46axC3QkUpq0MKNObk4F+5RMIsSdlmOK08
         7dl8CfTF4Peq1Y1QgVz4LvpbzZURkgvsv3SwvPt29wFqM9FMzyFQACFZjixAkBSHliDJ
         fTYL+pJET+7ZYsavo6JAtzv6szY1IhIygYZRFxffUeaVw0+9asBuGH6es4gMH1OPmo13
         rvRjja+AlYCWOI0Wngv//yDEWX0vl1KEozNP7fI3zClRGrVxxLfcq0wWrJ8kRj6eukZk
         OtYQ==
X-Gm-Message-State: AOJu0YwGNxsc9HsgZ5GdNYHVkhh6IsXgOqmCweNP+YGMKHkmcdp5zgRo
	AKdW/3iK2B3kZsTGxO5oZfo4vbRM/gvKrgxOnbVj3g==
X-Google-Smtp-Source: AGHT+IFrrdaJl+8CDzGqIseL+lJ7M7KDt9GszVwJUOFBD/DHsSLfgFwP8+NKKfkfsTtyJyGUtnD8OJJylXlFpNkSb5g=
X-Received: by 2002:a17:906:b248:b0:a04:cc0e:ff3b with SMTP id
 ce8-20020a170906b24800b00a04cc0eff3bmr12465188ejb.27.1701207274446; Tue, 28
 Nov 2023 13:34:34 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
From: Yosry Ahmed <yosryahmed@google.com>
Date: Tue, 28 Nov 2023 13:33:55 -0800
Message-ID: <CAJD7tkb1FqTqwONrp2nphBDkEamQtPCOFm0208H3tp0Gq2OLMQ@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20231128_133440_503941_E89F2517 
X-CRM114-Status: GOOD (  22.31  )
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

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgMTI6NDnigK9QTSBQYXNoYSBUYXRhc2hpbgo8cGFzaGEu
dGF0YXNoaW5Ac29sZWVuLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBQYXNoYSBUYXRhc2hpbiA8dGF0
YXNoaW5AZ29vZ2xlLmNvbT4KPgo+IElPTU1VIHN1YnN5c3RlbSBtYXkgY29udGFpbiBzdGF0ZSB0
aGF0IGlzIGluIGdpZ2FieXRlcy4gTWFqb3JpdHkgb2YgdGhhdAo+IHN0YXRlIGlzIGlvbW11IHBh
Z2UgdGFibGVzLiBZZXQsIHRoZXJlIGlzIGN1cnJlbnRseSwgbm8gd2F5IHRvIG9ic2VydmUKPiBo
b3cgbXVjaCBtZW1vcnkgaXMgYWN0dWFsbHkgdXNlZCBieSB0aGUgaW9tbXUgc3Vic3lzdGVtLgo+
Cj4gVGhpcyBwYXRjaCBzZXJpZXMgc29sdmVzIHRoaXMgcHJvYmxlbSBieSBhZGRpbmcgYm90aCBv
YnNlcnZhYmlsaXR5IHRvCj4gYWxsIHBhZ2VzIHRoYXQgYXJlIGFsbG9jYXRlZCBieSBJT01NVSwg
YW5kIGFsc28gYWNjb3VudGFiaWxpdHksIHNvCj4gYWRtaW5zIGNhbiBsaW1pdCB0aGUgYW1vdW50
IGlmIHZpYSBjZ3JvdXBzLgo+Cj4gVGhlIHN5c3RlbS13aWRlIG9ic2VydmFiaWxpdHkgaXMgdXNp
bmcgL3Byb2MvbWVtaW5mbzoKPiBTZWNQYWdlVGFibGVzOiAgICA0MzgxNzYga0IKPgo+IENvbnRh
aW5zIElPTU1VIGFuZCBLVk0gbWVtb3J5Lgo+Cj4gUGVyLW5vZGUgb2JzZXJ2YWJpbGl0eToKPiAv
c3lzL2RldmljZXMvc3lzdGVtL25vZGUvbm9kZU4vbWVtaW5mbwo+IE5vZGUgTiBTZWNQYWdlVGFi
bGVzOiAgICA0MjIyMDQga0IKPgo+IENvbnRhaW5zIElPTU1VIGFuZCBLVk0gbWVtb3J5IG1lbW9y
eSBpbiB0aGUgZ2l2ZW4gTlVNQSBub2RlLgo+Cj4gUGVyLW5vZGUgSU9NTVUgb25seSBvYnNlcnZh
YmlsaXR5Ogo+IC9zeXMvZGV2aWNlcy9zeXN0ZW0vbm9kZS9ub2RlTi92bXN0YXQKPiBucl9pb21t
dV9wYWdlcyAxMDU1NTUKPgo+IENvbnRhaW5zIG51bWJlciBvZiBwYWdlcyBJT01NVSBhbGxvY2F0
ZWQgaW4gdGhlIGdpdmVuIG5vZGUuCgpEb2VzIGl0IG1ha2Ugc2Vuc2UgdG8gaGF2ZSBhIEtWTS1v
bmx5IGVudHJ5IHRoZXJlIGFzIHdlbGw/CgpJbiB0aGF0IGNhc2UsIGlmIFNlY1BhZ2VUYWJsZXMg
aW4gL3Byb2MvbWVtaW5mbyBpcyBmb3VuZCB0byBiZQpzdXNwaWNpb3VzbHkgaGlnaCwgaXQgc2hv
dWxkIGJlIGVhc3kgdG8gdGVsbCB3aGljaCBjb21wb25lbnQgaXMKY29udHJpYnV0aW5nIG1vc3Qg
dXNhZ2UgdGhyb3VnaCB2bXN0YXQuIEkgdW5kZXJzdGFuZCB0aGF0IHVzZXJzIGNhbiBkbwp0aGUg
c3VidHJhY3Rpb24sIGJ1dCB3ZSB3b3VsZG4ndCB3YW50IHVzZXJzcGFjZSBkZXBlbmRpbmcgb24g
dGhhdCwgaW4KY2FzZSBhIHRoaXJkIGNsYXNzIG9mICJzZWNvbmRhcnkiIHBhZ2UgdGFibGVzIGVt
ZXJnZXMgdGhhdCB3ZSB3YW50IHRvCmFkZCB0byBTZWNQYWdlVGFibGVzLiBUaGUgaW4ta2VybmVs
IGltcGxlbWVudGF0aW9uIGNhbiBkbyB0aGUKc3VidHJhY3Rpb24gZm9yIG5vdyBpZiBpdCBtYWtl
cyBzZW5zZSB0aG91Z2guCgo+Cj4gQWNjb3VudGFiaWxpdHk6IHVzaW5nIHNlY19wYWdldGFibGVz
IGNncm91cC12MiBtZW1vcnkuc3RhdCBlbnRyeS4KPgo+IFdpdGggdGhlIGNoYW5nZSwgaW92YV9z
dHJlc3NbMV0gc3RvcHMgYXMgbGltaXQgaXMgcmVhY2hlZDoKPgo+ICMgLi9pb3ZhX3N0cmVzcwo+
IGlvdmEgc3BhY2U6ICAgICAwVCAgICAgIGZyZWUgbWVtb3J5OiAgIDQ5N0cKPiBpb3ZhIHNwYWNl
OiAgICAgMVQgICAgICBmcmVlIG1lbW9yeTogICA0OTVHCj4gaW92YSBzcGFjZTogICAgIDJUICAg
ICAgZnJlZSBtZW1vcnk6ICAgNDkzRwo+IGlvdmEgc3BhY2U6ICAgICAzVCAgICAgIGZyZWUgbWVt
b3J5OiAgIDQ5MUcKPgo+IHN0b3BzIGFzIGxpbWl0IGlzIHJlYWNoZWQuCj4KPiBUaGlzIHNlcmll
cyBlbmNvcnBvcmF0ZXMgc3VnZ2VzdGlvbnMgdGhhdCBjYW1lIGZyb20gdGhlIGRpc2N1c3Npb24K
PiBhdCBMUEMgWzJdLgo+Cj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9zb2xlZW4vaW92YV9zdHJl
c3MKPiBbMl0gaHR0cHM6Ly9scGMuZXZlbnRzL2V2ZW50LzE3L2NvbnRyaWJ1dGlvbnMvMTQ2Ngo+
Cj4gUGFzaGEgVGF0YXNoaW4gKDE2KToKPiAgIGlvbW11L3Z0LWQ6IGFkZCB3cmFwcGVyIGZ1bmN0
aW9ucyBmb3IgcGFnZSBhbGxvY2F0aW9ucwo+ICAgaW9tbXUvYW1kOiB1c2UgcGFnZSBhbGxvY2F0
aW9uIGZ1bmN0aW9uIHByb3ZpZGVkIGJ5IGlvbW11LXBhZ2VzLmgKPiAgIGlvbW11L2lvLXBndGFi
bGUtYXJtOiB1c2UgcGFnZSBhbGxvY2F0aW9uIGZ1bmN0aW9uIHByb3ZpZGVkIGJ5Cj4gICAgIGlv
bW11LXBhZ2VzLmgKPiAgIGlvbW11L2lvLXBndGFibGUtZGFydDogdXNlIHBhZ2UgYWxsb2NhdGlv
biBmdW5jdGlvbiBwcm92aWRlZCBieQo+ICAgICBpb21tdS1wYWdlcy5oCj4gICBpb21tdS9pby1w
Z3RhYmxlLWFybS12N3M6IHVzZSBwYWdlIGFsbG9jYXRpb24gZnVuY3Rpb24gcHJvdmlkZWQgYnkK
PiAgICAgaW9tbXUtcGFnZXMuaAo+ICAgaW9tbXUvZG1hOiB1c2UgcGFnZSBhbGxvY2F0aW9uIGZ1
bmN0aW9uIHByb3ZpZGVkIGJ5IGlvbW11LXBhZ2VzLmgKPiAgIGlvbW11L2V4eW5vczogdXNlIHBh
Z2UgYWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieSBpb21tdS1wYWdlcy5oCj4gICBpb21t
dS9mc2w6IHVzZSBwYWdlIGFsbG9jYXRpb24gZnVuY3Rpb24gcHJvdmlkZWQgYnkgaW9tbXUtcGFn
ZXMuaAo+ICAgaW9tbXUvaW9tbXVmZDogdXNlIHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92
aWRlZCBieSBpb21tdS1wYWdlcy5oCj4gICBpb21tdS9yb2NrY2hpcDogdXNlIHBhZ2UgYWxsb2Nh
dGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieSBpb21tdS1wYWdlcy5oCj4gICBpb21tdS9zdW41MGk6
IHVzZSBwYWdlIGFsbG9jYXRpb24gZnVuY3Rpb24gcHJvdmlkZWQgYnkgaW9tbXUtcGFnZXMuaAo+
ICAgaW9tbXUvdGVncmEtc21tdTogdXNlIHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92aWRl
ZCBieQo+ICAgICBpb21tdS1wYWdlcy5oCj4gICBpb21tdTogb2JzZXJ2YWJpbGl0eSBvZiB0aGUg
SU9NTVUgYWxsb2NhdGlvbnMKPiAgIGlvbW11OiBhY2NvdW50IElPTU1VIGFsbG9jYXRlZCBtZW1v
cnkKPiAgIHZob3N0LXZkcGE6IGFjY291bnQgaW9tbXUgYWxsb2NhdGlvbnMKPiAgIHZmaW86IGFj
Y291bnQgaW9tbXUgYWxsb2NhdGlvbnMKPgo+ICBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2Nn
cm91cC12Mi5yc3QgfCAgIDIgKy0KPiAgRG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy9wcm9jLnJz
dCAgICAgIHwgICA0ICstCj4gIGRyaXZlcnMvaW9tbXUvYW1kL2FtZF9pb21tdS5oICAgICAgICAg
ICB8ICAgOCAtCj4gIGRyaXZlcnMvaW9tbXUvYW1kL2luaXQuYyAgICAgICAgICAgICAgICB8ICA5
MSArKysrKy0tLS0tCj4gIGRyaXZlcnMvaW9tbXUvYW1kL2lvX3BndGFibGUuYyAgICAgICAgICB8
ICAxMyArLQo+ICBkcml2ZXJzL2lvbW11L2FtZC9pb19wZ3RhYmxlX3YyLmMgICAgICAgfCAgMjAg
Ky0KPiAgZHJpdmVycy9pb21tdS9hbWQvaW9tbXUuYyAgICAgICAgICAgICAgIHwgIDEzICstCj4g
IGRyaXZlcnMvaW9tbXUvZG1hLWlvbW11LmMgICAgICAgICAgICAgICB8ICAgOCArLQo+ICBkcml2
ZXJzL2lvbW11L2V4eW5vcy1pb21tdS5jICAgICAgICAgICAgfCAgMTQgKy0KPiAgZHJpdmVycy9p
b21tdS9mc2xfcGFtdS5jICAgICAgICAgICAgICAgIHwgICA1ICstCj4gIGRyaXZlcnMvaW9tbXUv
aW50ZWwvZG1hci5jICAgICAgICAgICAgICB8ICAxMCArLQo+ICBkcml2ZXJzL2lvbW11L2ludGVs
L2lvbW11LmMgICAgICAgICAgICAgfCAgNDcgKystLS0KPiAgZHJpdmVycy9pb21tdS9pbnRlbC9p
b21tdS5oICAgICAgICAgICAgIHwgICAyIC0KPiAgZHJpdmVycy9pb21tdS9pbnRlbC9pcnFfcmVt
YXBwaW5nLmMgICAgIHwgIDEwICstCj4gIGRyaXZlcnMvaW9tbXUvaW50ZWwvcGFzaWQuYyAgICAg
ICAgICAgICB8ICAxMiArLQo+ICBkcml2ZXJzL2lvbW11L2ludGVsL3N2bS5jICAgICAgICAgICAg
ICAgfCAgIDcgKy0KPiAgZHJpdmVycy9pb21tdS9pby1wZ3RhYmxlLWFybS12N3MuYyAgICAgIHwg
ICA5ICstCj4gIGRyaXZlcnMvaW9tbXUvaW8tcGd0YWJsZS1hcm0uYyAgICAgICAgICB8ICAgNyAr
LQo+ICBkcml2ZXJzL2lvbW11L2lvLXBndGFibGUtZGFydC5jICAgICAgICAgfCAgMzcgKystLQo+
ICBkcml2ZXJzL2lvbW11L2lvbW11LXBhZ2VzLmggICAgICAgICAgICAgfCAyMzEgKysrKysrKysr
KysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvaW9tbXUvaW9tbXVmZC9pb3ZhX2JpdG1hcC5jICAg
ICB8ICAgNiArLQo+ICBkcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMgICAgICAgICAgfCAg
MTQgKy0KPiAgZHJpdmVycy9pb21tdS9zdW41MGktaW9tbXUuYyAgICAgICAgICAgIHwgICA3ICst
Cj4gIGRyaXZlcnMvaW9tbXUvdGVncmEtc21tdS5jICAgICAgICAgICAgICB8ICAxOCArLQo+ICBk
cml2ZXJzL3ZmaW8vdmZpb19pb21tdV90eXBlMS5jICAgICAgICAgfCAgIDggKy0KPiAgZHJpdmVy
cy92aG9zdC92ZHBhLmMgICAgICAgICAgICAgICAgICAgIHwgICAzICstCj4gIGluY2x1ZGUvbGlu
dXgvbW16b25lLmggICAgICAgICAgICAgICAgICB8ICAgNSArLQo+ICBtbS92bXN0YXQuYyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDMgKwo+ICAyOCBmaWxlcyBjaGFuZ2VkLCA0MTUg
aW5zZXJ0aW9ucygrKSwgMTk5IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9pb21tdS9pb21tdS1wYWdlcy5oCj4KPiAtLQo+IDIuNDMuMC5yYzIuNDUxLmc4NjMxYmM3
NDcyLWdvb2cKPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
