Return-Path: <SRS0=rr0l=KQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1726C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 11:52:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A3FC16100C
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 11:52:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A3FC16100C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x7pYrKGTPwUBXscnY1BuTA/knYtOKikx2b9DrBPwqr0=; b=PR2xbYdql8/Tov3FSs+g51B5Or
	Taw/fpTFgTbJMjumKnP9INAKzzrvodezRg0IkOSUwhxiCVCjsswtb7XonJt3PnJtzLV0PTExYi0sL
	pUvlZfqDN9UYoMuyRasVnUoSQrmw7IJpyOB3ba+WT25mb0Rp/mIi5MSnxlp4yxdeVqld4I9UTMWuW
	QJVeZaESiOGs73DFodWMSw6fZCfGjNhEV8wSLm7GVsXDzYvZpRoAcTRELfZ8gstoLvnG55DUcCI8h
	oo1d6nlYehiuZJuTVjoPdmXNjLWVwvZbKyA3/EuyC37IwUo2amiQMhlZ/MSfAVTrW9uwxemeXWnk4
	n2M+XyKg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk3hj-005Dxt-2u; Fri, 21 May 2021 11:52:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk3hW-005DsV-Oq; Fri, 21 May 2021 11:52:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=2T54WRCUEdfQCzx+maqIWC74zdLEvM6JtM5Z2PAMb8g=; b=EiEn3K9LuFz0hBFKIDcnnAZFfT
 Xd5hRt6gK7wToK+VY/C1LucB6MH2kRNr4WnOpnH0bQWgmvUOxJeMRvO1A/tksKQi25T4tSOUHoy9z
 IWKi2vwhRguDt+/Ujvqw1dZLZsjOUIa3VQixt/R2nsS93mSQiGe2F+IJ7wpnQjZUS9OZeaCa3aQJq
 aYLC1/X3r+zsleecZ5YawQq2MEUe8xEY3SB2ZhJKDzZ3bLb9uzyq1bRHotOW+RaD/Yz8CdAbbkW6F
 LjbJA/t4gHWavq2NH5gOo33j8dub1+7MvYuZRWzHl3O1WKeZH+3OsbOQuNGM+ricGYw4sGyHMbxdX
 l+zvXWSQ==;
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1lk3hT-00H4up-UY; Fri, 21 May 2021 11:52:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 599081424;
 Fri, 21 May 2021 04:52:14 -0700 (PDT)
Received: from [10.57.73.64] (unknown [10.57.73.64])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7176F3F719;
 Fri, 21 May 2021 04:52:12 -0700 (PDT)
Subject: Re: [PATCH v5 2/4] dt-bindings: iommu: rockchip: Add compatible for v2
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, joro@8bytes.org,
 will@kernel.org, robh+dt@kernel.org, heiko@sntech.de, xxm@rock-chips.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Rob Herring <robh@kernel.org>
References: <20210521083637.3221304-1-benjamin.gaignard@collabora.com>
 <20210521083637.3221304-3-benjamin.gaignard@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <40954168-ba5a-d152-2a24-441d5331f4ec@arm.com>
Date: Fri, 21 May 2021 12:52:07 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210521083637.3221304-3-benjamin.gaignard@collabora.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_045220_068586_4D3D226A 
X-CRM114-Status: GOOD (  17.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-05-21 09:36, Benjamin Gaignard wrote:
> Add compatible for the second version of IOMMU hardware block.
> RK356x IOMMU can also be link to a power domain.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>   .../devicetree/bindings/iommu/rockchip,iommu.yaml          | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> index 099fc2578b54..d2e28a9e3545 100644
> --- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> @@ -19,7 +19,9 @@ description: |+
>   
>   properties:
>     compatible:
> -    const: rockchip,iommu
> +    enum:
> +      - rockchip,iommu
> +      - rockchip,rk3568-iommu
>   
>     reg:
>       items:
> @@ -48,6 +50,9 @@ properties:
>     "#iommu-cells":
>       const: 0
>   
> +  power-domains:
> +    maxItems: 1
> +

Nit: power domains are already present on various IOMMU nodes since 
RK3288 - it feels like strictly this should be in patch #1 to fix the 
existing binding as part of the conversion, but on the other hand I 
can't really imagine anyone caring *that* much about dtscheck bisecting 
cleanly :)

Robin.

>     rockchip,disable-mmu-reset:
>       $ref: /schemas/types.yaml#/definitions/flag
>       description: |
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
