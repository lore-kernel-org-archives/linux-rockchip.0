Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1CCDCEBF7D
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 07:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lrDy8jJSfeAwk26kgPSi9URLQ1ykyDajZ8sVgGesCyA=; b=u09Wlu1+48ecsa
	B20X8+1IUd7S4SCNShhaIiKeYf2ErYuPBYkkthxIJtp+7Qf8LEK0xTogkfz2Se48slsSQlXEJAn7l
	wKEMrl+dR3AF8Ize+YrW+Srjq38jT9gAfG+zhljpKHh6jh+TohMFmhJZDQZd/J6URmA//Hkt/R2WE
	sQTTR3bVIkYx+i/vV59PWd3OswJruwzG+rK6n64DjCLi6YiAadQZ0HpqYGDL+8aMhacKgfTTAw61r
	lO6HPh8EWdwStZmH8SlxGSmf+Uxr7bZlaOXtBVfHns8C98xE59fyqxC6tCGaA4hFUf/zn5dqQIMpk
	sNmXjS8t0xuem2iKHprw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su5eL-0000000AO8M-1KG4;
	Fri, 27 Sep 2024 07:44:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su5d6-0000000ANox-38Pp;
	Fri, 27 Sep 2024 07:43:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5ZTsev+NIW/zSFtIbfCXm6MY/MQInTAzru2nwTb17h8=; b=KdpYHP+j5/nU7dka/Qp+fzSLl1
	//K33u0LzJWBdChANPG5AGEVmTrUOqfyp6GCdIyioKVLU5t2U44tr+GWX+Ulv7lCDmKFPjGvxo3NL
	iDNOyUo6SL/wL3UJ7TFcbvPvWJla/bJjFEtXDWASouvhQcGhG5mkV5IntUe/kYUsfvSZeH16bBHk9
	oDe9pmYbSYxsJXTL5Yjz0dQB2gdXpu8ILTngBsidBXLCSDvnLIt0dlojzh6NvhdBZS++IlJHJ6Ydk
	Rw9nYChbKmV+F8siT7RTKENPL2iChTANooD+whdaWVx18RQeRNlfZKXPH//mGSHlDVNPT+cM6JqU1
	WUDcuowA==;
Received: from 85-160-70-253.reb.o2.cz ([85.160.70.253] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1su5cx-0008Nc-Rb; Fri, 27 Sep 2024 09:42:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, Frank Wang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, frank.wang@rock-chips.com
Subject: Re: [PATCH v3 2/2] phy: rockchip: inno-usb2: Add usb2 phys support for rk3576
Date: Fri, 27 Sep 2024 09:42:58 +0200
Message-ID: <9874721.ag9G3TJQzC@phil>
In-Reply-To: <9cc2d594-a930-4c4a-86ee-47228af28936@gmail.com>
References: <20240926103223.29538-1-frawang.cn@gmail.com> <10867555.aFP6jjVeTY@phil>
 <9cc2d594-a930-4c4a-86ee-47228af28936@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_004309_010288_97A39063 
X-CRM114-Status: GOOD (  44.81  )
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

Hi Frank,

Am Freitag, 27. September 2024, 08:16:42 CEST schrieb Frank Wang:
> On 2024/9/26 18:48, Heiko Stuebner wrote:
> > Am Donnerstag, 26. September 2024, 12:32:23 CEST schrieb Frank Wang:
> >> From: William Wu <william.wu@rock-chips.com>
> >>
> >> The RK3576 SoC has two independent USB2.0 PHYs, and each PHY has
> >> one port.
> >>
> >> This change also converts the clock management from single to bulk
> >> as some Rockchip SoCs (e.g RK3576) have more than one clock.
> >>
> >> Signed-off-by: William Wu <william.wu@rock-chips.com>
> >> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> >> ---
> >> Changelog:
> >> v3:
> >>   - amend the commit log adds clocks converting.
> >>   - retrieve the clock by "clks.id" in *_clk480m_register() function.
> >>
> >> v2:
> >>   - no changes.
> >> v1:
> >>   - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-2-frank.wang@rock-chips.com/
> >>
> >>   drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 139 +++++++++++++++++-
> >>   1 file changed, 131 insertions(+), 8 deletions(-)
> >>
> >> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> >> index 4f71373ae6e1..642c7857c5ae 100644
> >> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> >> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> >> @@ -229,9 +229,10 @@ struct rockchip_usb2phy_port {
> >>    * @dev: pointer to device.
> >>    * @grf: General Register Files regmap.
> >>    * @usbgrf: USB General Register Files regmap.
> >> - * @clk: clock struct of phy input clk.
> >> + * @clks: array of phy input clocks.
> >>    * @clk480m: clock struct of phy output clk.
> >>    * @clk480m_hw: clock struct of phy output clk management.
> >> + * @num_clks: number of phy input clocks.
> >>    * @phy_reset: phy reset control.
> >>    * @chg_state: states involved in USB charger detection.
> >>    * @chg_type: USB charger types.
> >> @@ -246,9 +247,10 @@ struct rockchip_usb2phy {
> >>   	struct device	*dev;
> >>   	struct regmap	*grf;
> >>   	struct regmap	*usbgrf;
> >> -	struct clk	*clk;
> >> +	struct clk_bulk_data	*clks;
> >>   	struct clk	*clk480m;
> >>   	struct clk_hw	clk480m_hw;
> >> +	int			num_clks;
> >>   	struct reset_control	*phy_reset;
> >>   	enum usb_chg_state	chg_state;
> >>   	enum power_supply_type	chg_type;
> >> @@ -376,7 +378,9 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
> >>   {
> >>   	struct device_node *node = rphy->dev->of_node;
> >>   	struct clk_init_data init;
> >> +	struct clk *refclk = NULL;
> >>   	const char *clk_name;
> >> +	int i;
> >>   	int ret = 0;
> >>   
> >>   	init.flags = 0;
> >> @@ -386,8 +390,15 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
> >>   	/* optional override of the clockname */
> >>   	of_property_read_string(node, "clock-output-names", &init.name);
> >>   
> >> -	if (rphy->clk) {
> >> -		clk_name = __clk_get_name(rphy->clk);
> >> +	for (i = 0; i < rphy->num_clks; i++) {
> >> +		if (!strncmp(rphy->clks[i].id, "phyclk", 6)) {
> >> +			refclk = rphy->clks[i].clk;
> >> +			break;
> >> +		}
> >> +	}
> >> +
> >> +	if (!IS_ERR(refclk)) {
> >> +		clk_name = __clk_get_name(refclk);
> >>   		init.parent_names = &clk_name;
> >>   		init.num_parents = 1;
> >>   	} else {
> >> @@ -1406,22 +1417,29 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
> >>   	if (IS_ERR(rphy->phy_reset))
> >>   		return PTR_ERR(rphy->phy_reset);
> >>   
> >> -	rphy->clk = devm_clk_get_optional_enabled(dev, "phyclk");
> >> -	if (IS_ERR(rphy->clk)) {
> >> -		return dev_err_probe(&pdev->dev, PTR_ERR(rphy->clk),
> >> +	ret = devm_clk_bulk_get_all(dev, &rphy->clks);
> >> +	if (ret == -EPROBE_DEFER) {
> >> +		return dev_err_probe(&pdev->dev, -EPROBE_DEFER,
> >>   				     "failed to get phyclk\n");
> >>   	}
> >>   
> >> +	/* Clocks are optional */
> >> +	rphy->num_clks = ret < 0 ? 0 : ret;
> >> +
> >>   	ret = rockchip_usb2phy_clk480m_register(rphy);
> >>   	if (ret) {
> >>   		dev_err(dev, "failed to register 480m output clock\n");
> >>   		return ret;
> >>   	}
> >>   
> >> +	ret = clk_bulk_prepare_enable(rphy->num_clks, rphy->clks);
> >> +	if (ret)
> >> +		return ret;
> >> +
> > Do you actually need that separate enable step?
> > There exists devm_clk_bulk_get_all_enable()
> >
> > https://elixir.bootlin.com/linux/v6.11/source/include/linux/clk.h#L511
> >
> > which you could use above. Especially as otherwise you'd need a remove
> > callback to disable the clock on driver unbind?
> >
> 
> Using devm_clk_bulk_get_all() just can get clocknumbers, 
> and devm_clk_bulk_get_all_enable() is not.
> It seems that there is no other API can get the number of clocks separately.

Hmm, didn't see that yesterday, but you're right.

From a consistency standpoint I think it would actually make sense to
return the number of clocks from devm_clk_bulk_get_all_enable() .

Because right now, those clk_* functions are looking pretty similar
but behave differently. And looking at the function, the enable-variant
also just uses clk_bulk_get_all, just looses the number of clocks
because "ret" is reused by the enable call.


But if you don't want to touch the clk API that's also ok, but
you should then add a devm_add_action_or_reset call, to disable
the clocks on driver removal, before they are freed.


> >>   	if (rphy->phy_cfg->phy_tuning) {
> >>   		ret = rphy->phy_cfg->phy_tuning(rphy);
> >>   		if (ret)
> >> -			return ret;
> >> +			goto disable_clks;
> >>   	}
> >>   
> >>   	index = 0;
> >> @@ -1484,6 +1502,8 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
> >>   
> >>   put_child:
> >>   	of_node_put(child_np);
> >> +disable_clks:
> >> +	clk_bulk_disable_unprepare(rphy->num_clks, rphy->clks);
> >>   	return ret;
> >>   }
> >>   
> >> @@ -1495,6 +1515,30 @@ static int rk3128_usb2phy_tuning(struct rockchip_usb2phy *rphy)
> >>   				BIT(2) << BIT_WRITEABLE_SHIFT | 0);
> >>   }
> >
> > I still maintain, that this maybe should be two separate patches.
> > And you even seem to have nice "cut-here" in it ;-)
> >
> > The code above converts the driver to use clk_bulk to handle
> > multiple clocks for controller variants needing it.
> >
> >
> > And the code below adds the rk3576-specific data to the driver.
> >
> 
> Make sense, I shall split two separate patches in the next version.
> BTW, should I send the clk_bulk process patch as a separate series? I 
> mean I shouldn't send it together with this series, right?

No, just one series, convert the driver to clk_bulk*, add rk3576 binding,
add rk3576-specific data :-) .

Because people will want to see where you're going with your change
and having "this series depends on this separate patch" creates confusion
and you're really only touching this one driver.

Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
