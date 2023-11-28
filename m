Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF185C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 22:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nty7eDDE/UYz+/L+ynQ9lVo6+p33sz4Xd7HCAEE8zGE=; b=Q2r+VExjeImGfm
	nppiBQkekpa4WuBfg6nM0NZRM2cjCwNbaKP85WhZ/zkqpQJoefAdRCfIErA0rTGYKrw189Cni50Zg
	vbD+c6h2E4HL7S/q1xMzgLwaKhEdRlMeC79fSCSOgWiDTi10rHSvOWO+XbLdWkJFkHSq4+z8vTKf/
	Gj3pm27M7JByen3OfOSHayvK6fbhRuKqbtbiuu4Q7INdNzyoLrFJy1W5++4MMjiQs8PXwJsDmWISJ
	rERQ38KwzJnvQ9W2EmmmHx1bYju6UxBGGZfCm654TO21zjHb2lCC0EC/2MY8PWZropkWdwPiLs/Ll
	ga759YzpXFqZw/BEK/1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r86dC-006V2p-1E;
	Tue, 28 Nov 2023 22:32:38 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r86d7-006V0v-1d
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 22:32:35 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-41cba6e8e65so31401781cf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 14:32:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701210752; x=1701815552; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zXmxZJr3Rk1RKmtjvCLdJSQvKQY1rkK5dlcrmMuZJj4=;
        b=T5YuLZe65hcEqBj7HtKnJsbZK+TH5IIiwtgmzdZnmiFbugEbDulMBWWIXgz+xsDWIJ
         FryYU9yzEFmqh6DWlWwT1Ygv2IUfHNbGQpXG4oYtjtbH6cMkTs/ZAgwqBPutlQ03K6xd
         YDucufmCoMWm9NlyEIwETetByukMfV4TdcZisppVy7YA33f2w3ZOPNN9RiOLfCvhV0/u
         WR+RBV5NRxfpNbnIYZ6WK2Mgn+3SDAKmDHek9qcOi7NR8xytUk/daYTGJ03Pjx0ziL5H
         ruDH/kqK5BT5fehz3fUb5zHS1OzAN/JZpypvpfCF1OUa8XULK6uifZ0cZxPBwF3iNkP4
         dvQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701210752; x=1701815552;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zXmxZJr3Rk1RKmtjvCLdJSQvKQY1rkK5dlcrmMuZJj4=;
        b=bUm5ucQ3Y3ERzT++74WAr2f13zael5h2CUTYqS0lqgcqjtc+ltqEVkOU31Ck6Z9qTm
         W7BoQwLoGJFIdytCjv1mbEe+NQa1wNxG6xendgoUzZdxM33ygHJ1vmq3VEXtuo4QK6tc
         8FGKi/SMA49AayiLX407vPOek61NPflsJtlyOsGWb3xphiu/ueSMyBf0FHmxq8TPwEMo
         +IFDKVIprC44cgihl2pLDnBDiHaD4osvwx0QWqFSjpgtlP279pWoL7XqN8KXpprrnMVS
         S6wi79Atfrc2fagh+8nBbnT3i5SuOnoudcAxVPeAJYW+cIEBD1b9EMbj8vyCTUytG9wP
         2pPA==
X-Gm-Message-State: AOJu0Yxi3Zjy/C/eRvDyp4Ce6zQfAvgUrO0JggCGd/9bX7R9ZXpf91us
	p/RjPElpYbGTvVgRXkl8V/N24Ay3jWhGEBbjzYfatA==
X-Google-Smtp-Source: AGHT+IGpMWKNhES/9/sulDYyAvK/WWWt51B5qkJu4RoDrGLcGdrRp1qT0nJmPQj10gvcniDpUMl30iZYOH63zrZzia0=
X-Received: by 2002:a05:622a:5da6:b0:423:a0e1:c58f with SMTP id
 fu38-20020a05622a5da600b00423a0e1c58fmr10804025qtb.59.1701210751688; Tue, 28
 Nov 2023 14:32:31 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com> <CAJD7tkb1FqTqwONrp2nphBDkEamQtPCOFm0208H3tp0Gq2OLMQ@mail.gmail.com>
In-Reply-To: <CAJD7tkb1FqTqwONrp2nphBDkEamQtPCOFm0208H3tp0Gq2OLMQ@mail.gmail.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 28 Nov 2023 17:31:54 -0500
Message-ID: <CA+CK2bB3nHfu1Z6_6fqN3YTAzKXMiJ12MOWpbs8JY7rQo4Fq0g@mail.gmail.com>
Subject: Re: [PATCH 00/16] IOMMU memory observability
To: Yosry Ahmed <yosryahmed@google.com>
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
X-CRM114-CacheID: sfid-20231128_143233_940918_D830853D 
X-CRM114-Status: GOOD (  28.64  )
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

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgNDozNOKAr1BNIFlvc3J5IEFobWVkIDx5b3NyeWFobWVk
QGdvb2dsZS5jb20+IHdyb3RlOgo+Cj4gT24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgMTI6NDnigK9Q
TSBQYXNoYSBUYXRhc2hpbgo+IDxwYXNoYS50YXRhc2hpbkBzb2xlZW4uY29tPiB3cm90ZToKPiA+
Cj4gPiBGcm9tOiBQYXNoYSBUYXRhc2hpbiA8dGF0YXNoaW5AZ29vZ2xlLmNvbT4KPiA+Cj4gPiBJ
T01NVSBzdWJzeXN0ZW0gbWF5IGNvbnRhaW4gc3RhdGUgdGhhdCBpcyBpbiBnaWdhYnl0ZXMuIE1h
am9yaXR5IG9mIHRoYXQKPiA+IHN0YXRlIGlzIGlvbW11IHBhZ2UgdGFibGVzLiBZZXQsIHRoZXJl
IGlzIGN1cnJlbnRseSwgbm8gd2F5IHRvIG9ic2VydmUKPiA+IGhvdyBtdWNoIG1lbW9yeSBpcyBh
Y3R1YWxseSB1c2VkIGJ5IHRoZSBpb21tdSBzdWJzeXN0ZW0uCj4gPgo+ID4gVGhpcyBwYXRjaCBz
ZXJpZXMgc29sdmVzIHRoaXMgcHJvYmxlbSBieSBhZGRpbmcgYm90aCBvYnNlcnZhYmlsaXR5IHRv
Cj4gPiBhbGwgcGFnZXMgdGhhdCBhcmUgYWxsb2NhdGVkIGJ5IElPTU1VLCBhbmQgYWxzbyBhY2Nv
dW50YWJpbGl0eSwgc28KPiA+IGFkbWlucyBjYW4gbGltaXQgdGhlIGFtb3VudCBpZiB2aWEgY2dy
b3Vwcy4KPiA+Cj4gPiBUaGUgc3lzdGVtLXdpZGUgb2JzZXJ2YWJpbGl0eSBpcyB1c2luZyAvcHJv
Yy9tZW1pbmZvOgo+ID4gU2VjUGFnZVRhYmxlczogICAgNDM4MTc2IGtCCj4gPgo+ID4gQ29udGFp
bnMgSU9NTVUgYW5kIEtWTSBtZW1vcnkuCj4gPgo+ID4gUGVyLW5vZGUgb2JzZXJ2YWJpbGl0eToK
PiA+IC9zeXMvZGV2aWNlcy9zeXN0ZW0vbm9kZS9ub2RlTi9tZW1pbmZvCj4gPiBOb2RlIE4gU2Vj
UGFnZVRhYmxlczogICAgNDIyMjA0IGtCCj4gPgo+ID4gQ29udGFpbnMgSU9NTVUgYW5kIEtWTSBt
ZW1vcnkgbWVtb3J5IGluIHRoZSBnaXZlbiBOVU1BIG5vZGUuCj4gPgo+ID4gUGVyLW5vZGUgSU9N
TVUgb25seSBvYnNlcnZhYmlsaXR5Ogo+ID4gL3N5cy9kZXZpY2VzL3N5c3RlbS9ub2RlL25vZGVO
L3Ztc3RhdAo+ID4gbnJfaW9tbXVfcGFnZXMgMTA1NTU1Cj4gPgo+ID4gQ29udGFpbnMgbnVtYmVy
IG9mIHBhZ2VzIElPTU1VIGFsbG9jYXRlZCBpbiB0aGUgZ2l2ZW4gbm9kZS4KPgo+IERvZXMgaXQg
bWFrZSBzZW5zZSB0byBoYXZlIGEgS1ZNLW9ubHkgZW50cnkgdGhlcmUgYXMgd2VsbD8KPgo+IElu
IHRoYXQgY2FzZSwgaWYgU2VjUGFnZVRhYmxlcyBpbiAvcHJvYy9tZW1pbmZvIGlzIGZvdW5kIHRv
IGJlCj4gc3VzcGljaW91c2x5IGhpZ2gsIGl0IHNob3VsZCBiZSBlYXN5IHRvIHRlbGwgd2hpY2gg
Y29tcG9uZW50IGlzCj4gY29udHJpYnV0aW5nIG1vc3QgdXNhZ2UgdGhyb3VnaCB2bXN0YXQuIEkg
dW5kZXJzdGFuZCB0aGF0IHVzZXJzIGNhbiBkbwo+IHRoZSBzdWJ0cmFjdGlvbiwgYnV0IHdlIHdv
dWxkbid0IHdhbnQgdXNlcnNwYWNlIGRlcGVuZGluZyBvbiB0aGF0LCBpbgo+IGNhc2UgYSB0aGly
ZCBjbGFzcyBvZiAic2Vjb25kYXJ5IiBwYWdlIHRhYmxlcyBlbWVyZ2VzIHRoYXQgd2Ugd2FudCB0
bwo+IGFkZCB0byBTZWNQYWdlVGFibGVzLiBUaGUgaW4ta2VybmVsIGltcGxlbWVudGF0aW9uIGNh
biBkbyB0aGUKPiBzdWJ0cmFjdGlvbiBmb3Igbm93IGlmIGl0IG1ha2VzIHNlbnNlIHRob3VnaC4K
CkhpIFlvc3J5LAoKWWVzLCBhbm90aGVyIGNvdW50ZXIgZm9yIEtWTSBjb3VsZCBiZSBhZGRlZC4g
T24gdGhlIG90aGVyIGhhbmQgS1ZNCm9ubHkgY2FuIGJlIGNvbXB1dGVkIGJ5IHN1YnRyYWN0aW5n
IG9uZSBmcm9tIGFub3RoZXIgYXMgdGhlcmUgYXJlIG9ubHkKdHdvIHR5cGVzIG9mIHNlY29uZGFy
eSBwYWdlIHRhYmxlcywgS1ZNIGFuZCBJT01NVToKCi9zeXMvZGV2aWNlcy9zeXN0ZW0vbm9kZS9u
b2RlMC9tZW1pbmZvCk5vZGUgMCBTZWNQYWdlVGFibGVzOiAgICA0MjIyMDQga0IKCiAvc3lzL2Rl
dmljZXMvc3lzdGVtL25vZGUvbm9kZU4vdm1zdGF0Cm5yX2lvbW11X3BhZ2VzIDEwNTU1NQoKS1ZN
IG9ubHkgPSBTZWNQYWdlVGFibGVzIC0gbnJfaW9tbXVfcGFnZXMgKiBQQUdFX1NJWkUgLyAxMDI0
CgpQYXNoYQoKPgo+ID4KPiA+IEFjY291bnRhYmlsaXR5OiB1c2luZyBzZWNfcGFnZXRhYmxlcyBj
Z3JvdXAtdjIgbWVtb3J5LnN0YXQgZW50cnkuCj4gPgo+ID4gV2l0aCB0aGUgY2hhbmdlLCBpb3Zh
X3N0cmVzc1sxXSBzdG9wcyBhcyBsaW1pdCBpcyByZWFjaGVkOgo+ID4KPiA+ICMgLi9pb3ZhX3N0
cmVzcwo+ID4gaW92YSBzcGFjZTogICAgIDBUICAgICAgZnJlZSBtZW1vcnk6ICAgNDk3Rwo+ID4g
aW92YSBzcGFjZTogICAgIDFUICAgICAgZnJlZSBtZW1vcnk6ICAgNDk1Rwo+ID4gaW92YSBzcGFj
ZTogICAgIDJUICAgICAgZnJlZSBtZW1vcnk6ICAgNDkzRwo+ID4gaW92YSBzcGFjZTogICAgIDNU
ICAgICAgZnJlZSBtZW1vcnk6ICAgNDkxRwo+ID4KPiA+IHN0b3BzIGFzIGxpbWl0IGlzIHJlYWNo
ZWQuCj4gPgo+ID4gVGhpcyBzZXJpZXMgZW5jb3Jwb3JhdGVzIHN1Z2dlc3Rpb25zIHRoYXQgY2Ft
ZSBmcm9tIHRoZSBkaXNjdXNzaW9uCj4gPiBhdCBMUEMgWzJdLgo+ID4KPiA+IFsxXSBodHRwczov
L2dpdGh1Yi5jb20vc29sZWVuL2lvdmFfc3RyZXNzCj4gPiBbMl0gaHR0cHM6Ly9scGMuZXZlbnRz
L2V2ZW50LzE3L2NvbnRyaWJ1dGlvbnMvMTQ2Ngo+ID4KPiA+IFBhc2hhIFRhdGFzaGluICgxNik6
Cj4gPiAgIGlvbW11L3Z0LWQ6IGFkZCB3cmFwcGVyIGZ1bmN0aW9ucyBmb3IgcGFnZSBhbGxvY2F0
aW9ucwo+ID4gICBpb21tdS9hbWQ6IHVzZSBwYWdlIGFsbG9jYXRpb24gZnVuY3Rpb24gcHJvdmlk
ZWQgYnkgaW9tbXUtcGFnZXMuaAo+ID4gICBpb21tdS9pby1wZ3RhYmxlLWFybTogdXNlIHBhZ2Ug
YWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieQo+ID4gICAgIGlvbW11LXBhZ2VzLmgKPiA+
ICAgaW9tbXUvaW8tcGd0YWJsZS1kYXJ0OiB1c2UgcGFnZSBhbGxvY2F0aW9uIGZ1bmN0aW9uIHBy
b3ZpZGVkIGJ5Cj4gPiAgICAgaW9tbXUtcGFnZXMuaAo+ID4gICBpb21tdS9pby1wZ3RhYmxlLWFy
bS12N3M6IHVzZSBwYWdlIGFsbG9jYXRpb24gZnVuY3Rpb24gcHJvdmlkZWQgYnkKPiA+ICAgICBp
b21tdS1wYWdlcy5oCj4gPiAgIGlvbW11L2RtYTogdXNlIHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlv
biBwcm92aWRlZCBieSBpb21tdS1wYWdlcy5oCj4gPiAgIGlvbW11L2V4eW5vczogdXNlIHBhZ2Ug
YWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieSBpb21tdS1wYWdlcy5oCj4gPiAgIGlvbW11
L2ZzbDogdXNlIHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieSBpb21tdS1wYWdl
cy5oCj4gPiAgIGlvbW11L2lvbW11ZmQ6IHVzZSBwYWdlIGFsbG9jYXRpb24gZnVuY3Rpb24gcHJv
dmlkZWQgYnkgaW9tbXUtcGFnZXMuaAo+ID4gICBpb21tdS9yb2NrY2hpcDogdXNlIHBhZ2UgYWxs
b2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieSBpb21tdS1wYWdlcy5oCj4gPiAgIGlvbW11L3N1
bjUwaTogdXNlIHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieSBpb21tdS1wYWdl
cy5oCj4gPiAgIGlvbW11L3RlZ3JhLXNtbXU6IHVzZSBwYWdlIGFsbG9jYXRpb24gZnVuY3Rpb24g
cHJvdmlkZWQgYnkKPiA+ICAgICBpb21tdS1wYWdlcy5oCj4gPiAgIGlvbW11OiBvYnNlcnZhYmls
aXR5IG9mIHRoZSBJT01NVSBhbGxvY2F0aW9ucwo+ID4gICBpb21tdTogYWNjb3VudCBJT01NVSBh
bGxvY2F0ZWQgbWVtb3J5Cj4gPiAgIHZob3N0LXZkcGE6IGFjY291bnQgaW9tbXUgYWxsb2NhdGlv
bnMKPiA+ICAgdmZpbzogYWNjb3VudCBpb21tdSBhbGxvY2F0aW9ucwo+ID4KPiA+ICBEb2N1bWVu
dGF0aW9uL2FkbWluLWd1aWRlL2Nncm91cC12Mi5yc3QgfCAgIDIgKy0KPiA+ICBEb2N1bWVudGF0
aW9uL2ZpbGVzeXN0ZW1zL3Byb2MucnN0ICAgICAgfCAgIDQgKy0KPiA+ICBkcml2ZXJzL2lvbW11
L2FtZC9hbWRfaW9tbXUuaCAgICAgICAgICAgfCAgIDggLQo+ID4gIGRyaXZlcnMvaW9tbXUvYW1k
L2luaXQuYyAgICAgICAgICAgICAgICB8ICA5MSArKysrKy0tLS0tCj4gPiAgZHJpdmVycy9pb21t
dS9hbWQvaW9fcGd0YWJsZS5jICAgICAgICAgIHwgIDEzICstCj4gPiAgZHJpdmVycy9pb21tdS9h
bWQvaW9fcGd0YWJsZV92Mi5jICAgICAgIHwgIDIwICstCj4gPiAgZHJpdmVycy9pb21tdS9hbWQv
aW9tbXUuYyAgICAgICAgICAgICAgIHwgIDEzICstCj4gPiAgZHJpdmVycy9pb21tdS9kbWEtaW9t
bXUuYyAgICAgICAgICAgICAgIHwgICA4ICstCj4gPiAgZHJpdmVycy9pb21tdS9leHlub3MtaW9t
bXUuYyAgICAgICAgICAgIHwgIDE0ICstCj4gPiAgZHJpdmVycy9pb21tdS9mc2xfcGFtdS5jICAg
ICAgICAgICAgICAgIHwgICA1ICstCj4gPiAgZHJpdmVycy9pb21tdS9pbnRlbC9kbWFyLmMgICAg
ICAgICAgICAgIHwgIDEwICstCj4gPiAgZHJpdmVycy9pb21tdS9pbnRlbC9pb21tdS5jICAgICAg
ICAgICAgIHwgIDQ3ICsrLS0tCj4gPiAgZHJpdmVycy9pb21tdS9pbnRlbC9pb21tdS5oICAgICAg
ICAgICAgIHwgICAyIC0KPiA+ICBkcml2ZXJzL2lvbW11L2ludGVsL2lycV9yZW1hcHBpbmcuYyAg
ICAgfCAgMTAgKy0KPiA+ICBkcml2ZXJzL2lvbW11L2ludGVsL3Bhc2lkLmMgICAgICAgICAgICAg
fCAgMTIgKy0KPiA+ICBkcml2ZXJzL2lvbW11L2ludGVsL3N2bS5jICAgICAgICAgICAgICAgfCAg
IDcgKy0KPiA+ICBkcml2ZXJzL2lvbW11L2lvLXBndGFibGUtYXJtLXY3cy5jICAgICAgfCAgIDkg
Ky0KPiA+ICBkcml2ZXJzL2lvbW11L2lvLXBndGFibGUtYXJtLmMgICAgICAgICAgfCAgIDcgKy0K
PiA+ICBkcml2ZXJzL2lvbW11L2lvLXBndGFibGUtZGFydC5jICAgICAgICAgfCAgMzcgKystLQo+
ID4gIGRyaXZlcnMvaW9tbXUvaW9tbXUtcGFnZXMuaCAgICAgICAgICAgICB8IDIzMSArKysrKysr
KysrKysrKysrKysrKysrKysKPiA+ICBkcml2ZXJzL2lvbW11L2lvbW11ZmQvaW92YV9iaXRtYXAu
YyAgICAgfCAgIDYgKy0KPiA+ICBkcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMgICAgICAg
ICAgfCAgMTQgKy0KPiA+ICBkcml2ZXJzL2lvbW11L3N1bjUwaS1pb21tdS5jICAgICAgICAgICAg
fCAgIDcgKy0KPiA+ICBkcml2ZXJzL2lvbW11L3RlZ3JhLXNtbXUuYyAgICAgICAgICAgICAgfCAg
MTggKy0KPiA+ICBkcml2ZXJzL3ZmaW8vdmZpb19pb21tdV90eXBlMS5jICAgICAgICAgfCAgIDgg
Ky0KPiA+ICBkcml2ZXJzL3Zob3N0L3ZkcGEuYyAgICAgICAgICAgICAgICAgICAgfCAgIDMgKy0K
PiA+ICBpbmNsdWRlL2xpbnV4L21tem9uZS5oICAgICAgICAgICAgICAgICAgfCAgIDUgKy0KPiA+
ICBtbS92bXN0YXQuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDMgKwo+ID4gIDI4
IGZpbGVzIGNoYW5nZWQsIDQxNSBpbnNlcnRpb25zKCspLCAxOTkgZGVsZXRpb25zKC0pCj4gPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvaW9tbXUvaW9tbXUtcGFnZXMuaAo+ID4KPiA+IC0t
Cj4gPiAyLjQzLjAucmMyLjQ1MS5nODYzMWJjNzQ3Mi1nb29nCj4gPgo+ID4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
