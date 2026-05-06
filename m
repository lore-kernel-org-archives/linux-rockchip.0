Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A31F0CD343B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 14:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TeomncWk9BSmJyqbPxmdQ2CVTTos6lmZlZXA/DdBlsA=; b=b8IL1Lb7MhbkFLqp9N3Iag5qmD
	taq05dN9ZthyqT+LK2UaJ3squZLX5AYuRXqQZYH2fCuq5Zmw/TS/OFuVbDGzvh/iCL6ZNMCyQONSz
	Rhy7CR7Pa/nCgcSFP4glgLXXrKnvaCEJpr2g3lvpPDyKW2SqgwZBuSXkPNlu/91K5yD/t8wkZGOHU
	iTpGADyi9Xv7a0Md49HuaTxbjUPjVJHeUngjULo02mj0rFXht5p4C4UjwP8AVd5odOQMgDYGuAaCb
	bDJWTOjD2FmHbIiIiNRdwEGE/rKyT2ZIs8BDTTtw06Z8cGaoq0T/WWcC6/gS5XwjMN6JESfTtDt72
	N1d8v0dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdYw-000000019q3-1ptU;
	Wed, 06 May 2026 14:49:22 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdYu-000000019p4-3itM
	for linux-rockchip@lists.infradead.org;
	Wed, 06 May 2026 14:49:21 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-43d73352cf2so5981452f8f.1
        for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2026 07:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778078959; x=1778683759; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ArIiOc5BIENDbFYudfD+oY6YZVBcrif0Q7lUYU811cI=;
        b=N+4guF8XK8m/XhvU2w+xtX3AWuOfB5tVyEpyCONKLq/QtoSpqWKRPyif5ifHLXEdzP
         CoUZCa37K03NuYBTwSW8F76MXTtim+0nW5DToimH9j+KyxGYKTK0ljhfZEITcgR3dmFU
         jUm6vPVfUZp9qcp59bbBVaQWa8zELGb8M6o0chNRBPnZOg9PVbJqrDxyy87JuOOwZOoX
         dYdrIEFcuAcfrV8CUjIGnwaMBg8cS/7n82mH1aooWGA32jImPuQqUy029G34Tg254Yfy
         eqsrYZMh8BDubQuY1uPcjsbI+OUE7XoqJ39Y48kXajRLP0PzvsfeAJMgAhZg8SkaQA8I
         BCMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778078959; x=1778683759;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ArIiOc5BIENDbFYudfD+oY6YZVBcrif0Q7lUYU811cI=;
        b=frnzW5MSxc+LtKX2p0RLHfQDBDCvlPOeMsYQQeohgPsoCD3KqgvqOsKzfFg7j6I/wA
         nCaFFH6yPwwtVEo1PO0/Wgh7PvIRDr5zVZ2Zl0gsoB97L2RGYCYrAZKQ14vAeJIkk1+K
         DO+2ByzUR1Ys9k4Bbe5XzjbLDkQq2t+m7QW4fFCe/wdTOKIOb9f2bt9mm064fBoZLs6u
         /s4yAVB9QuN7OR/7ijClZeURZFXfj94kBWg5FI4b7OMXIIyAzK1rG1ZDHP8OWH9s1ZZU
         QaBJTo4F/e6UfeJyDMLrLup7Km0JwhFcUMoDlVoE4vOuovfeH7vc2c7ystN8uF1RZmNK
         jIVw==
X-Forwarded-Encrypted: i=1; AFNElJ/zDJPu7ZNXN4Rz8dnCIpgtqJwwmKlMbJMdUUCtHLw1idPRk7lqUZO2TPo0UqzX7KuqqRvuj6XOW8FzwkFgaQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YySzC1Oxn1RujqWMwt/DtXPMUtZh5DVg9nqtINCtrdT/UUhpOMC
	Js8r+SUfrpgjw9SJ3vkRXlTqR5OcUXdJZJH/Ro97aQ4Lb6bDAVIlkUJGaw/CL96TeZw=
X-Gm-Gg: AeBDies2fN+HUG3ZuGEgttbnSt5IISlvapjbnL0KadPxhKJc7vWNGA4OixeK/Mr+/FW
	jHt67UFV+lcTipwDrW0UFPGzBY310M5jqksz+fFMr7efyIzB/0xIszwLW4XwkEkWO+VqQ1qkxnI
	eTi2zlrcxejgA/tUNjgVHKtf2x8shgh8SvFpviFK7McZtwZsluLvnYIiSfydf8jjEn8Q3huDF3P
	2sUMcTiV4+k70/NEOPuOz8xgXr0H4jZ1yzEyi9Az+byKjGx5zazzqcb7tPnF0e8c0HLfSulzN4v
	T3pb9EpEJbvLB9YYFwHtLXd9ReQTwS9Eaa2NYQi9OR9UAOD+sNngkRlYfRJJGBowM5mz45igwdK
	k6r81C2jm60UCKkAlupGQ5zf6sZMlnATkUbWnYrVVswvI9Iki865PnUsn7EfVWGdno0a3l2tI3G
	yGUQrcqjZeINMcYax4760yZ0RpclKKod+IOVvBOIhYyugEKFgpO58ZfKp2v/3OUVv4xhQ5hIYkS
	6VIhAE2hUQzzSlZXg==
X-Received: by 2002:a05:6000:144b:b0:446:db72:e8ec with SMTP id ffacd0b85a97d-4515ce1c55fmr6486902f8f.23.1778078958886;
        Wed, 06 May 2026 07:49:18 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45055960973sm12936695f8f.30.2026.05.06.07.49.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:49:18 -0700 (PDT)
Message-ID: <2c913dd0-d49f-40c0-8951-ea8087d09c24@linaro.org>
Date: Wed, 6 May 2026 16:49:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 03/16] phy: rockchip: usbdp: Keep clocks running on PHY
 re-init
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 devicetree@vger.kernel.org
References: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
 <20260428-rockchip-usbdp-cleanup-v4-3-7775671ece22@collabora.com>
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
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-3-7775671ece22@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_074921_059166_63DCD3CD 
X-CRM114-Status: GOOD (  13.57  )
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
> When a mode change is required rk_udphy_power_on() disables
> the clocks and then calls rk_udphy_setup(), which then enables
> all the clocks again before continuing with rk_udphy_init().
> 
> Considering that rk_udphy_init() does assert the reset lines,
> re-enabling the clocks is just delaying things. Avoid it by
> directly calling rk_udphy_init().
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-usbdp.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index 744cc7c642f4..98562a888b42 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1012,8 +1012,7 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
>   		if (udphy->mode == UDPHY_MODE_DP)
>   			rk_udphy_u3_port_disable(udphy, true);
>   
> -		rk_udphy_disable(udphy);
> -		ret = rk_udphy_setup(udphy);
> +		ret = rk_udphy_init(udphy);
>   		if (ret)
>   			return ret;
>   	}
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
