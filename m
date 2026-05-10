Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 784E5CD37B2
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 May 2026 18:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjAwaBRCTcOAT3l8rMkGeab99gnJaqe4SVYar3SlQo8=; b=iyoI1OxeWTv9ef
	w9gqoXExkJ2OoawjbN8f1l+5dAMbaYRG5q572sSjwOWsDp/a6m8sIeuuW/4rhlvxJ2edDSJC/gZgl
	mZuiG3UsEagU2pgV9VZBReQalaTwB6Es7lpKAobsVoEV0XODwXZaHzjfJ/6hTgN8N+t3Fkkib/lCC
	Bil+jlvlzItBIVlEQ1CV5lzcRNwJMjP/ORnz8Gmx4RYKs3GfBgKG1mWDHsqO2y4yKhuTZ7LAwUutA
	ZWaUOQL9QDppMnoA7IsqXGPRyIkhf+X6MjFTAWhv8NegEQKQtB7zINkOJn4GdLnznHsQTqi7PtjCW
	dEWERXcSGGn0+qNoOuCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM98k-0000000BP7s-20yN;
	Sun, 10 May 2026 18:44:34 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM98h-0000000BP69-0pBt
	for linux-rockchip@lists.infradead.org;
	Sun, 10 May 2026 18:44:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1778438661;
 bh=cSNygVci7uW74A56kLRdHApA4Xmxrhd0ABje42jimFM=;
 b=E1C189JZR3Kru7TrVvklzRK74yIVVobhIbeoq6JLnRCkal+ol5eNIpDOcqUOWmNgQ1JX5dpga
 Ag2WOmCDhTEOVyiFgUL1fHqPQOlQ535MkCa00VKN5+J+g+rxYqkohLnRUQuR0SV59cEv8d9ASvq
 jsBP0Ibej8yz6IjBox55FSeLStS9X/E/+PuPuT0VcvDJUbjnFl/F22sOrWBix3jdu6xLn3Tq6c+
 Ke8ajI9+olJRpf9aUhwdhmQfdkFm1W3nFZq5Rz0eSC+Qia7cCn26dvHHRlhoCTI8UTw+iQJK2Pj
 1+r4sWcbuYmk6c7J2u3chiqJSQCfgd0scZ42DxtOjdWw==
X-Forward-Email-ID: 6a00d1eff33ebd7c603e808b
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.8.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <567b1d87-a56e-4a68-bfab-c68a164ed665@kwiboo.se>
Date: Sun, 10 May 2026 20:43:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] phy: rockchip: inno-hdmi: Add configure() and
 validate() ops
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260510095731.1222705-1-jonas@kwiboo.se>
 <20260510095731.1222705-2-jonas@kwiboo.se>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260510095731.1222705-2-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_114431_342255_5A0F5B33 
X-CRM114-Status: GOOD (  26.25  )
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

On 5/10/2026 11:57 AM, Jonas Karlman wrote:
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

I have now posted a patch "drm/rockchip: dw_hdmi: Configure HDMI PHY
in atomic_mode_set()" [1] that adds phy_validate() and phy_configure()
calls for this HDMI PHY.

[1] https://lore.kernel.org/dri-devel/20260510183114.1248840-10-jonas@kwiboo.se/

Regards,
Jonas

> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> Changes in v2:
> - Add validate() ops to validate that the TMDS rate is supported
> - Split out parts that remove the old workaround into a separate patch
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 47 ++++++++++++++++++-
>  1 file changed, 46 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> index 1483907413fa..9cfe956fefe7 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> @@ -245,6 +245,7 @@ struct inno_hdmi_phy {
>  	struct clk *phyclk;
>  	unsigned long pixclock;
>  	unsigned long tmdsclock;
> +	struct phy_configure_opts_hdmi hdmi_cfg;
>  };
>  
>  struct pre_pll_config {
> @@ -554,7 +555,12 @@ static inline void inno_update_bits(struct inno_hdmi_phy *inno, u8 reg,
>  static unsigned long inno_hdmi_phy_get_tmdsclk(struct inno_hdmi_phy *inno,
>  					       unsigned long rate)
>  {
> -	int bus_width = phy_get_bus_width(inno->phy);
> +	int bus_width;
> +
> +	if (inno->hdmi_cfg.tmds_char_rate)
> +		return inno->hdmi_cfg.tmds_char_rate;
> +
> +	bus_width = phy_get_bus_width(inno->phy);
>  
>  	switch (bus_width) {
>  	case 4:
> @@ -602,6 +608,42 @@ static irqreturn_t inno_hdmi_phy_rk3328_irq(int irq, void *dev_id)
>  	return IRQ_HANDLED;
>  }
>  
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
> +
> +	tmdsclock = opts->hdmi.tmds_char_rate;
> +	for (; cfg->pixclock != 0; cfg++)
> +		if (cfg->pixclock == tmdsclock && cfg->tmdsclock == tmdsclock)
> +			return 0;
> +
> +	return -EINVAL;
> +}
> +
> +static int inno_hdmi_phy_configure(struct phy *phy,
> +				   union phy_configure_opts *opts)
> +{
> +	struct inno_hdmi_phy *inno = phy_get_drvdata(phy);
> +	int ret;
> +
> +	ret = inno_hdmi_phy_validate(phy, phy_get_mode(phy),
> +				     PHY_HDMI_MODE_TMDS, opts);
> +	if (ret)
> +		return ret;
> +
> +	inno->hdmi_cfg = opts->hdmi;
> +
> +	return 0;
> +}
> +
>  static int inno_hdmi_phy_power_on(struct phy *phy)
>  {
>  	struct inno_hdmi_phy *inno = phy_get_drvdata(phy);
> @@ -670,6 +712,8 @@ static const struct phy_ops inno_hdmi_phy_ops = {
>  	.owner = THIS_MODULE,
>  	.power_on = inno_hdmi_phy_power_on,
>  	.power_off = inno_hdmi_phy_power_off,
> +	.configure = inno_hdmi_phy_configure,
> +	.validate = inno_hdmi_phy_validate,
>  };
>  
>  static const
> @@ -1392,6 +1436,7 @@ static int inno_hdmi_phy_probe(struct platform_device *pdev)
>  	}
>  
>  	phy_set_drvdata(inno->phy, inno);
> +	phy_set_mode_ext(inno->phy, PHY_MODE_HDMI, PHY_HDMI_MODE_TMDS);
>  	phy_set_bus_width(inno->phy, 8);
>  
>  	if (inno->plat_data->ops->init) {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
