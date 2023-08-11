Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC370C001DE
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Aug 2023 17:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7pVtyeVrmy+0j+HnOSeWmWHTwuDScFuJeVPcpiCluY=; b=tisu7s3BQTNfTr
	WN3sFkc0rYjNVQbaMzMMxFt+dY1Bo2aRNbVa6imjEC0l5Oqlek6giHu8xBrIa6tIOC3BWqVHYgX5x
	m5qsoFznKipH+4H4RPLm1n5d9ObI8hTvnT+5gpfSZ4ORWBgfF6zsNwozO+A4kQpZNQT/furKdaDIV
	vlh1iwwMxoeRc/btjTxeKLrp43eFtGqy/n0gKi7liNjKDK6XUF9tAo0Qa6vgk9TgqRf3gufiPYwHX
	JOhvoDifSxJ8z6I9z4h7GQkykdbvSdlQKaGdUUQHunpLkpQR0ElkayNkB/kxuHhvIUfOfHcOkawBo
	fppILstZveOh+l+7Cdqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUWOr-00BIM3-31;
	Fri, 11 Aug 2023 17:58:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUWOo-00BIJY-0R;
	Fri, 11 Aug 2023 17:58:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A0A856410C;
	Fri, 11 Aug 2023 17:58:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3F3FC433C8;
	Fri, 11 Aug 2023 17:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691776689;
	bh=nLzY07It2/L5hHCx41whVV+ODXNcVQnzlxtOkz/n7m8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q8gBM9leo6Iow0ssUe+4nwbH6367NYk0Qs+HO3i+gO+GvDE2b2koFYRQ2MHARHtXt
	 fAb+q7P/V4G+Nt36zevEfZoVl0RQTQnDzyqLP/lbsneHnfKSXoX2O24AFiApRycuxZ
	 NV42fXZU25BYDskmvvSIETxSsR0OnMn1ZI/arDpnyKSKl2/cP+SEOFbCc3oDt2gJ3c
	 9/7RM9Eoaxf4TzTwAkkaKw8ph9C9pcCcK2ePCdlq9GQ6KnNcybANVmN5ou9EBQ6E84
	 SbQDriIu9BYbI9+2NmmiJTB2WoTj+PMYuSH8sjc7ZkTsprZiw1DlI8iHXofVpYydgI
	 fEVTR+jxhZ0XA==
Received: (nullmailer pid 3676099 invoked by uid 1000);
	Fri, 11 Aug 2023 17:58:06 -0000
Date: Fri, 11 Aug 2023 11:58:06 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Serge Semin <fancer.lancer@gmail.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v4 0/5] RK3588 PCIe2 support
Message-ID: <20230811175806.GA3674934-robh@kernel.org>
References: <20230731165723.53069-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230731165723.53069-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_105810_260892_4E4DEBBA 
X-CRM114-Status: GOOD (  19.40  )
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

On Mon, Jul 31, 2023 at 06:57:18PM +0200, Sebastian Reichel wrote:
> Hi,
> 
> This adds PCIe v2 support for RK3588. The series has been tested with
> the onboard RTL8125 network card on Rockchip RK3588 EVB1 (&pcie2x1l1)
> and Radxa Rock 5B (&pcie2x1l2).
> 
> Changes since v3:
>  * https://lore.kernel.org/all/20230717172651.64324-1-sebastian.reichel@collabora.com/
>  * Remove unneeded quotes in patch 1 (msi handling)
>  * Update patch description of patch 2 (interrupt names) adding information
>    about Rockchip specific parts
> 
> Changes since v2:
>  * https://lore.kernel.org/all/20230713171851.73052-1-sebastian.reichel@collabora.com/
>  * Removed num-ib-windows/num-ob-windows/num-viewport from DT
>  * Added patch making 'msi' irq optional, if 'msi-map' property is available
>  * Updated binding according two discussion with Serge Semin, I provided two
>    options by adding one extra patch that should be squashed into the main
>    one or dropped depending on preferences from DT binding  maintainers.
>  * Collected Reviewed-by/Tested-by from Jagan Teki
> 
> Changes since v1:
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
> Sebastian Reichel (5):
>   dt-bindings: PCI: dwc: improve msi handling
>   dt-bindings: PCI: dwc: rockchip: Fix interrupt-names issue
>   dt-bindings: PCI: dwc: rockchip: Use generic binding
>   dt-bindings: PCI: dwc: rockchip: Add missing
>     legacy-interrupt-controller
>   arm64: dts: rockchip: rk3588: add PCIe2 support

Patches 1-4 applied.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
