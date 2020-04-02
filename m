From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 1/2] soc: rockchip: Register a soc_device to retrieve revision
Date: Thu, 02 Apr 2020 16:14:58 +0200
Message-ID: <4543799.QtudHIFNrS@diego>
References: <20200401153513.423683-1-mylene.josserand@collabora.com> <5143930.cPWVAAQKI9@diego> <4844d3ba-87fa-51f4-0a56-3131e390589a@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <4844d3ba-87fa-51f4-0a56-3131e390589a@arm.com>
Sender: linux-clk-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: =?ISO-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@collabora.com>, sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, geert@linux-m68k.org, kernel@collabora.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 2. April 2020, 13:45:34 CEST schrieb Robin Murphy:
> On 2020-04-01 5:34 pm, Heiko Stübner wrote:
> [...]
> > The possible problem I see here is clocking and power-domain of the hdmi
> > controller in corner-cases. In the past we already had a lot of fun with
> > kexec, which also indicates that people actually use kexec productively.
> > 
> > So while all clocks are ungated and all power-domains are powered on first
> > boot, on a system without graphics the pclk+power-domain could be off when
> > doing a kexec into a second kernel, which then would probably hang here.
> 
> Just to be that guy, how about kdump, where entry to the second kernel 
> is predicated on there *not* being a nice clean shutdown? ;)
> 
> IMO relying on any particular bootloader behaviour in the kernel is 
> fairly fragile - U-Boot has a lot more latitude in assuming it's running 
> straight out of reset than Linux does.

You'll have to take into account that there are more boot options than
uboot ;-) ... especially the rk3288 also needs to support some ancient
version of coreboot - that definitly won't see any updates anymore
and isn't really user upgradeable.


> If we're not going to trust the 
> DT to correctly describe the SoC variant in the first place,

I'm still all for "just put a rk3288w" into the devicetree compatible,
but so far other participants seem to prefer a software solution ;-) .


> then it's 
> somewhat questionable whether we should trust it for indirectly 
> identifying the SoC variant either - it would seem a lot more robust to 
> just map the known physical addresses to run a canned sequence of 
> register writes that puts things in a known-good state (on the basis 
> that this has to run before the 'real' drivers for those things are up, 
> and thus can't interfere with them).

The problem is, the "known physical address" is part of the dw-hdmi
controller ip block, so we'll also need to take into account clocks and
power-domains.

So that would mean the soc-"driver" would need to 
- ioremap hdmi, cru and pmu
- ungate all clocks (on reboot we don't know the hirarchy)
- enable at least the pd_vio power-domain
via direct register writes.

Doable but definitly very ugly and I also don't really know what more
people farther upstream would say to that.

Anybody interested in just adding that new dt-compatible?


Heiko

> > Of course with the hdmi-pclk being sourced from hclk_vio we run into a
> > chicken-egg-problem, as we need pclk_hdmi_ctrl to register hclk_vio at all.
> > 
> > So I guess one way out of this could be to
> > - amend rk3288_clk_shutdown() to also ungate the hdmi-pclk on shutdown
> > - add a shutdown mechanism to the power-domain driver so that it can
> >    enable PD_VIO on shutdown
> > 
> >> +
> >> +	if (readl_relaxed(hdmi_base + RK3288_HDMI_REV_REG)
> >> +	    == RK3288W_HDMI_REV)
> > 
> > nit: a nicer look would be something like
> > 	val = readl_relaxed(hdmi_base + RK3288_HDMI_REV_REG);
> > 	if (val == RK3288W_HDMI_REV)
> > 
> >> +		revision = RK3288_SOC_REV_RK3288W;
> >> +	else
> >> +		revision = RK3288_SOC_REV_RK3288;
> >> +
> >> +	iounmap(hdmi_base);
> >> +
> >> +	return revision;
> >> +}
> >> +
> >> +static const char *rk3288_socinfo_revision(u32 rev)
> >> +{
> >> +	const char *soc_rev;
> >> +
> >> +	switch (rev) {
> >> +	case RK3288_SOC_REV_RK3288:
> >> +		soc_rev = "RK3288";
> >> +		break;
> >> +
> >> +	case RK3288_SOC_REV_RK3288W:
> >> +		soc_rev = "RK3288w";
> > 
> > can we maybe use lower-case letters for all here?
> > 
> >> +		break;
> >> +
> >> +	case RK3288_SOC_REV_NOT_DETECT:
> >> +		soc_rev = "";
> >> +		break;
> >> +
> >> +	default:
> >> +		soc_rev = "unknown";
> >> +		break;
> >> +	}
> >> +
> >> +	return kstrdup_const(soc_rev, GFP_KERNEL);
> >> +}
> >> +
> >> +static const struct of_device_id rk3288_soc_match[] = {
> >> +	{ .compatible = "rockchip,rk3288", },
> >> +	{ }
> >> +};
> >> +
> >> +static int __init rk3288_soc_init(void)
> > 
> > as noted at the top, I'd really like to see this more generalized so that
> > other socs can just hook in there with a revision callback in a
> > rockchip_soc_data struct.
> > 
> > 
> >> +{
> >> +	struct soc_device_attribute *soc_dev_attr;
> >> +	struct soc_device *soc_dev;
> >> +	struct device_node *np;
> >> +
> >> +	np = of_find_matching_node(NULL, rk3288_soc_match);
> >> +	if (!np)
> >> +		return -ENODEV;
> >> +
> >> +	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> >> +	if (!soc_dev_attr)
> >> +		return -ENOMEM;
> >> +
> >> +	soc_dev_attr->family = "Rockchip";
> >> +	soc_dev_attr->soc_id = "RK32xx";
> > 
> > nit: rk3288 instead of "32xx" please
> > 
> >> +
> >> +	np = of_find_node_by_path("/");
> >> +	of_property_read_string(np, "model", &soc_dev_attr->machine);
> >> +	of_node_put(np);
> >> +
> >> +	soc_dev_attr->revision = rk3288_socinfo_revision(rk3288_revision());
> >> +
> >> +	soc_dev = soc_device_register(soc_dev_attr);
> >> +	if (IS_ERR(soc_dev)) {
> >> +		kfree_const(soc_dev_attr->revision);
> >> +		kfree_const(soc_dev_attr->soc_id);
> >> +		kfree(soc_dev_attr);
> >> +		return PTR_ERR(soc_dev);
> >> +	}
> >> +
> >> +	dev_info(soc_device_to_device(soc_dev), "Rockchip %s %s detected\n",
> >> +		 soc_dev_attr->soc_id, soc_dev_attr->revision);
> > 
> > nit: dev_dbg should be enough, that information doesn't really matter for
> > most people, as it's only relevant to clock internals.
> > 
> > 
> > Heiko
> > 
> > 
> > 
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> > 
> 
