Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8585CD98E1
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jun 2026 19:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cPyFYgO7y2Bt8y3qgbPIfyudBBjCZ3cmZnLaVDawQrY=; b=Z72HsyVL/V30ux
	SplxRIwatigD3SO1IGrPjC+Vk9XFicSejNMC2pDGAJ1pEik13n0eTnI413/Wtr7QKx1M/cq9CfA6g
	sSPW0p065prFOlofxbmB2ZqTHE+1Q/XBrvYkAyNSJfTg77+TqMcaTAGMvRCviEhl+5ZDv/vWSOs72
	ugRn3bxJjDSrIn62FT5Mn7KAwL8+VTrDkwnWhw6KCR+wHGZTwaPB+pmneYkop2E+CtZjRdoyz1EEH
	X7IeZeixZkDpco7/37pKVcYo/iEVMbYe3x3lM66JnbxKHmPZwzYsqTBgd04jITz+iRqEqR6slMbiA
	S2q7UOKrrxi4BHE3fWrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZZAu-0000000GFFm-1XD5;
	Tue, 16 Jun 2026 19:10:16 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZZAq-0000000GFF7-0Nye;
	Tue, 16 Jun 2026 19:10:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 5BBD740F30;
	Tue, 16 Jun 2026 21:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1781637009; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=z8uQcTpVa5mUFmeEmrbH/dNU63tBNszSpBUJcWOlSZA=;
	b=rQdB9MRTtC7FWJ/w+93hNdZfyzpDvupX/0vN3mqYNs66IDLdjy1NX9pu63cHY6d+ZZ0t7e
	0rbzR+04IaNu1gA0bjRaGsKROPhGyV4eCByyA/AnCveeaPzfzzndQNWdt7Kk5Jpyl/2DGg
	12D3QHdk8T3vFpNpMtpVE4Ayx1CJSOtZ6BG8yEghg9XW45JVfxfybxxQADQLIEsIA+J8ge
	0tynwuj5HZOIZ8tQIPQyRl4Y13dkpQWp/2L+eocEwOoyAiyXAji8O/ybNBjQHJImW0Y3rN
	XrhukNqAzprIfPCUhLZg13OtLceDKppzzo7s4LjrG/DNbNRZk2/jiO4RlI6CTg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <7421df7a7b7778ee99363cccfdfabbfa8aa6ab5e.1781622998.git.geraldogabriel@gmail.com>
References: <cover.1781622998.git.geraldogabriel@gmail.com> <7421df7a7b7778ee99363cccfdfabbfa8aa6ab5e.1781622998.git.geraldogabriel@gmail.com>
Date: Tue, 16 Jun 2026 21:10:08 +0200
Cc: "Shawn Lin" <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Geraldo Nascimento" <geraldogabriel@gmail.com>
MIME-Version: 1.0
Message-ID: <153da5a0-7d58-4e0e-6700-432e401c9048@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v7 3/3] =?utf-8?q?PCI=3A?==?utf-8?q?_rockchip=3A?= 
 drive at =?utf-8?q?2=2E5?==?utf-8?q?_GT/s=2C?= error other speeds
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_121012_436795_C434CD6F 
X-CRM114-Status: GOOD (  16.94  )
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

Hello Geraldo,

Thanks for the v6 and v7 of this series.

On Tuesday, June 16, 2026 17:26 CEST, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> Configure the core to be driven at 2.5 GT/s Link Speed and ignore
> any other speed with a warning. Also drop the 5.0 GT/s Link Speed
> defines from Rockchip PCIe header.
> 
> The reason is that Shawn Lin from Rockchip has reiterated that there
> may be danger of "catastrophic failure" in using their PCIe with
> 5.0 GT/s speeds.
> 
> While Rockchip has done so informally without issuing a proper errata,
> and the particulars are thus unknown, this may cause data loss or
> worse.
> 
> This change is corroborated by RK3399 official datasheet [1], which
> states maximum link speed for this platform is 2.5 GT/s.
> 
> [1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf
> 
> Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> Cc: stable@vger.kernel.org
> Reported-by: Dragan Simic <dsimic@manjaro.org>
> Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> ---
>  drivers/pci/controller/pcie-rockchip.c | 14 ++++++--------
>  drivers/pci/controller/pcie-rockchip.h |  3 ---
>  2 files changed, 6 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index 0f88da3788054..456dcfd676ed7 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c
> @@ -66,8 +66,10 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
>  	}
>  
>  	rockchip->link_gen = of_pci_get_max_link_speed(node);
> -	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
> -		rockchip->link_gen = 2;
> +	if (rockchip->link_gen < 0 || rockchip->link_gen >= 2) {
> +		rockchip->link_gen = 1;
> +		dev_warn(dev, "invalid max-link-speed, limited to 2.5 GT/s\n");
> +	}
>  
>  	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
>  		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
> @@ -147,12 +149,8 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
>  		goto err_exit_phy;
>  	}
>  
> -	if (rockchip->link_gen == 2)
> -		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_2,
> -				    PCIE_CLIENT_CONFIG);
> -	else
> -		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_1,
> -				    PCIE_CLIENT_CONFIG);
> +	rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_1,
> +			    PCIE_CLIENT_CONFIG);
>  
>  	regs = PCIE_CLIENT_ARI_ENABLE |
>  	       PCIE_CLIENT_CONF_LANE_NUM(rockchip->lanes);
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index 3e82a69b9c006..b5da15601b585 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -42,7 +42,6 @@
>  #define   PCIE_CLIENT_MODE_RC			HWORD_SET_BIT(0x0040)
>  #define   PCIE_CLIENT_MODE_EP			HWORD_CLR_BIT(0x0040)
>  #define   PCIE_CLIENT_GEN_SEL_1			HWORD_CLR_BIT(0x0080)
> -#define   PCIE_CLIENT_GEN_SEL_2			HWORD_SET_BIT(0x0080)
>  #define PCIE_CLIENT_LEGACY_INT_CTRL	(PCIE_CLIENT_BASE + 0x0c)
>  #define   PCIE_CLIENT_INT_IN_ASSERT		HWORD_SET_BIT(0x0002)
>  #define   PCIE_CLIENT_INT_IN_DEASSERT		HWORD_CLR_BIT(0x0002)
> @@ -197,8 +196,6 @@
>  	(((x) & PCIE_CORE_PL_CONF_LS_MASK) == PCIE_CORE_PL_CONF_LS_READY)
>  #define PCIE_LINK_UP(x) \
>  	(((x) & PCIE_CLIENT_LINK_STATUS_MASK) == PCIE_CLIENT_LINK_STATUS_UP)
> -#define PCIE_LINK_IS_GEN2(x) \
> -	(((x) & PCIE_CORE_PL_CONF_SPEED_MASK) == PCIE_CORE_PL_CONF_SPEED_5G)
>  
>  #define RC_REGION_0_ADDR_TRANS_H		0x00000000
>  #define RC_REGION_0_ADDR_TRANS_L		0x00000000

Looking good to me, so please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
