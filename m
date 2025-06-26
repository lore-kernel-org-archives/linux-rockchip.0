Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFEBEC7EE31
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 14:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n4niw+O2NJ9ZaFl+8FQ0EKSe5Nxyozy3cx/v1FVvXm8=; b=Tcky4nYR0wU3C1BT1hRJ+4924o
	0dJrfwfoPv1s840MtOT0um6zUsW2Vn8wqLKUg1TTSOjW9Y08mbNmQiMO9I2CddTIkOKY1ASr1YhV+
	iKgmY8s6GLMLugusteS6lDd+TPSwo7E4unRfBbagGPpZEXg4nkRE1uRIugQFeftoESBn2k6XxwQso
	21vnekhj2neW8i4fqGzd1wPYeQmfgWywuB9ESLs531fkY7yKZOTs0c9rcRXzD6taUdAkbDBfcW1PB
	HMb5g3EwsTZfg3eIy99jPQfrGqpV6r3W3NvOya/cXBwZuB2wM2mDbLEPistpTXu6hfxD5goIJGFcc
	x9WZSZ6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnYK-0000000BuwM-2DRS;
	Thu, 26 Jun 2025 14:26:12 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnJv-0000000Bs5W-2WxL
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Jun 2025 14:11:22 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-32b910593edso8889411fa.1
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jun 2025 07:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750947078; x=1751551878; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6fdOEM8p+cMc46FrDcs5XD9n0jfsivYeiqvEqZqCd3c=;
        b=enm0uIL3kI+/Y//Q3Pt+sFh8BoyhI5EwCn76NMoIdRjctsOokw9UiO5SYDoFAzFHwV
         zK0Ae5NBJdPdOuDfU1of8WxAgOn+ysASzRt7w1eQpZz/D5vqCpOrES3c6VSNuKZpvX/R
         cwrHykA511gUI0RUyYuIpMZ8o8w/kUx4ywUqkY409izCAXwHw6L1peEBfOJgryF1g821
         Qj0dpVs1nlOUhpfzwo9Od+83L1m5j6Cfa7oq1n2PD5hR1Of/HCCEwLGx/q4m8jn8rKJX
         uldy0LUKNBV1pYEU9cwNO9uTI53QTZn9id3wBKQn+SV8192z869KLoTmcautJdPgPuy7
         dcNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750947078; x=1751551878;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6fdOEM8p+cMc46FrDcs5XD9n0jfsivYeiqvEqZqCd3c=;
        b=fH0L4eke0s6RMgqCPV1h9qsUCOIav+b4tjtmRzrsGOynhhUi03C7GrPLPeiRVCBfv3
         sCPDE+Xx5ynveeUndA+/lQ57m5X/ssnTCtPYmoBd0M847YeamsCV6oP6CQbPcQpjVGu+
         rsEpzrLwdyD2GaYEapJSuR7AlZxSgMhmkAljNWYz2zgZF/OCAcFSQMqd+XG6bb8v89g/
         321Yc1GD+HEiehYbygydDKsdbkjfpi4Ows1VSYxgKFrNGh036qSrSTwu3owNw1fOYiVS
         wav7uTgfYzxjsBYCpp86bksgsMPHMzd3p2Zk8VdvSFxkyr7LN19+mcgcrL0FV9H78fE/
         ufOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXr2IAImXKyDeFxIwIC4loRSds8kEjavVeAux/UHTe1d06v6sH3LFyL4sUCd0TqBNPYzO5v9vczKXQd8Ww2rA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx858ZshNfRkuo0+5XRGYpDm0Q8m4y9hehZiexzyakN86QmahP5
	d+12phDnnDILNd7O9RaPBwEgSVqmvsiDPIhjTKrhdZFbudx2uaB/HWqzC3hPSDfNM3o=
X-Gm-Gg: ASbGnctIzRpB8mnJirN/ZgLTJgyUMYU3sUgdDWl1oJqQfUklltWvXCHmjWB0CaPzb7q
	jk8sUtVLPOXoLTZWhVOXZkxX5M1thZF/GGQtqLdGJfMt9sgYZdr3T/FicyBEGi9YrwVPJ8FfhbW
	e4dbOywYu3XmSffLmsb44MUw8DV/mNS2iMyNF2drINNOmKTw7AfOPnr4fuzI7UbGahrnr4IWJii
	THxn+3k3IX8PPFJGEv55TKggTLM0zD8hA1yu8kIyZYDTfeBIyGafKCkfcZxzbuEs+WdRNtISRzE
	Xek50VmZ7ZiT8rRz9zGNRa9N5CdQ4uDu2rFFySM6P7ZBh4ZcLDJ56GBveTh4zBPnIHvDI/LRX9E
	oVrAZmPUPeBKq1c5xaDmkBtOp7IRTeX+HDQzV4o0=
X-Google-Smtp-Source: AGHT+IGdwB1n5Hfp/EPE9UIcSDFeslDjsQLAW8xrE4nxWT5wqqFoYILk6ydKTS2s4DS26tcagpzuxw==
X-Received: by 2002:a2e:b8c6:0:b0:30b:b987:b6a7 with SMTP id 38308e7fff4ca-32cc631712fmr26665881fa.0.1750947077698;
        Thu, 26 Jun 2025 07:11:17 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:fa6f:b132:4858:18cc? ([2a01:e0a:3d9:2080:fa6f:b132:4858:18cc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453823c0812sm50833075e9.34.2025.06.26.07.11.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 07:11:17 -0700 (PDT)
Message-ID: <09af27e2-34a7-4cda-b36c-5577829cc173@linaro.org>
Date: Thu, 26 Jun 2025 16:11:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 4/5] thermal: khadas_mcu_fan: add support for Khadas Edge
 2
To: muhammed.efecetin.67@gmail.com, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, lee@kernel.org,
 rafael@kernel.org, efectn@protonmail.com, daniel.lezcano@linaro.org
References: <cover.1746518265.git.efectn@protonmail.com>
 <d8596aeea72b2acab614277372f15b773ef3d008.1746518265.git.efectn@protonmail.com>
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
In-Reply-To: <d8596aeea72b2acab614277372f15b773ef3d008.1746518265.git.efectn@protonmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_071119_676878_FDF53D51 
X-CRM114-Status: GOOD (  27.55  )
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

On 26/06/2025 16:04, muhammed.efecetin.67@gmail.com wrote:
> From: Muhammed Efe Cetin <efectn@protonmail.com>
> 
> Fan control on the Khadas Edge 2 is controlled with the 0x8A register,
> using percentage values from 0 to 100, whereas there are only 3 constant steps in previous Khadas boards.
> Therefore, i added a new cooling-levels property, similar to the one used in the pwm-fan driver.
> The original behavior can still be used when the cooling-levels property is not specified,
> ensuring that the new functionality does not break old boards.

Thanks for the explanation, but would would you like to change that ? The MCU can accept
any value between 0 and 99, so why change the levels from DT ?

Neil

> 
> Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
> ---
>   drivers/thermal/khadas_mcu_fan.c | 76 ++++++++++++++++++++++++++++++--
>   1 file changed, 72 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/thermal/khadas_mcu_fan.c b/drivers/thermal/khadas_mcu_fan.c
> index d35e5313b..504e7d254 100644
> --- a/drivers/thermal/khadas_mcu_fan.c
> +++ b/drivers/thermal/khadas_mcu_fan.c
> @@ -15,10 +15,16 @@
>   #include <linux/thermal.h>
>   
>   #define MAX_LEVEL 3
> +#define MAX_SPEED 0x64
>   
>   struct khadas_mcu_fan_ctx {
>   	struct khadas_mcu *mcu;
>   	unsigned int level;
> +
> +	unsigned int fan_max_level;
> +	unsigned int fan_register;
> +	unsigned int *fan_cooling_levels;
> +
>   	struct thermal_cooling_device *cdev;
>   };
>   
> @@ -26,9 +32,21 @@ static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
>   				    unsigned int level)
>   {
>   	int ret;
> +	unsigned int write_level = level;
> +
> +	if (level > ctx->fan_max_level)
> +		return -EINVAL;
> +
> +	if (ctx->fan_cooling_levels != NULL) {
> +		write_level = ctx->fan_cooling_levels[level];
> +
> +		if (write_level > MAX_SPEED)
> +			return -EINVAL;
> +	}
> +
> +	ret = regmap_write(ctx->mcu->regmap, ctx->fan_register,
> +			   write_level);
>   
> -	ret = regmap_write(ctx->mcu->regmap, KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG,
> -			   level);
>   	if (ret)
>   		return ret;
>   
> @@ -40,7 +58,9 @@ static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
>   static int khadas_mcu_fan_get_max_state(struct thermal_cooling_device *cdev,
>   					unsigned long *state)
>   {
> -	*state = MAX_LEVEL;
> +	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
> +
> +	*state = ctx->fan_max_level;
>   
>   	return 0;
>   }
> @@ -61,7 +81,7 @@ khadas_mcu_fan_set_cur_state(struct thermal_cooling_device *cdev,
>   {
>   	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
>   
> -	if (state > MAX_LEVEL)
> +	if (state > ctx->fan_max_level)
>   		return -EINVAL;
>   
>   	if (state == ctx->level)
> @@ -76,6 +96,47 @@ static const struct thermal_cooling_device_ops khadas_mcu_fan_cooling_ops = {
>   	.set_cur_state = khadas_mcu_fan_set_cur_state,
>   };
>   
> +static int khadas_mcu_fan_get_cooling_data_edge2(struct khadas_mcu_fan_ctx *ctx, struct device *dev)
> +{
> +	struct device_node *np = ctx->mcu->dev->of_node;
> +	int num, i, ret;
> +
> +	if (!of_property_present(np, "cooling-levels"))
> +		return 0;
> +
> +	ret = of_property_count_u32_elems(np, "cooling-levels");
> +	if (ret <= 0) {
> +		dev_err(dev, "Wrong data!\n");
> +		return ret ? : -EINVAL;
> +	}
> +
> +	num = ret;
> +	ctx->fan_cooling_levels = devm_kcalloc(dev, num, sizeof(u32),
> +						   GFP_KERNEL);
> +	if (!ctx->fan_cooling_levels)
> +		return -ENOMEM;
> +
> +	ret = of_property_read_u32_array(np, "cooling-levels",
> +					 ctx->fan_cooling_levels, num);
> +	if (ret) {
> +		dev_err(dev, "Property 'cooling-levels' cannot be read!\n");
> +		return ret;
> +	}
> +
> +	for (i = 0; i < num; i++) {
> +		if (ctx->fan_cooling_levels[i] > MAX_SPEED) {
> +			dev_err(dev, "MCU fan state[%d]:%d > %d\n", i,
> +				ctx->fan_cooling_levels[i], MAX_SPEED);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	ctx->fan_max_level = num - 1;
> +	ctx->fan_register = KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG_V2;
> +
> +	return 0;
> +}
> +
>   static int khadas_mcu_fan_probe(struct platform_device *pdev)
>   {
>   	struct khadas_mcu *mcu = dev_get_drvdata(pdev->dev.parent);
> @@ -90,6 +151,13 @@ static int khadas_mcu_fan_probe(struct platform_device *pdev)
>   	ctx->mcu = mcu;
>   	platform_set_drvdata(pdev, ctx);
>   
> +	ctx->fan_max_level = MAX_LEVEL;
> +	ctx->fan_register = KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG;
> +
> +	ret = khadas_mcu_fan_get_cooling_data_edge2(ctx, dev);
> +	if (ret)
> +		return ret;
> +
>   	cdev = devm_thermal_of_cooling_device_register(dev->parent,
>   			dev->parent->of_node, "khadas-mcu-fan", ctx,
>   			&khadas_mcu_fan_cooling_ops);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
