Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19DBCC07CB1
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 08:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hiaiu7wv0jM4iiHlLgkJKF1es7LXvTDLKd9OAUBLYZ4=; b=Ue9fBtW4DaMMFF
	TJ3/N26BNxq2PNBkldLZYZi7tXyHxTd38narPBLzmsjQ6ZgkIpYdaJ9RTasRVHEH1zbJSojMY7a5a
	auMYtE+ziGaKlQYG466XTAfkqXorqrXv5ILuFquirUKEMlBSc9GEH02sheWO6ZrR4Y9NDbSmyDSe8
	IQbmgIoioz09SUZsClP0rlGHQxHk5yeMMlu5X8iyfat77uUjfI1e7zfK7UJ88Ca53ptmMdZ6xXCce
	A0hkcn5yKwZQGDML/8qMTq8R+maWvj/SsDYxGxh+ArvFSWi70lZZwbe2jdfh8RdzDaJqd1Utv+qD6
	IpjGoJOgVEXzPUPU/N5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Fw8-007T3M-2T;
	Wed, 29 Nov 2023 08:28:48 +0000
Received: from mail-m17207.xmail.ntesmail.com ([45.195.17.207])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Fw4-007T0U-1u
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 08:28:47 +0000
DKIM-Signature: a=rsa-sha256;
	b=Qq6K9775/nBsiVQJ4BXZyTcD+50uTadoc3TZZYEurfENxFZWeUb6lsMbFlNQp19V2GWZYA4CR7hxCQq3OvlIcAU0vPsd4ja89GOqSDcbXGJKP4X37H5560HXSOmA0wNL7k8Zx7j62d7Jjn8f/YsuEsW8GUfnrtAFFvW5iYDHnQY=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=aGpoJTy0YujP1OdkZ9q++euEDnLzMZVFRb/6ZJxkj40=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 934D97801C2;
	Wed, 29 Nov 2023 16:28:19 +0800 (CST)
Message-ID: <40b9e4cf-620c-4c7c-8e70-8959dec755c8@rock-chips.com>
Date: Wed, 29 Nov 2023 16:28:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/12] drm/rockchip: vop2: Add support for rk3588
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com
References: <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125544.3454918-1-andyshrk@163.com>
 <20231127111937.GW3359458@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20231127111937.GW3359458@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0waS1YYHRhOSR1IQkxLH0xVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5MSUpJVUpLS1VKQl
	kG
X-HM-Tid: 0a8c1a317c5cb24fkuuu934d97801c2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mxg6SAw5Pzw#LBNRVhRPUTEw
	Sz4wCyxVSlVKTEtKSU9NTktLTktDVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0lNSjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_002845_154480_AFDF960B 
X-CRM114-Status: GOOD (  12.51  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sascha,

On 11/27/23 19:19, Sascha Hauer wrote:
> Hi Andy,
>
> Looks good overall, two small things inside.
>
> On Wed, Nov 22, 2023 at 08:55:44PM +0800, Andy Yan wrote:
>>   
>> +#define vop2_output_if_is_hdmi(x)	(x == ROCKCHIP_VOP2_EP_HDMI0 || x == ROCKCHIP_VOP2_EP_HDMI1)
>> +#define vop2_output_if_is_dp(x)		(x == ROCKCHIP_VOP2_EP_DP0 || x == ROCKCHIP_VOP2_EP_DP1)
>> +#define vop2_output_if_is_edp(x)	(x == ROCKCHIP_VOP2_EP_EDP0 || x == ROCKCHIP_VOP2_EP_EDP1)
>> +#define vop2_output_if_is_mipi(x)	(x == ROCKCHIP_VOP2_EP_MIPI0 || x == ROCKCHIP_VOP2_EP_MIPI1)
>> +#define vop2_output_if_is_lvds(x)	(x == ROCKCHIP_VOP2_EP_LVDS0 || x == ROCKCHIP_VOP2_EP_LVDS1)
>> +#define vop2_output_if_is_dpi(x)	(x == ROCKCHIP_VOP2_EP_RGB0)
> Not that it matters in practice here, but you should add braces around
> the x argument in the macros usage, i.e. ((x) == ROCKCHIP_VOP2_EP_RGB0)
Okay , will do.
>> +static unsigned long rk3588_set_intf_mux(struct vop2_video_port *vp, int id, u32 polflags)
>> +{
>> +	struct vop2 *vop2 = vp->vop2;
>> +	int dclk_core_div, dclk_out_div, if_pixclk_div, if_dclk_div;
>> +	unsigned long clock;
>> +	u32 die, dip, div, vp_clk_div, val;
>> +
>> +	clock = rk3588_calc_cru_cfg(vp, id, &dclk_core_div, &dclk_out_div,
>> +				    &if_pixclk_div, &if_dclk_div);
>> +	if (!clock)
>> +		return 0;
>> +
>> +	vp_clk_div = FIELD_PREP(RK3588_VP_CLK_CTRL__DCLK_CORE_DIV, dclk_core_div);
>> +	vp_clk_div |= FIELD_PREP(RK3588_VP_CLK_CTRL__DCLK_OUT_DIV, dclk_out_div);
>> +
>> +	die = vop2_readl(vop2, RK3568_DSP_IF_EN);
>> +	dip = vop2_readl(vop2, RK3568_DSP_IF_POL);
>> +	div = vop2_readl(vop2, RK3568_DSP_IF_CTRL);
>> +
>> +	switch (id) {
>> +	case ROCKCHIP_VOP2_EP_HDMI0:
>> +		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV, if_dclk_div);
> you should clear the bits of a mask before setting them again. The same
> goes for several other bits modified in this switch/case.


Thanks for catching this, will fixed in next version.

>
>> +		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV, if_pixclk_div);
>> +		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX;
>> +		die |= RK3588_SYS_DSP_INFACE_EN_HDMI0 |
>> +			    FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX, vp->id);
>> +		val = rk3588_get_hdmi_pol(polflags);
>> +		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 1, 1));
>> +		regmap_write(vop2->vo1_grf, RK3588_GRF_VO1_CON0, HIWORD_UPDATE(val, 6, 5));
>> +		break;
> Sascha
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
