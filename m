Return-Path: <SRS0=rr0l=KQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C24C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 09:18:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43CC6613B6
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 09:18:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 43CC6613B6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FSInZwVDRODJ3RBUexirE51whJGaqS6A5N/VK5G0fLM=; b=Rzwpa2RroyOeLbkXklonu02g+T
	AraovQT+nv/LLDmvGDhkxNR1b1eExSadaZry8z/r7nGegdEjtF6ecVq2pHFAPwravPPuiBtAtxgRm
	cDOD9NrXjOsWUupyNrvfqeODoyvPUcymNcnMTYKMwsoXYjRp2VdL6ANTBLAnlFG5t+FYV/N0Vb9Og
	7l9+EIr51/60Zein1AZPzvVzsl9rBc5IFS3bLpWpuaKjQKvhhjSJUFbxBRr4ePfJmFGPKriI1GDF9
	uQi9wmKNesIqYIQVK3KCojgVdvVTn8fXcdjtUzvc0A1EiCKgfCQhbr2WN/8Z3B3N0ElI/5NiOKr0+
	Zv5+s6bw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk1Ih-004fjp-Jh; Fri, 21 May 2021 09:18:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk1IT-004feS-Eq; Fri, 21 May 2021 09:18:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=1R1PGVcYnfIIEHzYpJdo4HneH60Vq+4c6fwfj+PuRU8=; b=ZqhSIF198UxJPMmRWZRhElmlwG
 7/9SytUlLTLY/by7by/ftvQFTY6plky/iGn2O2ILBHzVu9OS6jHyFWEDQM116Bo+lnS7DEw7FNJVA
 xNk9ZqbkUUn0oJx8pe9A9iehPcXXpb1EIEb96ChrdByD3Uk9nw3L+Bfnmw/F+OWvpszOaqFguXPAu
 DHMWzRdsQKRtSwUznozLw+6Lvsf0YNUMx+9qr3r+6x2MAm6c5J5HImd1xKpDjKBF9iTwf987AlZGS
 5Ld67yKjSjOpKPygepMKSCJiD/EETtvTM1CR+c3WqYcvN8Q+xrkMVRiMD2EeUwlB4u3HT7K+RQnbM
 op6Wl6kQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk1IR-00GyyK-10; Fri, 21 May 2021 09:18:20 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lk1IM-0004wJ-U8; Fri, 21 May 2021 11:18:14 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, xxm@rock-chips.com,
 robin.murphy@arm.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v5 2/4] dt-bindings: iommu: rockchip: Add compatible for v2
Date: Fri, 21 May 2021 11:18:14 +0200
Message-ID: <5569103.ejJDZkT8p0@diego>
In-Reply-To: <20210521083637.3221304-3-benjamin.gaignard@collabora.com>
References: <20210521083637.3221304-1-benjamin.gaignard@collabora.com>
 <20210521083637.3221304-3-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_021819_097235_F2A471E0 
X-CRM114-Status: GOOD (  16.96  )
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

Am Freitag, 21. Mai 2021, 10:36:35 CEST schrieb Benjamin Gaignard:
> Add compatible for the second version of IOMMU hardware block.
> RK356x IOMMU can also be link to a power domain.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  .../devicetree/bindings/iommu/rockchip,iommu.yaml          | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> index 099fc2578b54..d2e28a9e3545 100644
> --- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> @@ -19,7 +19,9 @@ description: |+
>  
>  properties:
>    compatible:
> -    const: rockchip,iommu
> +    enum:
> +      - rockchip,iommu
> +      - rockchip,rk3568-iommu
>  
>    reg:
>      items:
> @@ -48,6 +50,9 @@ properties:
>    "#iommu-cells":
>      const: 0
>  
> +  power-domains:
> +    maxItems: 1
> +
>    rockchip,disable-mmu-reset:
>      $ref: /schemas/types.yaml#/definitions/flag
>      description: |
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
