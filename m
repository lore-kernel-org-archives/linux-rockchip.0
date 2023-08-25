Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FAF6EE49B3
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 22:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpYgbmZIUw1isHAux6Ch+4R2k/YF7zVv8P5OdjmxAfA=; b=Nzz/0bihza+JN3
	yiz7BtU5Xt8mTaMoruuXCSpRHyNAlnzHBJiTCmZf0lJ9C0T9m2dvqGa+4zZTXLwKk0TYH5xmb/da9
	LzXzv0plHEcx7CzCU8P0nd62Hh0hisdHiNkG6In1UeQs9fVptRSQcM0SMOimquG44fHA3dwBComwf
	9VHFn2PEh3s5Imx/p37fSkEHpkBbbrfuzkoqwZL/EGnVKuc/Qeu5U7F297pq4/6gj8BFNt1IApGsV
	5sL28qUb0b6fZK2Cbe+6bH2IMwt70Ra0+GseTuXKxdvTO5clwinYDw7c7mJEgJFUFIR6b0SPf1wVa
	eO0LL9mgnj1UAUXsbZOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZf5w-0066AA-25;
	Fri, 25 Aug 2023 22:15:56 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZf5t-006691-22
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Aug 2023 22:15:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693001752;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=kso0bHAJbNi7PoOyIay86CVNgj3x+jo0WkAZo3ICUzc=;
	b=I/b1eeDSrtzINZmmsMuwwvD/o4MHLL81h0N+3E+bVBBHsT/99GKvHzwVtcQhFDKGY5ZUh2
	aNuluPA5ks13R9sOsdrpDZKOKEF8WFMtBCof+T0rTADWLjazWUK6S++HE4L1abuAgURUBH
	XbcZJTwYz5PMETA+3+NSmJaQtaWAibA=
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-582-YNcb_2GaNi2iCDL9VRb5fw-1; Fri, 25 Aug 2023 18:15:51 -0400
X-MC-Unique: YNcb_2GaNi2iCDL9VRb5fw-1
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5735bb13261so255619eaf.0
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Aug 2023 15:15:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693001750; x=1693606550;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kso0bHAJbNi7PoOyIay86CVNgj3x+jo0WkAZo3ICUzc=;
        b=FFZ/WDalwTw3WHCHpVFj9AcoOukF7j8bHV/ypZmR1XSy1SroWDNIXCh1wjSRIIiHXv
         xROBU+siSx5ivb2du2SqUPuasYl0ynDHthvMhqcL+qUw2q7frKm8IrG9dFNi5lmNGqIX
         FRcfPk/yjTLUgVVhiOFwuuZ3rTLiJVwKYJJiWXo3Uz9wgA0uyi9+sRE8hCarXMx1XmlR
         0V1EHfsE2ha1Jn9r/TpUadK0e2e4KTrCKTZ/uu8t5vSJPLe5IcHaaEk2t8vXaHIxSVWX
         XHfOMgTgSeMGLQEhf96KqyZ+Z9DrgdztvSG9dqE25k1mS33VIQKPKoBc98VrHr68PMlB
         970w==
X-Gm-Message-State: AOJu0YwVxra7ue87xYdGscBZncssqZNelxSHcYJn1s5VcGw8QWNRUpW8
	DArJRryPE8pBSARBLUWOZ+Pfph0TdFA3PKUfBRBgHkT7WHNwjFKweP8FkpRXtsTi4kX4V7ZBalM
	upC94GDxkhIBEAhzESyuIDqcqffSyYhPZ
X-Received: by 2002:a05:6358:7e53:b0:139:d0bc:acfa with SMTP id p19-20020a0563587e5300b00139d0bcacfamr20095507rwm.23.1693001750548;
        Fri, 25 Aug 2023 15:15:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFkY4Kv1xGxroqOwtsL16yLvAJMOO7lHXk5XmHI00VwDkZfKODP2FZnPBehYOmoTkQvGLsKdQ==
X-Received: by 2002:a05:6358:7e53:b0:139:d0bc:acfa with SMTP id p19-20020a0563587e5300b00139d0bcacfamr20095448rwm.23.1693001750156;
        Fri, 25 Aug 2023 15:15:50 -0700 (PDT)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id v19-20020a0cdd93000000b0064f3b0d0143sm816749qvk.142.2023.08.25.15.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Aug 2023 15:15:49 -0700 (PDT)
Date: Fri, 25 Aug 2023 15:15:48 -0700
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
Subject: Re: [PATCH v7 07/24] iommu/mtk_iommu_v1: Implement an IDENTITY domain
Message-ID: <yentwv7rhnjolgvcdq23e2tizhpduwbpgaojrmaqnsuzvsrlsh@ey75l3ffixok>
References: <0-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
 <7-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <7-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_151553_759854_EC0139B3 
X-CRM114-Status: GOOD (  16.32  )
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

On Wed, Aug 23, 2023 at 01:47:21PM -0300, Jason Gunthorpe wrote:
> What mtk does during mtk_iommu_v1_set_platform_dma() is actually putting
> the iommu into identity mode. Make this available as a proper IDENTITY
> domain.
> 
> The mtk_iommu_v1_def_domain_type() from
> commit 8bbe13f52cb7 ("iommu/mediatek-v1: Add def_domain_type") explains
> this was needed to allow probe_finalize() to be called, but now the
> IDENTITY domain will do the same job so change the returned
> def_domain_type.
> 
> mkt_v1 is the only driver that returns IOMMU_DOMAIN_UNMANAGED from
> def_domain_type().  This allows the next patch to enforce an IDENTITY
> domain policy for this driver.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/iommu/mtk_iommu_v1.c | 21 +++++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
> 

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
