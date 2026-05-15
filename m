Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DCB4CD4851
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 21:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bBw2ssGhu1EwamNwINWcl7YmQ6/tUwEKclg1qzaAOw=; b=RN2DyndQH5eebn
	nnflovrsYmyyEUsR6sEXoxzmIAAQtsBj3jsMwtJBlcu9gWanv1I9F7s/IYPDGINAWI0npJjAdKD8t
	6fJ170hd5c8jYLaXFQkNp802ejJ63Oqxd6wVEZkcNCyXY0k6u6f7qdF6VBH5FN3wtVZ8j7Jbv0eqL
	+wicJ2Yqb+14FcsHh5C+lFIYE+TSyZTeuVgMc2y4hQjivAdxwYGHZ+ZEe7sr8ArJtexBzJps96Lv9
	Wc3V1Fi0KLZr24IIjRdsZ1FyhAW16mn9jp8EijICjA6gN/DiIxxhLaPHcHHHyZHL3Xy1WRhgyCVO5
	mqckIw9tK/ouDFtdPuYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNzjZ-00000009S0d-0yiF;
	Fri, 15 May 2026 21:06:13 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNzjS-00000009RvG-2F89
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 21:06:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1778879149;
 bh=dbjZStXLEh138nsa2G4YhX1F04rK5mkTXOocNIIQ7A8=;
 b=wk+oQ3DdC0udryFJbxD0GbokjKy9R8CGReaS9CxLsJQ/UWxNQH5rjs+RM/71ojLPiRHeYmNSm
 aCI6WhDONR7bNwPE4Q57cemQLaXd+nRFYmU/k1mkrHVDRpvNn6cZEMIgXNSkcNCKW3rAGLawJA9
 86QsAZfz8ozB7HHqNoPJaM4kUp6MXInGeLhFkcP5SUTheDxj8+1SSyzvTnHMwzq8ZaHnjVkhWpz
 /0W4qB2NcKh/aPAjah+vDXLkDzzFQUcvLHr9UdD6MMZkXSRDIhcwyckPlNUHr4MPOYsSV7rQYfP
 s51Bptx5KMkyBHTDHHDDQzh/9Uz4Jjx8XHs68QOI2u1Q==
X-Forward-Email-ID: 6a078a7e26842e7d336abf95
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <d69b500b-0473-496d-b17e-c60ce9839e0c@kwiboo.se>
Date: Fri, 15 May 2026 23:04:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] phy: rockchip: inno-hdmi: Add configure() and
 validate() ops
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260515195512.1757363-1-jonas@kwiboo.se>
 <20260515195512.1757363-2-jonas@kwiboo.se>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260515195512.1757363-2-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_140610_028590_F2AF02FF 
X-CRM114-Status: GOOD (  19.41  )
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

Hi,

On 5/15/2026 9:55 PM, Jonas Karlman wrote:
> The commit 10ed34d6eaaf ("phy: Add HDMI configuration options")
> introduced a way for HDMI PHYs to be configured through the generic
> phy_configure() function.
> 
> This driver derives the TMDS character rate from the pixel clock and the
> PHY bus width setting. However, no in-tree consumer of this PHY has ever
> called phy_set_bus_width() to change the TMDS character rate as only
> 8-bit RGB output is supported by the HDMI display driver.
> 
> Add configure() and validate() ops to allow consumers to configure the
> TMDS character rate using phy_configure(). Fallback to the deprecated
> way of using the PHY bus width to configure the TMDS character rate.
> 
> A typical call chain during DRM modeset on a RK3328 device:
> 
>   dw_hdmi_rockchip_encoder_atomic_check():
>   - inno_hdmi_phy_validate(): pixclock 148500000 tmdsclock 594000000
> 
>   dw_hdmi_rockchip_encoder_atomic_mode_set():
>   - inno_hdmi_phy_configure(): pixclock 148500000
>     - inno_hdmi_phy_validate(): pixclock 148500000 tmdsclock 594000000
> 
>   vop_crtc_atomic_enable():
>   - inno_hdmi_phy_rk3328_clk_set_rate(): rate 594000000 tmdsclk 594000000
>   - inno_hdmi_phy_rk3328_clk_set_rate(): pixclock 594000000 tmdsclock 594000000
>   - inno_hdmi_phy_rk3328_clk_recalc_rate(): pixclock 594000000 vco 594000000
> 
>   dw_hdmi_rockchip_encoder_enable():
>   - inno_hdmi_phy_power_on(): Inno HDMI PHY Power On
>   - inno_hdmi_phy_rk3328_clk_set_rate(): rate 594000000 tmdsclk 594000000
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> Changes in v3:
> - Change validate() ops to only validate tmdsclock
> - Add comments about expected consumer usage
> - Update commit message with a typical call chain
> Changes in v2:
> - Add validate() ops to validate that the TMDS rate is supported
> - Split out parts that remove the old workaround into a separate patch
> 
> Patch "drm/rockchip: dw_hdmi: Configure HDMI PHY in atomic_mode_set()"
> at [1] adds phy_validate() and phy_configure() calls for this HDMI PHY.
> 
> [1] https://lore.kernel.org/dri-devel/20260510183114.1248840-10-jonas@kwiboo.se/
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 60 ++++++++++++++++++-
>  1 file changed, 59 insertions(+), 1 deletion(-)

[snip]

> +static int inno_hdmi_phy_validate(struct phy *phy, enum phy_mode mode,
> +				  int submode, union phy_configure_opts *opts)
> +{
> +	const struct pre_pll_config *cfg = pre_pll_cfg_table;
> +	unsigned long tmdsclock;
> +
> +	if (!(mode == PHY_MODE_HDMI && submode == PHY_HDMI_MODE_TMDS))
> +		return -EINVAL;
> +
> +	if (!opts->hdmi.tmds_char_rate || opts->hdmi.tmds_char_rate > 594000000)
> +		return -EINVAL;

Sashiko reasoning log pointed out that a consumer of phy_validate() or
phy_configure() can make a call with opts=NULL, so I may likely send a
v4 of this series to fix such possible NULL pointer dereference here.

Or is that something that possible should be checked before phy core
calls the .validate()/.configure() ops?

Multiple other phy .configure() ops seem to dereference opts members
without any type of opts NULL check. (next-20260508)

Regards,
Jonas

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
