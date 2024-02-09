Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47947C48297
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Feb 2024 19:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sORfJE5kOwomXojac2MTqWqIT3RLdOP+07qfrLRlZcc=; b=z6kmQkE/kEvt2Y
	Z5Uj8n0duZWfK0pnHzfu2S/QPalCrZep7+kZ34lr3dKVm8d+CDISNVyWI2A/o71sk1Y1ZdtX7Gzon
	phNcN3YINXSw6H9kXzJ7g8Kc8NhTGrOP/C7ddelk9S5xv4eHDxlGKQvU5Y0cwjs2ppegTeyW0Gpyr
	e4mgV3gsXiL1+hPimk2NhplDwAMAU92be6oABm9GSohaiALUPhODEEde+zpMo87fgDkKSJ+0o6lEG
	CagoVY1t9XaMeBhoD2nd8DBouxcXQXrkfGypSE+tjFK92k0tN14NEwUoVdPHJ2fDC2/h7jEU4R25h
	vULKE/XzvvZRpszYJ+0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYW7k-00000000KkD-29eH;
	Fri, 09 Feb 2024 19:01:20 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYW7h-00000000Kik-1vbi
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Feb 2024 19:01:18 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6dc36e501e1so837218a34.1
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Feb 2024 11:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1707505275; x=1708110075; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A6nixm9+pytVx29gZ1u6InMe44RI3ah/j/zSFqY5qPg=;
        b=G5J19qvbJR8A2n53UsENVv95sGHQRlDnFnqVFvzPjXInriyVj1Bb3s5AIAd/wXb8f9
         6v4iR2RWDtZ1+9PuCy62H7el5F2EIiF5IIaEDwM0LjGc5a9gMfpQOr7KJkWG3vi1EPUK
         UrKJ/hDR0KftLhXukajjUELua2nFNYDeisqixMH331lUEY2j84NoQsh6fBTqnNFj87Ul
         z2oy6MfPRj58iAgjyQXt9cxwBIGcgaIjlHRaqDO+7sCB6PcnLZxX1CyIkBLNEA0SnYv6
         bltZHD7wEu0pgO9tCyjZ7zvKlMguvogCgq8/RxlfvROblNVGz4Gyr+SN8+NFt08ti2Nd
         t8Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707505275; x=1708110075;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A6nixm9+pytVx29gZ1u6InMe44RI3ah/j/zSFqY5qPg=;
        b=qlzauHKTIbFkGdsGbYfpMCoFAAbCmlfIZmP3XdhwPzt2keC4NcBqLOtlcTKG6FzA16
         IQDQLwRNwamFvT+laOsIb/5EChukJHxvPFIywrqxybWwyNcHo2wf8109Wx7eeVymslim
         YslWOF1AicrSmMQTgTLKNd6THtE2hZBIesCQeMg0DiercTV25YiFMil2HL64a30Pm6D0
         gCjRMuz5SGcDPyH0bHqoOnW8E58iR3IHstbjEMSoZjpwNJTfFBhnRPbzLBqoeHiuyZrg
         tVRct6ukxjlK20BmU44t3h/RSsOwKSThIrJn/DmGBpttwfgV2aGkiFbSAc12zheOmqS6
         8uLg==
X-Gm-Message-State: AOJu0YzxAcMa2sxg9oaezJtM/xXLJgd2aZ9KAsjFpvBRhL8gvPB7xNkL
	b/fuLo1l+bwrVCD7m1gV6to2wgkDdDBX3eQbhIW84svAx4a4DCmpy0DCBoDnsQk7YrOLZY91pm7
	p+7TqwzbcbtzMET9fOVXSHZuBCwPkOHIi6vZrsA==
X-Google-Smtp-Source: AGHT+IFk85AK/GUYg3sBgSG/PbDJz6nuE4vk8ZoEGio36nkbZvD4VZo1ESUanwCzArrVosJa8bsMEnRS+HyilbasQKI=
X-Received: by 2002:a05:6830:141a:b0:6e0:faab:cff4 with SMTP id
 v26-20020a056830141a00b006e0faabcff4mr3036212otp.13.1707505274772; Fri, 09
 Feb 2024 11:01:14 -0800 (PST)
MIME-Version: 1.0
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
 <CGME20240207174117eucas1p237865b0a39f3a6d1a6650150efe22e83@eucas1p2.samsung.com>
 <20240207174102.1486130-6-pasha.tatashin@soleen.com> <a1c452f9-c265-4934-82c2-8c9278d087ec@samsung.com>
In-Reply-To: <a1c452f9-c265-4934-82c2-8c9278d087ec@samsung.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 9 Feb 2024 14:00:37 -0500
Message-ID: <CA+CK2bCax2NVhVwiVdyWG0Fpj7W8gi2Tmz1guNKOFNf9O1tfng@mail.gmail.com>
Subject: Re: [PATCH v4 05/10] iommu/exynos: use page allocation function
 provided by iommu-pages.h
To: Marek Szyprowski <m.szyprowski@samsung.com>
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
	mhiramat@kernel.org, paulmck@kernel.org, rdunlap@infradead.org, 
	robin.murphy@arm.com, samuel@sholland.org, suravee.suthikulpanit@amd.com, 
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org, 
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, will@kernel.org, 
	yu-cheng.yu@intel.com, rientjes@google.com, bagasdotme@gmail.com, 
	mkoutny@suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_110117_520389_B06F300D 
X-CRM114-Status: UNSURE (   7.01  )
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

T24gRnJpLCBGZWIgOSwgMjAyNCBhdCA2OjI24oCvQU0gTWFyZWsgU3p5cHJvd3NraQo8bS5zenlw
cm93c2tpQHNhbXN1bmcuY29tPiB3cm90ZToKPgo+IE9uIDA3LjAyLjIwMjQgMTg6NDAsIFBhc2hh
IFRhdGFzaGluIHdyb3RlOgo+ID4gQ29udmVydCBpb21tdS9leHlub3MtaW9tbXUuYyB0byB1c2Ug
dGhlIG5ldyBwYWdlIGFsbG9jYXRpb24gZnVuY3Rpb25zCj4gPiBwcm92aWRlZCBpbiBpb21tdS1w
YWdlcy5oLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFBhc2hhIFRhdGFzaGluIDxwYXNoYS50YXRh
c2hpbkBzb2xlZW4uY29tPgo+ID4gQWNrZWQtYnk6IERhdmlkIFJpZW50amVzIDxyaWVudGplc0Bn
b29nbGUuY29tPgo+ID4gVGVzdGVkLWJ5OiBCYWdhcyBTYW5qYXlhIDxiYWdhc2RvdG1lQGdtYWls
LmNvbT4KPiBBY2tlZC1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcu
Y29tPgoKVGhhbmsgeW91LApQYXNoYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
