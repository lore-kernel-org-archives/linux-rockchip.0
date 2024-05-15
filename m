Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7741C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 21:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ZlbWldA3mQYXH9jZ2RYTmTKEHxwakWazozEojXKtWlI=; b=yi0gqETvB+aCNX
	QoIVPsD0Qr/LQQMl7jgklqbGAmnuDIkUh01IUkccUaTiEQtY6+7POSM7SfhzfkHiw+5ApjkIPl2Zn
	hRivIKRyJpLI46Hs02A8E/mn2PYWDU3kp7X5I5Z4QbTaltgNgCjWxovKxa+rS8Cmcgn3BKSGb26S3
	AjG7E3oI6XLXQCWLm52Yq12cFzvlUMkdXwF5R1jauua8LaAxRDthGSLLDQ0rAEzExS1X4/Afqsmk2
	VOBMErmPyNf2GL5n1CYvbN0QqHy8o2dwO+fG4DZIDuyP04pZycplOkw0xXIGqteteNTxcA+MvLLIe
	5P5PzO4t7lWjkUm/q3QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7M1Z-00000002tv8-38sf;
	Wed, 15 May 2024 21:18:57 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7M1T-00000002trP-0Zmt;
	Wed, 15 May 2024 21:18:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 556F7CE17DF;
	Wed, 15 May 2024 21:18:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64A86C116B1;
	Wed, 15 May 2024 21:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715807928;
	bh=GV4ctJ7S6o2h1VMQ6K3QvFDmjV30mayxRlqtKeBqg1o=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=P3dFccoxomCIHJqy4XeaDnH+WifIbD1n9DRECJaYOjnB+pHNmRRXshO4DdAU+2FLb
	 NlhEW6MafzcM0Jbcj+2VwkslZzf09wUlmRFmnFGeMCKCGuQiSiCXRyuvUskvBfYJ4L
	 9YDfoS7RbZBpcdhYecRCenElUV5ttxPpFcjhji8zret1J/jejjnGAfsCGAzIrywguU
	 RNfW1bWqB9RHZNuQilAHblPZjMOR8GJcShYynFvRsCD97XsAt6bNHqTsLBltZ8qsUC
	 nffGptSFneFjepbnxK3AjYyTduFnuCsBgq/8XBr0adLLkcxWlvo9sKO/GwSRTDbP98
	 2Q6fb1M5tmZeg==
Date: Wed, 15 May 2024 16:18:46 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Brian Norris <briannorris@chromium.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	mhi@lists.linux.dev, stable@vger.kernel.org,
	Slark Xiao <slark_xiao@163.com>
Subject: Re: [PATCH] PCI: rockchip: Use GPIOD_OUT_LOW flag while requesting
 ep_gpio
Message-ID: <20240515211846.GA2139223@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240416-pci-rockchip-perst-fix-v1-1-4800b1d4d954@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_141852_263788_6823D5A3 
X-CRM114-Status: GOOD (  29.89  )
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

On Tue, Apr 16, 2024 at 11:12:35AM +0530, Manivannan Sadhasivam wrote:
> Rockchip platforms use 'GPIO_ACTIVE_HIGH' flag in the devicetree definition
> for ep_gpio. This means, whatever the logical value set by the driver for
> the ep_gpio, physical line will output the same logic level.
> 
> For instance,
> 
> 	gpiod_set_value_cansleep(rockchip->ep_gpio, 0); --> Level low
> 	gpiod_set_value_cansleep(rockchip->ep_gpio, 1); --> Level high
> 
> But while requesting the ep_gpio, GPIOD_OUT_HIGH flag is currently used.
> Now, this also causes the physical line to output 'high' creating trouble
> for endpoint devices during host reboot.
> 
> When host reboot happens, the ep_gpio will initially output 'low' due to
> the GPIO getting reset to its POR value. Then during host controller probe,
> it will output 'high' due to GPIOD_OUT_HIGH flag. Then during
> rockchip_pcie_host_init_port(), it will first output 'low' and then 'high'
> indicating the completion of controller initialization.
> 
> On the endpoint side, each output 'low' of ep_gpio is accounted for PERST#
> assert and 'high' for PERST# deassert. With the above mentioned flow during
> host reboot, endpoint will witness below state changes for PERST#:
> 
> 	(1) PERST# assert - GPIO POR state
> 	(2) PERST# deassert - GPIOD_OUT_HIGH while requesting GPIO
> 	(3) PERST# assert - rockchip_pcie_host_init_port()
> 	(4) PERST# deassert - rockchip_pcie_host_init_port()
> 
> Now the time interval between (2) and (3) is very short as both happen
> during the driver probe(), and this results in a race in the endpoint.
> Because, before completing the PERST# deassertion in (2), endpoint got
> another PERST# assert in (3).
> 
> A proper way to fix this issue is to change the GPIOD_OUT_HIGH flag in (2)
> to GPIOD_OUT_LOW. Because the usual convention is to request the GPIO with
> a state corresponding to its 'initial/default' value and let the driver
> change the state of the GPIO when required.
> 
> As per that, the ep_gpio should be requested with GPIOD_OUT_LOW as it
> corresponds to the POR value of '0' (PERST# assert in the endpoint). Then
> the driver can change the state of the ep_gpio later in
> rockchip_pcie_host_init_port() as per the initialization sequence.
> 
> This fixes the firmware crash issue in Qcom based modems connected to
> Rockpro64 based board.
> 
> Cc:  <stable@vger.kernel.org> # 4.9
> Reported-by: Slark Xiao <slark_xiao@163.com>
> Closes: https://lore.kernel.org/mhi/20240402045647.GG2933@thinkpad/
> Fixes: e77f847df54c ("PCI: rockchip: Add Rockchip PCIe controller support")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Applied by Krzysztof to pci/controller/rockchip, but his outgoing mail
queue was broken.  Trying to squeeze it into v6.10.

> ---
>  drivers/pci/controller/pcie-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index 0ef2e622d36e..c07d7129f1c7 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c
> @@ -121,7 +121,7 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
>  
>  	if (rockchip->is_rc) {
>  		rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep",
> -							    GPIOD_OUT_HIGH);
> +							    GPIOD_OUT_LOW);
>  		if (IS_ERR(rockchip->ep_gpio))
>  			return dev_err_probe(dev, PTR_ERR(rockchip->ep_gpio),
>  					     "failed to get ep GPIO\n");
> 
> ---
> base-commit: 4cece764965020c22cff7665b18a012006359095
> change-id: 20240416-pci-rockchip-perst-fix-88c922621d9a
> 
> Best regards,
> -- 
> Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
