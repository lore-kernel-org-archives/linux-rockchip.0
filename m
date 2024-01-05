Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43984C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 15:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9yAunrmcOZwGLDUcXl8flcz23AcS/GgFTtQ3JS4rEE=; b=HR+a4lLDeDqpZs
	C9FRsMev1Y/fUVlcb51eqLBJbeFD9hRd7ybwO4CPIYTOLxgaSr8hvlLq2kGZ4+A0ubJY1YJDj4Bz+
	aAxmfFauvupcSJK7bKKyaJI+XgsCZ8NSTbvdr9CXDkJOxXXG5FtQaIsj2EHBJW8fKySSJxS2o4Dxm
	qElffnsGczlNyG7qK5lks2AKURZDe95VBNXQPeh/nr/jmghC5OPQmkTbmMdNV3ENDIrFHKWwcRZuf
	IZwIvCHb7aSGQtudcynhfRFaXJtnRwP2b9jIdHYRnupd1IIPlNHPHCauhRvwcgLlg+kDaH3TZf5DC
	2TAa4Q0/K/9B+KX9zT7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLmDG-00HAtu-1M;
	Fri, 05 Jan 2024 15:34:22 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLmDC-00HAsB-0W
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jan 2024 15:34:19 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-427c4bf6017so8461811cf.0
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jan 2024 07:34:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1704468855; x=1705073655; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0TY2tK1Et5681qdWkhQWK7TKRb/9setDuVBnoXVgexU=;
        b=hHywPJ4w3nYZqO4F6WONGUXI5UbPYam7zDceOEkrAlq/IhGYd4HIZEkrdxrFGMxVXW
         xfO8SWVdtrPlTQte1zveJnX5miIzQRCZjlx81cgzRU1qBOUy9QnTS+q8Li5ro7GHaGyQ
         yIboaS1LQ9Ns5zKvL/uDJsi/32M2hTSPna1+0eRhGY0lU4ksNaFMBJRqYPiKcMiFMpU2
         VVPeJJT0huSp2s5XmvF+f6cfR9CnodGwRtoBBGJrYxQGrAQoLeIzHSvVQAc+iXFInxL5
         pZ9BiIWdpiRcLQ8ACxhtA1vLtK0pmt4cARMmoqQNAI4iYaSn4sGNc9FW+v2tPITYqS1G
         7CFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704468855; x=1705073655;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0TY2tK1Et5681qdWkhQWK7TKRb/9setDuVBnoXVgexU=;
        b=mDLGVXxGcjXuZyHlerXY+vsb8AzHLNQ73Juc6RCmyROG72fNHhH0imT2NxFGBsQ56h
         jaTMTj5D7Vz6ju5G5CNdPdkOpiNUOTlETOSf6g4ymLsdLHFeY+qXuZ5SgDmw0ir32ZE6
         8uYKe8x1lELJa5Wi6X2e+vdwYswqDmmmNMD1468R4gFkm39eZpjbM/UCjwSdX2GRcmw5
         pRHFsbobgv5YIBsmSdSzg3d77LSxTFLoPWimEMxPcheMymlttEw5UkLpPtCfEwZf25UO
         M5pq17FP0PEjDwYfFm8NHoAW6pKVVmrqL9LO50IEgL2mkt9jUisIOrK/GotoWSRT0D4/
         kexA==
X-Gm-Message-State: AOJu0Ywe7EDNmCd65iNwEEx477kfOwk49gcC2qLjbj7iyXfRIkU2PbpJ
	id2rR7fYTPtcw1FY0z9FD+jO5bPfHTVvaVeCGl/2Dz94TeN7GA==
X-Google-Smtp-Source: AGHT+IHfTfqU5MoKE0X4xG8QNmKPONd8jiakcdkHu4vud6eBZ8WvRO+n1CsOMpfQPwUC05tcfTICXquuDV0OuNZPOR0=
X-Received: by 2002:a05:622a:1349:b0:429:791f:9708 with SMTP id
 w9-20020a05622a134900b00429791f9708mr909674qtk.35.1704468854882; Fri, 05 Jan
 2024 07:34:14 -0800 (PST)
MIME-Version: 1.0
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
 <eqkpplwwyeqqd356ka3g6isaoboe62zrii77krsb7zwzmvdusr@5i3lzfhpt2xe>
 <CA+CK2bBE1bQuqZy3cbWiv8V3vJ8YNJZRayp6Wv-j2_9i37XT4g@mail.gmail.com>
 <eng4vwaci5hwlicszgcld6uny55vll2bfs3vp2yjbjf3exhamg@zf6yc2uhax7w>
 <CA+CK2bCUGepLLA2Hsmq00XEhPzLWPb5CjzY_UPT0qWSKastjAQ@mail.gmail.com> <elsuzdcx2qpnazvz2ayzmco4ctms5ci3iet3k7ggbjt3p2pfk2@tvr3plow26oi>
In-Reply-To: <elsuzdcx2qpnazvz2ayzmco4ctms5ci3iet3k7ggbjt3p2pfk2@tvr3plow26oi>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 5 Jan 2024 10:33:38 -0500
Message-ID: <CA+CK2bD7gPP6TFR_sYPd=4U4yYrYHNu=qMLJdT+kgT_gbz6wBQ@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20240105_073418_197922_DD67131B 
X-CRM114-Status: GOOD (  11.16  )
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

T24gRnJpLCBKYW4gNSwgMjAyNCBhdCA0OjAy4oCvQU0gTWljaGFsIEtvdXRuw70gPG1rb3V0bnlA
c3VzZS5jb20+IHdyb3RlOgo+Cj4gT24gVGh1LCBKYW4gMDQsIDIwMjQgYXQgMDI6MTI6MjZQTSAt
MDUwMCwgUGFzaGEgVGF0YXNoaW4gPHBhc2hhLnRhdGFzaGluQHNvbGVlbi5jb20+IHdyb3RlOgo+
ID4gWWVzLCB3ZSB3aWxsIGhhdmUgYSBkaWZmZXJlbmNlIGJldHdlZW4gR0ZQX0FDQ09VTlQgYW5k
IHdoYXQKPiA+IE5SX0lPTU1VX1BBR0VTIHNob3dzLiBHRlBfQUNDT1VOVCBpcyBzZXQgb25seSB3
aGVyZSBpdCBtYWtlcyBzZW5zZSB0bwo+ID4gY2hhcmdlIHRvIHVzZXIgcHJvY2Vzc2VzLCBpLmUu
IElPTU1VIFBhZ2UgVGFibGVzLCBidXQgdGhlcmUgbW9yZSBJT01NVQo+ID4gc2hhcmVkIGRhdGEg
dGhhdCBzaG91bGQgbm90IHJlYWxseSBiZSBjaGFyZ2VkIHRvIGEgc3BlY2lmaWMgcHJvY2Vzcy4K
Pgo+IEkgc2VlLiBJJ2Qgc3VnZ2VzdCBhZGRpbmcgdGhpcyBleHBsYW5hdGlvbiB0byBjb21taXQg
MTAvMTAgbWVzc2FnZQo+IChwZXJoYXBzIHdpdGggc29tZSBiYWxscGFyayBudW1iZXJzIG9mIHBh
Z2VzKS4gSW4gb3JkZXIgdG8gaGF2ZSBhCj4gcmVmZXJlbmNlIGFuZCB1bmRlcnN0YWRuaW5nIGlm
IHNvbWVvbmUgZGVjaWRlZCB0byBjaGFyZ2UgKGFuZCBsaW1pdCkgYWxsCj4gaW4gdGhlIGZ1dHVy
ZS4KClN1cmUsIEkgd2lsbCB1cGRhdGUgdGhlIGNvbW1pdCBsb2cgaW4gMTAvMTAgd2l0aCB0aGlz
IGluZm8gaWYgd2Ugd2lsbCBoYXZlIHY0LgoKUGFzaGEKCj4KPiBUaGFua3MsCj4gTWljaGFsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
