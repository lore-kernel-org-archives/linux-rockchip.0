Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28B4ACD343B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 14:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=25dUpz4NtsREu+n7CRw5JKKgD3gR0Sk58ABpoetQxgg=; b=NWPlAbtKEpRmTJ4gcz8TMUhbcZ
	8COUMkrDwDrHgqgIkcW7eHaaVfkqJj57dxmRZLy/aqg1apUS1ZQ381B9nh0K17MXTbhoGsMkc3wme
	cQn3CpdzoS8mY+nv2BN0crc7HGA4VsOlOgXoqUnp+1DV/581LfEhmf11wHjfA6MUaWtAj+Kiwl2eq
	zAZ5ZBol8b4t+46TH2Mcx/9dPJ1NDlMyYrL8lgJNzYjlimENox/a84xF3H0sJUo96vREmf6g+9kof
	CmnK+ic6fTz0JQMEbpG07MeBxBahgCkGmEkacXQUOEO9NASh45gqMm9kSayr2grhA88tfCOgS7Ebc
	IR/wKSMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdZk-00000001AJr-47nK;
	Wed, 06 May 2026 14:50:12 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdZj-00000001AH3-0eH4
	for linux-rockchip@lists.infradead.org;
	Wed, 06 May 2026 14:50:11 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-43d7e23defbso3740786f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2026 07:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778079009; x=1778683809; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iNlQdkQkqMvv6TX3zSIUZJDpuOz3OCXPy5mPofQZIh8=;
        b=Jc3qWrly5HyEB1u/s4K8gMGI5CxNvxZbHiMiw6PT+HMeVYbaauQdX1D1GMeYcvUp/7
         TwDH5JGEuCMZSB/5cKfIM7wVr/n1ogk11wDSdbUj6Z7xLYuQHqcvIwtX3mHJXCAnJNQn
         8KYWaKJc/aa34iOhAlCPmK3nQVm58P87d2xMZmGTmKeIfDBo8CauR4oEjX8Jgc9IksgA
         8uHwH0Ay49n0rcIs0DJPMIpL15Iq/YtLFTjjMTNAAx02Cr9qvqcAKSDPJfnRIImpJJAb
         TpAKWSgnT8D70aYmB9uwA/vTHJSc/95H67rHTNboPqrikMBSV1g5ynKf5V66WLFs1dyV
         uDKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778079009; x=1778683809;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iNlQdkQkqMvv6TX3zSIUZJDpuOz3OCXPy5mPofQZIh8=;
        b=M0NcFPYDhBdyLhZkWwXR8x5iBxK3ztoN5mWVLTtx8QdhVdhPRxaDG4v9Pq98ezOcNL
         jwAAqiI7fReICEvUx6sNrjyU2qVhEFuHQzUkEDuN9Uf5RB11iehhIt8xADGdjXaGn4q9
         UX5OQYaJ5q8oVZxsM48UpZOc7BOncvkKKt+9cUrnxJ5kOAO1xKsTjbX/EjZlK+u5aOAS
         5JFInVqonLW1YfnMUTRjQR6aMZJhHyeMCN1MczfHnSPwdledH7C+gDxD4D5UTeolW3lf
         1iOjdMzKtuzAmpGfu0LR9VHJWmNPUT7+NMphnTNgmbkuJMDmlG4YrloyhTCIXHH+SBKQ
         4ZGg==
X-Forwarded-Encrypted: i=1; AFNElJ+pp2cFLhHqJoe6EmMYy3sJ2il5tMDjBmAn/CQznD9+I3CNiFc11GIQDNdhHyYBJF8D34JRa3MXwzyII+eWBA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzYy/lv935FCK1/Kd+qSc/grwsloAPzXSPybGhb4gxuoWuWYfHy
	DJLcVdk52hSjRMTvL9dSH1VJpIPfEEVPE1c0h2aiAKCNNL+XCbneXp/njbtj5aS2ct1M9TerFp2
	JShU0
X-Gm-Gg: AeBDiesA3t6j1uP/bhntk5O8KcwYzNyryv2cFs+ieruk8cSc7yodJSwMeP8hqi2Xjs3
	fFsDMBtZqjn58LA4exQtwUOHEW2dz4n7FhOWli2yhwLXdZC77+yQzZa0/6iVArwoo0eIiDlNQyY
	WRYR3FnYmoS3E1Xu+bDskmvXceCcMX6g+coHq4urEcY1IyrOnDSHYwqunhtGguEBD56CUNxro4B
	CpHlUheOzvQGxpBEba6yu6p+RYjtekUs714NLF48E4MiTctn2KfunHRSMfP7QXmT+keZbyvKbnX
	1YZtVKwdjkgRD4s5I049hmuS/YkoREgRGJgTkGGrMsXTLS9hZdhF5CPK7yHPZdzzWS89vQUCne3
	7Tf4wnNM27TWnaazVGIBbrtd9/fZcSlAv05JP91y9j5tG/yaCFOGCp/lMqzkSzF/UG4cucxZguZ
	Jb8kKWMyjpfJ8yDjbn6AxdBFhPvririjGzVc0gm4sMFipvHRBoepHN+vZ888xcahHijXxJZ1Vpd
	59RSr19OmIyV/Lrdzh9IgeWYrnR
X-Received: by 2002:a05:6000:268a:b0:451:3b12:9bca with SMTP id ffacd0b85a97d-4515ce1cde3mr6569525f8f.25.1778079009130;
        Wed, 06 May 2026 07:50:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45052483166sm12894076f8f.7.2026.05.06.07.50.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:50:06 -0700 (PDT)
Message-ID: <7430e331-5bc4-4814-baf1-e87a9104045f@linaro.org>
Date: Wed, 6 May 2026 16:50:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 06/16] phy: rockchip: usbdp: Add missing mode_change
 update
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
 <20260428-rockchip-usbdp-cleanup-v4-6-7775671ece22@collabora.com>
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
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-6-7775671ece22@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_075011_228988_9BFC3B39 
X-CRM114-Status: GOOD (  18.12  )
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
> rk_udphy_set_typec_default_mapping() updates the available modes,
> but does not set the mode_change as required. This results in
> missing re-initialization and thus non-working DisplayPort.
> 
> Fix this issue by introducing a new helper to update the available
> modes.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-usbdp.c | 16 +++++++++++-----
>   1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index 97e53b933225..febc148a754e 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -619,6 +619,15 @@ static void rk_udphy_dp_hpd_event_trigger(struct rk_udphy *udphy, bool hpd)
>   	rk_udphy_grfreg_write(udphy->vogrf, &cfg->vogrfcfg[udphy->id].hpd_trigger, hpd);
>   }
>   
> +static void rk_udphy_mode_set(struct rk_udphy *udphy, u8 mode)
> +{
> +	if (udphy->mode == mode)
> +		return;
> +
> +	udphy->mode_change = true;
> +	udphy->mode = mode;
> +}
> +
>   static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
>   {
>   	if (udphy->flip) {
> @@ -649,7 +658,7 @@ static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
>   		gpiod_set_value_cansleep(udphy->sbu2_dc_gpio, 1);
>   	}
>   
> -	udphy->mode = UDPHY_MODE_DP_USB;
> +	rk_udphy_mode_set(udphy, UDPHY_MODE_DP_USB);
>   }
>   
>   static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
> @@ -1385,10 +1394,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
>   			usleep_range(750, 800);
>   			rk_udphy_dp_hpd_event_trigger(udphy, true);
>   		} else if (data->status & DP_STATUS_HPD_STATE) {
> -			if (udphy->mode != mode) {
> -				udphy->mode = mode;
> -				udphy->mode_change = true;
> -			}
> +			rk_udphy_mode_set(udphy, mode);
>   			rk_udphy_dp_hpd_event_trigger(udphy, true);
>   		} else {
>   			rk_udphy_dp_hpd_event_trigger(udphy, false);
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
