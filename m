Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6DCAC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 15:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHdO+7YFzLty6XeS2cmJJIdujZX0XN6WXP6kUjRlGkI=; b=iXC71SupYLplpJ
	YtdNPv4qHdMiRdA4ZJiBd7oieuEYUF1ilxb1i5vMKlyvCl8llVmNJDHsyT6A5zn8bdFFwfbmQkwZs
	987pVX5j6JFjwEol4Pt5WZKXj4hrfM2wuQ/sxsp7fWupNIef08ZuXvfT293ANhkUogkk/tVIBVvPO
	6FZiJWQ8vQoq+hKtI2A/ElelaqtHs7yzhbFonSTjDqNlI051SMGXUyXcUsG3uWY4yIVNCfWOdymPC
	yUuwtx/gRdsiyTPZIEtRBag2Q9Kqh7i5REph7uKlzChEml1Oef1B3OY3krjyrjU4tmR5RbPQG2c4j
	YYj093y3YfZs0/1ETziw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pf0Ci-00GTPR-0x;
	Wed, 22 Mar 2023 15:16:44 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pf0Cc-00GTN5-0v
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Mar 2023 15:16:39 +0000
Received: by mail-qt1-x82d.google.com with SMTP id t19so8914804qta.12
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Mar 2023 08:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1679498196;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+HBQCTOq+QqVNkJZ+4QIpkhFmpEgZaWVINrTQNwuq8s=;
        b=jtA9AxTTQYLWB7g+hH3bMTXf6/+n7o0yqNShap1Y/5kaqMz+ZsQnoWfMK1YEkR6vDv
         uMbSfqrKL63R8h/d8AAZZxfhib1Yl8fU/pUs0IRRH/JLWeU8RlOS9nlRbvSWA9kYGUip
         4yJwpCY5y7QdCfczUsHb4aoiMShjYNLlqTJhvKfdjKrkbGAf+Ta21paUjWRmky2YCMrn
         N3M3oBmgh14x5VM9Z6JOP1a/w38eI60Cx3MmdhFC2PPDKJBJ6mFobV8yTrRjb4CZg6gU
         HVcsrp6lVMLs1xFPb0KY92STzTZ/CNk7B2shU5ztbNJAK9qBev/T+OqBSPBW+eg5XXr5
         aUNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679498196;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+HBQCTOq+QqVNkJZ+4QIpkhFmpEgZaWVINrTQNwuq8s=;
        b=YLgw5UiKWUzHKrYVfSLMYVt0++/qHMRCpWpOUK1x90lj8tdX79nSgIy0QDygouEaMH
         sq0o9eQiSmDMGiokx/WnYEoAhIaVeiIxEAG5kvqxoYz/xjL5lWEdjnN9rGQi0gGMcmrm
         RlDFoWhYlNwo60/d9Pd1NG6v0JOgTLY3QcdTu6dDlVc0WYzLi4Z5QKJrLIcd5Q2izj79
         ngXDu4cqcBMRlCyKMj4j2INOOV1Lt2VWjB7xcRpeXdIgyXirvYV3bauMHe64pJ96V13E
         hArsUrZCdcnXiMludS7lh+MG1ooIU2dYqiBW3U+Mxw5upl3JeyvcaVnSwNeb+iAXUNT9
         TLZQ==
X-Gm-Message-State: AO0yUKVO0ANS5k6QS5SiopelyvHNcq5yLcs6jaUqmycrL8x27li8uTC7
	e6LzmXj58BTN2pameD7Q3ECTww==
X-Google-Smtp-Source: AK7set+HNhejSvnBIYwhuwgNNsDv6NGN+2OSNq9lmKgrCuFnU40+7H4+Cr6NnogIE+bN3TKzqj+3nA==
X-Received: by 2002:a05:622a:cf:b0:3e3:7dff:663e with SMTP id p15-20020a05622a00cf00b003e37dff663emr4344627qtw.27.1679498196355;
        Wed, 22 Mar 2023 08:16:36 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-25-194.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.25.194])
        by smtp.gmail.com with ESMTPSA id t21-20020a37aa15000000b00746b7372d62sm459437qke.27.2023.03.22.08.16.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 08:16:35 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1pf0CZ-000oxC-3N;
	Wed, 22 Mar 2023 12:16:35 -0300
Date: Wed, 22 Mar 2023 12:16:35 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Steven Price <steven.price@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH] iommu/rockchip: Add missing set_platform_dma_ops callback
Message-ID: <ZBsb01emBJJMZIt0@ziepe.ca>
References: <20230315164152.333251-1-steven.price@arm.com>
 <ZBnBU9OU4iV6CV0W@ziepe.ca>
 <85607806-b888-2d5e-67a4-e9d63ebd1976@arm.com>
 <ZBr5e6tn1i7EE/16@ziepe.ca>
 <a5b946f0-5be8-a656-a8d5-1cd75399f0c4@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5b946f0-5be8-a656-a8d5-1cd75399f0c4@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_081638_594862_EAB6DA37 
X-CRM114-Status: GOOD (  12.48  )
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

On Wed, Mar 22, 2023 at 03:08:41PM +0000, Steven Price wrote:
> @@ -1035,8 +1055,9 @@ static int rk_iommu_attach_device(struct iommu_domain *domain,
>  	if (iommu->domain == domain)
>  		return 0;
>  
> -	if (iommu->domain)
> -		rk_iommu_detach_device(iommu->domain, dev);
> +	ret = rk_iommu_identity_attach(&rk_identity_domain, dev);
> +	if (ret)
> +		return ret;

>  
>  	iommu->domain = domain;
>  
> @@ -1049,8 +1070,6 @@ static int rk_iommu_attach_device(struct iommu_domain *domain,
>  		return 0;
>  
>  	ret = rk_iommu_enable(iommu);
> -	if (ret)
> -		rk_iommu_detach_device(iommu->domain, dev);

I think this still needs error handling, it should put it back to the
identity domain and return an error code if it fails to attach to the
requested domain.

It should also initlaize iommu->domain to the identity domain when the
iommu struct is allocated. The iommu->domain should never be
NULL. identity domain means the IOMMU is turned off which was
previously called "detached".

Otherwise it looks like I would expect, thanks

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
