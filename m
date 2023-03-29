Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FD66C6FD18
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Mar 2023 23:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKe8UJCeKFHnk4+o76XAMu9r/QeyGSPILunM6Jp9qsw=; b=RsaulLOntYprSl
	2ZpNP9C71v1Kqwdo6Vkx9lj/7o7Mr/txmVj3EVvMLUIYt0ZVC6MKoNvuwdqFNpZ1U/50sLsr+yw5R
	tl9eCiVbPIugMQcz9yePhL7wg4IQBuhU4lfj3wu5/++0VRZ9LF/oR2qDm+JPn5R3mGs4ZIaqx03sQ
	42de2XtjxBM/Cl1PsAZ4UNSDj/EgNp8EyJRwlcsk14t3v+YPIprqimMTzg1vo+Fv7NIMKEO7yaSTq
	gwgWfy9XTo8icJmeSJhKbRGhaKAmqjW3JBWg3Rb/koLWzNy308/bZkH7SMoeYKYPoRBLMGJNpYStA
	fJo99ZmrbebwspQAjOCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phfQh-0025Po-0q;
	Wed, 29 Mar 2023 23:42:11 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phfQb-0025NI-2g
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Mar 2023 23:42:07 +0000
Received: by mail-qt1-x831.google.com with SMTP id t19so16736190qta.12
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Mar 2023 16:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1680133321;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M7C+py6MtCoeCMOtw25BrlCO3RIdyKIetyPlMUWcAxQ=;
        b=or5zOdb0THcrHSRrNF/aWpqr5y5XACt17c51B2fuOW5sIxoj2mxKk9QPCHXd0weuMi
         hnjPrhDD9X00VxhDRyGWzEdQaeUnYGGNVBIvm9NdJ0z50h4PG9uK/AbqfIt+KuEViqwk
         JMM5cDJ2p6Ibr/BwfCk3C1SKBmRh1EslZACPJQ899Ch1m4XCYwbv+spFie8OO9H1NGMd
         dSWXfMR537z5wT9f+bGJgtTobSqzNyVbAqczhBYbiJ434wSDGKN+LAwp1+ntSjG3vP2F
         N7qWsyB3f+eC4E5HMMZTbKMLErH/sElNNBOzKtXz/YGwiDkAtAAhK+4KWLoTciVd0//H
         yxpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680133321;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M7C+py6MtCoeCMOtw25BrlCO3RIdyKIetyPlMUWcAxQ=;
        b=VK35J+ekI8c5QUVNT33fNUj2hWc4QQNB2Ek5ciURkwf7U/4QizZJCudJbBCXo4HTjA
         tVQ+PMTo2YIjA8tbC62KowzRSqd8WtkYW+rTSdpngExTL2OBxubjJNNA1lRhXgFJA4da
         R0UMdXHExOoG9PmsSrf6uOmhSrpiR2LHMw7WzFxXLKaMgEWTzPZ4C3qscBHVd6A5fNvV
         6gXqfZ7YHevP2Qf0FOz1hz3ypvz5UC65a51bPlycnGZwOuScQA2xa5zhCpCNHsLYVQLN
         RAMgu8wWtOrQLwTgqJbW4arsqvx8unKmhdQU0vyCULh+kLjBHxlrOINXDo/T/T8H67XZ
         USyQ==
X-Gm-Message-State: AO0yUKUMf5bECZEqFZrbynDZGTlYg8Gp2KF5uOdCJJ2J2GskL0V+NIHx
	zfOiCvDZ9McUUZ59hhF5QR2+uA==
X-Google-Smtp-Source: AK7set/r+pGsJrPMn0D9D6pkZb7SUCn2k/XDNs/gApUMrPEx0RFz+B78D/mL8S9HzmDoO+y4IPCuSQ==
X-Received: by 2002:a05:622a:1ba3:b0:3e3:98b5:69c2 with SMTP id bp35-20020a05622a1ba300b003e398b569c2mr26020425qtb.62.1680133321368;
        Wed, 29 Mar 2023 16:42:01 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-25-194.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.25.194])
        by smtp.gmail.com with ESMTPSA id h22-20020ac85056000000b003d5aae2182dsm8863730qtm.29.2023.03.29.16.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 16:42:00 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1phfQW-004hQQ-86;
	Wed, 29 Mar 2023 20:42:00 -0300
Date: Wed, 29 Mar 2023 20:42:00 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Steven Price <steven.price@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] iommu/rockchip: Add missing set_platform_dma_ops
 callback
Message-ID: <ZCTMyHifYJfGZqRg@ziepe.ca>
References: <20230324111127.221640-1-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230324111127.221640-1-steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230329_164206_168252_28A7CB79 
X-CRM114-Status: GOOD (  13.83  )
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

On Fri, Mar 24, 2023 at 11:11:27AM +0000, Steven Price wrote:
> Similar to exynos, we need a set_platform_dma_ops() callback for proper
> operation on ARM 32 bit after recent changes in the IOMMU framework
> (detach ops removal). But also the use of a NULL domain is confusing.
> 
> Rework the code to have a singleton rk_identity_domain which is assigned
> to domain when using an identity mapping rather than "detaching". This
> makes the code easier to reason about.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
> Changes since v1[1]:
> 
>  * Reworked the code to avoid a NULL domain, instead a singleton
>    rk_identity_domain is used instead. The 'detach' language is no
>    longer used.
> 
> [1] https://lore.kernel.org/r/20230315164152.333251-1-steven.price%40arm.com
> 
>  drivers/iommu/rockchip-iommu.c | 50 ++++++++++++++++++++++++++--------
>  1 file changed, 39 insertions(+), 11 deletions(-)

Aside from the pm stuff this looks OK to me

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

Thanks,
Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
