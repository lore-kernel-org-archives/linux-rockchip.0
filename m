Return-Path: <SRS0=/XqT=PP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2B9AC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 15:41:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BEF9160F5A
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 15:41:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BEF9160F5A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NP9qXry4dyKNPPbfPqrQCWE731B71u4cTLapN3p8VjM=; b=GIOSj+CGxCI3Cg
	xWKuFdVmQ70aApyo/ztHji6iZfLVNrQuenf8X0ICnjsDU7+CLqW8HzF1RbS25ZFz9jN4g9gzh0CcU
	mlGcp/i+RbQE8+qSVtawBXq1AEJGTY0Qe64vhql9r5SLIV00HicDnyhPr/1c8ggluQlkzzTGv+4dK
	NduYWn8vFMqik2AQUjSHOoztS/6cSK9xZbmOAawGgp5Y8LlLt/BarOodva/dYLcchtzL2vdX0fTdX
	QXhW0o6vUrgZBHto2Hu8wBj5aWyvEqzd6X5aFOyVNc6A5vC1EOz146XUCLcB4bgAutY5vNP4cO9m3
	4aztd0a3CElrB3prxXvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfl3P-005M2A-5n; Wed, 27 Oct 2021 15:41:27 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfl3M-005M0y-IH
 for linux-rockchip@lists.infradead.org; Wed, 27 Oct 2021 15:41:25 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 l24-20020a9d1c98000000b00552a5c6b23cso4129903ota.9
 for <linux-rockchip@lists.infradead.org>; Wed, 27 Oct 2021 08:41:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=opFLfarytUi1LIEZfIIbq2GqDGG5zGCf1kpvMwl8K2o=;
 b=ALEdEC3xTOXDPJz6h/COh/VDEnmGY8pzAt7k2eamk5WEh8cz2XLXUEZxkDBfKtcnwy
 GlXRFKcM1XW6RPkkZFJR3SM+OqwDUkBVlJ0s9WlEqI9EaI2TR88NnnmrCjwSfL0ncZki
 6SdHfEOM36TZuMkBgFmXn8VM5DYvRJDG1+wDsR3AGrxqS20BYNMfOhl1EbSGS8cx9UHq
 oBbiln3SioyeuzihoFC+l13BKqOz+fsKDcUwf2Ioc56j4gYIFnBXpEm+hvFHsTkCEoSk
 M6iVPIYFQhxZRPKOE+mzBhTuMaewYu+VZfJElNr/EQuc2CyQePw/+Dlnoh4QZJg7h44F
 4yYA==
X-Gm-Message-State: AOAM532KtXGmfFzzbPdLTaXwaJcYDY6ei17/w/jo0RWrYDA+C0AklM8l
 N/tl73zrWo3tu3y382MdbQ==
X-Google-Smtp-Source: ABdhPJyE5f+gyHfDgDNIlsabVc/02zgDD1060UqyWHOJKpNCFIfxwQCMvMH/b9IbViiwtU6ZowWDDA==
X-Received: by 2002:a9d:86e:: with SMTP id 101mr25374838oty.177.1635349283615; 
 Wed, 27 Oct 2021 08:41:23 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id k4sm73561oic.48.2021.10.27.08.41.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 08:41:22 -0700 (PDT)
Received: (nullmailer pid 1007478 invoked by uid 1000);
 Wed, 27 Oct 2021 15:41:22 -0000
Date: Wed, 27 Oct 2021 10:41:22 -0500
From: Rob Herring <robh@kernel.org>
To: Simon Xue <xxm@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v9 1/2] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Message-ID: <YXlzIsTk2lKVpZtv@robh.at.kernel.org>
References: <20210506023448.169146-1-xxm@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506023448.169146-1-xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_084124_657664_0BCAF109 
X-CRM114-Status: GOOD (  10.24  )
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

On Thu, May 06, 2021 at 10:34:48AM +0800, Simon Xue wrote:
> Document DT bindings for PCIe controller found on Rockchip SoC.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml        | 141 ++++++++++++++++++
>  1 file changed, 141 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml

I don't know why this didn't get sent with subsequent versions, but it 
should have. I've applied it now.

Rob


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
