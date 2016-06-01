From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 2/2] phy: rockchip-inno-usb2: add a new driver for Rockchip usb2phy
Date: Thu, 02 Jun 2016 01:46:09 +0200
Message-ID: <1915363.WKK5oRy4Me@diego>
References: <1464676811-7418-1-git-send-email-frank.wang@rock-chips.com> <1464676811-7418-3-git-send-email-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1464676811-7418-3-git-send-email-frank.wang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
Cc: dianders@chromium.org, kishon@ti.com, robh+dt@kernel.org, pawel.moll@arm.com, mark.rutland@arm.com, ijc+devicetree@hellion.org.uk, galak@codeaurora.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org, kever.yang@rock-chips.com, huangtao@rock-chips.com, william.wu@rock-chips.com, frank.wang@rock-chips.com.org
List-Id: linux-rockchip.vger.kernel.org

Hi Frank,

Am Dienstag, 31. Mai 2016, 14:40:11 schrieb Frank Wang:
> The newer SoCs (rk3366, rk3399) take a different usb-phy IP block
> than rk3288 and before, and most of phy-related registers are also
> different from the past, so a new phy driver is required necessarily.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---

[...]

> +static void rockchip_usb2phy_clk480m_disable(struct clk_hw *hw)
> +{
> +	struct rockchip_usb2phy *rphy =
> +		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
> +	int index;
> +
> +	/* make sure all ports in suspended mode */
> +	for (index = 0; index != rphy->phy_cfg->num_ports; index++)
> +		if (!rphy->ports[index].suspended)
> +			return;

This function can only get called when all clk-references have disabled the 
clock, so you should never reach that point that one phy port is not 
suspended?

> +
> +	/* turn off 480m clk output */
> +	property_enable(rphy, &rphy->phy_cfg->clkout_ctl, false);
> +}
> +

[...]

add something like:

static void rockchip_usb2phy_clk480m_unregister(void *data)
{
	struct rockchip_usb2phy *rphy = data;

	of_clk_del_provider(rphy->dev->of_node);
	clk_unregister(rphy->clk480m);
}

> +static struct clk *
> +rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
> +{
> +	struct device_node *node = rphy->dev->of_node;
> +	struct clk *clk;
> +	struct clk_init_data init;
	int ret;

> +
> +	init.name = "clk_usbphy_480m";
> +	init.ops = &rockchip_usb2phy_clkout_ops;
> +	init.flags = CLK_IS_ROOT;
> +	init.parent_names = NULL;
> +	init.num_parents = 0;
> +	rphy->clk480m_hw.init = &init;
> +
> +	/* optional override of the clockname */
> +	of_property_read_string(node, "clock-output-names", &init.name);
> +
> +	/* register the clock */
> +	clk = clk_register(rphy->dev, &rphy->clk480m_hw);
	if (IS_ERR(clk))
		return clk:

	ret = of_clk_add_provider(node, of_clk_src_simple_get, clk);
	if (ret < 0)
		goto err_clk_provider;

	ret = devm_add_action(rphy->dev, rockchip_usb2phy_clk480m_unregister, 
rphy);
	if (ret < 0)
		goto err_unreg_action;

	return clk;

err_unreg_action:
	of_clk_del_provider(node);
err_clk_provider:
	clk_unregister(clk);
	return ERR_PTR(ret);

> +}

[...]

> +/*
> + * The function manage host-phy port state and suspend/resume phy port
> + * to save power.
> + *
> + * we rely on utmi_linestate and utmi_hostdisconnect to identify whether
> + * FS/HS is disconnect or not. Besides, we do not need care it is FS
> + * disconnected or HS disconnected, actually, we just only need get the
> + * device is disconnected at last through rearm the delayed work,
> + * to suspend the phy port in _PHY_STATE_DISCONNECT_ case.
> + *
> + * NOTE: It will invoke some clk related APIs, so do not invoke it from
> + * interrupt context.

This does not seem to match the code, as I don't see any clk_* calls,

> + */
> +static void rockchip_usb2phy_sm_work(struct work_struct *work)
> +{
> +	struct rockchip_usb2phy_port *rport =
> +		container_of(work, struct rockchip_usb2phy_port, sm_work.work);
> +	struct rockchip_usb2phy *rphy = dev_get_drvdata(rport->phy->dev.parent);
> +	unsigned int sh = rport->port_cfg->utmi_hstdet.bitend -
> +			  rport->port_cfg->utmi_hstdet.bitstart + 1;
> +	unsigned int ul, uhd, state;
> +	unsigned int ul_mask, uhd_mask;
> +	int ret;
> +
> +	mutex_lock(&rport->mutex);
> +
> +	ret = regmap_read(rphy->grf, rport->port_cfg->utmi_ls.offset, &ul);
> +	if (ret < 0)
> +		goto next_schedule;
> +
> +	ret = regmap_read(rphy->grf, rport->port_cfg->utmi_hstdet.offset,
> +			  &uhd);
> +	if (ret < 0)
> +		goto next_schedule;
> +
> +	uhd_mask = GENMASK(rport->port_cfg->utmi_hstdet.bitend,
> +			   rport->port_cfg->utmi_hstdet.bitstart);
> +	ul_mask = GENMASK(rport->port_cfg->utmi_ls.bitend,
> +			  rport->port_cfg->utmi_ls.bitstart);
> +
> +	/* stitch on utmi_ls and utmi_hstdet as phy state */
> +	state = ((uhd & uhd_mask) >> rport->port_cfg->utmi_hstdet.bitstart) |
> +		(((ul & ul_mask) >> rport->port_cfg->utmi_ls.bitstart) << sh);
> +
> +	switch (state) {
> +	case PHY_STATE_HS_ONLINE:
> +		dev_dbg(&rport->phy->dev, "HS online\n");
> +		break;
> +	case PHY_STATE_FS_CONNECT:
> +		/*
> +		 * For FS device, the online state share with connect state
> +		 * from utmi_ls and utmi_hstdet register, so we distinguish
> +		 * them via suspended flag.
> +		 */
> +		if (!rport->suspended) {
> +			dev_dbg(&rport->phy->dev, "FS online\n");
> +			break;
> +		}
> +		/* fall through */
> +	case PHY_STATE_HS_CONNECT:
> +		if (rport->suspended) {
> +			dev_dbg(&rport->phy->dev, "HS/FS connected\n");
> +			rockchip_usb2phy_resume(rport->phy);
> +			rport->suspended = false;
> +		}
> +		break;
> +	case PHY_STATE_DISCONNECT:
> +		if (!rport->suspended) {
> +			dev_dbg(&rport->phy->dev, "HS/FS disconnected\n");
> +			rockchip_usb2phy_suspend(rport->phy);
> +			rport->suspended = true;
> +		}
> +
> +		/*
> +		 * activate the linestate detection to get the next device
> +		 * plug-in irq.
> +		 */
> +		property_enable(rphy, &rport->port_cfg->ls_det_clr, true);
> +		property_enable(rphy, &rport->port_cfg->ls_det_en, true);
> +
> +		/*
> +		 * we don't need to rearm the delayed work when the phy port
> +		 * is suspended.
> +		 */
> +		mutex_unlock(&rport->mutex);
> +		return;
> +	default:
> +		dev_dbg(&rport->phy->dev, "unknown phy state\n");
> +		break;
> +	}
> +
> +next_schedule:
> +	mutex_unlock(&rport->mutex);
> +	schedule_delayed_work(&rport->sm_work, SCHEDULE_DELAY);
> +}

[...]

> +static int rockchip_usb2phy_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = dev->of_node;
> +	struct device_node *child_np;
> +	struct phy_provider *provider;
> +	struct rockchip_usb2phy *rphy;
> +	const struct of_device_id *match;
> +	int index, ret;
> +
> +	rphy = devm_kzalloc(dev, sizeof(*rphy), GFP_KERNEL);
> +	if (!rphy)
> +		return -ENOMEM;
> +
> +	match = of_match_device(dev->driver->of_match_table, dev);
> +	if (!match || !match->data) {
> +		dev_err(dev, "phy configs are not assigned!\n");
> +		return -EINVAL;
> +	}
> +
> +	if (!dev->parent || !dev->parent->of_node)
> +		return -ENOMEM;
> +
> +	rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
> +	if (IS_ERR(rphy->grf))
> +		return PTR_ERR(rphy->grf);
> +
> +	rphy->dev = dev;
> +	rphy->phy_cfg = match->data;
> +	platform_set_drvdata(pdev, rphy);
> +
> +	rphy->clk480m = rockchip_usb2phy_clk480m_register(rphy);
> +	if (IS_ERR(rphy->clk480m))
> +		return PTR_ERR(rphy->clk480m);
> +
> +	rphy->vbus_host_gpio =
> +		devm_gpiod_get_optional(dev, "vbus_host", GPIOD_OUT_HIGH);
> +	if (!rphy->vbus_host_gpio)
> +		dev_info(dev, "host_vbus is not assigned!\n");
> +	else if (IS_ERR(rphy->vbus_host_gpio))
> +		return PTR_ERR(rphy->vbus_host_gpio);
> +
> +	index = 0;
> +	for_each_child_of_node(np, child_np) {
> +		struct rockchip_usb2phy_port *rport = &rphy->ports[index];
> +		struct phy *phy;
> +
> +		phy = devm_phy_create(dev, child_np, &rockchip_usb2phy_ops);
> +		if (IS_ERR(phy)) {
> +			dev_err(dev, "failed to create phy\n");
> +			ret = PTR_ERR(phy);
> +			goto put_child;
> +		}
> +
> +		rport->phy = phy;
> +		rport->port_cfg = &rphy->phy_cfg->port_cfgs[index];
> +
> +		/* initialize otg/host port separately */
> +		if (!of_node_cmp(child_np->name, "host-port")) {
> +			ret = rockchip_usb2phy_host_port_init(rphy, rport,
> +							      child_np);
> +			if (ret)
> +				goto put_child;
> +		}
> +
> +		phy_set_drvdata(rport->phy, rport);
> +		index++;
> +	}
> +
> +	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	return PTR_ERR_OR_ZERO(provider);
> +
> +put_child:
> +	of_node_put(child_np);

> +	of_clk_del_provider(np);
> +	clk_unregister(rphy->clk480m);

these two can go away, once you have the devm_action described
near your clk_register function.

> +	return ret;
> +}


Heiko
