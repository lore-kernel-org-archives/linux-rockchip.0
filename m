Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F205C8302D
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 08:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mu5oyFMn+6bzn9Y4NE9Qg+l6m8xbxYWKX3PAs00QtYA=; b=QXhYWZ7R3A3ESQClUfvXFwuKbs
	HJ7F2bmyvacH+JmG1LD5Ab4F+vxDPvIXwQFdeH7GUMZVL8yXvCVPtQrrL+Cip9e88+wgTu76StNoU
	PmVPdZHAfi88wFQJmwSJy107LMYcfIBfB3YhRVRrHTpR1mH1U/60BwBq4YNO8NG+4dDJx9e7a361z
	p7zBWImouOJ8vRXxz9Zn+06tgnXk+PZBlTSJlO1MoxjQPQbWfkQegE+LbXF+GpeYhVhB5SLHNKAeM
	59RJCJ4Ww+ZbK0vb8ThD6uqfqicaFB/riWqfX1mX8zVtTaqY1Me2HPwpeIYKCoGcDF3JmWXVGsI4v
	biCwdF6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWAMK-00000001gcU-2mY9;
	Mon, 30 Jun 2025 08:59:28 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWADJ-00000001f5J-0yEs
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Jun 2025 08:50:10 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-451e2f0d9c2so28186915e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Jun 2025 01:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751273408; x=1751878208; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GB6kqlhEVlWK49BheheggyPQDPPVU2nVQPu/NkUByig=;
        b=Im3nHK3MH1gdm03Ko9ypiqQiwRV4K/9+q+yT2wkitR3eh6gda8KTJxGL+1g9B8vv4t
         kG07AFaipEWqXeFaOnDKy7ZSLyZRygXnywueNPdmou9swhuR/ukpNe0dmnOxuJFEdzOX
         25s2r5C7Afi7FKt2e2sjTSizbenbuz4zsDaBD8tZJgTo++AEmCNdfXNOrjusRnMuRqvv
         ZSLDrdzG6/gHTRcewLCIAauInzoC/9ldVLIcJdK7nJ+QHoNA7/XF6o9d864G9GoxV9UT
         h2QM+dPpdATm9p4bQt5BGi1RZmVzkwJBczACBwo7Ll4QLszFZch7tcE/ITNuzvK9H5G7
         mMAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751273408; x=1751878208;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GB6kqlhEVlWK49BheheggyPQDPPVU2nVQPu/NkUByig=;
        b=EYpeJxdyf6AZMKlsHLSV1z2Knp+d5bWdYauF5bMvSaVh/l//A3hI5x+1XJSUmZ03pW
         u+D6KSMfA7tyxH+ROff4yS+kX02wpVNG/dyIZ7kJRrtQXRu344zal2P1ac9lapbz/lvQ
         fn0YSR6HR9FDNhrhj2W8I44c3zq91ub+TDpIkm72/cwURUvhILmzYehmxDKZtEmZERQO
         MMcQAqXs7DFUN9MQ+kW6t1ZRCw4HhzgpoIACA6YsNc793Xzi73lh05713wTSNhnvA3Ep
         q9KOSMj4Tbhaslv2GrJjqyqZ5K/o7ZJwldQenwDpG8gcHVl5INLAu9MC3OLF+YOp+73H
         cBwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPeq1qsb8CyJqFtbQr9vRlXXKg0C/QOGDO9yjqR81tjMB6GiA9Tphyr3eAgmiwNzqGH/x646kZWvfMqhz2hQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwrLfUuLHQy743xtDvwaTIb/CcG3p2YtVTn0UHLE/5LktG3jVUN
	6zLamcJpXYtr8lr5c7p6/NJbnprOWprRNtl9FjF+FwiT64FEjHsRl0klzhxc4avPEy4=
X-Gm-Gg: ASbGnctVeZFLtgCtmoQjG0zDavrVVoZLwMAUqja+gO0rKg5MdpcZqxUU+BBNAc0ljBr
	K+60mTP9JeaKAnZ/rsBHBgP9E5wD9eAEu/whMhdx3QJ9dx/0NRJJvHBf09nYqTzPTjkTJgvc6hB
	/VveBOZyi3RVE/XQbeoIxyQ7/Pog8ngoJcCCQ4WCMwqCvMOreXKF4Tz8JsGfVn/vnqnkWdmrzno
	E/yPwzPIRh3aJBvT4HkDqDoxp9JH1M9BCpcegjfBA/Ab8+QPrWnwFNMDVdUpMDQnSMt1iT2t3JQ
	B9f9kyEcnbQKn9SyUT1aszFf4ISSZ7QyC4UObg/ddRheXqKHvnrzRm7g9BhjC/GQAU70VnBYgUL
	gakDZhrG0fyliitksOhdQHXq2sSsfUa9Lr3uunfE=
X-Google-Smtp-Source: AGHT+IFQAwSBLqR1ia3wYSYaqryv4RHVS3dP8SA58uVGB0hKz2a6J2muOxRZ3XU0t7/A8x0wCssU5g==
X-Received: by 2002:a05:600c:8184:b0:453:92e:a459 with SMTP id 5b1f17b1804b1-4538ad600f0mr146846295e9.16.1751273407684;
        Mon, 30 Jun 2025 01:50:07 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:abe8:a49c:efe7:4dfb? ([2a01:e0a:3d9:2080:abe8:a49c:efe7:4dfb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453941c67c2sm82419835e9.5.2025.06.30.01.50.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 01:50:07 -0700 (PDT)
Message-ID: <a4b5fb4d-27c5-43df-8fa1-f3b92257e6d6@linaro.org>
Date: Mon, 30 Jun 2025 10:49:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v7 3/4] phy: rockchip-pcie: Enable all four lanes if
 required
To: Geraldo Nascimento <geraldogabriel@gmail.com>,
 linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rick wertenbroek <rick.wertenbroek@gmail.com>,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1751200382.git.geraldogabriel@gmail.com>
 <b203b067e369411b029039f96cfeae300874b4c7.1751200382.git.geraldogabriel@gmail.com>
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
In-Reply-To: <b203b067e369411b029039f96cfeae300874b4c7.1751200382.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_015009_286035_75CE6212 
X-CRM114-Status: GOOD (  13.96  )
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

On 29/06/2025 22:58, Geraldo Nascimento wrote:
> Current code enables only Lane 0 because pwr_cnt will be incremented on
> first call to the function. Let's reorder the enablement code to enable
> all 4 lanes through GRF.
> 
> Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-pcie.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
> index bd44af36c67a..f22ffb41cdc2 100644
> --- a/drivers/phy/rockchip/phy-rockchip-pcie.c
> +++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
> @@ -160,6 +160,12 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
>   
>   	guard(mutex)(&rk_phy->pcie_mutex);
>   
> +	regmap_write(rk_phy->reg_base,
> +		     rk_phy->phy_data->pcie_laneoff,
> +		     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
> +				   PHY_LANE_IDLE_MASK,
> +				   PHY_LANE_IDLE_A_SHIFT + inst->index));
> +
>   	if (rk_phy->pwr_cnt++) {
>   		return 0;
>   	}
> @@ -176,12 +182,6 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
>   				   PHY_CFG_ADDR_MASK,
>   				   PHY_CFG_ADDR_SHIFT));
>   
> -	regmap_write(rk_phy->reg_base,
> -		     rk_phy->phy_data->pcie_laneoff,
> -		     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
> -				   PHY_LANE_IDLE_MASK,
> -				   PHY_LANE_IDLE_A_SHIFT + inst->index));
> -
>   	/*
>   	 * No documented timeout value for phy operation below,
>   	 * so we make it large enough here. And we use loop-break

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
