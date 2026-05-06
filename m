Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB517CD3440
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 14:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I23rIWIQWQJ8ntn2foJAA4trduuhC1YUoqhLraluTDY=; b=ERvwgJpjigzswfYiPuf5B+DcmN
	iTcwywSwaKBUxphBadhNuFnyULcM5RQro4Ds7YHRE/rPOS3/brjTBRoSCxR/v6Fn1e2di9/zZotuL
	ZixqWx+4uuMdKOzz6gkPoBiCugZgjupoivbb1mzwhP+gxsLJoScUuRBz/RPr9yjztG9piXrGSalPK
	gJ1Sags4+nQgedsmDhrWgcb19yJ7Hq64mVdq72krA5ywlV1yI6FpRmqo/yxsYmqjFiCEFS2hiPXta
	kvjyYsq8insysi0vwWnx/tAhzwounYyZ8tqqZ0eHooOVbpZyIZYGsU6Nr9acc0zGEZ1RCgeX/zncz
	fReJZutw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdRx-0000000185F-3YHT;
	Wed, 06 May 2026 14:42:09 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdRx-00000001844-1P1I
	for linux-rockchip@lists.infradead.org;
	Wed, 06 May 2026 14:42:09 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4891d7164ddso36222085e9.3
        for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2026 07:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778078527; x=1778683327; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHnQqBp2EqYY1JYoxE69LuzOdZ85YxE7rj/VHd3SUqU=;
        b=eqR820Bqn+QlmFOGO7pCw8s9NeEsBCFnvlOKHhmG34LLn/slur502s+SZL1EssRAA9
         9ZQikztsMx8/Z3rAMTa5aRdiIcYGaV8pPuNlxq8IS9Abci7B0n0cOdlbgRlXKycZpihA
         3nSCa36QUknuUGKu8xYhj5vD+VIlLwM5dUyknkj72ffijQbpzzyMlekJkQKswkp+3GuG
         Z+qKc3Xu0nGWMnfCFAiudKxo6uZwjqz7Dttf5vBEln3lf8CpQ/QLNQhBwEBfagjyQrhe
         nKiYy08SNcGShSUzXQvJ63AS9zgniUxctKKqKTpwKpyYo/aEadkgAGf3Ltwx1UiDf7qA
         R5wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778078527; x=1778683327;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YHnQqBp2EqYY1JYoxE69LuzOdZ85YxE7rj/VHd3SUqU=;
        b=GqLp4uG/C21KWVIqkhcgO/GVmqyiaVOLqcjLxQ4/WZ8NNvjLjSemoslb2867Z+FWNq
         jWgnKlsPHGesJg4tcM9uOlSmylYeRifvyE8RLTWOD71nqXFLX+EPlrQvN2oZktCApFOP
         LCNa+7VigG8Mt3B/M+XMl7/+9EOa3MR8lDNlTB0Iabfpv+3IE9A0Bk/9ahPExPmGKVtH
         ecXlsPT0XydvovLfabFc7EVZz7jSyTRRlznEZW8v+rVAe8jUDE1syLkCtSbOGT33E3bK
         Cw51Y5vWCgPH13aoci2JBevwvfqVpZwsdaoTGqrTYQZhxjIYQ/aVt25u8dHBvmm5LLTa
         J5og==
X-Forwarded-Encrypted: i=1; AFNElJ9lIvZrE2JfCfsbIbtzNx6H5Fem2ANX1x5sTdUz8ZNa2EkRXSIzPr+bqQjYBf1ddL9AIOFXAnrGwiSDHW86NA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwpyNqXS2JZQBztQr7HzxOW0SIcjWVRCbAtYi1Sc3vgYs8ulNN0
	IdevWUQZgw8yEaJMDl396zn/wYIgyxJTI2uxNX/px1QS0VXMGb2jnZ95Kszwx36qMbw=
X-Gm-Gg: AeBDieunzipx/5HmfLDq8TnEFa1icv8PjE49zXlWGnzHgaIDtRdZRcBM8wka2taIYnY
	iwYkrF/mXnvZ+xR399LMW2mlBVPpT8gY/eW6Y6UuEBPdKvGU5tUqK840rlHn83N2xVIsXot/1zv
	fpiJZAKrNet0WULWxztNeVbs8daDtju4Nnj3iq3UreuPSw/LhGWyN4IqD8YNIJY+4uNF38CEUBZ
	wU9kULDBdOMyu0Ml9ovJgIcna5Au/QoOxqlWdpGeIdkACK3H1CUxAH40j3LKIxrSqovKp3ahm59
	D+RprZ4pMPYLNihXoDYKhXNQns6Rr5y1UHTh8vVqG89MdHYH5oeVazYKbKWpk+etsHV1MJ3avOJ
	+EFqau8YF6emAq4socgrbEAo0DZD8pTHD2f0PRlIAuuy3DqLfDAHcBKtmCyJEtx0+X1KP0nR4U6
	0duPuUJh3UI0aFsP79uebrKaS/a/lliUeSG+Zdkx8iixutPREYJB1LIY1C8NK6azh+88dxEIGaC
	daxXk6Z6y5620U9iAD/BaS59B4R
X-Received: by 2002:a05:600c:1f0d:b0:488:b8bc:6a32 with SMTP id 5b1f17b1804b1-48e51f45874mr66049915e9.23.1778078526488;
        Wed, 06 May 2026 07:42:06 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e53141f0dsm18681035e9.25.2026.05.06.07.42.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:42:05 -0700 (PDT)
Message-ID: <75e21bd6-1247-4366-b336-b5517cbc715a@linaro.org>
Date: Wed, 6 May 2026 16:42:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/5] phy: rockchip: inno-usb2: Simplify rockchip,usbgrf
 handling
To: Heiko Stuebner <heiko@sntech.de>, vkoul@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jonas@kwiboo.se
References: <20260505170410.3265305-1-heiko@sntech.de>
 <20260505170410.3265305-3-heiko@sntech.de>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20260505170410.3265305-3-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_074209_443532_84FDFB8C 
X-CRM114-Status: GOOD (  27.09  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 5/5/26 19:04, Heiko Stuebner wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> The logic to decide if usbgrf or grf should be used is more complex than
> it needs to be. For RK3568, RV1108 and soon RK3528 we can assign the
> rockchip,usbgrf regmap directly to grf instead of doing a usbgrf and grf
> dance.
> 
> Simplify the code to only use the grf regmap and handle the logic of
> what regmap should be used in driver probe instead.
> 
> The only expected change from this is that RK3528 can be supported
> because of an addition of a of_property_present() check.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>   drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 68 +++++--------------
>   1 file changed, 18 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 8f4c08e599aa..7cec45192393 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -228,7 +228,6 @@ struct rockchip_usb2phy_port {
>    * struct rockchip_usb2phy - usb2.0 phy driver data.
>    * @dev: pointer to device.
>    * @grf: General Register Files regmap.
> - * @usbgrf: USB General Register Files regmap.
>    * @clks: array of phy input clocks.
>    * @clk480m: clock struct of phy output clk.
>    * @clk480m_hw: clock struct of phy output clk management.
> @@ -246,7 +245,6 @@ struct rockchip_usb2phy_port {
>   struct rockchip_usb2phy {
>   	struct device	*dev;
>   	struct regmap	*grf;
> -	struct regmap	*usbgrf;
>   	struct clk_bulk_data	*clks;
>   	struct clk	*clk480m;
>   	struct clk_hw	clk480m_hw;
> @@ -261,11 +259,6 @@ struct rockchip_usb2phy {
>   	struct rockchip_usb2phy_port	ports[USB2PHY_NUM_PORTS];
>   };
>   
> -static inline struct regmap *get_reg_base(struct rockchip_usb2phy *rphy)
> -{
> -	return rphy->usbgrf == NULL ? rphy->grf : rphy->usbgrf;
> -}
> -
>   static inline int property_enable(struct regmap *base,
>   				  const struct usb2phy_reg *reg, bool en)
>   {
> @@ -323,12 +316,11 @@ static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
>   {
>   	struct rockchip_usb2phy *rphy =
>   		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
> -	struct regmap *base = get_reg_base(rphy);
>   	int ret;
>   
>   	/* turn on 480m clk output if it is off */
> -	if (!property_enabled(base, &rphy->phy_cfg->clkout_ctl)) {
> -		ret = property_enable(base, &rphy->phy_cfg->clkout_ctl, true);
> +	if (!property_enabled(rphy->grf, &rphy->phy_cfg->clkout_ctl)) {
> +		ret = property_enable(rphy->grf, &rphy->phy_cfg->clkout_ctl, true);
>   		if (ret)
>   			return ret;
>   
> @@ -343,19 +335,17 @@ static void rockchip_usb2phy_clk480m_unprepare(struct clk_hw *hw)
>   {
>   	struct rockchip_usb2phy *rphy =
>   		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
> -	struct regmap *base = get_reg_base(rphy);
>   
>   	/* turn off 480m clk output */
> -	property_enable(base, &rphy->phy_cfg->clkout_ctl, false);
> +	property_enable(rphy->grf, &rphy->phy_cfg->clkout_ctl, false);
>   }
>   
>   static int rockchip_usb2phy_clk480m_prepared(struct clk_hw *hw)
>   {
>   	struct rockchip_usb2phy *rphy =
>   		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
> -	struct regmap *base = get_reg_base(rphy);
>   
> -	return property_enabled(base, &rphy->phy_cfg->clkout_ctl);
> +	return property_enabled(rphy->grf, &rphy->phy_cfg->clkout_ctl);
>   }
>   
>   static unsigned long
> @@ -574,7 +564,6 @@ static int rockchip_usb2phy_power_on(struct phy *phy)
>   {
>   	struct rockchip_usb2phy_port *rport = phy_get_drvdata(phy);
>   	struct rockchip_usb2phy *rphy = dev_get_drvdata(phy->dev.parent);
> -	struct regmap *base = get_reg_base(rphy);
>   	int ret;
>   
>   	dev_dbg(&rport->phy->dev, "port power on\n");
> @@ -586,7 +575,7 @@ static int rockchip_usb2phy_power_on(struct phy *phy)
>   	if (ret)
>   		return ret;
>   
> -	ret = property_enable(base, &rport->port_cfg->phy_sus, false);
> +	ret = property_enable(rphy->grf, &rport->port_cfg->phy_sus, false);
>   	if (ret) {
>   		clk_disable_unprepare(rphy->clk480m);
>   		return ret;
> @@ -615,7 +604,6 @@ static int rockchip_usb2phy_power_off(struct phy *phy)
>   {
>   	struct rockchip_usb2phy_port *rport = phy_get_drvdata(phy);
>   	struct rockchip_usb2phy *rphy = dev_get_drvdata(phy->dev.parent);
> -	struct regmap *base = get_reg_base(rphy);
>   	int ret;
>   
>   	dev_dbg(&rport->phy->dev, "port power off\n");
> @@ -623,7 +611,7 @@ static int rockchip_usb2phy_power_off(struct phy *phy)
>   	if (rport->suspended)
>   		return 0;
>   
> -	ret = property_enable(base, &rport->port_cfg->phy_sus, true);
> +	ret = property_enable(rphy->grf, &rport->port_cfg->phy_sus, true);
>   	if (ret)
>   		return ret;
>   
> @@ -787,28 +775,22 @@ static const char *chg_to_string(enum power_supply_type chg_type)
>   static void rockchip_chg_enable_dcd(struct rockchip_usb2phy *rphy,
>   				    bool en)
>   {
> -	struct regmap *base = get_reg_base(rphy);
> -
> -	property_enable(base, &rphy->phy_cfg->chg_det.rdm_pdwn_en, en);
> -	property_enable(base, &rphy->phy_cfg->chg_det.idp_src_en, en);
> +	property_enable(rphy->grf, &rphy->phy_cfg->chg_det.rdm_pdwn_en, en);
> +	property_enable(rphy->grf, &rphy->phy_cfg->chg_det.idp_src_en, en);
>   }
>   
>   static void rockchip_chg_enable_primary_det(struct rockchip_usb2phy *rphy,
>   					    bool en)
>   {
> -	struct regmap *base = get_reg_base(rphy);
> -
> -	property_enable(base, &rphy->phy_cfg->chg_det.vdp_src_en, en);
> -	property_enable(base, &rphy->phy_cfg->chg_det.idm_sink_en, en);
> +	property_enable(rphy->grf, &rphy->phy_cfg->chg_det.vdp_src_en, en);
> +	property_enable(rphy->grf, &rphy->phy_cfg->chg_det.idm_sink_en, en);
>   }
>   
>   static void rockchip_chg_enable_secondary_det(struct rockchip_usb2phy *rphy,
>   					      bool en)
>   {
> -	struct regmap *base = get_reg_base(rphy);
> -
> -	property_enable(base, &rphy->phy_cfg->chg_det.vdm_src_en, en);
> -	property_enable(base, &rphy->phy_cfg->chg_det.idp_sink_en, en);
> +	property_enable(rphy->grf, &rphy->phy_cfg->chg_det.vdm_src_en, en);
> +	property_enable(rphy->grf, &rphy->phy_cfg->chg_det.idp_sink_en, en);
>   }
>   
>   #define CHG_DCD_POLL_TIME	(100 * HZ / 1000)
> @@ -820,7 +802,6 @@ static void rockchip_chg_detect_work(struct work_struct *work)
>   	struct rockchip_usb2phy_port *rport =
>   		container_of(work, struct rockchip_usb2phy_port, chg_work.work);
>   	struct rockchip_usb2phy *rphy = dev_get_drvdata(rport->phy->dev.parent);
> -	struct regmap *base = get_reg_base(rphy);
>   	bool is_dcd, tmout, vout, vbus_attach;
>   	unsigned long delay;
>   
> @@ -834,7 +815,7 @@ static void rockchip_chg_detect_work(struct work_struct *work)
>   			rockchip_usb2phy_power_off(rport->phy);
>   		/* put the controller in non-driving mode */
>   		if (!vbus_attach)
> -			property_enable(base, &rphy->phy_cfg->chg_det.opmode, false);
> +			property_enable(rphy->grf, &rphy->phy_cfg->chg_det.opmode, false);
>   		/* Start DCD processing stage 1 */
>   		rockchip_chg_enable_dcd(rphy, true);
>   		rphy->chg_state = USB_CHG_STATE_WAIT_FOR_DCD;
> @@ -898,7 +879,7 @@ static void rockchip_chg_detect_work(struct work_struct *work)
>   	case USB_CHG_STATE_DETECTED:
>   		/* put the controller in normal mode */
>   		if (!vbus_attach)
> -			property_enable(base, &rphy->phy_cfg->chg_det.opmode, true);
> +			property_enable(rphy->grf, &rphy->phy_cfg->chg_det.opmode, true);
>   		rockchip_usb2phy_otg_sm_work(&rport->otg_sm_work.work);
>   		dev_dbg(&rport->phy->dev, "charger = %s\n",
>   			 chg_to_string(rphy->chg_type));
> @@ -1353,27 +1334,14 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>   	if (!rphy)
>   		return -ENOMEM;
>   
> -	if (!dev->parent || !dev->parent->of_node) {
> +	if (!dev->parent || !dev->parent->of_node ||
> +	    of_property_present(np, "rockchip,usbgrf")) {
>   		rphy->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
> -		if (IS_ERR(rphy->grf)) {
> -			dev_err(dev, "failed to locate usbgrf\n");
> -			return PTR_ERR(rphy->grf);
> -		}
>   	} else {
>   		rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
> -		if (IS_ERR(rphy->grf))
> -			return PTR_ERR(rphy->grf);
> -	}
> -
> -	if (of_device_is_compatible(np, "rockchip,rv1108-usb2phy")) {
> -		rphy->usbgrf =
> -			syscon_regmap_lookup_by_phandle(dev->of_node,
> -							"rockchip,usbgrf");
> -		if (IS_ERR(rphy->usbgrf))
> -			return PTR_ERR(rphy->usbgrf);
> -	} else {
> -		rphy->usbgrf = NULL;
>   	}
> +	if (IS_ERR(rphy->grf))
> +		return PTR_ERR(rphy->grf);
>   
>   	if (of_property_read_u32_index(np, "reg", 0, &reg)) {
>   		dev_err(dev, "the reg property is not assigned in %pOFn node\n", np);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
