Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F24E7C3ABCC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 13:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0Fc8MQJ0ImUKmGFm4sokPAx7LSmsg1j+CaWA4LgNkY=; b=SRkKYFdkop1yA4
	hyCA5k/uE2CBUauvtVXgWuZuB6jMD4TzXBt4akOOCnQXofwC8fOUWAVAum6PufVRHYcQPZZaqKpIF
	3ak1vPADnWpGZzJLvibc8HYheCXzadO2YhT1oj/xI07hP49vX5cqxTopn9W+LuOWBMsxm9UjKmzp1
	kjZ3z5ZtLCdlt576QbaFYswE/V0MX26I6EA1rVlc7qUsJN7Etg2z23SigG84QUG69yyjLQSBfxgsj
	eHrBBwBhUMrgLICoeF9PjVK1KUfDlnpcOwbkzg/N+zXv2E+b7KmSv+qTA6PBgah86NCR9jRXDCP8a
	TNRkfkYU/m10qYCCjNag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDOCb-00000003r04-2O8a;
	Fri, 09 May 2025 13:55:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDNLi-00000003gNg-1O1D;
	Fri, 09 May 2025 13:01:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3D13E4A678;
	Fri,  9 May 2025 13:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17993C4CEF2;
	Fri,  9 May 2025 13:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746795669;
	bh=9MZHj+GCA6WVB4FMrptSj25S8jGsj6thQNlGMW0sbAc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hc0YNYDdQxYj+hGWtJuWaFjmmumS2+YfNwPs0H+/caivA9zWJrCknFwa2UjtG+b0Z
	 f1MsNn1WrEZwNv76YzlYSkiY27TZNTRfm0KE94QRh5UCsHADIrVawAelQYKDyUlzIq
	 JLJYwL5jjomH09DlXd3GM+zVbaV/ZrZQwfdxKWhsrpsb+/r/8w4BSghc74FOOMbzO6
	 L+aH2wFboVFc45Gazhp/Qdc+VAUHWZ8nWx18ZNfwHfY2jkbsUF/N6Ef6eTjvcbtp7p
	 eCSj1fFF0MiEovmWIfm6ulfJrjwwF+6fteyY55aHjJR3oipX6ykcgxvJqdRF19EbLx
	 V46RSjf1E4x8Q==
Date: Fri, 9 May 2025 15:01:03 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Wilfred Mallawa <wilfred.opensource@gmail.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Damien Le Moal <dlemoal@kernel.org>,
	Alistair Francis <alistair@alistair23.me>,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Add support for slot reset on link
 down event
Message-ID: <aB38j9p9nyrpL7HI@ryzen>
References: <20250509-b4-pci_dwc_reset_support-v3-1-37e96b4692e7@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250509-b4-pci_dwc_reset_support-v3-1-37e96b4692e7@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_060110_387613_F9F3E639 
X-CRM114-Status: GOOD (  14.25  )
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

On Fri, May 09, 2025 at 12:30:12PM +1000, Wilfred Mallawa wrote:
> From: Wilfred Mallawa <wilfred.mallawa@wdc.com>
> 
> The PCIe link may go down in cases like firmware crashes or unstable
> connections. When this occurs, the PCIe slot must be reset to restore
> functionality. However, the current driver lacks link down handling,
> forcing users to reboot the system to recover.
> 
> This patch implements the `reset_slot` callback for link down handling
> for DWC PCIe host controller. In which, the RC is reset, reconfigured
> and link training initiated to recover from the link down event.
> 
> This patch by extension fixes issues with sysfs initiated bus resets.
> In that, currently, when a sysfs initiated bus reset is issued, the
> endpoint device is non-functional after (may link up with downgraded link
> status). With this patch adding support for link down recovery, a sysfs
> initiated bus reset works as intended. Testing conducted on a ROCK5B board
> with an M.2 NVMe drive.
> 
> Signed-off-by: Wilfred Mallawa <wilfred.mallawa@wdc.com>
> ---

Looks good to me:
Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
