Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C176AC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Apr 2022 16:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bO7Y3G05UhMZcfj1lxIBK8zz58MIO+hM0Y0erfI7KQ=; b=bt3LR/PzB8gzc7
	3ZgPOq2xQ+2eAyOYiF+ZH0WU7y5vE2YhwcwW9ajNsK6avpZZ9qYdAlWeUAH6l9eIxLzq9gaaigmDn
	s7s+hTpPykPVgY77yXvdPE8Q7gcHhJNmZXe+HO0aduPKPASxzvo5AcrfO/EV/zMX+TQjJwYrvNUKi
	5E/cGFccQQ6gq2gTZ4vjspoZ0KZ1J//FqyQoolSatRPe4KSa/xCdr06guVpsrqR3xvBrWr9Cq8mPI
	BLnIQ6PxS2yeVbBrvfMIkW+ArTWJdLLcW9IaJz/pqPclogJQJe9DwtqOHVyQA34KWAo7U4+GRDxGl
	AAU6Bp76J6zAt6Zr/e2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhDBU-009gwT-Uu; Wed, 20 Apr 2022 16:28:05 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhDBG-009gqW-5v; Wed, 20 Apr 2022 16:27:51 +0000
Received: by mail-oi1-f174.google.com with SMTP id b188so2583174oia.13;
 Wed, 20 Apr 2022 09:27:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=s0Czcu6TCdRJh3Fx3ESiSoL0ZyRIITOPGEegqcioA0I=;
 b=SLY3MkvPKVTVfqGoz3lFjEsKO70qbNlPJcgatFDGLqjOlUtyOIm6/CXg/E/MU9IU2u
 7o8gEhplfQyxBL+ByMjjexoytbJVCst9XczW54TJBgAKxWbXkplFjIfT/7a9p0NQPnXY
 G/i3TV8ArGzsz/Dy8SCvDGCITKRi4Ip1xZQxtoMQs7oW8iLTddPadUuTZCbcanf5qeH+
 g+2ME/H1oDVAR3JwkQJunUNEraCVX937ENZ/WEFAkKNpxGmCuT0OEqdHkTpqkA+kC2ee
 /yXwYRq4mZmgPzOUJC2Rcov+/hLz3RiKmb5OEmGHmt2HRg7dZc4C9Vw19GZQW/KRvrHb
 X9Tw==
X-Gm-Message-State: AOAM531vrZACbEgv0Ujwnu8QXxZizYwBtxN5jVrCAE+KNV52bvxwmIey
 biWFuHBuTL2taVRy+dX56Q==
X-Google-Smtp-Source: ABdhPJyRPm3dclqsf2iFh3UbCM9lc4G9rxreTjcEaDUvEUguNudR6cmXNyCdMlZBbXh2js1oF7+nyQ==
X-Received: by 2002:a05:6808:3010:b0:2f7:3e71:88b2 with SMTP id
 ay16-20020a056808301000b002f73e7188b2mr2159525oib.102.1650472068176; 
 Wed, 20 Apr 2022 09:27:48 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 j5-20020a4a7505000000b0033a47bb6a74sm2123535ooc.47.2022.04.20.09.27.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Apr 2022 09:27:47 -0700 (PDT)
Received: (nullmailer pid 1428607 invoked by uid 1000);
 Wed, 20 Apr 2022 16:27:46 -0000
Date: Wed, 20 Apr 2022 11:27:46 -0500
From: Rob Herring <robh@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 Simon Xue <xxm@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 1/4] dt-bindings: pci: remove fallback from Rockchip
 DesignWare binding
Message-ID: <YmA0gokzLKqX7dxP@robh.at.kernel.org>
References: <20220416110507.642398-1-pgwipeout@gmail.com>
 <20220416110507.642398-2-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220416110507.642398-2-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_092750_253962_7FEF9ADE 
X-CRM114-Status: GOOD (  12.63  )
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

On Sat, 16 Apr 2022 07:05:03 -0400, Peter Geis wrote:
> The snps,dw-pcie binds to a standalone driver.
> It is not fully compatible with the Rockchip implementation and causes a
> hang if it binds to the device.
> 
> Remove this binding as a valid fallback.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  .../devicetree/bindings/pci/rockchip-dw-pcie.yaml    | 12 +-----------
>  1 file changed, 1 insertion(+), 11 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
