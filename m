Return-Path: <SRS0=eK8e=KC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2497DC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 20:15:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B65106145A
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 20:15:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B65106145A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uvnC/cv3yzH8tizup93H27Rv5PeNK5RtxIZv5elH4+U=; b=cwUURlz75sjMui0V8FdihuLXj
	is6AQUb8Uv6+4ZbIc1L1zR3NMeJdbsZ8UeysrKlYueNleIeCGpvRbisSyO505Am2FkUv2G1QwxXbM
	MV9j+3BniAYTe6XmrpvOXh0++j++nGdLznGsJgGD76V6jHjaD8mj9+PRjxjJaHSdpnwlG1z3V5xYT
	WHeSQaRR5iNdF78B5OgbXWaQUy2hghc75mfbKGrCR2kB+VJ9bQA+Q3/TPPCLZPdBTOlT02pdbp1mC
	b3ZGlGKptEvcM9/PUbq8l+0g9edOyobIbLUqL0T12oF75beHXqX6PfZeih8D59iyV3iY88uL0ccu8
	TcBJC2vNQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf6sa-007wjG-SD; Fri, 07 May 2021 20:15:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf6sY-007wiy-Nf; Fri, 07 May 2021 20:15:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=7l4JEUMp2ZnRM1Fn/oKHA3iE5U9Bk3RHSfWh0z09m4g=; b=cxv+ad7eOx+UsoTX1JgcAUYyK0
 uP/03b5JNdoTDgVnoZm77VjZa40iKx/sLONgJK1uW7FF88KNvKKxgUsTgB6IBd0Fb2EnzCPO1+l4G
 PaURt/+8eyX1OXv0re9dXr35E/85YkbyblRchMd/PKuL/xoLI0k+NqxUx0YZy3qP12MnFxOPDRPW3
 e6zTOIsvvzocUcyAOsOeyApEQrUta/F8mmgzCIKRb+KF7gpHWT1X+qIhASpL3w9HwpjLATthHSQBg
 /jcr8QCqZ9tfRcBtCeAyUS+y6Mu+31xjF4kwGuIUvvPD/tzp7n9j/5kTaKv32dx5v29uhPE2o3bxd
 v9U5D4IA==;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf6sW-0079yH-5A; Fri, 07 May 2021 20:15:17 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 i23-20020a9d68d70000b02902dc19ed4c15so4954217oto.0; 
 Fri, 07 May 2021 13:15:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7l4JEUMp2ZnRM1Fn/oKHA3iE5U9Bk3RHSfWh0z09m4g=;
 b=ooXBtCQISmPONtpMwXDexJssG93+AtB1gkKNQo2bbkcfSNxeBMJ084wmGZs3LmtYSj
 u0lMzQ3K9Jt3DKdI/NH5bmTveGyEn7qHgTZd52dcuptoXWjVv6b4EI1VuxbiCWvAN/73
 Gk3TE3HwNZ2N/z/8vzuqYNO5tXv7zIJm12BPxrLMyBLsXUAcdRkzPQkXIKcILroT/O45
 ua/o/RN0BOSnkaXUDXztBFXwOOAbwibDWErxJ/pvdWPdUm0JTGjRRs7yzTUW5r52nOda
 mF6swhM0Mwh+Cizn/zY20vrKwnzQ2oZzDxMNpVn1ZBxBUQB//jeqFYV7XUAsIVWkp++e
 kCwQ==
X-Gm-Message-State: AOAM530USQHykX2gkLEmKt63veEDYKG56ZP0CL8SXuWWiHAo4oEoM4VU
 tZCbJC+os59aSdCU6awo2g==
X-Google-Smtp-Source: ABdhPJwZzmjv8nbBXzcXjgH90d5sMNPJTOhPzToTWSST5h3nq6f1xTuf4EGckNuXIFBESPM0VULEFw==
X-Received: by 2002:a9d:58c5:: with SMTP id s5mr9978209oth.243.1620418513731; 
 Fri, 07 May 2021 13:15:13 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a23sm1413738otf.47.2021.05.07.13.15.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 13:15:13 -0700 (PDT)
Received: (nullmailer pid 2805625 invoked by uid 1000);
 Fri, 07 May 2021 20:15:12 -0000
Date: Fri, 7 May 2021 15:15:12 -0500
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: devicetree@vger.kernel.org, joro@8bytes.org, robh+dt@kernel.org,
 iommu@lists.linux-foundation.org, linux-rockchip@lists.infradead.org,
 heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, xxm@rock-chips.com, will@kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v4 1/6] dt-bindings: iommu: rockchip: Convert IOMMU to DT
 schema
Message-ID: <20210507201512.GA2805596@robh.at.kernel.org>
References: <20210507090232.233049-1-benjamin.gaignard@collabora.com>
 <20210507090232.233049-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210507090232.233049-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_131516_217824_00434467 
X-CRM114-Status: GOOD (  10.81  )
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

On Fri, 07 May 2021 11:02:27 +0200, Benjamin Gaignard wrote:
> Convert Rockchip IOMMU to DT schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 4:
>  - Add descriptions for reg items
>  - Add description for interrupts items
>  - Remove useless interrupt-names proporties
> 
> version 2:
>  - Change maintainer
>  - Change reg maxItems
>  - Change interrupt maxItems
>  .../bindings/iommu/rockchip,iommu.txt         | 38 ---------
>  .../bindings/iommu/rockchip,iommu.yaml        | 80 +++++++++++++++++++
>  2 files changed, 80 insertions(+), 38 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.txt
>  create mode 100644 Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
