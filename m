Return-Path: <SRS0=EhM5=J4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D15C433B4
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 May 2021 01:35:23 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 47FB4613D8
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 May 2021 01:35:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 47FB4613D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/kK5TQc//KCNxT5ekUZQJ4fcx3FRAB07ejTnk7BdxVE=; b=cukVNE4vvOTMnVflw00tJr4CW
	gIz5L4S5FbpwHGiO5EJI/8n/NK8RU4OrgxZSQfZ2wiPvdTH4twq2A8aGT3Dn6yXCpgRDV2bijmEbe
	dQrTf3SxLLAkuz5FigMHNMJhN5z1tvNuKfInC1SSaUHRA2EXURmEkhB7xdLPThfW2bldEM9t61/lC
	7q2FJ+/8rMNfTIUhuIuF2TD26WBuH/B3o+H2J+U+wMgPYVc5DT4gKGPTfaBODrZCav9WPjszaJ1Ar
	yCt+wqPLlJ1sq3nOlWISlnC/ltJc5mpkj6KZT+2D+q+p1bmIJP/3YEE76aGm9CcbKzaVBmDiogSHh
	/non5Xgwg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lceXJ-0095iY-5H; Sat, 01 May 2021 01:35:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lceX4-0095hZ-J4; Sat, 01 May 2021 01:34:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zUXpAoI/KzwgrARmWw+voeZ0INm/PtgvJecf6NLxWtI=; b=1HjdCR4m+5vzaeHdMZv9oMKD7y
 Z5Hzu06lXxhIj1ieXmKcnal7eZl9kD5dbdXQkvw/eDglLPBqMFo7X3wmSosMgrAWF4gWdHiOgs4Sq
 K2o/TuxiX6eUxoO+h4TIHnObZriKEYDF645xaMb530NRZxFwR1r8kEn6i7aMynsXT7cWjeF28bUC1
 J8UbIiZJbseDjFmtpD7a+SnpUB0CJ1LanDUt1KVmjuPpHNGQ/DJrlTW+AC1nN6OyReOSbSJFV4gF8
 NbGduEtOuQ6vB7cjZK5AZxVVNJOv8zYXvdNO9mr2XaX12Kp5Z/sTdSpa0Jrx+YF/tr+dKqr0BO+el
 mR7+5fcQ==;
Received: from mail-oo1-f41.google.com ([209.85.161.41])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lceX1-001mJW-TJ; Sat, 01 May 2021 01:34:57 +0000
Received: by mail-oo1-f41.google.com with SMTP id
 i9-20020a4ad0890000b02901efee2118aaso39086oor.7; 
 Fri, 30 Apr 2021 18:34:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zUXpAoI/KzwgrARmWw+voeZ0INm/PtgvJecf6NLxWtI=;
 b=Uu/qQaZkFtGKbb+BRZ2SEcz+O+cOuEXrsUvhor+8Pqj5QGqtFx/OpPU1qYA7Y8FXIB
 uC3srDXJxKe8SC/xAFwl/pECNtqZSKrcdYWxX1jDDgHfWbMxr3jubyUj7TITXXTkgLhu
 /yN3U5UpnbM4qvamBKSrX1WYRebYfaRf2iza6BAlBGw48jCMmSOJhYrGeEa7VVZmcrEI
 a+4Agtrp6DXPgtNJXXecORCyInBwO7RjpNPv5/pxNPDcPskfUwpkUQfKlRYrfUhtry7e
 9uNEo8FgtbUuta9/bHXwNQNnHZjVr54chdlzYbknGDLKL+ohp1R6zLCT7viTDexj7D3g
 N8yw==
X-Gm-Message-State: AOAM533Cn4A4P1Bk4EIPPduwmjOX6cOxm8XYYljnzQMD7+LDa2pQJOen
 I3n9N3D/Lvbz6gViiWz3pw==
X-Google-Smtp-Source: ABdhPJxUbLnwv8w2KIA2KErjdTKoBtPoNxqe9/Doqh2tks/IILgB7WLqP++X9JxZZnzRy/SkywjjVw==
X-Received: by 2002:a4a:d781:: with SMTP id c1mr6861569oou.44.1619832891658;
 Fri, 30 Apr 2021 18:34:51 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a23sm56732otf.47.2021.04.30.18.34.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 18:34:50 -0700 (PDT)
Received: (nullmailer pid 121538 invoked by uid 1000);
 Sat, 01 May 2021 01:34:48 -0000
Date: Fri, 30 Apr 2021 20:34:48 -0500
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, heiko@sntech.de, xxm@rock-chips.com,
 iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v2 2/4] dt-bindings: iommu: rockchip: Add compatible for v2
Message-ID: <20210501013448.GA4001859@robh.at.kernel.org>
References: <20210422141602.350746-1-benjamin.gaignard@collabora.com>
 <20210422141602.350746-3-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210422141602.350746-3-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_183455_970237_AC780F61 
X-CRM114-Status: GOOD (  17.65  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Apr 22, 2021 at 04:16:00PM +0200, Benjamin Gaignard wrote:
> Add compatible for the second version of IOMMU hardware block.
> RK356x IOMMU can also be link to a power domain.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 2:
>  - Add power-domains property
> 
>  .../devicetree/bindings/iommu/rockchip,iommu.yaml          | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> index 0db208cf724a..e54353ccd1ec 100644
> --- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> @@ -19,7 +19,9 @@ description: |+
>  
>  properties:
>    compatible:
> -    const: rockchip,iommu
> +    enum:
> +      - rockchip,iommu
> +      - rockchip,iommu-v2

This should be SoC specific.

>  
>    reg:
>      minItems: 1
> @@ -46,6 +48,9 @@ properties:
>    "#iommu-cells":
>      const: 0
>  
> +  power-domains:
> +    maxItems: 1
> +
>    rockchip,disable-mmu-reset:
>      $ref: /schemas/types.yaml#/definitions/flag
>      description: |
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
