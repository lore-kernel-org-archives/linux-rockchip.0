Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03CF6C4743C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 14:33:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A4C396112D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 14:33:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A4C396112D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hbqp7vjNURYRgRfWAZaFUC8T4U7FdykDW5w7c+hq5Zc=; b=dr9jT2e7ybus8z
	vllz3+SUfWfMWosQPRhAL0Uyhs23cM0d809no8+yG0Wqh7ZZ+ZlYQLL8TJ/vDoQLsXZUfDCOt2CLU
	I6nEYFtgsMqpSt/+SYp07NAbSjy6d0Xy1JGEGhaM269XXDSjflx4czr6x/pRcFOW9HMtrxBgNazQZ
	r+DlmIWBpAYIR27eBLoK/f2pKog78wCzW5xlQe2zdJ7zJWGsp5eFdcjDPgUwzAr0I28KjEu9BmCWp
	uw0m7222PbaWpmA4vXFLhQpqApzbSUm6hPHsXS1EGVGyklHSePXOr+wLwoV1/rN9T+sRKvfcM2pBg
	X11qQKzFviteHLnChq6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw3wt-00B0p6-5e; Wed, 23 Jun 2021 14:33:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw3wm-00B0hO-DR
 for linux-rockchip@lists.infradead.org; Wed, 23 Jun 2021 14:33:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C4B6ED1;
 Wed, 23 Jun 2021 07:33:40 -0700 (PDT)
Received: from lpieralisi (e121166-lin.cambridge.arm.com [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DED2B3F718;
 Wed, 23 Jun 2021 07:33:38 -0700 (PDT)
Date: Wed, 23 Jun 2021 15:33:33 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Simon Xue <xxm@rock-chips.com>, pali@kernel.org
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>, kernel test robot <lkp@intel.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v9 2/2] PCI: rockchip: Add Rockchip RK356X host
 controller driver
Message-ID: <20210623143333.GA15104@lpieralisi>
References: <20210506023448.169146-1-xxm@rock-chips.com>
 <20210506023544.169196-1-xxm@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506023544.169196-1-xxm@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_073344_614291_EE65C508 
X-CRM114-Status: GOOD (  24.28  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

[+Pali]

On Thu, May 06, 2021 at 10:35:44AM +0800, Simon Xue wrote:
> Add a driver for the DesignWare-based PCIe controller found on
> RK356X. The existing pcie-rockchip-host driver is only used for
> the Rockchip-designed IP found on RK3399.
> =

> Tested-by: Peter Geis <pgwipeout@gmail.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> Reported-by: kernel test robot <lkp@intel.com>

I will remove this tag - it does not make sense on a patch adding
a new driver.

[...]

> +static int rockchip_pcie_start_link(struct dw_pcie *pci)
> +{
> +	struct rockchip_pcie *rockchip =3D to_rockchip_pcie(pci);
> +
> +	/* Reset device */
> +	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
> +
> +	rockchip_pcie_enable_ltssm(rockchip);
> +
> +	/*
> +	 * PCIe requires the refclk to be stable for 100=B5s prior to releasing
> +	 * PERST. See table 2-4 in section 2.6.2 AC Specifications of the PCI
> +	 * Express Card Electromechanical Specification, 1.1. However, we don't
> +	 * know if the refclk is coming from RC's PHY or external OSC. If it's
> +	 * from RC, so enabling LTSSM is the just right place to release #PERST.
> +	 * We need more extra time as before, rather than setting just
> +	 * 100us as we don't know how long should the device need to reset.
> +	 */
> +	msleep(100);

Any rationale behind the time chosen ?

Ongoing discussion:

https://lore.kernel.org/linux-pci/20210531090540.2663171-1-luca@lucaceresol=
i.net

Lorenzo

> +	gpiod_set_value_cansleep(rockchip->rst_gpio, 1);
> +
> +	return 0;
> +}
> +
> +static int rockchip_pcie_host_init(struct pcie_port *pp)
> +{
> +	struct dw_pcie *pci =3D to_dw_pcie_from_pp(pp);
> +	struct rockchip_pcie *rockchip =3D to_rockchip_pcie(pci);
> +	u32 val;
> +
> +	/* LTSSM enable control mode */
> +	val =3D rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_HOT_RESET_CTRL);
> +	val |=3D PCIE_LTSSM_ENABLE_ENHANCE | (PCIE_LTSSM_ENABLE_ENHANCE << 16);
> +	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
> +
> +	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_RC_MODE,
> +				 PCIE_CLIENT_GENERAL_CONTROL);
> +
> +	return 0;
> +}
> +
> +static const struct dw_pcie_host_ops rockchip_pcie_host_ops =3D {
> +	.host_init =3D rockchip_pcie_host_init,
> +};
> +
> +static int rockchip_pcie_clk_init(struct rockchip_pcie *rockchip)
> +{
> +	struct device *dev =3D rockchip->pci.dev;
> +	int ret;
> +
> +	ret =3D devm_clk_bulk_get_all(dev, &rockchip->clks);
> +	if (ret < 0)
> +		return ret;
> +
> +	rockchip->clk_cnt =3D ret;
> +
> +	return clk_bulk_prepare_enable(rockchip->clk_cnt, rockchip->clks);
> +}
> +
> +static int rockchip_pcie_resource_get(struct platform_device *pdev,
> +				      struct rockchip_pcie *rockchip)
> +{
> +	rockchip->apb_base =3D devm_platform_ioremap_resource_byname(pdev, "apb=
");
> +	if (IS_ERR(rockchip->apb_base))
> +		return PTR_ERR(rockchip->apb_base);
> +
> +	rockchip->rst_gpio =3D devm_gpiod_get_optional(&pdev->dev, "reset",
> +						     GPIOD_OUT_HIGH);
> +	if (IS_ERR(rockchip->rst_gpio))
> +		return PTR_ERR(rockchip->rst_gpio);
> +
> +	return 0;
> +}
> +
> +static int rockchip_pcie_phy_init(struct rockchip_pcie *rockchip)
> +{
> +	struct device *dev =3D rockchip->pci.dev;
> +	int ret;
> +
> +	rockchip->phy =3D devm_phy_get(dev, "pcie-phy");
> +	if (IS_ERR(rockchip->phy))
> +		return dev_err_probe(dev, PTR_ERR(rockchip->phy),
> +				     "missing PHY\n");
> +
> +	ret =3D phy_init(rockchip->phy);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret =3D phy_power_on(rockchip->phy);
> +	if (ret)
> +		phy_exit(rockchip->phy);
> +
> +	return ret;
> +}
> +
> +static void rockchip_pcie_phy_deinit(struct rockchip_pcie *rockchip)
> +{
> +	phy_exit(rockchip->phy);
> +	phy_power_off(rockchip->phy);
> +}
> +
> +static int rockchip_pcie_reset_control_release(struct rockchip_pcie *roc=
kchip)
> +{
> +	struct device *dev =3D rockchip->pci.dev;
> +
> +	rockchip->rst =3D devm_reset_control_array_get_exclusive(dev);
> +	if (IS_ERR(rockchip->rst))
> +		return dev_err_probe(dev, PTR_ERR(rockchip->rst),
> +				     "failed to get reset lines\n");
> +
> +	return reset_control_deassert(rockchip->rst);
> +}
> +
> +static const struct dw_pcie_ops dw_pcie_ops =3D {
> +	.link_up =3D rockchip_pcie_link_up,
> +	.start_link =3D rockchip_pcie_start_link,
> +};
> +
> +static int rockchip_pcie_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct rockchip_pcie *rockchip;
> +	struct pcie_port *pp;
> +	int ret;
> +
> +	rockchip =3D devm_kzalloc(dev, sizeof(*rockchip), GFP_KERNEL);
> +	if (!rockchip)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, rockchip);
> +
> +	rockchip->pci.dev =3D dev;
> +	rockchip->pci.ops =3D &dw_pcie_ops;
> +
> +	pp =3D &rockchip->pci.pp;
> +	pp->ops =3D &rockchip_pcie_host_ops;
> +
> +	ret =3D rockchip_pcie_resource_get(pdev, rockchip);
> +	if (ret)
> +		return ret;
> +
> +	/* DON'T MOVE ME: must be enable before PHY init */
> +	rockchip->vpcie3v3 =3D devm_regulator_get_optional(dev, "vpcie3v3");
> +	if (IS_ERR(rockchip->vpcie3v3))
> +		if (PTR_ERR(rockchip->vpcie3v3) !=3D -ENODEV)
> +			return dev_err_probe(dev, PTR_ERR(rockchip->vpcie3v3),
> +					"failed to get vpcie3v3 regulator\n");
> +
> +	ret =3D regulator_enable(rockchip->vpcie3v3);
> +	if (ret) {
> +		dev_err(dev, "failed to enable vpcie3v3 regulator\n");
> +		return ret;
> +	}
> +
> +	ret =3D rockchip_pcie_phy_init(rockchip);
> +	if (ret)
> +		goto disable_regulator;
> +
> +	ret =3D rockchip_pcie_reset_control_release(rockchip);
> +	if (ret)
> +		goto deinit_phy;
> +
> +	ret =3D rockchip_pcie_clk_init(rockchip);
> +	if (ret)
> +		goto deinit_phy;
> +
> +	ret =3D dw_pcie_host_init(pp);
> +	if (!ret)
> +		return 0;
> +
> +	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
> +deinit_phy:
> +	rockchip_pcie_phy_deinit(rockchip);
> +disable_regulator:
> +	regulator_disable(rockchip->vpcie3v3);
> +
> +	return ret;
> +}
> +
> +static const struct of_device_id rockchip_pcie_of_match[] =3D {
> +	{ .compatible =3D "rockchip,rk3568-pcie", },
> +	{},
> +};
> +
> +static struct platform_driver rockchip_pcie_driver =3D {
> +	.driver =3D {
> +		.name	=3D "rockchip-dw-pcie",
> +		.of_match_table =3D rockchip_pcie_of_match,
> +		.suppress_bind_attrs =3D true,
> +	},
> +	.probe =3D rockchip_pcie_probe,
> +};
> +builtin_platform_driver(rockchip_pcie_driver);
> -- =

> 2.25.1
> =

> =

> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
