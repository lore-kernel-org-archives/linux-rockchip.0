Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DB48C531F9
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 22:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6j0qp2mf+He8HLM6ziI5Q28M/n+syeTnmq+HKDegGM=; b=ApXZBVGWCzX5CU
	vhQmoPoJ9g+0XszRYDqpKfAtEqX1z+SV89adKTblI7Ji4PGabxgtDXPtunyTPi1HsCoO5atoKBdeA
	Q+NgmOFQ3AZ7FLygzhzbzhrLUbgroIfDb+YTWuQtn57mfEOEjcSQnehgM0owaDbQkVKA+BCIGR1bD
	DnGjDvqOO5EbtoBgHWs1OJb0oMCDJ7QcvXK7sYobmvwdfcNh2nz7o3aLPUoilJQuaRbNX42zdALg1
	1btj4ANGTtz4inb/R7ML69chtMCq/2KmD2fIpHGa4px20IQkIF/kLVTFmoDaGI6dH/M2dll9RxBjM
	ThakxcV4lYVT+E99tIJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnOf6-0000000HKbk-1iwI;
	Fri, 24 Jul 2026 22:46:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnOeb-0000000HKEu-1Bf2;
	Fri, 24 Jul 2026 22:46:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 09DEE41AB4;
	Fri, 24 Jul 2026 22:46:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A7F21F00AC4;
	Fri, 24 Jul 2026 22:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784933164;
	bh=K125TY74W87vhbOlzJ/FpCa02u74B+oM2H9sVUMeeOo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=DNutic3y4iV6+eyYcy4rwQNwLeQzrjFdAqTJiqrBOyOEWptY1tUjsPrZCB7a+2Rce
	 7WKRN2fpfQ1BH4OSNlv8Ygz7piMxGyuqiTFOB8siO1bB/P+YFJYYg/dEVTSiGcUTE8
	 vnkofqb9758AL8BRwmY7SqDav0yzD69GE//A7v8wrhXIdBukMFDnjNUXOlaQv8a7bg
	 IIDvyg+zxVPf1kHcdIsUIza3Z+0MpbDf5Hv1uMxPb9oZ07wF+23iVfKnQBx42N2MsD
	 63lPpGj83DQB5USxWPX/mQEXEEV6YfJSeeDPKCHeiIPK+rS8ur8iXo7sySJCthZoVE
	 H0eTUUDBYX25Q==
From: Jakub Kicinski <kuba@kernel.org>
To: bartosz.golaszewski@oss.qualcomm.com
Cc: Jakub Kicinski <kuba@kernel.org>,
	andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	vkoul@kernel.org,
	peppe.cavallaro@st.com,
	wens@kernel.org,
	jernej.skrabec@gmail.com,
	neil.armstrong@linaro.org,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	shawnguo@kernel.org,
	festevam@gmail.com,
	jan.petrous@oss.nxp.com,
	s32@nxp.com,
	mohd.anwar@oss.qualcomm.com,
	romain.gantois@bootlin.com,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mripard@kernel.org,
	christophe.roullier@foss.st.com,
	brgl@kernel.org,
	radu@rendec.net,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	dfustini@tenstorrent.com,
	linux-sunxi@lists.linux.dev,
	linux-amlogic@lists.infradead.org,
	linux-mips@vger.kernel.org,
	imx@lists.linux.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	bartosz.golaszewski@linaro.org
Subject: Re: [PATCH net-next v13 09/10] net: stmmac: qcom-ethqos: factor out linux-level setup into a separate function
Date: Fri, 24 Jul 2026 15:46:02 -0700
Message-ID: <20260724224602.1650002-1-kuba@kernel.org>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260713-qcom-sa8255p-emac-v13-9-119f8699ef8e@oss.qualcomm.com>
References: <20260713-qcom-sa8255p-emac-v13-9-119f8699ef8e@oss.qualcomm.com>
MIME-Version: 1.0
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

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
---
net: stmmac: qcom-ethqos: factor out linux-level setup into a separate function

This refactor extends ethqos_emac_driver_data with a setup() callback,
implements it for the existing models, and moves operations not required
in SCMI mode into it, in preparation for firmware-controlled EMAC
variants.

> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 43384960278b..3af1608fc21c 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -5,6 +5,7 @@
>  #include <linux/of.h>
>  #include <linux/of_net.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
>  #include <linux/phy.h>
>  #include <linux/phy/phy.h>

[Low]
Is there a reason linux/pm_domain.h is added here?  Looking through
this commit, no pm_domain symbols (pm_genpd_*, dev_pm_domain_*,
PD_FLAG_*, etc.) appear to be referenced.

The header seems to belong with the follow-up patch that introduces
devm_pm_domain_attach_list() and struct dev_pm_domain_list usage.

Would it be preferable to move this include into the patch that
actually needs it, so each patch remains self-contained?

[ ... ]

> @@ -765,21 +815,8 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, PTR_ERR(ethqos->serdes_phy),
>  				     "Failed to get serdes phy\n");
>  
> -	ethqos_set_clk_tx_rate(ethqos, NULL, plat_dat->phy_interface,
> -			       SPEED_1000);
> -
> -	qcom_ethqos_set_sgmii_loopback(ethqos, true);
> -	ethqos_set_func_clk_en(ethqos);
> -
> -	/* The clocks are controlled by firmware, so we don't know for certain
> -	 * what clock rate is being used. Hardware documentation mentions that
> -	 * the AHB slave clock will be in the range of 50 to 100MHz, which
> -	 * equates to a MDC between 1.19 and 2.38MHz.
> -	 */
>  	plat_dat->clk_csr = STMMAC_CSR_60_100M;
>  	plat_dat->bsp_priv = ethqos;
> -	plat_dat->set_clk_tx_rate = ethqos_set_clk_tx_rate;
> -	plat_dat->dump_debug_regs = rgmii_dump;
>  	plat_dat->ptp_clk_freq_config = ethqos_ptp_clk_freq_config;
>  	plat_dat->core_type = DWMAC_CORE_GMAC4;
>  	if (data->has_emac_ge_3)

[Low]
Was the comment above plat_dat->clk_csr = STMMAC_CSR_60_100M; intended
to be dropped?

The assignment itself is preserved, but the rationale for choosing
STMMAC_CSR_60_100M (firmware-controlled AHB clock in the 50-100MHz
range yielding an MDC between 1.19 and 2.38MHz) is now gone.

The commit message describes a mechanical refactor and does not
mention removing this rationale.  Should the comment be kept next to
the assignment, or moved into ethqos_hlos_setup() where the
surrounding clock setup now lives?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
