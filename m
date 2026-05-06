Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CEEFCD342C
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 14:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JpH4BuF4oiy1KtHv8/Te/zgZ/BdGP+yBy3kxF8bXGnI=; b=uHtMgZ6bVIvE+i0JDCdZQK+A3n
	VMlQTlMzGjy7qqbm2avvoX0qbAUQ3udUbR1Sv2vY8DLYtVO1fc5BpD8rDuQrfEX1dm5MrmRlBORDD
	yK/aSexpq6xY6ljTtL70cQfbzna9ZJugriuSOuD45pjgaISVYiaMjE9/zv8N2p5zKoNgy6U+XfLWu
	DuYO3K+TYCH5h4ROVfprK+I8eRJX2Agr3YBP25OCzH6u+WgPk6DXisne8ulhsBzIAP4QkJLFvR9qq
	E60P1nlQzmYIU/AFPemAm4T6MJIocENhx1c6RAP2A20zVBFcPr1azEFzD+Jwl/BxIRn1dtkiO2McI
	s9tPjQqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdXP-000000019YK-48Ik;
	Wed, 06 May 2026 14:47:47 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdXP-000000019X2-1RUU
	for linux-rockchip@lists.infradead.org;
	Wed, 06 May 2026 14:47:47 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-48909558b3aso71948335e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2026 07:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778078865; x=1778683665; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T3vToQ5Y+vWhpVQnvtWFjRehlTKodwndWbzaDErO2cA=;
        b=dRnJnnnqCyDKV7X4DIHogdflH1kW+DFhaqcX4SSbyxJMYrP7EDHFdHbUI3gjDFwHDv
         XY/BQmY1U34tq4pIG5jKPrngg2H6s9rlcsZjfJsFsFPGG+35gyVDeT4ISzR4ZyRu3y45
         lAnfczmyb7TH9tibMJo3USwdqFztw26f3Q0pOs0K7t/H3skemdLjScd+bqqYp+tXspN2
         Nkum2401whXerjC0pIbx14vGOjeUpbI0y8aYOpijRHO3QD7KyIMCBYzDPqWf/lJFeY0c
         a6VnOADH/RMZzHyDs+KFVuP9VJlfsiIeinvus4w0/w3Lv1ZaLr9JJ22uotAd6LprCM97
         tdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778078865; x=1778683665;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T3vToQ5Y+vWhpVQnvtWFjRehlTKodwndWbzaDErO2cA=;
        b=ar95qap8WQRS+S905j2dIoGHV22Qz1Q2ght6wo+M2oePJZRyMLnmvaWIlF46yXAJJg
         tmggZnxqXKyEvXM8fR3IZBHQiTkWK8ASTeFGdBzRtY65tqLFmFzst44UApnAqp3vo7PN
         kbPXRcNJ+HFpuoWkS9aFIkgnnnXto8xOSFW/+Ky8Kvs35LBLbBJ/1QEc2BhPOIIJhLXi
         MIPK3p4m5Ra4OJ/9AORSqO0N8w35l/WsHqknvKsn4GftwkI+DMjJKRi95lJB3XdJUkdF
         k3ctxhJ20cra2/KfinsOeO11KI0fTHCrRIkgIBcgTC2BWPh0K06LPq55DKDf/xBd9L2Y
         /1fg==
X-Forwarded-Encrypted: i=1; AFNElJ+iV8zMPst0ScOX0aK3KwjhfK3SSyJ9Cu/EnmPSDXsmSIgC3Q1FngCyqCkrHR0ryCTWwCvDr5HrtuCeEErriQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzgXiGsP0KUqwHZrZyYYW4soAUwnrv8JqCpuo5NOW1RqwhWH4mk
	G7sntZJ8ALBVQpa9KFebbHWFq0Sv1oydFEnRcV3lvA7IO9vRnAXLrPLKneXPOZZdHDqV0qFxEoM
	vPRmO
X-Gm-Gg: AeBDies4+y18WHvjRe5LNzojAqY9e8xh2vfJDP3EKYkCc9OX0ceLNfQ9Rbw5+jFHu78
	w5kEnvicdskkMMTIZygct7VREGn1iW8r2cjv428zfeVIE2DGXFK4NF7nHR/Y8gO0CPzuEpSadQ6
	qf4iwsXDNqRdaqBQbK3bKmR7mvVz6cV+MA8wgaWJoXBLGznyMs0xToxfNW/eOPqumZFy0fm6fPj
	UxR7chihqSNm/DG5BnMxd0Fg8iLlLID0DXMousRJEKfkyFEbD947iY82bZAvbivB9CFspMp7ZlQ
	BuuxbWu3BRAkjwPqcNRowK+6DaSD2B5eB32kFDkN1Gr12pZ+0fAoLB3HYvzJXB95ke4PqmclPYx
	I9f/+/7FTWwWMg3LUqw3ca5DxSkvAFvOnEOi+xln6CYTMtOo//EmtRLVjWbSgxr0x+a4xQaLxBg
	I4PDHSwPCLyYjzdFQ9bfaHjGma12dtFLsjqQBuY9KeHsQNmD6TnCQ4qXWEjjWe/Kh/bjZlbSIs/
	YUUkXHYdwGqJg8MDw==
X-Received: by 2002:a05:600d:849c:20b0:488:a2ac:a34c with SMTP id 5b1f17b1804b1-48e51f220e7mr48119355e9.12.1778078865201;
        Wed, 06 May 2026 07:47:45 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e530b213asm18805425e9.2.2026.05.06.07.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:47:44 -0700 (PDT)
Message-ID: <b4e3adc7-bfb9-49ed-a2aa-30feef074554@linaro.org>
Date: Wed, 6 May 2026 16:47:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 02/16] phy: rockchip: usbdp: Do not loose USB3 PHY
 status
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
 <20260428-rockchip-usbdp-cleanup-v4-2-7775671ece22@collabora.com>
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
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-2-7775671ece22@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_074747_415588_DC53B605 
X-CRM114-Status: GOOD (  18.46  )
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
> By default (i.e. without manually enabling runtime PM) DWC3 requests the
> USB3 PHY once and keeps it enabled all the time. When DisplayPort is
> being requested later on, a mode change is needed. This re-initializes
> the PHY. During re-initialization the status variable has incorrectly
> been cleared, which means the tracking information for USB3 ist lost.

--------------------------------------------------------------/\ is

> 
> This is not an immediate problem, since the DP side keeps the PHY
> enabled. But once DP is toggled off, the whole PHY will be disabled.
> This is a problem, because the USB side still needs it powered.
> 
> Fix things by not clearing the status flags.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-usbdp.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index fba35510d88c..744cc7c642f4 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1009,7 +1009,6 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
>   			rk_udphy_u3_port_disable(udphy, false);
>   	} else if (udphy->mode_change) {
>   		udphy->mode_change = false;
> -		udphy->status = UDPHY_MODE_NONE;
>   		if (udphy->mode == UDPHY_MODE_DP)
>   			rk_udphy_u3_port_disable(udphy, true);
>   
> 

Looks good, but any fixes tag ?

Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
