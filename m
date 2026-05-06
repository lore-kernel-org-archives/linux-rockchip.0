Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0CDFCD3440
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 14:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tSbj7MNHs5oIbvhkbDt7gmjRfN1TYRKJ5XG+MOoQxWY=; b=LWRTSbvyBLvrOTQdIzKbiZgtY0
	uwrwFlLXOYqysVsJnV7NtgT8zJZWNVMiw+4fMCTl1K7yDWI0aYxexfYY+7VRD7jDYwj8jINqjy0Hg
	c6sAlfF6f0ooztCAlOQaVhvbt5F93XAjHUwUEcNxYOfaf+3xvam/3HBDSgzTdxcPTVlKIFau4n1fw
	AmY4DVwNDDOgdOUzCfd3TKoTjZL/07Xp6LW8sF+BPgprrKA6+CteHgDDny11tTaYjxRxrEYbbiKNy
	Kg8EW33tinQTFoudFHCH4IWtEoZdzEGtEz9Sx3IMixN3IpjIlBP9XSnkq6tVyOCkRplKCnmRctiwz
	e0bmfBQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdcs-00000001BTs-2Wk3;
	Wed, 06 May 2026 14:53:26 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdcr-00000001BSE-2KsB
	for linux-rockchip@lists.infradead.org;
	Wed, 06 May 2026 14:53:25 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-44b052142e1so2831726f8f.1
        for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2026 07:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778079204; x=1778684004; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hpSjTagPhl7VYCNjsjMoXdAj9yIuGfraDWHI738kHCI=;
        b=dPkszWCv/9wKUzcafLnh14VeBkrPI7IF49vAAgeunmgMBH0UQFYm9lyE3zle8lO7h0
         5jdybIvCTnTemB3H+MG9bbm9j6Ntj6Qg4fnRMIq42/MhMH9GnSvtqafarCnte284q/qr
         mapafzoxGTGbmg0blZKhFjNdDBATcqdrdFqOERAtfRllgudoBA+sRDQpoeK3jZICnVTH
         MR7qiH7Zvv5BL5HF//9VzFOo8a/tlCtdRdR5HoTmWcyn11Cjg93QcJbTGm0jDEKqM1kM
         XRN83iX81BvG8wKx73d9yjeWbm2avbjgjopVuS1nG1WisoijP2barytRuFOX/okSjVsH
         QIqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778079204; x=1778684004;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hpSjTagPhl7VYCNjsjMoXdAj9yIuGfraDWHI738kHCI=;
        b=AHfPz8Ckc5pxpuygMOiQlmaN4c1DzESKmO0pUGuwFU7KNf/cuCK3tq1Mz0wEFuMIXi
         IKt3Tjh0GvwgDSxeANRBwD2xfecOCZn93XqL5hbkVF1sWvCq0xRkNOySTaSmLR15N2WI
         e3LA3b0g/I9icefobuutIHcEevMHoX/h9xRRp7AzHihiGuv+ZEnVD87KxiPebe6q6e4W
         eaB6RWJ6OsyUYLRuRY+ztStJc+zCuKvdPZUhDqso7jXtvqgFDB8Qq/SywOrAtAzBjyTK
         DdakmIAZ6uPeR2kBFnRRxlAWhQqyUFyU97XM4uXheqGKeFcd6rd/b9gRrF5VmlL5HJ47
         iRYw==
X-Forwarded-Encrypted: i=1; AFNElJ/sHxz8yOckkwJfb9HPXhXFIKtBusWU1mV8wy2LRXsfJ+0q4w82bAvFYT1FcEuPQ0nSIviZGTxrxQIIPdvdog==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+zwg2MLBcg6A056Ik8eD+PZUoof3D2YksLZe448zC+hsywx9t
	0kjtjEkvhvmvh9VdqFomUtDxwQp3UQJEVK+TrOSemvn6spCiigN0cYSTtF5vjNvcpAQ=
X-Gm-Gg: AeBDieuow4QErWzgKwHj1FqtoU/xNfSmzEqwl7G8rER41mwasfE7r5yKNsntQ4atlvp
	YKVvGNQLv9X27tvg90e5m88KcoUfRMmIYP2YMnyWbF2rTq3mPyZpb8GbOy/pb+NR4DGY3ZiteQx
	TtglvHc0BKRgwamjuWDMkYggDdS236T/EPD12Y0d7Pj+KL15VZY+jgC9uhL+VAZEwHEWZzlUzgy
	Cp+/R6sRZY1ogn9Ya1ykk0WH+/Y1Ma9cx/JGqPctQ9qFgagx5W7Bv1hLRo6TyLwHLaR9F1nGMIY
	6DGRPMxDBGbCb6njpUmKv9NJJpGZI8xVZwmPDMVe9C+MyhChU8eNYYSuDFN3mu4jCulK9Cv8P62
	XURhNn6dQG2KtVaq9qnrPwAJR59mK0oE1IAoRx8MAqrE3qokG24EffON4kcxL+Q8Iv6XY+F+/Pz
	yQmsBAVF6VN55LggXdCFWmkuhy1JaGPjxC8kOzGnT4aRntzhsxEhLy5A4LZ1M5wZ+f72ql4R+qS
	uxqY4AvMRoix24syg==
X-Received: by 2002:a05:600c:1c0f:b0:48a:5342:36b5 with SMTP id 5b1f17b1804b1-48e51f3deddmr72610725e9.21.1778079203544;
        Wed, 06 May 2026 07:53:23 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e530a68aesm28180715e9.1.2026.05.06.07.53.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:53:22 -0700 (PDT)
Message-ID: <40518e75-fea1-4367-a47a-024cf115bd12@linaro.org>
Date: Wed, 6 May 2026 16:53:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 08/16] phy: rockchip: usbdp: Rename DP lane functions
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
 <20260428-rockchip-usbdp-cleanup-v4-8-7775671ece22@collabora.com>
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
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-8-7775671ece22@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_075325_636487_D8C2FF88 
X-CRM114-Status: GOOD (  15.04  )
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
> The common prefix for DisplayPort related functions is rk_udphy_dp_
> (with a final _), so update the two DP lane functions to follow that
> scheme.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-usbdp.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index bf8394174294..6d7ca11b308e 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -547,7 +547,7 @@ static void rk_udphy_usb_bvalid_enable(struct rk_udphy *udphy, u8 enable)
>    * ---------------------------------------------------------------------------
>    */
>   
> -static void rk_udphy_dplane_select(struct rk_udphy *udphy)
> +static void rk_udphy_dp_lane_select(struct rk_udphy *udphy)
>   {
>   	const struct rk_udphy_cfg *cfg = udphy->cfgs;
>   	u32 value = 0;
> @@ -576,7 +576,7 @@ static void rk_udphy_dplane_select(struct rk_udphy *udphy)
>   		     FIELD_PREP(DP_AUX_DOUT_SEL, udphy->dp_aux_dout_sel) | value);
>   }
>   
> -static void rk_udphy_dplane_enable(struct rk_udphy *udphy, int dp_lanes)
> +static void rk_udphy_dp_lane_enable(struct rk_udphy *udphy, int dp_lanes)
>   {
>   	u32 val = 0;
>   	int i;
> @@ -1072,9 +1072,9 @@ static int rk_udphy_dp_phy_power_on(struct phy *phy)
>   	if (ret)
>   		goto unlock;
>   
> -	rk_udphy_dplane_enable(udphy, udphy->dp_lanes);
> +	rk_udphy_dp_lane_enable(udphy, udphy->dp_lanes);
>   
> -	rk_udphy_dplane_select(udphy);
> +	rk_udphy_dp_lane_select(udphy);
>   
>   unlock:
>   	mutex_unlock(&udphy->mutex);
> @@ -1092,7 +1092,7 @@ static int rk_udphy_dp_phy_power_off(struct phy *phy)
>   	struct rk_udphy *udphy = phy_get_drvdata(phy);
>   
>   	mutex_lock(&udphy->mutex);
> -	rk_udphy_dplane_enable(udphy, 0);
> +	rk_udphy_dp_lane_enable(udphy, 0);
>   	rk_udphy_power_off(udphy, UDPHY_MODE_DP);
>   	mutex_unlock(&udphy->mutex);
>   
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
