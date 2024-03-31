Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14D92CD1284
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Mar 2024 19:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gbDDLDOZRqzRPXIsWSNGLruSEbSzWjH6XNvL2aFXarw=; b=GSw9zfMsCEEa/iVzDsyAKiv5BP
	HB916S7w5Z83pUS2dBpyE6+OInJd4ruKnHv1PMn2Cr1Vd7iHROKJNgh30SPR11poCzmiEo1SU6fOr
	UunqIioNVia3Bt6hgQEtTVidGJcXoOEW6MpwfpO2plbZik9KsjZemdZa5negiQsKz+1uzz2e+SQRd
	O18Cs43wTsunes8XDsGeRrKbPOCzH/c6ZlJw2OJvQGEVPVv2qAVHDr8Jj2TE7vY62wTd1v4drBCAH
	9hYZtBCuB9XW4xDSK0G+B0WAJ0eJaQ/qyMQXyJLBykctLTX3xxkn08aeF8Og7399QyBlCST1tIk1M
	jPJKwgJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rr0x7-00000006B1k-0aEP;
	Sun, 31 Mar 2024 19:34:49 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rr0x2-00000006B0T-26kF;
	Sun, 31 Mar 2024 19:34:46 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711913682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t6Yrm2TEKB8mxEWaCaPBLV4zJHwlikBx3tCoJxDGcRs=;
	b=A4ZcmH2V1Wx+hrnRjvCuttpggRP8JQh4k/CJWnEaIflJmQ4Ykr0sxPVHDJWu6F8lrpTKSl
	dHoFPhacrJvK83ZVI4IBC5vNSTuxD7cd8MhPCSgFFM5KQiJu7V8lmxkLGO5Oe8fUYsX/LY
	JHJyGJQL7RF0czrSCDK3mjn0IqPU6SKJ2FNAT0ALmVs/QvxjvplEFPJbvgPrr/430HFk7M
	7yuaNyW85GVwU2GIMOUww1OI/uDUOO/8hEyW2sOr7zI6ClSrIxLyYvJyDW1Jvw7S0lKU4J
	vFyj2tTfR6Bn0OWhQfIplrKpPRPnBQSVrcNsbrGQ7jXj8PewbzURydd6bBORaw==
Date: Sun, 31 Mar 2024 21:34:42 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] PCI: rockchip-host: Fix rockchip_pcie_host_init_port()
 PERST# handling
In-Reply-To: <20240330035043.1546087-1-dlemoal@kernel.org>
References: <20240330035043.1546087-1-dlemoal@kernel.org>
Message-ID: <d1ed4a0bf702d9927d4e9279f19bcf7b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240331_123444_875469_4FA307E8 
X-CRM114-Status: GOOD (  19.13  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Damien,

Please see my comments below.

On 2024-03-30 04:50, Damien Le Moal wrote:
> The PCIe specifications (PCI Express Electromechanical Specification 
> rev
> 2.0, section 2.6.2) mandate that the PERST# signal must remain asserted
> for at least 100 usec (Tperst-clk) after the PCIe reference clock
> becomes stable (if a reference clock is supplied), for at least 100 
> msec
> after the power is stable (Tpvperl).
> 
> In addition, the PCI Express Base SPecification Rev 2.0, section 6.6.1
> state that the host should wait for at least 100 msec from the end of a
> conventional reset (PERST# is de-asserted) before accessing the
> configuration space of the attached device.
> 
> Modify rockchip_pcie_host_init_port() by adding two 100ms sleep, one
> before and after bringing back PESRT signal to high using the ep_gpio
> GPIO. Comments are also added to clarify this behavior.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---
> 
> Changes from v1:
>  - Add more specification details to the commit message.
>  - Add missing msleep(100) after PERST# is deasserted.
> 
>  drivers/pci/controller/pcie-rockchip-host.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c
> b/drivers/pci/controller/pcie-rockchip-host.c
> index 300b9dc85ecc..ff2fa27bd883 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -294,6 +294,7 @@ static int rockchip_pcie_host_init_port(struct
> rockchip_pcie *rockchip)
>  	int err, i = MAX_LANE_NUM;
>  	u32 status;
> 
> +	/* Assert PERST */
>  	gpiod_set_value_cansleep(rockchip->ep_gpio, 0);
> 
>  	err = rockchip_pcie_init_port(rockchip);
> @@ -322,8 +323,19 @@ static int rockchip_pcie_host_init_port(struct
> rockchip_pcie *rockchip)
>  	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
>  			    PCIE_CLIENT_CONFIG);
> 
> +	/*
> +	 * PCIe CME specifications mandate that PERST be asserted for at
> +	 * least 100ms after power is stable.
> +	 */
> +	msleep(100);

Perhaps it would be slightly better to use usleep_range()
instead of msleep().

>  	gpiod_set_value_cansleep(rockchip->ep_gpio, 1);
> 
> +	/*
> +	 * PCIe base specifications rev 2.0 mandate that the host wait for
> +	 * 100ms after completion of a conventional reset.
> +	 */
> +	msleep(100);

Obviously, the same comment as above applies here.

> +
>  	/* 500ms timeout value should be enough for Gen1/2 training */
>  	err = readl_poll_timeout(rockchip->apb_base + 
> PCIE_CLIENT_BASIC_STATUS1,
>  				 status, PCIE_LINK_UP(status), 20,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
