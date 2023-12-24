Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C6C7C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 21:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TAQaMxfHV/Cy1D9DGOdmZJ2tW0cL6OFNQOFxqwFHHo=; b=fdOVMeAvSeCdRR
	93OIsX+3Arz5PHFXJTho/o0J3RC43Q/6jO107gvfReZuGRiQyQJGtssQ5o3IXt8rkFAQWyji8qyPJ
	Eu+eWVjxpcA22IBDhjS0ONc+j2oPGT1KUeb9bFSDaEBU5yl4Qg/VFe4fq3aFpb2ZPeVB7XqdKqTvq
	k914y8CuMtuuS1Mr+hXGLO2sL3XnDxVshb0o5VwkYBBFTVW4IL+j6tDDZFibEErqG6kC+3HQdC/Qd
	rCOS9N7npDI9KMWeh5wiDQEH5OBJz22a+J8WKeTkRNKJiBNR/QM/b/+rdKgTbUVS79tP6xa/6M+Vv
	4Dai6A1rqeh2jAL4iGbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHW6q-009twj-31;
	Sun, 24 Dec 2023 21:34:08 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHW6o-009tvu-1M
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Dec 2023 21:34:07 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1d3fde109f2so262835ad.1
        for <linux-rockchip@lists.infradead.org>; Sun, 24 Dec 2023 13:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1703453645; x=1704058445; darn=lists.infradead.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=19k96QXnbMagvx60gm9Q3bYlRQY8OEapphIAobKuCbg=;
        b=fmDGmilHacuIipUFfva7HqNDhKI6iVwI4RWIffYS8ne6ylx3FBzFmOrEqQW7wGpUx8
         2/Mpg9dxbN5HsCQ3YudjDKIeowDzY1dApVJRxPNWNr1m+ZEqeVGLn80kGODk7VhynwAe
         QRdhij/nppo9hW/RYCcpgNbnYE+M/iBi/39Z0lojykS0tx5xtqhwSUfqpf6d8v8zEHea
         gHJsUarreffph19/SHqzpgf7IuGnZui2wF8wzuY411BOx01Nj7nK0arY8i14M61gFigc
         kBiE5s0xI00wJETPBmy0VlYgQOMODIACutqPKrRpG8rEATkuouf1sm7Q3RGlc4BManz2
         pxWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703453645; x=1704058445;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=19k96QXnbMagvx60gm9Q3bYlRQY8OEapphIAobKuCbg=;
        b=rEXVtMCLAZU994ZRxejmYzcivBMz+Qn6YgvGPr6yHOYfr2MzyZzUFGhAbcrtRh5L1N
         xx8d6zIyxyibigQkz2Ry88HkUAsC3K0U79FGAEiefmLVc5wJzdI7rnELgphQ6Ib8j8OW
         zFFBJkxQlVD6pSOdQv0+Y3laTUUdWhjOyfgjmoUkuVG7OaCogM82ZOxBbGj3pMzC7Bz4
         Lav6SLxLOibc4CGakaXEKPrwf9yThosNXL7dFfKR1VKpz+G52viW5D6vnxHLoNNfexad
         3t4XLTYGiYGAy/Fdy2tH6HKlKcvfWSqVIdzWv2zrQKZar3sPntNwcARut0pOYRKKsfXQ
         LfNg==
X-Gm-Message-State: AOJu0YzZWctnZpUVffHyKea6ejNJ4H68NBjoVloQraIumdzrpdsEJCYt
	0Rm2vT9Gip9mVGZuTWAlElfbf356B8Ju
X-Google-Smtp-Source: AGHT+IGegIDK1SiERqRo6gqK2h3wZ3T0rNk/SXpnhPjqekqQBeNJ+EefZk9MMaDh4fgCcjIJBnmJeg==
X-Received: by 2002:a17:903:1248:b0:1d4:cae:9a03 with SMTP id u8-20020a170903124800b001d40cae9a03mr251305plh.23.1703453645061;
        Sun, 24 Dec 2023 13:34:05 -0800 (PST)
Received: from [2620:0:1008:15:c723:e11e:854b:ac88] ([2620:0:1008:15:c723:e11e:854b:ac88])
        by smtp.gmail.com with ESMTPSA id n7-20020a056a000d4700b006d9bbc8d785sm400894pfv.141.2023.12.24.13.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Dec 2023 13:34:04 -0800 (PST)
Date: Sun, 24 Dec 2023 13:34:03 -0800 (PST)
From: David Rientjes <rientjes@google.com>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
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
    suravee.suthikulpanit@amd.com, sven@svenpeter.dev, 
    thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com, 
    vdumpa@nvidia.com, wens@csie.org, will@kernel.org, yu-cheng.yu@intel.com
Subject: Re: [PATCH v2 02/10] iommu/amd: use page allocation function provided
 by iommu-pages.h
In-Reply-To: <20231130201504.2322355-3-pasha.tatashin@soleen.com>
Message-ID: <56409bdf-3f9d-e521-814f-3c8e854db3bf@google.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com> <20231130201504.2322355-3-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_133406_661101_C0BE3752 
X-CRM114-Status: UNSURE (   7.49  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 30 Nov 2023, Pasha Tatashin wrote:

> Convert iommu/amd/* files to use the new page allocation functions
> provided in iommu-pages.h.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>

Acked-by: David Rientjes <rientjes@google.com>

Although any feedback from Suravee and Joerg would be very useful on the 
overall approach and whether this looks good to them.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
