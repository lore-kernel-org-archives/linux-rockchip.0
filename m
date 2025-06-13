Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27D51C61DB2
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 08:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ctfPSG3BHU+sapB31nQ1iDMYQWY0I5PxpG55AXlSMMU=; b=LHOzCS84Ufy2i4jTHnk8eAhhrj
	a2EBlcHhUIf0kKKSA1q69Y5zWApS5zC3DYnVHPF08hl42869RXl0macXyZrtRFUdIP7qdM+y4CwGE
	4HaHXe6pXSwjzxZNAdoHVHbXQVxsj+odli188ke7USVQhEGgYWkxoSWxqeWA8N10Z4WvbP/55W8Ny
	JuLchBge+PzK0PO0MfJjVvvTpoya/l/G4iszsUwJnkMo0jFrMZ+g5kaPSPaH+GXfST2zWPTHjaVT1
	gTjvf0Sw0lwqpUm7bt+Wxc7B4Rj/PVr2vz93vKAuYkLTL8PBA28EIsyvMtYDLNAkWS3gzoxcB3cA0
	UU8k1Ytw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0Ai-0000000Foz5-0PI4;
	Fri, 13 Jun 2025 08:54:00 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ08P-0000000FoWe-1eNh
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Jun 2025 08:51:39 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-442e9c00bf4so15469895e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Jun 2025 01:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749804695; x=1750409495; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4i/uycGc9IMJTkT+aPn3NiUgZauSdlLEx0uEl81rWwk=;
        b=Ic3Ud6i1jJL0fK0Tvbn/Su7hJCJ0AbVYYFWHk2lCshAkntiGq8mVJeiKxXgOwQbDEp
         ACt6ExCyYU2Me2AL1YyjNMABHwdt3IqZwel/VjvNk/v7VUH6Di9NsD1qWlM274WjsKde
         lBf6jro+bxSoEWXisLsHuKEaCq8gTBPkFBav9vkbiComqG/CuV7UX2KUh8VIbAr9KSLK
         X2Ykh8Mlevvi+sFxGqKndLKvPynya+jNFPAK0CaeAENSR/AyGL+sXl/FBQYmfMJI/xFJ
         SnPT+lDeGfcHn79SPWxfxOA4N88Op95kOoGZD/VCaKU4tP8TxI+s37ii2KkGBBUurk9t
         2CAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749804695; x=1750409495;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4i/uycGc9IMJTkT+aPn3NiUgZauSdlLEx0uEl81rWwk=;
        b=niqkoLCfpsySDnE2WB44m1+LScX58XkeM/mSrb9gpJYA/gaSl3PXXZKPiX8wQRJb5l
         AqwooJwkZ/Qn6sKHia2LtaDzUtvscSs9z0ejBgAZbPDSe27C8NEFzV/LHyRpXa9Dgbea
         PmWx6bHHcGreWQ47kQ79pVgBxpSLDRvrSSLDDPatBAQ+YiEDp9F82GDhu4d1xBjq48It
         sKQqUbP/yOiE1xuuHTOQvRqobPZSZ9EHXTRDTylrzaEURelnTDRSLwpgDprzYTjSekoq
         g5qp8FufvCghBksHRBqZYbJ0BByjF0xi/JkdLbrkS2t+YOf1cp9qNktVUBSn9vdZDHrv
         tPKw==
X-Forwarded-Encrypted: i=1; AJvYcCUSo2juXJVxLOJI2vx41Asc2e0pYbeGsELpJE8aE0EvpIjyDw+qmkLyPxerDncttwow8IkX2sdIzVhLONfSYg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxYyKb8mcFbVolwvluIz5fLwBNwzxmhjaqjcsYsnsmcWN/4N67Q
	q1N/Iq+ijpO8zC27fbnHwjB5pLmgCGV8T1NuN1WZIn2Ea+wCiNUtGgFoac7hXgh+q0M=
X-Gm-Gg: ASbGnctJD/qIWATabjuYFQJWT0rqWgVedJclei0viwxDfF9epLlCATGtmPrDJWtaBg/
	O2blMkZSFc+hRgHQnu10cQ84H85WcNzYZ7oUb/kNYZO27extWRke3xeZuB8gMeWntPtjPUQjqH9
	nvREcLtcdjXQ9QivP3Ox6w+hlbNwCfDldMQ68nsHDlydcV4tFptW+MyP6O1yDOwuRc0OLvJ7kZi
	Y1sDWY3MZ3/tTXcYylaDtg99ygQXYiU5KHxR+QfGC0t6vWq1wPPM8kOJAaebwYsMQHGwJp41RDK
	knl8tH/VeUWNgOhbevusTyOAHnT/MwLd2D3OkXBVlGkeXJwFmbbx2GNKS5fpgyf7pUYGQMd1SmM
	JtaYBWVy+KVyr9aXnd3NJJuHh1J3zm/dwjAKNzdA=
X-Google-Smtp-Source: AGHT+IEUAqqXCa6QukFfprZqmstdAPX/2X+IrxwAqf6HoHLLDv2NyKBWx+d7mBvUd0+CFYb9GJHC/Q==
X-Received: by 2002:a05:6000:4313:b0:3a4:dc2a:924e with SMTP id ffacd0b85a97d-3a5686e4794mr1735144f8f.6.1749804694922;
        Fri, 13 Jun 2025 01:51:34 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:4144:6a84:fe1d:3aae? ([2a01:e0a:3d9:2080:4144:6a84:fe1d:3aae])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a54a63sm1721189f8f.11.2025.06.13.01.51.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 01:51:34 -0700 (PDT)
Message-ID: <e0ce89fd-456d-4ef2-bf8a-0ea0f1e646ef@linaro.org>
Date: Fri, 13 Jun 2025 10:51:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v4 2/4] phy: rockchip: usbdp: move orientation handling
 further down
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>
Cc: Alexey Charkov <alchark@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250610-rk3576-sige5-usb-v4-0-7e7f779619c1@collabora.com>
 <20250610-rk3576-sige5-usb-v4-2-7e7f779619c1@collabora.com>
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
In-Reply-To: <20250610-rk3576-sige5-usb-v4-2-7e7f779619c1@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_015137_426054_19533055 
X-CRM114-Status: GOOD (  18.51  )
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

On 10/06/2025 16:07, Nicolas Frattaroli wrote:
> The orientation handling code isn't referenced until very far down the
> driver code.
> 
> Move it down some ways so it can later reference other driver functions
> without needing forward declarations.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-usbdp.c | 100 +++++++++++++++---------------
>   1 file changed, 50 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index c066cc0a7b4f10fc3cd8779323c369360893520d..fff54900feea601c8fe6bf4c7123dfebc5661a15 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -651,56 +651,6 @@ static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
>   	udphy->mode = UDPHY_MODE_DP_USB;
>   }
>   
> -static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
> -				 enum typec_orientation orien)
> -{
> -	struct rk_udphy *udphy = typec_switch_get_drvdata(sw);
> -
> -	mutex_lock(&udphy->mutex);
> -
> -	if (orien == TYPEC_ORIENTATION_NONE) {
> -		gpiod_set_value_cansleep(udphy->sbu1_dc_gpio, 0);
> -		gpiod_set_value_cansleep(udphy->sbu2_dc_gpio, 0);
> -		/* unattached */
> -		rk_udphy_usb_bvalid_enable(udphy, false);
> -		goto unlock_ret;
> -	}
> -
> -	udphy->flip = (orien == TYPEC_ORIENTATION_REVERSE) ? true : false;
> -	rk_udphy_set_typec_default_mapping(udphy);
> -	rk_udphy_usb_bvalid_enable(udphy, true);
> -
> -unlock_ret:
> -	mutex_unlock(&udphy->mutex);
> -	return 0;
> -}
> -
> -static void rk_udphy_orien_switch_unregister(void *data)
> -{
> -	struct rk_udphy *udphy = data;
> -
> -	typec_switch_unregister(udphy->sw);
> -}
> -
> -static int rk_udphy_setup_orien_switch(struct rk_udphy *udphy)
> -{
> -	struct typec_switch_desc sw_desc = { };
> -
> -	sw_desc.drvdata = udphy;
> -	sw_desc.fwnode = dev_fwnode(udphy->dev);
> -	sw_desc.set = rk_udphy_orien_sw_set;
> -
> -	udphy->sw = typec_switch_register(udphy->dev, &sw_desc);
> -	if (IS_ERR(udphy->sw)) {
> -		dev_err(udphy->dev, "Error register typec orientation switch: %ld\n",
> -			PTR_ERR(udphy->sw));
> -		return PTR_ERR(udphy->sw);
> -	}
> -
> -	return devm_add_action_or_reset(udphy->dev,
> -					rk_udphy_orien_switch_unregister, udphy);
> -}
> -
>   static int rk_udphy_refclk_set(struct rk_udphy *udphy)
>   {
>   	unsigned long rate;
> @@ -1451,6 +1401,56 @@ static struct phy *rk_udphy_phy_xlate(struct device *dev, const struct of_phandl
>   	return ERR_PTR(-EINVAL);
>   }
>   
> +static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
> +				 enum typec_orientation orien)
> +{
> +	struct rk_udphy *udphy = typec_switch_get_drvdata(sw);
> +
> +	mutex_lock(&udphy->mutex);
> +
> +	if (orien == TYPEC_ORIENTATION_NONE) {
> +		gpiod_set_value_cansleep(udphy->sbu1_dc_gpio, 0);
> +		gpiod_set_value_cansleep(udphy->sbu2_dc_gpio, 0);
> +		/* unattached */
> +		rk_udphy_usb_bvalid_enable(udphy, false);
> +		goto unlock_ret;
> +	}
> +
> +	udphy->flip = (orien == TYPEC_ORIENTATION_REVERSE) ? true : false;
> +	rk_udphy_set_typec_default_mapping(udphy);
> +	rk_udphy_usb_bvalid_enable(udphy, true);
> +
> +unlock_ret:
> +	mutex_unlock(&udphy->mutex);
> +	return 0;
> +}
> +
> +static void rk_udphy_orien_switch_unregister(void *data)
> +{
> +	struct rk_udphy *udphy = data;
> +
> +	typec_switch_unregister(udphy->sw);
> +}
> +
> +static int rk_udphy_setup_orien_switch(struct rk_udphy *udphy)
> +{
> +	struct typec_switch_desc sw_desc = { };
> +
> +	sw_desc.drvdata = udphy;
> +	sw_desc.fwnode = dev_fwnode(udphy->dev);
> +	sw_desc.set = rk_udphy_orien_sw_set;
> +
> +	udphy->sw = typec_switch_register(udphy->dev, &sw_desc);
> +	if (IS_ERR(udphy->sw)) {
> +		dev_err(udphy->dev, "Error register typec orientation switch: %ld\n",
> +			PTR_ERR(udphy->sw));
> +		return PTR_ERR(udphy->sw);
> +	}
> +
> +	return devm_add_action_or_reset(udphy->dev,
> +					rk_udphy_orien_switch_unregister, udphy);
> +}
> +
>   static int rk_udphy_probe(struct platform_device *pdev)
>   {
>   	struct device *dev = &pdev->dev;
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
