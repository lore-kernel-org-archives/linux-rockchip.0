Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71932C3DA66
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 20:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDHcB+6+QOCM1jMz/b9+ol6/NcGSM4+YTQ1+qWsOXAc=; b=F1FjFG6YiXgZIP
	4b3dnqtDOQiRbCc3FkEobaPibVottlqzEH/5tK3sQyYOm+oEU7dQmm4TOSExIlYGOgnzNUdfnN62I
	IKudwBIKN3ZYev7RZs6adHlLploPgcfjg9afHSq6LMJtUMbZEsTIZjepOv60cnPXT4JBmPPQq6Dty
	Q42c7YAKwOgrLIIz/172EP/Z7kSRbpCcrc1bj17Xgbbwg6gQQLGj21btkmJrvN0mkNTUEf15DcRw2
	ZDaTJN8vNakp2zilhBss5A/It6SMScm8eAJFuk3U95WpWwiA/u71evMY1PwMNFa3InNaMBlCvvPTp
	YOxv7lzHT3sxOfugu48A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZdLa-005zOj-12;
	Fri, 25 Aug 2023 20:23:58 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZdLW-005zNL-2p
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Aug 2023 20:23:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692995031;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6UBqcsz+qyHMazVNsnwC+GgF7rp1trrk3H8y0CxPC4U=;
	b=h/IiRGuHzZzKuF7AeqrNzrlcYnWBY9ijKnSCsySjI6ejiJL170XTlomgMvf1CPPZLXTPTI
	kTmD/cltb3QDNugiaDR0gmcsCO6WVKHawqHnal+N0NHunjoJWbhdS+bYD8FLKWSnVpAqkA
	EIAdceJGV461QgRB1yxUggtTeTYnntA=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-538-A1MnNEV9Maqy0i4ha2XihA-1; Fri, 25 Aug 2023 16:23:50 -0400
X-MC-Unique: A1MnNEV9Maqy0i4ha2XihA-1
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-64f39876f01so15278586d6.2
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Aug 2023 13:23:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692995029; x=1693599829;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6UBqcsz+qyHMazVNsnwC+GgF7rp1trrk3H8y0CxPC4U=;
        b=fvsoVjqzHud+lHmgoORJFjgrMQbIfnmU7/xhyTV3a7kIwkdODNPdlOF2R0JVcHgmIi
         bUzL9KK6f2GsDwMHoWAOBA+RbwSdHQJMVjaK8JIcAI37lmT6A3b/ZWJ776ZoblBWitm5
         eXX6zfSVC6i7dl8lkK8QOkiF1ePhi2NOa2xJcAc8Abyp28T6DWq63/WllhxJFqKooTPQ
         0/aKMl7+IbZ4zhg9eXF4qPezWISHWCHtBFR8XCyDlrWlLZBUByt4bdyZj04HXWF/Qey6
         h3m2u+SEyyTlYai96i9Wi8emPgEfcXkVTp7LUYCxsOBDh30vF/sHfiL+tVo5eU3DBKet
         ZVAQ==
X-Gm-Message-State: AOJu0YyuHyRyIAQWYaUCy9fov7hLSjTkVYq4YoiWuBYrqSoI3S1k5jxm
	N8lgIGSqjjrbgJ1o9Pb4wyH1ZZw5pMhH8LYNs8iBneHiFiUiD+cYTiqBfHI3B7DpTZkRFf8cOlp
	kN8MI/GxtFFCNvPTwmSETz6KJw0OUn6PA
X-Received: by 2002:a0c:9c06:0:b0:64f:3e2d:93db with SMTP id v6-20020a0c9c06000000b0064f3e2d93dbmr20305605qve.6.1692995029647;
        Fri, 25 Aug 2023 13:23:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhcq54IOGRl9sNdHkLdvPnzpjB/PihT5afG6dr52Z2uB4cbUOhKAsFPETyVjj3ta3v5KMJ7g==
X-Received: by 2002:a0c:9c06:0:b0:64f:3e2d:93db with SMTP id v6-20020a0c9c06000000b0064f3e2d93dbmr20305555qve.6.1692995029386;
        Fri, 25 Aug 2023 13:23:49 -0700 (PDT)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id a6-20020a05620a124600b0076c72dad35dsm738410qkl.63.2023.08.25.13.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Aug 2023 13:23:48 -0700 (PDT)
Date: Fri, 25 Aug 2023 13:23:47 -0700
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
Subject: Re: [PATCH v7 02/24] iommu: Add IOMMU_DOMAIN_PLATFORM
Message-ID: <uwi23vasgop7nrnrvalquu6e4jepyiub7aopj7bcgiaw26zx2x@xslngjsllztb>
References: <0-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
 <2-v7-de04a3217c48+15055-iommu_all_defdom_jgg@nvidia.com>
 <hbmfqpq2oyjjz3loccfbslpalzhlsyr2w3bpx6qasq23kyrfso@e6kry74ifgnt>
 <ZOjneiqLzRRD7ulL@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <ZOjneiqLzRRD7ulL@nvidia.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_132355_011379_D9402D0C 
X-CRM114-Status: GOOD (  23.37  )
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

On Fri, Aug 25, 2023 at 02:40:10PM -0300, Jason Gunthorpe wrote:
> On Thu, Aug 24, 2023 at 06:51:48PM -0700, Jerry Snitselaar wrote:
> 
> > > +	/*
> > > +	 * Allow legacy drivers to specify the domain that will be the default
> > > +	 * domain. This should always be either an IDENTITY or PLATFORM domain.
> > > +	 * Do not use in new drivers.
> > > +	 */
> > 
> > Would it be worthwhile to mention this in iommu.h for the iommu_ops default_domain?
> 
> I did this:
> 
> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
> index 11d47f9ac9b345..7fa53d28feca87 100644
> --- a/drivers/iommu/iommu.c
> +++ b/drivers/iommu/iommu.c
> @@ -1757,8 +1757,8 @@ iommu_group_alloc_default_domain(struct iommu_group *group, int req_type)
>  
>         /*
>          * Allow legacy drivers to specify the domain that will be the default
> -        * domain. This should always be either an IDENTITY or PLATFORM domain.
> -        * Do not use in new drivers.
> +        * domain. This should always be either an IDENTITY/BLOCKED/PLATFORM
> +        * domain. Do not use in new drivers.
>          */
>         if (ops->default_domain) {
>                 if (req_type)
> diff --git a/include/linux/iommu.h b/include/linux/iommu.h
> index 7e9d94a56f473e..6f9e0aacc4431a 100644
> --- a/include/linux/iommu.h
> +++ b/include/linux/iommu.h
> @@ -267,6 +267,8 @@ struct iommu_iotlb_gather {
>   * @blocked_domain: An always available, always attachable blocking
>   *                  translation.
>   * @default_domain: If not NULL this will always be set as the default domain.
> + *                  This should be an IDENTITY/BLOCKED/PLATFORM domain.
> + *                  Do not use in new drivers.
>   */
>  struct iommu_ops {
>         bool (*capable)(struct device *dev, enum iommu_cap);
> 
> Thanks,
> Jason
> 

For all of 02/24

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>

> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
