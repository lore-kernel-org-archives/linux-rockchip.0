Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9897C87FCE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jul 2025 07:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZHl8hQOrs2lvxTcCdIbJxtCcY8YwBZcf1AYpQJL6qs=; b=eecao40t6Del4s
	DU3mTUXpVMmm9993Vfc5cEmpC6EORftwmAwwm1la/5EAfKKIcdXzuOZ6H0dQaSVZ5auoHzoz0k0FP
	X5SVpI30/VnwIKYp3joPXHLm8tC40rGIBx1uh5ircnKcAtVP90IUQeMmwO6OsHJM/v5n3QDLJm0yF
	Y1lQXm9GD6v2btjUfeduEz96Sh53BXPqP4HOol2SjlOp0nfBFfbNMJ53U0I0ASl3c+pHBnWDyzsWJ
	0fnXcM4100bzY3u+SDNZRdsEGQDDBOfuL6LVcf6S7ifWf2R4hQ18uvD9f2vMr0pEbJ8UEfadryQWj
	dt2TISXO8n+v/nhDmofA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugHsP-0000000Dojb-0Ief;
	Mon, 28 Jul 2025 07:02:25 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugHCT-0000000Dke6-1G89
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Jul 2025 06:19:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1753683543;
 bh=47Fk9CIAGtNHco8wNLXEvPIj9J6CR5nOoXAaq7kp3PQ=;
 b=Pzv5AbCvh3XVEqVfraER2yOxmVDi+B4G7S5eNnT+eQz2Ue+0RxRHjHG1dSEtM3TRsNJ/K//fO
 7vow5fd3rg4nRTFJVdjYBKeTgmJoo84rL19A1eKckBOdsJVMbRp+qMEVxKs/VGiOMgWUy8DZ1tG
 WfJp07Sk+cEH+kaQCsh8p//+nMltje9bT43ufj2GC79/Y9Sbgw5V0Sknj3c89lh5UYff38n+Dwb
 vGSoaftk/yUQKwaSAJgJqN9RjNoL0+y8jBWjlkqHMrLqAZBqC6vhUN4JWScg7qltqesBX4lYJu+
 49PTtHb63cl2KGWtyd+0z4+J4GVMHrRwrtGGJUC/vp4g==
X-Forward-Email-ID: 68871646991cafe79f4c9fae
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.8
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <42188845-5206-4887-80b5-c79e8084f542@kwiboo.se>
Date: Mon, 28 Jul 2025 08:18:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] phy: rockchip: naneng-combphy: Add RK3528 support
To: Yao Zi <ziyao@disroot.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 Shresth Prasad <shresthprasad7@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Chukun Pan <amadeus@jmu.edu.cn>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Andy Yan <andy.yan@rock-chips.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20250624033733.50197-1-ziyao@disroot.org>
 <20250624033733.50197-6-ziyao@disroot.org>
 <eb7c9e40-3c17-488f-98a2-17b972f61e75@kwiboo.se> <aIHDSW0XO9BCfch3@pie.lan>
 <aIcFmhQqLuUlLZb_@pie>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <aIcFmhQqLuUlLZb_@pie>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250727_231905_696721_342C165A 
X-CRM114-Status: GOOD (  40.75  )
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

Hi Yao Zi,

On 7/28/2025 7:07 AM, Yao Zi wrote:
> On Thu, Jul 24, 2025 at 05:23:55AM +0000, Yao Zi wrote:
>> On Wed, Jul 23, 2025 at 04:51:15PM +0200, Jonas Karlman wrote:
>>> Hi Yao Zi,
>>>
>>> On 6/24/2025 5:37 AM, Yao Zi wrote:
>>>> Rockchip RK3528 integrates one naneng-combphy that is able to operate in
>>>> PCIe and USB3 mode. The control logic is similar to previous variants of
>>>> naneng-combphy but the register layout is apperantly different from the
>>>> RK3568 one.
>>>>
>>>> Signed-off-by: Yao Zi <ziyao@disroot.org>
>>>> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
>>>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>>  .../rockchip/phy-rockchip-naneng-combphy.c    | 186 +++++++++++++++++-
>>>>  1 file changed, 185 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
>>>> index 1d1c7723584b..bf00a85a113b 100644
>>>> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
>>>> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> 
> ...
> 
>>>> @@ -398,6 +437,147 @@ static int rockchip_combphy_probe(struct platform_device *pdev)
>>>>  	return PTR_ERR_OR_ZERO(phy_provider);
>>>>  }
>>>>  
>>>> +static int rk3528_combphy_cfg(struct rockchip_combphy_priv *priv)
>>>> +{
>>>> +	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
>>>> +	unsigned long rate;
>>>> +	u32 val;
>>>> +
>>>> +	/* Set SSC downward spread spectrum */
>>>> +	val = FIELD_PREP(RK3528_PHYREG6_SSC_DIR, RK3528_PHYREG6_SSC_DOWNWARD);
>>>> +	rockchip_combphy_updatel(priv, RK3528_PHYREG6_SSC_DIR, val, RK3528_PHYREG6);
>>>> +
>>>> +	switch (priv->type) {
>>>> +	case PHY_TYPE_PCIE:
>>>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
>>>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
>>>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
>>>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
>>>> +		break;
>>>> +	case PHY_TYPE_USB3:
>>>> +		/* Enable adaptive CTLE for USB3.0 Rx */
>>>> +		rockchip_combphy_updatel(priv, RK3528_PHYREG80_CTLE_EN, RK3528_PHYREG80_CTLE_EN,
>>>> +					 RK3528_PHYREG80);
>>>> +
>>>> +		/* Set slow slew rate control for PI */
>>>> +		val = FIELD_PREP(RK3528_PHYREG81_SLEW_RATE_CTRL,
>>>> +				 RK3528_PHYREG81_SLEW_RATE_CTRL_SLOW);
>>>> +		rockchip_combphy_updatel(priv, RK3528_PHYREG81_SLEW_RATE_CTRL, val,
>>>> +					 RK3528_PHYREG81);
>>>> +
>>>> +		/* Set CDR phase path with 2x gain */
>>>> +		rockchip_combphy_updatel(priv, RK3528_PHYREG81_CDR_PHASE_PATH_GAIN_2X,
>>>> +					 RK3528_PHYREG81_CDR_PHASE_PATH_GAIN_2X, RK3528_PHYREG81);
>>>> +
>>>> +		/* Set Rx squelch input filler bandwidth */
>>>> +		val = FIELD_PREP(RK3528_PHYREG83_RX_SQUELCH, RK3528_PHYREG83_RX_SQUELCH_VALUE);
>>>> +		rockchip_combphy_updatel(priv, RK3528_PHYREG83_RX_SQUELCH, val, RK3528_PHYREG83);
>>>> +
>>>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
>>>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
>>>> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->usb_mode_set, true);
>>>
>>> I suggest we add something like following here:
>>>
>>> 		rockchip_combphy_param_write(priv->pipe_grf, &cfg->u3otg0_port_en, true);
>>>
>>> to ensure that U3 is enabled in case boot firmware disable the U3 port.
>>
>> Thanks for the hint, I'm willing to adapt it. Should we handle the case
>> that USB is enabled by firmware but PCIe is going to be used in kernel,
>> too? It's desirable to make fewer assumptions about the state set by
>> firmware.
>>
>> P.S., I'm assuming the register should be written as "disabled" value
>> whenever PCIe is used, and "enabled" whenever USB is used, as
>> the LSB of USB_GRF_USB3OTG0_CON1 is said to be "USB 3.0 SS Port Disable
>> control" according to RK3588's TRM, which doesn't look like something
>> compatible with PCIe mode when setting to 1'b0 (port enabled). Please
>> correct me if I'm wrong.
> 
> I've read through the manual and done some tests today, and it seems I
> misunderstood the purpose of USB3OTG0_CON1. This register has only
> something to do with USB3, but not PCIe. Writing either "disabled" or
> "enabled" value to it doesn't affect PCIe functionality. Thus for the
> naneng-combphy driver, it should be enough to only write the "enabled"
> value to u3otg0_port_en if USB-3 mode is used.
> 
> Anyway, thanks for your remind on this register :) Its reset value
> allows USB-3 to function thus I just forgot about it during clean-up.
> I'll send v5 soon.

Sorry for not getting back to you sooner, I fully agree with your
assessment here, the USB3OTG0_CON1 reg only affects USB and has nothing
to do with PCIe. Trying to adjust it when probing PCIe drivers could
open up for strange bahavior in case USB3 controller driver has already
been loaded or similar.

> 
> ...
> 
>>>> +static const struct rockchip_combphy_grfcfg rk3528_combphy_grfcfgs = {
>>>> +	/* pipe-phy-grf */
>>>> +	.pcie_mode_set		= { 0x0000, 5, 0, 0x00, 0x11 },
>>>> +	.usb_mode_set		= { 0x0000, 5, 0, 0x00, 0x04 },
>>>> +	.pipe_rxterm_set	= { 0x0000, 12, 12, 0x00, 0x01 },
>>>> +	.pipe_txelec_set	= { 0x0004, 1, 1, 0x00, 0x01 },
>>>> +	.pipe_txcomp_set	= { 0x0004, 4, 4, 0x00, 0x01 },
>>>> +	.pipe_clk_24m		= { 0x0004, 14, 13, 0x00, 0x00 },
>>>> +	.pipe_clk_100m		= { 0x0004, 14, 13, 0x00, 0x02 },
>>>> +	.pipe_rxterm_sel	= { 0x0008, 8, 8, 0x00, 0x01 },
>>>> +	.pipe_txelec_sel	= { 0x0008, 12, 12, 0x00, 0x01 },
>>>> +	.pipe_txcomp_sel	= { 0x0008, 15, 15, 0x00, 0x01 },
>>>> +	.pipe_clk_ext		= { 0x000c, 9, 8, 0x02, 0x01 },
>>>> +	.pipe_phy_status	= { 0x0034, 6, 6, 0x01, 0x00 },
>>>> +	.con0_for_pcie		= { 0x0000, 15, 0, 0x00, 0x110 },
>>>> +	.con1_for_pcie		= { 0x0004, 15, 0, 0x00, 0x00 },
>>>> +	.con2_for_pcie		= { 0x0008, 15, 0, 0x00, 0x101 },
>>>> +	.con3_for_pcie		= { 0x000c, 15, 0, 0x00, 0x0200 },
>>>
>>> And adding something like this:
>>>
>>> 	/* pipe-grf */
>>> 	.u3otg0_port_en		= { 0x0044, 15, 0, 0x0181, 0x1100 },
>>>
>>> Should be possible with ("phy: rockchip: naneng-combphy: Enable U3 OTG
>>> port for RK3568") [1].
>>>
>>> Most RK3528 boards I have come across this far seem to use PCIe instead
>>> of USB3, so having boot firmware disable U3 early (to help support USB
>>> gadget in boot firmware) and instead having this PHY driver re-enable U3
>>> when needed seem most logical to me.
> 
> Thank you for the U-Boot patch! While reading through, I saw commit
> "rockchip: rk3528: Disable USB3OTG U3 port early" states,

I will try to send out a small RK3528 U-Boot series including that patch
later today, with v6.16 just released I am hoping U-Boot shortly merges
the v6.16 DTs for its next release, v2025.10, to reduce the size of such
U-Boot series.

> 
>> Some board designs may not use the COMBPHY for USB3 purpose. For these
>> board to use USB OTG the input clock source must change to use UTMI
>> clk instead of PIPE clk.
> 
> Does this mean we should ideally add similar handling for USB3OTG in the
> kernel's usb2phy driver, too? Otherwise if the firmware doesn't handle
> clock stuff well, the kernel'll fail to operate in OTG mode, either.

Checking for use of a usb3-phy from the usb2phy driver feel like the
wrong place to do that, if anything possible from the DWC3 driver. But
that also feel a bit strange to me, and could possibly be complex.

What we know for sure is that when the combo phy, or usbdp phy for e.g.
rk3576 and rk3588, is used for usb3, we should be sure that we can
"enable" U3 in USB3OTGx_CON1 regs without affecting anything.

Based on my testing it only seem to be the utmi/pipe clk source bit that
has any effect on USB2 only function. So could possibly be something for
the clock tree to handle as an alternative approach.

To be able to use usb2 in U-Boot, and with the usbdp phy driver already
having support in both Linux and U-Boot to enable U3 port, doing an
early disable in U-Boot and later re-enable when we know for sure is
easy and make some sense to me ;-)

Regards,
Jonas

> 
>>>
>>> I will push an updated U-Boot rk3528 branch [2] where I include such
>>> early U3 port disable once source.denx.de is back online again.
>>>
>>> [1] https://lore.kernel.org/r/20250723072324.2246498-1-jonas@kwiboo.se
>>> [2] https://source.denx.de/u-boot/contributors/kwiboo/u-boot/-/commits/rk3528
>>>
>>> Regards,
>>> Jonas
> 
> Thanks,
> Yao Zi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
