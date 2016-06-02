From: Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH 2/2] phy: rockchip-inno-usb2: add a new driver for
 Rockchip usb2phy
Date: Thu, 2 Jun 2016 11:19:39 +0800
Message-ID: <574FA5CB.5020402@rock-chips.com>
References: <1464676811-7418-1-git-send-email-frank.wang@rock-chips.com>
 <1464676811-7418-3-git-send-email-frank.wang@rock-chips.com>
 <1915363.WKK5oRy4Me@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1915363.WKK5oRy4Me@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: dianders@chromium.org, kishon@ti.com, robh+dt@kernel.org, pawel.moll@arm.com, mark.rutland@arm.com, ijc+devicetree@hellion.org.uk, galak@codeaurora.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org, kever.yang@rock-chips.com, huangtao@rock-chips.com, william.wu@rock-chips.com, frank.wang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 06/02/2016 07:46 AM, Heiko St=FCbner wrote:
> Hi Frank,
>
> Am Dienstag, 31. Mai 2016, 14:40:11 schrieb Frank Wang:
>> The newer SoCs (rk3366, rk3399) take a different usb-phy IP block
>> than rk3288 and before, and most of phy-related registers are also
>> different from the past, so a new phy driver is required necessarily=
=2E
>>
>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>> ---
>
> [...]
>
>> +static void rockchip_usb2phy_clk480m_disable(struct clk_hw *hw)
>> +{
>> +	struct rockchip_usb2phy *rphy =3D
>> +		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
>> +	int index;
>> +
>> +	/* make sure all ports in suspended mode */
>> +	for (index =3D 0; index !=3D rphy->phy_cfg->num_ports; index++)
>> +		if (!rphy->ports[index].suspended)
>> +			return;
>
> This function can only get called when all clk-references have disabl=
ed the
> clock, so you should never reach that point that one phy port is not
> suspended?
>

Yeah, you are right, I will clean them up in the next patches.

>> +
>> +	/* turn off 480m clk output */
>> +	property_enable(rphy, &rphy->phy_cfg->clkout_ctl, false);
>> +}
>> +
>
> [...]
>
> add something like:
>
> static void rockchip_usb2phy_clk480m_unregister(void *data)
> {
> 	struct rockchip_usb2phy *rphy =3D data;
>
> 	of_clk_del_provider(rphy->dev->of_node);
> 	clk_unregister(rphy->clk480m);
> }
>
>> +static struct clk *
>> +rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
>> +{
>> +	struct device_node *node =3D rphy->dev->of_node;
>> +	struct clk *clk;
>> +	struct clk_init_data init;
> 	int ret;
>
>> +
>> +	init.name =3D "clk_usbphy_480m";
>> +	init.ops =3D &rockchip_usb2phy_clkout_ops;
>> +	init.flags =3D CLK_IS_ROOT;
>> +	init.parent_names =3D NULL;
>> +	init.num_parents =3D 0;
>> +	rphy->clk480m_hw.init =3D &init;
>> +
>> +	/* optional override of the clockname */
>> +	of_property_read_string(node, "clock-output-names", &init.name);
>> +
>> +	/* register the clock */
>> +	clk =3D clk_register(rphy->dev, &rphy->clk480m_hw);
> 	if (IS_ERR(clk))
> 		return clk:
>
> 	ret =3D of_clk_add_provider(node, of_clk_src_simple_get, clk);
> 	if (ret < 0)
> 		goto err_clk_provider;
>
> 	ret =3D devm_add_action(rphy->dev, rockchip_usb2phy_clk480m_unregist=
er,
> rphy);
> 	if (ret < 0)
> 		goto err_unreg_action;
>
> 	return clk;
>
> err_unreg_action:
> 	of_clk_del_provider(node);
> err_clk_provider:
> 	clk_unregister(clk);
> 	return ERR_PTR(ret);
>
>> +}
>

Good comments! Those codes will be included in the next.

> [...]
>
>> +/*
>> + * The function manage host-phy port state and suspend/resume phy p=
ort
>> + * to save power.
>> + *
>> + * we rely on utmi_linestate and utmi_hostdisconnect to identify wh=
ether
>> + * FS/HS is disconnect or not. Besides, we do not need care it is F=
S
>> + * disconnected or HS disconnected, actually, we just only need get=
 the
>> + * device is disconnected at last through rearm the delayed work,
>> + * to suspend the phy port in _PHY_STATE_DISCONNECT_ case.
>> + *
>> + * NOTE: It will invoke some clk related APIs, so do not invoke it =
from
>> + * interrupt context.
>
> This does not seem to match the code, as I don't see any clk_* calls,

Sorry for not describing the comment clearly. In a fact, *_sm_work will=
=20
invoke *phy_suspend or *phy_resume which will invoke some *clk APIs.

Anyway, I will correct it to be more clear.

>
>> + */
>> +static void rockchip_usb2phy_sm_work(struct work_struct *work)
>> +{
 >> +
>>  [...]
 >> +
>> +		/* fall through */
>> +	case PHY_STATE_HS_CONNECT:
>> +		if (rport->suspended) {
>> +			dev_dbg(&rport->phy->dev, "HS/FS connected\n");
>> +			rockchip_usb2phy_resume(rport->phy);
>> +			rport->suspended =3D false;
>> +		}
>> +		break;
>> +	case PHY_STATE_DISCONNECT:
>> +		if (!rport->suspended) {
>> +			dev_dbg(&rport->phy->dev, "HS/FS disconnected\n");
>> +			rockchip_usb2phy_suspend(rport->phy);
>> +			rport->suspended =3D true;
>> +		}
>>  [...]
 >> +
>> +	}
>> +
>> +next_schedule:
>> +	mutex_unlock(&rport->mutex);
>> +	schedule_delayed_work(&rport->sm_work, SCHEDULE_DELAY);
>> +}
>
> [...]
>
>> +static int rockchip_usb2phy_probe(struct platform_device *pdev)
>> +{
 >> +
 >>  [...]
 >> +
>> +
>> +	provider =3D devm_of_phy_provider_register(dev, of_phy_simple_xlat=
e);
>> +	return PTR_ERR_OR_ZERO(provider);
>> +
>> +put_child:
>> +	of_node_put(child_np);
>
>> +	of_clk_del_provider(np);
>> +	clk_unregister(rphy->clk480m);
>
> these two can go away, once you have the devm_action described
> near your clk_register function.

Done

>
>> +	return ret;
>> +}

BR.
=46rank
