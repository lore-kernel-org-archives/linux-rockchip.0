Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 133C9C001B0
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 20:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9h4hawt9Vpd8u3eLW5g3Ni820cR10zObUD7alyKMUE=; b=Hs4uxfqPFn1S+D
	v54JRmqpkNPjhvQlbeuPUkkrcArs0wpK5RiYMMn+VupZ6Zz8HShDwx5hGuoxXERCuF7xrfMGl+vds
	TPO+lQxk56eyjoDjd8iuIL5WMwYj4bEzZcfwcQRMl7y676jjRwTJPK0/WkFv3FrHMpuza8uyt0agv
	iUdQa8RrR6XEueovmOCGUqQoPSQY3w+Iyg3LTzJlcb1sgG8V92Y/MA9Iu1ItkQmT3a9yzJXDkGmkZ
	QFdy1hb4wQLl1EFEYvFMjsUNeNeUcg3dHq+vVaf4VoyhdOtH62iDUvc9mqF35uXJuCH3wiKif3B+y
	i369dOfhKp9PrbAVQGwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qK2dV-004HaP-2g;
	Thu, 13 Jul 2023 20:10:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qK2dS-004HYu-2b;
	Thu, 13 Jul 2023 20:10:00 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qK2d0-0007XX-UA; Thu, 13 Jul 2023 22:09:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Serge Semin <fancer.lancer@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?utf-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v2 0/3] RK3588 PCIe2 support
Date: Thu, 13 Jul 2023 22:09:29 +0200
Message-ID: <9408492.EvYhyI6sBW@phil>
In-Reply-To: <20230713171851.73052-1-sebastian.reichel@collabora.com>
References: <20230713171851.73052-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_130958_844037_E8FB8B06 
X-CRM114-Status: GOOD (  16.60  )
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

Hi Sebastian,

Am Donnerstag, 13. Juli 2023, 19:18:48 CEST schrieb Sebastian Reichel:
> Hi,
> 
> This adds PCIe v2 support for RK3588. The series has been tested with
> the onboard RTL8125 network card on Rockchip RK3588 EVB1 (&pcie2x1l1)
> and Radxa Rock 5B (&pcie2x1l2).
> 
> Changes since v1:

Didn't Rob write that he applied patches 1-3 of the v1 series? [0]
or did I miss further communication somehow?

Thanks
Heiko

[0] https://lore.kernel.org/r/20230626193238.GA3553158-robh@kernel.org

>  * https://lore.kernel.org/all/20230616170022.76107-1-sebastian.reichel@collabora.com/
>  * Dropped patch adding 'RK3588' (queued by Rob)
>  * Updated patch adding legacy-interrupt-controller according to comments
>    from Rob and Serge
>     - added missing additionalProperties: false
>     - added all properties to new required property
>     - removed useless quotes around interrupt-controller
>     - added Rob's Reviewed-by
>  * Updated patch adding the missing RK356x/RK3588 interrupt names, so that it
>    provides more details about the interrupts
>  * Updated the DT patch according to the comment from Jonas Karlman, so that
>    the addresses are in 32 bit address space starting at 0x40000000
> 
> [0] https://lore.kernel.org/all/20230612171337.74576-1-sebastian.reichel@collabora.com/
> 
> Thanks,
> 
> -- Sebastian
> 
> Sebastian Reichel (3):
>   dt-bindings: PCI: dwc: rockchip: Fix interrupt-names issue
>   dt-bindings: PCI: dwc: rockchip: Add missing
>     legacy-interrupt-controller
>   arm64: dts: rockchip: rk3588: add PCIe2 support
> 
>  .../bindings/pci/rockchip-dw-pcie.yaml        |  48 ++++++++
>  .../devicetree/bindings/pci/snps,dw-pcie.yaml |  76 +++++++++++-
>  arch/arm64/boot/dts/rockchip/rk3588.dtsi      |  54 +++++++++
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 108 ++++++++++++++++++
>  4 files changed, 285 insertions(+), 1 deletion(-)
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
