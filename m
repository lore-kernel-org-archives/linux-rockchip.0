Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 748A9CD342C
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 14:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2JsttiXqOt49q3ukSg4GO1+Xv6jEt2051R+0rhinYNU=; b=fDNQfXzsXUSckFPixZv8KurvuI
	NpzHGLI0woiS8cpQwLZODcm5R5+r8DNB6CIGz6E/Z2AudcQcv5YWxQkDV6hr6LF88xIxk2gcJv43X
	+X5+M4dmURBew4yXxYnwR1ibVRBiC1cN5ZkKitOEW9e4/HmAZMiahgvaAsWWyUynm2w9Ql5PIPL8E
	300eCBAfzFKbW6UaQr+jeDTkTaQfSweil8qQFo5s8wtQEiqZsMZLnv1b8EN217vWhDnHdew2ZZFFf
	vBUfXwI8eRpRvjmtvlYAJw/0K+mi6bsAs7qYDkjc03zS1eQhgrokUWSeAGOwUUkS2RiNMEryBtpV2
	8zh5ap5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdZE-00000001A0f-1UIC;
	Wed, 06 May 2026 14:49:40 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdZD-000000019yZ-1jkH
	for linux-rockchip@lists.infradead.org;
	Wed, 06 May 2026 14:49:39 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-43d64313c39so4686063f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2026 07:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778078977; x=1778683777; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xgbuIPvwGTDZ1vH1DcLJwAkJi5BHMTFvMXCyADYeRKI=;
        b=JrhYrE+S9MzFP6Nq6tTfOU+5OBmIToQj2bctqfpYBJg6BTNpHavH5888toanlK1DLL
         TPIeWIRuyxaYSBUWcJ0Y+UpsLR+B1LH/Wjsk7/0KZL6l5f1VzLRTbaMe3JNcPgUdF4S3
         xTaE0UHdUB6EWE2aErNydIxM1TRO76ffDjumySBjGefAhyfzTEJGrDxTidYzizO6ulm5
         rnXCbRUUzraJu03/IDhzOBl4xfDKZZE6h3MOeS5ZxOC5o7e7PSL3PhZHXhntC7mN5jiz
         3AWLzEgU/4dPFCQ3/KgGYUpRtmQhoflxYVp3CDv2vSlgIxGdDOtARjF6Ys30jxethYDG
         lVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778078977; x=1778683777;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xgbuIPvwGTDZ1vH1DcLJwAkJi5BHMTFvMXCyADYeRKI=;
        b=Y2aZ32wVDCO/43V3yQV0mx1+J3JflKOOVwZodNE6tpAh/QT0OeArGESVpdnoKYrhzi
         f9X4onFneCfEhzNX/dDJ0nckYOza37dioqKgtRVuCpG8uUBKt6sCVnhUDvpc5ALShjxU
         XIwOVG+vZptFfk435sLs832jSuOuMjAjbTQQdFbHA/VykJog+5dyyP6toIYRZECNJiqE
         +eM9nnEOdt/BqrNQqBxlr04J1l3jVMJxwDDnjsKLmAPZpixEKshHzheBdK9EOQWCzOvk
         vpDcA7WV1npeEsojKY6Mqv1rdEPPnuoT6+a8lOgdv3IbJrD4DM6mVGsY7oeH6JCjEMrw
         9P5A==
X-Forwarded-Encrypted: i=1; AFNElJ//KAhVJ8Fv9Sdk3fkaJ2UEcxd9ppFZ/GBDit+bE2OKiA2VplIEcSLXriN1RVdyfyJVtJPEmR9lv00hdEElZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwoHcAhRZL0fskSgsKcaU4Yia+JVJfJ/Ht6uXxeG9YDtUxlrcGA
	GvjcBDVtGf5d0F8zQQQZZOwi34/FPobSUG9DeV5psFzv0deREjowKXWe28QPzs30XF8=
X-Gm-Gg: AeBDievrWfRzMZQbNmOicgSjt5O966StcgcTwKgTU3QhBRumJ5jVeW9xBKv9TYeasTH
	65yH2Kmv2G0EOSnFI1UIiLNbzRYo1mwq+6frThIk6HQSfMCPYc/AvqgTVm9IHMFmO6WJbxQo/w9
	r8+wecIFtU+4wb8cigs/KY9mJng6pJHK//3SEIHnu91LfX7pMQKqM/55XhY+DPF5SQF/2oAvN7S
	B04YbEt0PtJjJ9Xj2UOiL2zeh2R0ipWg4JZhX9V2DuFbD3JqeI0l0FWKnew8+tuRAnh3QN5Cx/3
	lO5w51dmlZK8z7A9e+Ujq2sJ4g65PZq6tvJMog+Z3Niq0Vz8ilW++ESgjxnvPEREZzFh8zOcXqz
	7OvcxRbybD60LisuASfk9ZqQ2JrR2fXDRkRQPKOagBUAK3RKzUWenG4uEZ1TNTtN/+xuzkXdZV8
	rBf8G4L5pmCueWV3YDFdjBaQxc5u98Xr2XLyJjFsx0gpyPl7jylYkQXxD+Gt5pIVKiXYNXnaBoO
	Y/buLUjqpMLXkfDww==
X-Received: by 2002:a05:6000:2013:b0:43c:f3ef:ee36 with SMTP id ffacd0b85a97d-4515d4d0fbcmr6911189f8f.33.1778078977349;
        Wed, 06 May 2026 07:49:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45054b02c5asm13014040f8f.19.2026.05.06.07.49.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:49:36 -0700 (PDT)
Message-ID: <ab5efb9a-a2a7-4871-94c3-599ba8510dd3@linaro.org>
Date: Wed, 6 May 2026 16:49:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 05/16] phy: rockchip: usbdp: Fix LFPS detect threshold
 control
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 devicetree@vger.kernel.org, William Wu <william.wu@rock-chips.com>
References: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
 <20260428-rockchip-usbdp-cleanup-v4-5-7775671ece22@collabora.com>
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
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-5-7775671ece22@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_074939_487316_2C99D422 
X-CRM114-Status: GOOD (  16.42  )
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

On 4/28/26 18:13, Sebastian Reichel wrote:
> From: William Wu <william.wu@rock-chips.com>
> 
> According to the LFPS Tx Low Power/LFPS Rx Detect Threshold [1],
> the device under test(DUT) must not respond if LFPS below the
> minimum LFPS Rx Detect Threshold 100mV. Test fail on Rockchip
> platforms, because the default LFPS detect threshold is set to
> 65mV.
> 
> The USBDP PHY LFPS detect threshold voltage could be set to
> 30mV ~ 140mV, and since there could be 10-20% PVT variation,
> we set LFPS detect threshold voltage to 110mV.
> 
> [1] https://compliance.usb.org/resources/LFPS_Rx_Tx_Low_Power_Compliance_Update_Rev5.pdf
> 
> Signed-off-by: William Wu <william.wu@rock-chips.com>
> [Taken over from rockchip's kernel tree; the registers are not described
> in the TRM]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-usbdp.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index 1f686844c337..97e53b933225 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -413,7 +413,8 @@ static const struct reg_sequence rk_udphy_init_sequence[] = {
>   	{0x0070, 0x7d}, {0x0074, 0x68},
>   	{0x0af4, 0x1a}, {0x1af4, 0x1a},
>   	{0x0440, 0x3f}, {0x10d4, 0x08},
> -	{0x20d4, 0x08}, {0x0024, 0x6e}
> +	{0x20d4, 0x08}, {0x0024, 0x6e},
> +	{0x09c0, 0x0a}, {0x19c0, 0x0a}
>   };
>   
>   static inline int rk_udphy_grfreg_write(struct regmap *base,
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
