Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 688E1C71136
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 09:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=30Ny98tkrrfJbKtQQ+u46psJjx6Ue+TUyihLRF/10u8=; b=rwdpKajFSlOx+GOqyP+xQj5fFY
	7D1+s12zlo1ayazbCDLkPmQoszMFrzeKO5iUFSJDqxpZ6GcUIupHd/6CWw7KOTQ3MInMY3IUqmJFw
	zmE9uO973hweAHOwd1F0pTzympCmwJpPQzKWwee7LYErZ+h7U+95/YhqdbLPgERd9pjYP0uFEBda7
	iLtv5fBbT2U8o9+TkhuBfge4OBhY28QriuJ6u1Vm11selCGwbUdfPTCwgrzMH/uN3ZAhF8h1jYiaA
	JnfvWIDJbyxHFKcviCFm6Uls99lvgB+9HDEo/MF4ypbnHYDrqFxAInQkwNYo0ybptN6OdPDPK00iv
	7hPLMwkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSnm-00000006nE6-36Oo;
	Tue, 17 Jun 2025 09:40:22 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSe3-00000006kwG-0E67
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 09:30:20 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-450cea01b9cso25162315e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 02:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750152617; x=1750757417; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xl41cDxLf5qSZURNGABwnShoulmiUtSz5ST04bw9Wkg=;
        b=II8Yx93cShhcTdGGTheGBB9QxOy7ykBDKrB+1ZjdDENSi6rdyRe0as6dWMnaPIXoJ8
         3rsKm7Vk1ixb0zAn3WlbRGpWkRiq1L2WtL4N7ljTMAydtP7+iht/wDhklU60Vz37vwyL
         oLyJaZTbGFOlhr3WCasD4/E5aRaqChNqICJ8oLNVa/osvS6A02X6im+rNlNyZH2Ryi/w
         dWUrNZ8Lix6ZkMkH4SXgbPkm0DaBs79LP+YIG5wM/VcXSfdLSuHE94Wu8ykf1/OzoFkI
         h1fQYHH49GyMfdkkxhASLBTIddDD3SJ4rQiYbrazeQVHWFhWpRSIsQIA+xZkmCclnxPJ
         dk/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750152617; x=1750757417;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xl41cDxLf5qSZURNGABwnShoulmiUtSz5ST04bw9Wkg=;
        b=jvBSCQx8uhLDkiRDV8IAoK9IwD8+TtLcXnPGpMuS2iXeKo++nPWtEgONbHXdOme3wd
         ikn8Vv8JVKtuE4UcNSQhHgBxoTZ3Do5fTypwRzvBmnUa1PG2+cDiHm4RVE2Bhjjfzb8E
         3oMD1+K49O4s3hePZhqFm+CysKG/VE9FCVuTV+mrNTPAcxYnyyrVFhpvNRIJjRx+4CUo
         Yi2XcZAwvYdyZNtbKrw30Pz2FnIsWb8c1FnhBxmz1y3ILjSR6702LXk8vmymXVEkvu2V
         7u0O57IJDuCu9PiIHBnyYy0b8yZPaO2hR6EjzN5jifvlXcBcO4iiJ34+FwBwWmPKRCs2
         3k/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVNrMIIp2K56YiEHMhMCJAbDE3OtkqjYUGwzUp2ZPj+xput1+O66IQdA0DghFHp1Rm3XQUjouRwDXLjFxfv+Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxICe6owkiuvBlmFmdcAS0s6J569Br8L3hrwzUG5WKvJlozALl2
	dDBBYEMBUeUSSBjsj/eBQ8FkliN8o3S2Cz1Dhu9qFu7066xVzpZ19GwUZZ16yDV4uPY=
X-Gm-Gg: ASbGncuEejcn0l1dQEQ6SvIlMqFx6H9zoiapsRuVFK/NIvKgElxfW8BA0HZOJ74k5Ox
	Y3v9dtHfRMpmFEPmCgF3Ved9t0UGkdE9JqrGbdAraNXjMwgrP6aag4X18ydJtoJn4rjGb9pHv5z
	GabgB1oDdPm3m+tP11Ca20FZaKl3zKofOmXpAjbYGcTmFK/9PZLVWSB3YgoKjembQg0SXkN15BA
	N0+srvm1dhFs8TrndouS1mNbK+UKGDJSwO5zEyjMG8iEjqefYjSqYVirTVF9Q8dFDQ22cRb76+S
	ggM6DoBKfqu41LOXp9sQx+2zQMqTkflBUP6FYQDI3JeRaYhAz+FTmfdmEw6nAuvjibi8ghNGOKE
	G07cWd+frJwRbSGANYe2HSQpXFd4zq0Mv75HxShw=
X-Google-Smtp-Source: AGHT+IH90fM/Hl2qQnPaSI6dqHDTANiZZutrp7G9byHerpIanfYAuG3VuGrXV1ZLniUQsldJImLpAQ==
X-Received: by 2002:a05:600c:8b01:b0:441:d437:e3b8 with SMTP id 5b1f17b1804b1-4533cac9179mr105111595e9.23.1750152616870;
        Tue, 17 Jun 2025 02:30:16 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:3819:3250:4f73:db31? ([2a01:e0a:3d9:2080:3819:3250:4f73:db31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a54aeasm13662038f8f.14.2025.06.17.02.30.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jun 2025 02:30:11 -0700 (PDT)
Message-ID: <9c512a8d-a39e-4b3a-b617-80b2dc7d14b3@linaro.org>
Date: Tue, 17 Jun 2025 11:30:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/5] phy: rockchip: phy-rockchip-inno-csidphy: allow
 writes to grf register 0
To: michael.riesch@collabora.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20250616-rk3588-csi-dphy-v1-0-84eb3b2a736c@collabora.com>
 <20250616-rk3588-csi-dphy-v1-3-84eb3b2a736c@collabora.com>
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
In-Reply-To: <20250616-rk3588-csi-dphy-v1-3-84eb3b2a736c@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_023019_096921_0A20D55A 
X-CRM114-Status: GOOD (  17.60  )
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

On 17/06/2025 10:54, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The driver for the Rockchip MIPI CSI-2 DPHY uses GRF register offset
> value 0 to sort out undefined registers. However, the RK3588 CSIDPHY GRF
> this offset is perfectly fine (in fact, register 0 is the only one in
> this register y
> file).
> Introduce a boolean variable to indicate valid registers and allow writes
> to register 0.
> 
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-inno-csidphy.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> index 2ab99e1d47eb..75533d071025 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> @@ -87,10 +87,11 @@ struct dphy_reg {
>   	u32 offset;
>   	u32 mask;
>   	u32 shift;
> +	u8 valid;
>   };
>   
>   #define PHY_REG(_offset, _width, _shift) \
> -	{ .offset = _offset, .mask = BIT(_width) - 1, .shift = _shift, }
> +	{ .offset = _offset, .mask = BIT(_width) - 1, .shift = _shift, .valid = 1, }
>   
>   static const struct dphy_reg rk1808_grf_dphy_regs[] = {
>   	[GRF_DPHY_CSIPHY_FORCERXMODE] = PHY_REG(RK1808_GRF_PD_VI_CON_OFFSET, 4, 0),
> @@ -145,7 +146,7 @@ static inline void write_grf_reg(struct rockchip_inno_csidphy *priv,
>   	const struct dphy_drv_data *drv_data = priv->drv_data;
>   	const struct dphy_reg *reg = &drv_data->grf_regs[index];
>   
> -	if (reg->offset)
> +	if (reg->valid)
>   		regmap_write(priv->grf, reg->offset,
>   			     HIWORD_UPDATE(value, reg->mask, reg->shift));
>   }
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
