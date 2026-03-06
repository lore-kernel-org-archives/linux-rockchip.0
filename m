Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58AC2F01821
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 10:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6ffkghCs4qBSF76yPuMuhRY/cZuvCxy19mdmCkf19qY=; b=C8mPaDgIl28PZflw/svS1/kGDU
	oVYGKR9xhSqO8n5ZpYQElFd/F/0EajiVPHk0NVmk0/agyThNyuRTNqiYYwVu/MMpri6wEiAzou/Y/
	PpwvPvl/MXIK1C8+a28RMsIJ7yvrpPUQmU6XLT/PZQep4qJlmcLuxRnGzvaBkU4XNYTkqiwKEShrZ
	u5GOcFjRrQwzj1I1gaIJQRI86ezIJ4vwECXYb4iHOrh7Qki0yfFIG/+L9xVU82jWHZle0rTon98Vb
	83qkEFqxIQDabEUX/5f2kqHQ9Hsq5ju7+ZEIuPpgPuLpaFg0uFOcQVA0KERmQqchnCF5sA8Uhhp9l
	SwZAbRSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySZY-00000003UDz-0wbL;
	Fri, 06 Mar 2026 10:38:20 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySZV-00000003UCU-24lr
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 10:38:19 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso75353405e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Mar 2026 02:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772793495; x=1773398295; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aP8KiOLvVAtCupMFs2If28clwmB77AuYYgc2V0TzJzw=;
        b=i5rGGJ5GCsjlATFLNk6q/gZeZpMa9gmT3dUDJnVxh/c/JBe1gpkMlosNJj54AUlH7W
         Z/UMBdVEED22qjZUDA1yUrb4pIkk8PfnhcJ8E1Oq4smYHWcTDDyi2TWsEXhUZm1z1yii
         tIhVut89FpGPY3asGxiI2Ouww5umoDCztBQMNbkI54Z2qEigTqWgMCEXf5frSLRzTAiq
         dQ1iA5R9DqFnRvuZhxepCt/Exi2b3gHPD3qSjP3qUJU/z8OL0r/hvOl+MRYCaDmFbynj
         m8nzFqES3mo8VaoslY2ism/EQWMGP32+yBQGOSNTio//VUKJ1gCnA6lZ8Kwh/qrRSFsb
         cBXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772793495; x=1773398295;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aP8KiOLvVAtCupMFs2If28clwmB77AuYYgc2V0TzJzw=;
        b=BbMFNuQEzVTStKnCiuunFDF2A7tzhHudue7I+pQRXkFr735RDVyaAzx09+bx63Qkhp
         zyoLX2PSLUE8vSZPUIEFjS+pzFA4GsWdEYPK51YWh9cNFcKfYLwzY3iHYInLtQaMvTfv
         m+X1vbbQwsRxDXNUPmm3aL5twp2EhZtsfRbxj8igkqiOWEkVF2x1b/XJMgqnywjkBtPh
         GxwFXQwnoGsF1NmPhY7oCvcZrIQtJHJAxZxKOpkJnGvjxgw3/Fh3qNbXWQDygvdnOMPq
         TmHwvMy3wgKsAXQixfgD0kPtjQhkS1a7C3gMIaDV0fQh0tEEUkHglX/PQHZ+Z8lc93lD
         n81Q==
X-Gm-Message-State: AOJu0YwJwL7h0DigAdoQ+eEWnH3DYBGV2AIaB9Ai6K/a81tuxofo86ch
	I38rpB6PBR5QmbGegv7AhjtlsEq5+9IObD7/ywo8BVsk2nWGXtZAL8dVANCCz8qBr8A=
X-Gm-Gg: ATEYQzwHqqebEg89jcohHS2jf2RdEi6UjHDaklBj4bQr32i8CbaRxcWI3EJNCL/tkLb
	ElPLr4n78pfKap9bd0MUB7If7ZWIH2ZtYXMkTjPLhHadvGz5PmffXl+7YhQCsLTaHQcWHJcyEA0
	mv95Ev4wQ6hoqrlBwBTnxyo1YXPdcytvF2VzyIBoXPkKLOlVMexV7Q7Z+mBMPgU23aUTksofVyD
	loQGlCALm4XWdOec4fHUNlLbH69gCG3ggl/xgnD0vLsnRhaS8+TK0p4jjZlEK7D4qiwVqQq83b+
	nC/0ZY29ArkYOQO4geBryacKVdxGDinTWr/LkaBIvv13GHsYVhG8Sbj4etLem6u9bloNCiK2TZi
	9BJpUCK/4MJU9PNh4bHyT3kHXbZHH5ntJk/MX0hWXKeoIezemYm5bfycGY6Ke7r4bprLeYs9w+9
	WQk7M6JLTU4CzV5UDZ4PDSSm8J7EAuc5bawDU+5OoqZFVuvCtVitdLdR6DEuOoFz05TGX7N3DMD
	OFx
X-Received: by 2002:a05:600c:45c6:b0:46f:d682:3c3d with SMTP id 5b1f17b1804b1-4852691d571mr24311285e9.13.1772793495431;
        Fri, 06 Mar 2026 02:38:15 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:cbfe:649:7f17:8b95? ([2a01:e0a:106d:1080:cbfe:649:7f17:8b95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485276b75eesm22233595e9.14.2026.03.06.02.38.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 02:38:15 -0800 (PST)
Message-ID: <483d3eea-d1aa-447e-b703-2bdeb3cf0e80@linaro.org>
Date: Fri, 6 Mar 2026 11:38:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2] phy: rockchip: naneng-combphy: Consolidate SSC
 configuration
To: Shawn Lin <shawn.lin@rock-chips.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org
References: <1772696450-139583-1-git-send-email-shawn.lin@rock-chips.com>
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
In-Reply-To: <1772696450-139583-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_023817_688509_7257CDDA 
X-CRM114-Status: GOOD (  23.88  )
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

On 3/5/26 08:40, Shawn Lin wrote:
> The PCIe SSC configuration for the RK3588 and RK3576 SoCs required
> additional tuning which is missing. When adding these same SSC
> configurations for both of these two SoCs, as well as upcoming
> platforms, it's obvious the SSC setup code was largely duplicated
> across the platform-specific configuration functions. This becomes
> harder to maintain as more platforms are added.
> 
> So extract the common SSC logic into a shared helper function,
> rk_combphy_common_cfg_ssc(). This cleans up the per-platform drivers
> and centralizes the standard configuration as possible.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - rework to consolidate more configuration
> - reword the commit message
> 
>   drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 173 +++++++++------------
>   1 file changed, 73 insertions(+), 100 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index b60d6bf..2b0f152 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -121,6 +121,7 @@
>   #define RK3568_PHYREG32_SSC_OFFSET_500PPM	1
>   
>   #define RK3568_PHYREG33				0x80
> +#define RK3568_PHYREG33_PLL_SSC_CTRL		BIT(5)
>   #define RK3568_PHYREG33_PLL_KVCO_MASK		GENMASK(4, 2)
>   #define RK3568_PHYREG33_PLL_KVCO_SHIFT		2
>   #define RK3568_PHYREG33_PLL_KVCO_VALUE		2
> @@ -446,6 +447,74 @@ static int rockchip_combphy_probe(struct platform_device *pdev)
>   	return PTR_ERR_OR_ZERO(phy_provider);
>   }
>   
> +static void rk_combphy_common_cfg_ssc(struct rockchip_combphy_priv *priv, unsigned long rate)
> +{
> +	struct device_node *np = priv->dev->of_node;
> +	u32 val;
> +
> +	if (!priv->enable_ssc)
> +		return;
> +
> +	/* Set SSC downward spread spectrum for PCIe and USB3 */
> +	if (priv->type == PHY_TYPE_PCIE || priv->type == PHY_TYPE_USB3) {
> +		val = FIELD_PREP(RK3568_PHYREG32_SSC_MASK, RK3568_PHYREG32_SSC_DOWNWARD);
> +		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> +	}
> +
> +	/* Set SSC downward spread spectrum +500ppm for SATA in 100MHz */
> +	if (priv->type == PHY_TYPE_SATA && rate == REF_CLOCK_100MHz) {
> +		val = FIELD_PREP(RK3568_PHYREG32_SSC_DIR_MASK,
> +				 RK3568_PHYREG32_SSC_DOWNWARD);
> +		val |= FIELD_PREP(RK3568_PHYREG32_SSC_OFFSET_MASK,
> +				  RK3568_PHYREG32_SSC_OFFSET_500PPM);
> +		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
> +					 RK3568_PHYREG32);
> +	}
> +
> +	/* Enable SSC */
> +	val = readl(priv->mmio + RK3568_PHYREG8);
> +	val |= RK3568_PHYREG8_SSC_EN;
> +	writel(val, priv->mmio + RK3568_PHYREG8);
> +
> +	/* Some SoCs need tuning PCIe SSC instead of default configuration in 24MHz */
> +	if (!of_device_is_compatible(np, "rockchip,rk3588-naneng-combphy") &&
> +	    !of_device_is_compatible(np, "rockchip,rk3576-naneng-combphy"))
> +		return;
> +
> +	/* PLL control SSC module period should be set if need tuning */
> +	val = readl(priv->mmio + RK3568_PHYREG33);
> +	val |= RK3568_PHYREG33_PLL_SSC_CTRL;
> +	writel(val, priv->mmio + RK3568_PHYREG33);
> +
> +	if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_24MHz) {
> +		/* Set PLL loop divider */
> +		writel(0x00, priv->mmio + RK3576_PHYREG17);
> +		writel(RK3568_PHYREG18_PLL_LOOP, priv->mmio + RK3568_PHYREG18);
> +
> +		/* Set up rx_pck invert and rx msb to disable */
> +		writel(0x00, priv->mmio + RK3588_PHYREG27);
> +
> +		/*
> +		 * Set up SU adjust signal:
> +		 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
> +		 * su_trim[15:8],  PLL LPF R1 adujst bits[9:7]=3'b101
> +		 * su_trim[23:16], CKRCV adjust
> +		 * su_trim[31:24], CKDRV adjust
> +		 */
> +		writel(0x90, priv->mmio + RK3568_PHYREG11);
> +		writel(0x02, priv->mmio + RK3568_PHYREG12);
> +		writel(0x08, priv->mmio + RK3568_PHYREG13);
> +		writel(0x57, priv->mmio + RK3568_PHYREG14);
> +		writel(0x40, priv->mmio + RK3568_PHYREG15);
> +
> +		writel(RK3568_PHYREG16_SSC_CNT_VALUE, priv->mmio + RK3568_PHYREG16);
> +
> +		val = FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
> +				 RK3576_PHYREG33_PLL_KVCO_VALUE);
> +		writel(val, priv->mmio + RK3568_PHYREG33);
> +	}
> +}
> +
>   static int rk3528_combphy_cfg(struct rockchip_combphy_priv *priv)
>   {
>   	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
> @@ -600,21 +669,12 @@ static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
>   
>   	switch (priv->type) {
>   	case PHY_TYPE_PCIE:
> -		/* Set SSC downward spread spectrum */
> -		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> -
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
>   		break;
>   	case PHY_TYPE_USB3:
> -		/* Set SSC downward spread spectrum */
> -		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
> -					 RK3568_PHYREG32);
> -
>   		/* Enable adaptive CTLE for USB3.0 Rx */
>   		rockchip_combphy_updatel(priv, RK3568_PHYREG15_CTLE_EN,
>   					 RK3568_PHYREG15_CTLE_EN, RK3568_PHYREG15);
> @@ -706,11 +766,7 @@ static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		}
>   	}
>   
> -	if (priv->enable_ssc) {
> -		val = readl(priv->mmio + RK3568_PHYREG8);
> -		val |= RK3568_PHYREG8_SSC_EN;
> -		writel(val, priv->mmio + RK3568_PHYREG8);
> -	}
> +	rk_combphy_common_cfg_ssc(priv, rate);
>   
>   	return 0;
>   }
> @@ -755,11 +811,6 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
>   
>   	switch (priv->type) {
>   	case PHY_TYPE_PCIE:
> -		/* Set SSC downward spread spectrum. */
> -		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
> -
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> -
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
> @@ -767,10 +818,6 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		break;
>   
>   	case PHY_TYPE_USB3:
> -		/* Set SSC downward spread spectrum. */
> -		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT,
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> -
>   		/* Enable adaptive CTLE for USB3.0 Rx. */
>   		val = readl(priv->mmio + RK3568_PHYREG15);
>   		val |= RK3568_PHYREG15_CTLE_EN;
> @@ -880,13 +927,6 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
>   
>   			writel(RK3568_PHYREG18_PLL_LOOP, priv->mmio + RK3568_PHYREG18);
>   			writel(RK3568_PHYREG11_SU_TRIM_0_7, priv->mmio + RK3568_PHYREG11);
> -		} else if (priv->type == PHY_TYPE_SATA) {
> -			/* downward spread spectrum +500ppm */
> -			val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
> -			val |= RK3568_PHYREG32_SSC_OFFSET_500PPM <<
> -			       RK3568_PHYREG32_SSC_OFFSET_SHIFT;
> -			rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
> -						 RK3568_PHYREG32);
>   		}
>   		break;
>   
> @@ -909,11 +949,7 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		}
>   	}
>   
> -	if (priv->enable_ssc) {
> -		val = readl(priv->mmio + RK3568_PHYREG8);
> -		val |= RK3568_PHYREG8_SSC_EN;
> -		writel(val, priv->mmio + RK3568_PHYREG8);
> -	}
> +	rk_combphy_common_cfg_ssc(priv, rate);
>   
>   	return 0;
>   }
> @@ -972,10 +1008,6 @@ static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
>   
>   	switch (priv->type) {
>   	case PHY_TYPE_PCIE:
> -		/* Set SSC downward spread spectrum */
> -		val = FIELD_PREP(RK3568_PHYREG32_SSC_MASK, RK3568_PHYREG32_SSC_DOWNWARD);
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> -
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
> @@ -983,10 +1015,6 @@ static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		break;
>   
>   	case PHY_TYPE_USB3:
> -		/* Set SSC downward spread spectrum */
> -		val = FIELD_PREP(RK3568_PHYREG32_SSC_MASK, RK3568_PHYREG32_SSC_DOWNWARD);
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> -
>   		/* Enable adaptive CTLE for USB3.0 Rx */
>   		val = readl(priv->mmio + RK3568_PHYREG15);
>   		val |= RK3568_PHYREG15_CTLE_EN;
> @@ -1110,14 +1138,6 @@ static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
>   			writel(0x88, priv->mmio + RK3568_PHYREG13);
>   			writel(0x56, priv->mmio + RK3568_PHYREG14);
>   		} else if (priv->type == PHY_TYPE_SATA) {
> -			/* downward spread spectrum +500ppm */
> -			val = FIELD_PREP(RK3568_PHYREG32_SSC_DIR_MASK,
> -					 RK3568_PHYREG32_SSC_DOWNWARD);
> -			val |= FIELD_PREP(RK3568_PHYREG32_SSC_OFFSET_MASK,
> -					  RK3568_PHYREG32_SSC_OFFSET_500PPM);
> -			rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
> -						 RK3568_PHYREG32);
> -
>   			/* ssc ppm adjust to 3500ppm */
>   			rockchip_combphy_updatel(priv, RK3576_PHYREG10_SSC_PCM_MASK,
>   						 RK3576_PHYREG10_SSC_PCM_3500PPM,
> @@ -1156,39 +1176,7 @@ static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		}
>   	}
>   
> -	if (priv->enable_ssc) {
> -		val = readl(priv->mmio + RK3568_PHYREG8);
> -		val |= RK3568_PHYREG8_SSC_EN;
> -		writel(val, priv->mmio + RK3568_PHYREG8);
> -
> -		if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_24MHz) {
> -			/* Set PLL loop divider */
> -			writel(0x00, priv->mmio + RK3576_PHYREG17);
> -			writel(RK3568_PHYREG18_PLL_LOOP, priv->mmio + RK3568_PHYREG18);
> -
> -			/* Set up rx_pck invert and rx msb to disable */
> -			writel(0x00, priv->mmio + RK3588_PHYREG27);
> -
> -			/*
> -			 * Set up SU adjust signal:
> -			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
> -			 * su_trim[15:8],  PLL LPF R1 adujst bits[9:7]=3'b101
> -			 * su_trim[23:16], CKRCV adjust
> -			 * su_trim[31:24], CKDRV adjust
> -			 */
> -			writel(0x90, priv->mmio + RK3568_PHYREG11);
> -			writel(0x02, priv->mmio + RK3568_PHYREG12);
> -			writel(0x08, priv->mmio + RK3568_PHYREG13);
> -			writel(0x57, priv->mmio + RK3568_PHYREG14);
> -			writel(0x40, priv->mmio + RK3568_PHYREG15);
> -
> -			writel(RK3568_PHYREG16_SSC_CNT_VALUE, priv->mmio + RK3568_PHYREG16);
> -
> -			val = FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
> -					 RK3576_PHYREG33_PLL_KVCO_VALUE);
> -			writel(val, priv->mmio + RK3568_PHYREG33);
> -		}
> -	}
> +	rk_combphy_common_cfg_ssc(priv, rate);
>   
>   	return 0;
>   }
> @@ -1255,10 +1243,6 @@ static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		}
>   		break;
>   	case PHY_TYPE_USB3:
> -		/* Set SSC downward spread spectrum */
> -		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> -
>   		/* Enable adaptive CTLE for USB3.0 Rx. */
>   		val = readl(priv->mmio + RK3568_PHYREG15);
>   		val |= RK3568_PHYREG15_CTLE_EN;
> @@ -1343,13 +1327,6 @@ static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
>   
>   			/* Set up su_trim:  */
>   			writel(RK3568_PHYREG11_SU_TRIM_0_7, priv->mmio + RK3568_PHYREG11);
> -		} else if (priv->type == PHY_TYPE_SATA) {
> -			/* downward spread spectrum +500ppm */
> -			val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
> -			val |= RK3568_PHYREG32_SSC_OFFSET_500PPM <<
> -			       RK3568_PHYREG32_SSC_OFFSET_SHIFT;
> -			rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
> -						 RK3568_PHYREG32);
>   		}
>   		break;
>   	default:
> @@ -1371,11 +1348,7 @@ static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		}
>   	}
>   
> -	if (priv->enable_ssc) {
> -		val = readl(priv->mmio + RK3568_PHYREG8);
> -		val |= RK3568_PHYREG8_SSC_EN;
> -		writel(val, priv->mmio + RK3568_PHYREG8);
> -	}
> +	rk_combphy_common_cfg_ssc(priv, rate);
>   
>   	return 0;
>   }

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
