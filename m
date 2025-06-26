Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4EDDC7EE32
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 14:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WyJdY0ppDnKMRVnOX5Qtw5A5Rb0COm63CjMjQkwWoQ8=; b=LYNfSqRLPuqnoYG6bjnxmmyZpC
	sJvmvJylO08fiV6w3zMN9RjN2JZidqodGo3JUj/H4UlcW2xoIlVM199jiHa2+egC77HZGI173KxqQ
	LJ550X1vYQqGeOb+xHfmbNo2u+q0BL/G6s0zeNdbuNSlMNWfYLsJLt7OqPvsRV5DgEhlynJZxK+J/
	YmB3JwTVOLsZc3x0FnqF7QBSB/8+Guyj8peL74yYiqTiRZv1wvG8zHhGAxjNnlhSHMj6tsZon2uvE
	ysi8gkEynK3DPIDtFU40fyObW3IofVEyDZpPnOycwWr+D1m8+cJCtgdRvjrt3D8Ir1Ytmy7UEfgct
	kCxRVAHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnaa-0000000BvHH-1YK7;
	Thu, 26 Jun 2025 14:28:32 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnMM-0000000BsbW-1cKw
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Jun 2025 14:13:51 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-453426170b6so12525285e9.1
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jun 2025 07:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750947229; x=1751552029; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NMJbxK+Vs0vHD/rLpXgatG28H8njeuPukA8Oh9Ztkak=;
        b=R4JqiO+bHXYQaOoWtrRLzi7sT0sau/zdSK98IxaDjV8Nb5uymJU/LgzZVgjtULdBou
         IKMw5gGO0nVA89W3RnYdCHBz7CZP99zSx3x5MGDu3DiTlUrtlGWwJJC3103kPtZAyeDW
         FVA9D6PX9kAiuUheLdwTGNiK4GEkfJ/GHHbpR4oan+xV+ySlpKS9MgUUVvuhDYHGa+rl
         KPtcQUxmR3eEf96+URNv8/HblUsHpkrCor2K3ibvOsbG5n8Ow/rQjEwwW4ID1tHODTzo
         +bsIxLP4JPd96VAZG9jMbYkuVwGZbx2v8rM0qgIpw5M6idRmQa7YSLLhp/S4WGEhA7KY
         2MjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750947229; x=1751552029;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NMJbxK+Vs0vHD/rLpXgatG28H8njeuPukA8Oh9Ztkak=;
        b=GkgzX62JrzXvM9TfPpF7tIn80/Tk2gcRQzV9IOwu5ZR6F8CNUGIWvN4rZ/j2yD6yKV
         0DC7ci/G08JL7VjqlXXgKjCfA/FEEID2NWh7ZTUJtkvGZO1HG+gZGdSIv21TIlzw/3QV
         1owBI8Z5QN+096Dr//q2B0yW/rL4tjetKyk8r7iLYPvr0BzuO7Ze/kSS31kRFvcohi9x
         jE+hqrMC8uwVcX8DU+L5B9oVRV7cYGFmiW7U4UGW0oTeNWLa1nG3pwn8Tc0lNEs00kyX
         +IbD+EKeaI6J6aWlOlEOnCurq4EPDg32DvqJYETGVgHy157s76brvz6BRsombBLDtkHo
         Qayg==
X-Forwarded-Encrypted: i=1; AJvYcCXrL62WCpI/KIjmK4aeMRdtwOaivmQjZgkjjSM5aISVE38KTTOmeKypyft+oLQGlMG98P4CnpkPxhthxAOWlA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwI7I2+rUMFxYs4QqmSdUG7XVLheJKZVZw3pBt2SC8o+r/SPUuH
	EYlY8mkAEVeXPAzTaE4tQrykUC5LEJMVKh/esLWAqmQE/k7/7ZaffU8+o2D5n9Xeq6A=
X-Gm-Gg: ASbGncssFSSLbbxdcJk+89iQUx7qzVROGZFGWpAvn6MQCT0H4P82yjKLi58PCteV4aN
	5KqYiXncKXVf3mK/RsFW7nuVbR8pievsYGVtyorgDhTnrClexmu8t7WgNEG/9DjisG9kYzyldf+
	JLa3v1Cq6bfawCQcOYghSylStLGbyFDwlE00jdh1bY9yPdbiaOajlukP3bLCcm1XNZXfqsQwIlS
	dTP6bAxtaCIBC1NslBtZn+/13oQGTKSBLFqlSHDPSlLy4TywbuHPtfvpNgO1EYWY5T38NGk6m+7
	ktr0Zivu+rtzj218ndkCvLQ1o5SNh3tpTqiDPP82wvz5PFAGl81BO6n8ca08JYJACmTMT6v0JzR
	bKzmKXVR8RWA/a0z0iROyLNmKpfa74YMYj4z8fz0=
X-Google-Smtp-Source: AGHT+IHAaJHtYzCJoYKM9gdvCp6tWkdRHXxVPebdwEL9y2imblqKnZ4SnYi7AI2VF2X9Y7HivIxDYA==
X-Received: by 2002:a05:600c:a01:b0:451:df07:d8e0 with SMTP id 5b1f17b1804b1-453889d0d93mr40114195e9.11.1750947228759;
        Thu, 26 Jun 2025 07:13:48 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:fa6f:b132:4858:18cc? ([2a01:e0a:3d9:2080:fa6f:b132:4858:18cc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a406ab6sm21614295e9.30.2025.06.26.07.13.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 07:13:48 -0700 (PDT)
Message-ID: <4da70304-96c6-4b2a-bd8c-0b53811089de@linaro.org>
Date: Thu, 26 Jun 2025 16:13:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/5] mfd: khadas-mcu: add Khadas Edge 2 registers
To: muhammed.efecetin.67@gmail.com, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, lee@kernel.org,
 rafael@kernel.org, efectn@protonmail.com, daniel.lezcano@linaro.org
References: <cover.1746518265.git.efectn@protonmail.com>
 <16807e13e034f85adc91d131f6c5046ce7d98d9c.1746518265.git.efectn@protonmail.com>
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
In-Reply-To: <16807e13e034f85adc91d131f6c5046ce7d98d9c.1746518265.git.efectn@protonmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_071350_435064_2FACD65A 
X-CRM114-Status: GOOD (  15.62  )
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
> Add Khadas Edge 2 MCU registers to khadas-mcu.h and adjust some properties.
> Also, i've added some registers with V2 suffix,
> as same addresses were already exist for previous boards.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
> ---
>   drivers/mfd/khadas-mcu.c       |  8 ++++++--
>   include/linux/mfd/khadas-mcu.h | 25 +++++++++++++++++++++++++
>   2 files changed, 31 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mfd/khadas-mcu.c b/drivers/mfd/khadas-mcu.c
> index ca4bd6cf5..199ed4925 100644
> --- a/drivers/mfd/khadas-mcu.c
> +++ b/drivers/mfd/khadas-mcu.c
> @@ -26,6 +26,10 @@ static bool khadas_mcu_reg_volatile(struct device *dev, unsigned int reg)
>   	case KHADAS_MCU_CHECK_USER_PASSWD_REG:
>   	case KHADAS_MCU_WOL_INIT_START_REG:
>   	case KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG:
> +	case KHADAS_MCU_LED_ON_RAM_REG:
> +	case KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG_V2:
> +	case KHADAS_MCU_WDT_EN_REG:
> +	case KHADAS_MCU_SYS_RST_REG:
>   		return true;
>   	default:
>   		return false;
> @@ -69,14 +73,14 @@ static const struct regmap_config khadas_mcu_regmap_config = {
>   	.reg_bits	= 8,
>   	.reg_stride	= 1,
>   	.val_bits	= 8,
> -	.max_register	= KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG,
> +	.max_register	= KHADAS_MCU_SYS_RST_REG,
>   	.volatile_reg	= khadas_mcu_reg_volatile,
>   	.writeable_reg	= khadas_mcu_reg_writeable,
>   	.cache_type	= REGCACHE_MAPLE,
>   };
>   
>   static struct mfd_cell khadas_mcu_fan_cells[] = {
> -	/* VIM1/2 Rev13+ and VIM3 only */
> +	/* VIM1/2 Rev13+, VIM3 and Edge2 only */
>   	{ .name = "khadas-mcu-fan-ctrl", },
>   };
>   
> diff --git a/include/linux/mfd/khadas-mcu.h b/include/linux/mfd/khadas-mcu.h
> index a99ba2ed0..de570e159 100644
> --- a/include/linux/mfd/khadas-mcu.h
> +++ b/include/linux/mfd/khadas-mcu.h
> @@ -35,26 +35,45 @@
>   #define KHADAS_MCU_FACTORY_TEST_REG		0x16 /* R */
>   #define KHADAS_MCU_BOOT_MODE_REG		0x20 /* RW */
>   #define KHADAS_MCU_BOOT_EN_WOL_REG		0x21 /* RW */
> +#define KHADAS_MCU_BOOT_EN_DCIN_REG_V2		0x21 /* RW */
>   #define KHADAS_MCU_BOOT_EN_RTC_REG		0x22 /* RW */
>   #define KHADAS_MCU_BOOT_EN_EXP_REG		0x23 /* RW */
> +#define KHADAS_MCU_LED_MODE_ON_REG_V2		0x23 /* RW */
> +#define KHADAS_MCU_LED_MODE_OFF_REG_V2		0x24 /* RW */
>   #define KHADAS_MCU_BOOT_EN_IR_REG		0x24 /* RW */
>   #define KHADAS_MCU_BOOT_EN_DCIN_REG		0x25 /* RW */
> +#define KHADAS_MCU_RGB_ON_R_REG			0x25 /* RW */
> +#define KHADAS_MCU_RGB_ON_G_REG			0x26 /* RW */
>   #define KHADAS_MCU_BOOT_EN_KEY_REG		0x26 /* RW */
> +#define KHADAS_MCU_RGB_ON_B_REG			0x27 /* RW */
>   #define KHADAS_MCU_KEY_MODE_REG			0x27 /* RW */
> +#define KHADAS_MCU_RGB_OFF_R_REG		0x28 /* RW */
>   #define KHADAS_MCU_LED_MODE_ON_REG		0x28 /* RW */
> +#define KHADAS_MCU_RGB_OFF_G_REG		0x29 /* RW */
>   #define KHADAS_MCU_LED_MODE_OFF_REG		0x29 /* RW */
> +#define KHADAS_MCU_RGB_OFF_B_REG		0x2a /* RW */
> +#define KHADAS_MCU_REST_CONF_REG		0x2c /* WO */
>   #define KHADAS_MCU_SHUTDOWN_NORMAL_REG		0x2c /* RW */
>   #define KHADAS_MCU_MAC_SWITCH_REG		0x2d /* RW */
>   #define KHADAS_MCU_MCU_SLEEP_MODE_REG		0x2e /* RW */
> +#define KHADAS_MCU_BOOT_EN_IR_REG_V2		0x2f /* RW */
>   #define KHADAS_MCU_IR_CODE1_0_REG		0x2f /* RW */
>   #define KHADAS_MCU_IR_CODE1_1_REG		0x30 /* RW */
> +#define KHADAS_MCU_IR1_CUST1_REG		0x30 /* RW */
>   #define KHADAS_MCU_IR_CODE1_2_REG		0x31 /* RW */
> +#define KHADAS_MCU_IR1_CUST2_REG		0x31 /* RW */
>   #define KHADAS_MCU_IR_CODE1_3_REG		0x32 /* RW */
> +#define KHADAS_MCU_IR1_ORDER1_REG		0x32 /* RW */
>   #define KHADAS_MCU_USB_PCIE_SWITCH_REG		0x33 /* RW */
> +#define KHADAS_MCU_IR1_ORDER2_REG		0x33 /* RW */
> +#define KHADAS_MCU_IR2_CUST1_REG		0x34 /* RW */
>   #define KHADAS_MCU_IR_CODE2_0_REG		0x34 /* RW */
>   #define KHADAS_MCU_IR_CODE2_1_REG		0x35 /* RW */
> +#define KHADAS_MCU_IR2_CUST2_REG		0x35 /* RW */
>   #define KHADAS_MCU_IR_CODE2_2_REG		0x36 /* RW */
> +#define KHADAS_MCU_IR2_ORDER1_REG		0x36 /* RW */
>   #define KHADAS_MCU_IR_CODE2_3_REG		0x37 /* RW */
> +#define KHADAS_MCU_IR2_ORDER2_REG		0x36 /* RW */
>   #define KHADAS_MCU_PASSWD_USER_0_REG		0x40 /* RW */
>   #define KHADAS_MCU_PASSWD_USER_1_REG		0x41 /* RW */
>   #define KHADAS_MCU_PASSWD_USER_2_REG		0x42 /* RW */
> @@ -69,6 +88,11 @@
>   #define KHADAS_MCU_SHUTDOWN_NORMAL_STATUS_REG	0x86 /* RO */
>   #define KHADAS_MCU_WOL_INIT_START_REG		0x87 /* WO */
>   #define KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG	0x88 /* WO */
> +#define KHADAS_MCU_LED_ON_RAM_REG		0x89 /* WO */
> +#define KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG_V2	0x8A /* WO */
> +#define KHADAS_MCU_WDT_EN_REG			0x8B /* WO */
> +#define KHADAS_MCU_SYS_RST_REG			0x91 /* WO */
> +
>   
>   enum {
>   	KHADAS_BOARD_VIM1 = 0x1,
> @@ -76,6 +100,7 @@ enum {
>   	KHADAS_BOARD_VIM3,
>   	KHADAS_BOARD_EDGE = 0x11,
>   	KHADAS_BOARD_EDGE_V,
> +	KHADAS_BOARD_EDGE2,
>   };
>   
>   /**

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
