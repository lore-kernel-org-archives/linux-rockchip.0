Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 510BFD29DE4
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 08:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4uBKbCXIs+tkXVtrIshtBPpJBTRHjtRIzVT1wgHBBcw=; b=iGnnzA0UrugvI6qSOIXNDGBsPO
	UUnsyTvOV80jC6xZOn6eiTaYgxuLl/8nxOd2pgGQjgENJgVgWPMhaAtljpYaRMlqOg6SIMJ5T/yjb
	41idjG4hcZV/JKPsAYND3FsDKyJNjpHxBJk5IOiVizLLKuXjolws6HFIhXPeFmYTzGW76g/C4Mzfs
	loxhFHOxH86Z12xP13MOT74OAdb5kmGiKjve6U3dON8+sMpNWInLiSjz1DuLFVVWYkGvQDKi17mK+
	CnJYYOcZKEIc6uefJEFoZoh5MmxkM+yChmfo1+113OGnYREawc1o4Z2aQ3Xn1hqXG+Ha7piGq30gU
	iNIEdsyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZVU-00000006i4w-43zk;
	Tue, 13 Jan 2026 08:12:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZVR-00000006i2s-2mse
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 08:12:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id ffacd0b85a97d-4308d81fdf6so3737327f8f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Jan 2026 00:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768291920; x=1768896720; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0/MQilqGTab22ugg1CT5X4KmAKEpSnq+i+RZKZLJx6I=;
        b=xrerd7SOs+54/3fJp5P0hWG+NWb181dEaxyjyQVJSwiz8p6o+P4nkM62D1Q+1gUiVT
         jnDkj4KmOhT0XlLUITWAFVDbe3+SLE4gx7dH+j2V8t98vWMOjlmJvIg0XUy9FhZ5q7fi
         GJ8ToPQJlMaLY/lIR8RllxoWXToeHFrQU5x6GDGrojGPsPye2ejXLNgqrEkuE6CrmwnT
         I9bIMg/UmI1mtCKaTnSTKXd4htKYXceEqw6iotlk7SzEtq5Cir56hMvwpsHhdvegsPDp
         VibXDZPpFEzgj02tgqfonjD0A9hGZKKtB3/AJ+hnVqRq9KBNdrprIIojU4GUwv7MiRU5
         baWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768291920; x=1768896720;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0/MQilqGTab22ugg1CT5X4KmAKEpSnq+i+RZKZLJx6I=;
        b=sgt73iaHvlr7EYzlR7YLNCr93jMrzkWY+QY+eQFD5TLQNFD0oEa5yWX2iSrifouO2c
         f4C0AIOYj6KwONxREMZP/tkX6zOJ4N56DvF/0WdL+LwumKmv5dKklxNuGmPzjFENZj/N
         ZkV9d52bgyyAihiX+ggl6Ro2jSHn5FpnrozkoR1BI8C0mKOKKD6xsrkx6pkyvLTLJsyf
         cCqYXhcvGq4nKiNBQpsYooH0l9yha2r6qjtRWBlNzaB/SC72vQzBxOMX08EzMRpVbXZ1
         OLMezpjC3DzmUYg4+LnXNgAFEn+ZhqnKzg5B2zVp+WVQO49UODzPQc9f8z2cvdE/w7LN
         2Ojw==
X-Forwarded-Encrypted: i=1; AJvYcCVTm6IwapIIySarUIFDuQCc2NdJF0U3jA1DI4FEAumGG2NS++8uIYiz78eNg9GIWL0hlYrYfd6w+jx1UlkDlg==@lists.infradead.org
X-Gm-Message-State: AOJu0YykxGpMeRc3RO2U3QEO9RT+H2U5C5vP2oeeoZzRr4YHeXjR5et7
	FC+vk/OirrxQsiiV7rRs0b4Ci3xJIltH/JhaMstZC14+Ympq480qsPUAxvxk1z6pWOc=
X-Gm-Gg: AY/fxX7Iw6PSl0Ggu3Q7h90UYNA7H83xIMGFQojlc/Rfohu96rQ98v9VwUUbVJagqh8
	AE9PQoBSWH4wMQ4DjnJ7MHNMwxuAc9P/NBc+N/iC1DFpdfjFcIA+rfNHlAkjtRZH6pmWgVpcIkA
	xirzy0KLhVMinSqs3KQb3zd2sJ5BhgNDenJsZwrq0y0U4WfrQcwMMnTOiq733enIKoPctFGo5NC
	rVQU+A9yAREWfvvdHvDMSkPpR4U22J9C1fkMELdzH0d2qFzZQ+ffmmBZ2uEgQ/n6YwmoYT4xFrJ
	fp8QFTzdequXFFlx2NJyZuMlYbiay0QXrJWXxKtguPdZ25DFD7gmx08hlNX5vejtodvuGe3zpTH
	1uZ48nI5MGAcwZu490hQVgVu/kuQqnvqdDIUgr4qdIL7uyLrWjXyt4yjnDS89OlKM56s6fWrEo2
	6SAQDneyujlXoLHGL0d9tlbl3bObdCMJLYbEytMTw=
X-Google-Smtp-Source: AGHT+IF/E4DZmoNj85KKl/suQ05NfvV4pzSTyO36+Rt7tlIRyvZ+VngI5jHuau30KK8jUlb3532Tjw==
X-Received: by 2002:a05:6000:4013:b0:432:8585:6830 with SMTP id ffacd0b85a97d-432c3760f78mr24536676f8f.45.1768291919604;
        Tue, 13 Jan 2026 00:11:59 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080::fa42:7768? ([2a01:e0a:3d9:2080::fa42:7768])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dacd1sm42043981f8f.4.2026.01.13.00.11.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 00:11:55 -0800 (PST)
Message-ID: <bc3d3416-2f7c-4f4a-a90e-2b3d086ff568@linaro.org>
Date: Tue, 13 Jan 2026 09:11:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v6 03/11] phy: rockchip: samsung-hdptx: Fix coding style
 alignment
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20260113-phy-hdptx-frl-v6-0-8d5f97419c0b@collabora.com>
 <20260113-phy-hdptx-frl-v6-3-8d5f97419c0b@collabora.com>
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
In-Reply-To: <20260113-phy-hdptx-frl-v6-3-8d5f97419c0b@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_001201_727417_1F234D7C 
X-CRM114-Status: GOOD (  11.42  )
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

On 1/13/26 00:20, Cristian Ciocaltea wrote:
> Handle a bunch of reported checkpatch.pl complaints:
> 
>    CHECK: Alignment should match open parenthesis
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index 89710066d70c..3f8a7f4f5cd8 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -1624,11 +1624,11 @@ static void rk_hdptx_phy_set_voltage(struct rk_hdptx_phy *hdptx,
>   		regmap_update_bits(hdptx->regmap, LANE_REG(030a) + offset,
>   				   LN_TX_JEQ_EVEN_CTRL_RBR_MASK,
>   				   FIELD_PREP(LN_TX_JEQ_EVEN_CTRL_RBR_MASK,
> -				   ctrl->tx_jeq_even_ctrl));
> +					      ctrl->tx_jeq_even_ctrl));
>   		regmap_update_bits(hdptx->regmap, LANE_REG(030c) + offset,
>   				   LN_TX_JEQ_ODD_CTRL_RBR_MASK,
>   				   FIELD_PREP(LN_TX_JEQ_ODD_CTRL_RBR_MASK,
> -				   ctrl->tx_jeq_odd_ctrl));
> +					      ctrl->tx_jeq_odd_ctrl));
>   		regmap_update_bits(hdptx->regmap, LANE_REG(0311) + offset,
>   				   LN_TX_SER_40BIT_EN_RBR_MASK,
>   				   FIELD_PREP(LN_TX_SER_40BIT_EN_RBR_MASK, 0x1));
> @@ -1638,11 +1638,11 @@ static void rk_hdptx_phy_set_voltage(struct rk_hdptx_phy *hdptx,
>   		regmap_update_bits(hdptx->regmap, LANE_REG(030b) + offset,
>   				   LN_TX_JEQ_EVEN_CTRL_HBR_MASK,
>   				   FIELD_PREP(LN_TX_JEQ_EVEN_CTRL_HBR_MASK,
> -				   ctrl->tx_jeq_even_ctrl));
> +					      ctrl->tx_jeq_even_ctrl));
>   		regmap_update_bits(hdptx->regmap, LANE_REG(030d) + offset,
>   				   LN_TX_JEQ_ODD_CTRL_HBR_MASK,
>   				   FIELD_PREP(LN_TX_JEQ_ODD_CTRL_HBR_MASK,
> -				   ctrl->tx_jeq_odd_ctrl));
> +					      ctrl->tx_jeq_odd_ctrl));
>   		regmap_update_bits(hdptx->regmap, LANE_REG(0311) + offset,
>   				   LN_TX_SER_40BIT_EN_HBR_MASK,
>   				   FIELD_PREP(LN_TX_SER_40BIT_EN_HBR_MASK, 0x1));
> @@ -1653,11 +1653,11 @@ static void rk_hdptx_phy_set_voltage(struct rk_hdptx_phy *hdptx,
>   		regmap_update_bits(hdptx->regmap, LANE_REG(030b) + offset,
>   				   LN_TX_JEQ_EVEN_CTRL_HBR2_MASK,
>   				   FIELD_PREP(LN_TX_JEQ_EVEN_CTRL_HBR2_MASK,
> -				   ctrl->tx_jeq_even_ctrl));
> +					      ctrl->tx_jeq_even_ctrl));
>   		regmap_update_bits(hdptx->regmap, LANE_REG(030d) + offset,
>   				   LN_TX_JEQ_ODD_CTRL_HBR2_MASK,
>   				   FIELD_PREP(LN_TX_JEQ_ODD_CTRL_HBR2_MASK,
> -				   ctrl->tx_jeq_odd_ctrl));
> +					      ctrl->tx_jeq_odd_ctrl));
>   		regmap_update_bits(hdptx->regmap, LANE_REG(0311) + offset,
>   				   LN_TX_SER_40BIT_EN_HBR2_MASK,
>   				   FIELD_PREP(LN_TX_SER_40BIT_EN_HBR2_MASK, 0x1));
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
