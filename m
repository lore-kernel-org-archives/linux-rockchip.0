Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 352A8C433C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 16:17:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C2EB261A0E
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 16:17:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C2EB261A0E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=/PBECRFGl+MiPOO0gVGHcuY9yLuOtR52Yy+ra7GYkNI=; b=loL9PmNywOHH6ncItxLTYsrc2
	Aky3zDDXYbM0HNhl711RmejZ8Rt0bTQxG0B9eOy3iGChy66xMV8Wo/dLMgXfnbwfA4L4m+exxDWms
	81872mtVrkLocTr89deGaFeamgfGpx6R5hvwyW7baFBs8N4Ufz0h8QBmePy564w4vrAc2SRju1xe9
	tb7KUKtdUzszWbsLfQl9CfyUkehCCrj8gMx32/J3N1od/uf7nGnE0gkLIGRbFTjL15zEZlqYYrOWJ
	4EZoZCXvwRrwyBi2ftM1qVLuUfhLK/Bq9M5FrLdwrrt/v7kNDwRtOHXovfivnIg+Y7e0Rn704UKxp
	JY70d6tuw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP6CK-00HMy9-RL; Wed, 24 Mar 2021 16:17:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP6CE-00HMvU-6y
 for linux-rockchip@lists.infradead.org; Wed, 24 Mar 2021 16:17:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A986561878;
 Wed, 24 Mar 2021 16:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616602643;
 bh=ZfQfwnRrFQEw2lg7pL8kZK71afKfEVHk9YK12q8Pq3A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=kxNts/LJiaGY+S8UMeWsggEZzqhmutWnW+fnYJm8J0IqzPZ5BGa2uls2tEug/CP+R
 6uoIPuXbU+RT6OAeDWcdTHzlTSUjS5y2Mbu7y8muKCxqTVw0PnUkUUYE18LOj+CXps
 lxn9O7KHZ9AH2rnw66qDYAXe0kBVQntM8l8HhVhhjFHWcFFhUchOPVSBe1JwvsLz+g
 ezaM2rf0+ADcukvne72BHyOUPgY3QNFemXPVEmsBbPVXLRgPz/ERxu3UUfbk+2fkoO
 UI2Yxgfg7om8D6C+eKPKJnX7Ok8WtFt1SS7dPKB6L0BiAq28k4p1skrhlRKS9H6JOU
 Nq7Xois4VF8kg==
Date: Wed, 24 Mar 2021 11:17:21 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Simon Xue <xxm@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v5 2/2] PCI: rockchip: Add DesignWare based PCIe controller
Message-ID: <20210324161721.GA612661@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210222071828.30120-1-xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_161726_615851_66D8CDA1 
X-CRM114-Status: GOOD (  21.92  )
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

On Mon, Feb 22, 2021 at 03:18:28PM +0800, Simon Xue wrote:
> Add driver for DesignWare based PCIe controller found on RK356X.
> The already existed driver pcie-rockchip-host is only used for
> Rockchip designed IP found on RK3399.

> +static int rockchip_pcie_start_link(struct dw_pcie *pci)
> +{
> +	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> +
> +	/* Reset device */
> +	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
> +	msleep(100);

Maybe a spec reference for the 100ms delay so we can match this up
with other places and make sure we aren't repeating delays because we
don't know what they are?

> +	gpiod_set_value_cansleep(rockchip->rst_gpio, 1);
> +
> +	rockchip_pcie_enable_ltssm(rockchip);
> +
> +	return 0;
> +}

> +static int rockchip_pcie_clk_init(struct rockchip_pcie *rockchip)
> +{
> +	struct device *dev = rockchip->pci.dev;
> +	int ret;
> +
> +	ret = devm_clk_bulk_get_all(dev, &rockchip->clks);
> +	if (ret < 0)
> +		return ret;
> +
> +	rockchip->clk_cnt = ret;
> +
> +	ret = clk_bulk_prepare_enable(rockchip->clk_cnt, rockchip->clks);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

This is the same as

  return clk_bulk_prepare_enable(rockchip->clk_cnt, rockchip->clks);

> +}

> +static int rockchip_pcie_reset_control_release(struct rockchip_pcie *rockchip)
> +{
> +	struct device *dev = rockchip->pci.dev;
> +	int ret;
> +
> +	rockchip->rst = devm_reset_control_array_get_exclusive(dev);
> +	if (IS_ERR(rockchip->rst))
> +		return dev_err_probe(dev, PTR_ERR(rockchip->rst),
> +				     "failed to get reset lines\n");
> +
> +	ret = reset_control_deassert(rockchip->rst);
> +
> +	return ret;

  return reset_control_deassert(rockchip->rst);

and drop "ret".

> +}

> +static int rockchip_pcie_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct rockchip_pcie *rockchip;
> +	struct pcie_port *pp;
> +	int ret;
> +
> +	rockchip = devm_kzalloc(dev, sizeof(*rockchip), GFP_KERNEL);
> +	if (!rockchip)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, rockchip);
> +
> +	rockchip->pci.dev = dev;
> +	rockchip->pci.ops = &dw_pcie_ops;
> +
> +	pp = &rockchip->pci.pp;
> +	pp->ops = &rockchip_pcie_host_ops;
> +
> +	ret = rockchip_pcie_resource_get(pdev, rockchip);
> +	if (ret)
> +		return ret;
> +
> +	/* DON'T MOVE ME: must be enable before PHY init */
> +	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
> +	if (IS_ERR(rockchip->vpcie3v3))
> +		return dev_err_probe(dev, PTR_ERR(rockchip->rst),
> +				     "failed to get vpcie3v3 regulator\n");
> +
> +	if (rockchip->vpcie3v3) {

This assumes devm_regulator_get_optional() returns a valid regulator,
IS_ERR, or NULL.  I can't easily tell whether it can actually return
NULL.  The regulator_get_optional() comment says it returns either a
regulator or IS_ERR; it doesn't mention NULL.

The other callers in drivers/pci (imx6_pcie_probe(),
histb_pcie_probe(), tegra_pcie_get_slot_regulators()) all explicitly
set the result to NULL in case of error.  They should all do it the
same way.

> +		ret = regulator_enable(rockchip->vpcie3v3);
> +		if (ret) {
> +			dev_err(dev, "failed to enable vpcie3v3 regulator\n");
> +			return ret;
> +		}
> +	}
> +
> +	ret = rockchip_pcie_phy_init(rockchip);
> +	if (ret)
> +		goto disable_regulator;
> +
> +	ret = rockchip_pcie_reset_control_release(rockchip);
> +	if (ret)
> +		goto deinit_phy;
> +
> +	ret = rockchip_pcie_clk_init(rockchip);
> +	if (ret)
> +		goto deinit_phy;
> +
> +	ret = dw_pcie_host_init(pp);
> +	if (ret)
> +		goto deinit_clk;
> +
> +	return 0;
> +
> +deinit_clk:
> +	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
> +deinit_phy:
> +	rockchip_pcie_phy_deinit(rockchip);
> +disable_regulator:
> +	if (rockchip->vpcie3v3)
> +		regulator_disable(rockchip->vpcie3v3);
> +
> +	return ret;
> +}
> +
> +MODULE_DEVICE_TABLE(of, rockchip_pcie_of_match);

I don't think this is necessary, is it?  I don't see MODULE_DEVICE_TABLE
being used except for modular drivers.

There are a couple other builtin drivers (mobiveil, microchip) that
use it, but I think those are mistakes.

> +static const struct of_device_id rockchip_pcie_of_match[] = {
> +	{ .compatible = "rockchip,rk3568-pcie", },
> +	{},
> +};
> +
> +static struct platform_driver rockchip_pcie_driver = {
> +	.driver = {
> +		.name	= "rockchip-dw-pcie",
> +		.of_match_table = rockchip_pcie_of_match,
> +		.suppress_bind_attrs = true,
> +	},
> +	.probe = rockchip_pcie_probe,
> +};
> +

Drop the blank line.

> +builtin_platform_driver(rockchip_pcie_driver);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
