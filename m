Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6074C71153
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Aug 2023 20:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAzwPFFp11KLnYC1KvTLFTraQXcn6AfWruC4A/1MQ1w=; b=mxsquWxdrBkIZO
	LSPOlvMqrAuAKIpn45pAVOdDiRERAaLVnzjk7rvLczOGbKDGAJmdfX8Qr+VszqMIwQ9sKQ5WLH0dt
	lkCpy2N1BjTfm0kfTY0ZXomyENbjUNQadKKfMoCKMGAx+TKSwnJjxS8Sl+bIGt3daUlxZmR4V6ADQ
	8dCFgMhj84W7N/1kfK1EX/nG+hZWtS1JKBJnJ1K7TsQzuI+9MgS36RldjHxVeKDiUhZjzoqSU/Mu7
	t/0dtV/cznJV93omnkMv/OwrFkuyG6ZNlGla2WiPmTl7hGGGxfqejA8W8OqjVP4qFB3fuyJB+60Ur
	2jjGzdEENlIFZ3bAc0YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qajEj-00AGNO-1v;
	Mon, 28 Aug 2023 20:53:25 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qajEh-00AGME-0O
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Aug 2023 20:53:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693256002;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qzw/wSjdBQfPlF1y1vWCr8uR+Xbcc5Ojc8ATgenlbFw=;
	b=YiqLow8M4VO5h3PI3Wtcc+qEUw6HzHL00D8CaeUrey4znHtHFYpApQE0FMeUZcQoEiR89t
	1oxXwPd79A+qiTPsJvV0/lEm3CfxQWHe8ZZgBBtCauZLjbcYFpRhi7qvApYAMqhxNfehrE
	p1LU4R2uXEdJKLuPalE5xzKszxia5U0=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-325-ClaHaOaEPxeWfDrQ99ZwHQ-1; Mon, 28 Aug 2023 16:53:20 -0400
X-MC-Unique: ClaHaOaEPxeWfDrQ99ZwHQ-1
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-40ff67467c9so40565691cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Aug 2023 13:53:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693255999; x=1693860799;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qzw/wSjdBQfPlF1y1vWCr8uR+Xbcc5Ojc8ATgenlbFw=;
        b=T++kkzxQW334ShzYDiY9hBNuNeWHlXNfBB6z3xxditTgzkyday8H8GeQZfW8/tJV7p
         mWYGzHLTCzHlpsV4YydzYHMF/lmWReSN/Ek7fx6Uc6y47ahYEtNYyQdIMwyrsAt8gvok
         VIJrs1P/KWdsmNeZV1vF9xNebg2LsNN5Ur8wN9sY2kPfksuMOykC8nt/JV31aAU5I+aE
         jB7HsG1QDFj4olJD/Mps0olKCLsb866xwXXfPNW9XHjMQ+WAoNRYF345cXIBdPke71D4
         Tld1BPFEeOhnq8c9gyFd1K57p6V+LT0t1xK/pXr+BN85bvjHuQ8MbEZH9qCud4MpRt3G
         NUig==
X-Gm-Message-State: AOJu0YwF0PkHpy0MmuSMOeXPVNHva2tcM9aSlrQwKc5t1R2vyf7Qi/PA
	mQjfmdU++vWwV6IbpKGDNlwpp3GQIOAuiFL3ffNlTUvuulRqTacmxuJjiQIRaFSv6snPDJfdkxq
	tfLqkL5n2ZJZr5BlE+1aZ+VtlHQQs1lNX
X-Received: by 2002:a05:622a:13cc:b0:407:fb08:c44c with SMTP id p12-20020a05622a13cc00b00407fb08c44cmr31265812qtk.47.1693255998875;
        Mon, 28 Aug 2023 13:53:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1P7U6WABsjNUNOIrt30Nh8s3ysfvweacBVh9WudC6nYyRn08u0phTJIzmGkwySv3sSUL+sw==
X-Received: by 2002:a05:622a:13cc:b0:407:fb08:c44c with SMTP id p12-20020a05622a13cc00b00407fb08c44cmr31265764qtk.47.1693255998660;
        Mon, 28 Aug 2023 13:53:18 -0700 (PDT)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id z21-20020ac84555000000b0040ff0590fd2sm2553633qtn.87.2023.08.28.13.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 13:53:18 -0700 (PDT)
Date: Mon, 28 Aug 2023 13:53:16 -0700
From: Jerry Snitselaar <jsnitsel@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Andy Gross <agross@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Bjorn Andersson <andersson@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Christophe Leroy <christophe.leroy@csgroup.eu>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>, 
	Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Joerg Roedel <joro@8bytes.org>, 
	Kevin Tian <kevin.tian@intel.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	Russell King <linux@armlinux.org.uk>, linuxppc-dev@lists.ozlabs.org, 
	Matthias Brugger <matthias.bgg@gmail.com>, Matthew Rosato <mjrosato@linux.ibm.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
	Orson Zhai <orsonzhai@gmail.com>, Rob Clark <robdclark@gmail.com>, 
	Robin Murphy <robin.murphy@arm.com>, Samuel Holland <samuel@sholland.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Krishna Reddy <vdumpa@nvidia.com>, Chen-Yu Tsai <wens@csie.org>, 
	Will Deacon <will@kernel.org>, Yong Wu <yong.wu@mediatek.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, Lu Baolu <baolu.lu@linux.intel.com>, 
	Dmitry Osipenko <digetx@gmail.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Nicolin Chen <nicolinc@nvidia.com>, Niklas Schnelle <schnelle@linux.ibm.com>, 
	Steven Price <steven.price@arm.com>, Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH v7 14/24] iommu/msm: Implement an IDENTITY domain
Message-ID: <37fnmzxe5cqs57gei3i6irsnnybzkbkdjf3nhertw55bb4ke6w@un2o657nczbc>
References: <0-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
 <14-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <14-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230828_135323_230428_BBDE9CC7 
X-CRM114-Status: GOOD (  14.28  )
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

On Wed, Aug 23, 2023 at 01:47:28PM -0300, Jason Gunthorpe wrote:
> What msm does during msm_iommu_set_platform_dma() is actually putting the
> iommu into identity mode.
> 
> Move to the new core support for ARM_DMA_USE_IOMMU by defining
> ops->identity_domain.
> 
> This driver does not support IOMMU_DOMAIN_DMA, however it cannot be
> compiled on ARM64 either. Most likely it is fine to support dma-iommu.c
> 
> Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/iommu/msm_iommu.c | 23 +++++++++++++++++++----
>  1 file changed, 19 insertions(+), 4 deletions(-)
> 

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
