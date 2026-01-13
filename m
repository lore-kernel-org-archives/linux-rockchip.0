Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4C6FD29DE4
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 08:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qiq10A4NoKBHcs5CjAL+ElCJnQnhkdCO1HQ+nTBoAD0=; b=r2XFn746dhlb4rHE2raulsjXUE
	MqeD2d+Q5kuxIOJg+3adcRB+pT7760ihPrxeGlVmzemWzt3Jsg06iIae4zm4TwxPZx5nVWXtRYoXh
	dAbSvr4rHDMH0T9q9sF2SVxNcZF0tn6xF/0iHeMWd1TTeUVRGIujJ9lUtKU82twSqFpxmoVR+UwTr
	j3vQ8bwuwRQqFft4KAu+XByAHVNOAjRo5xKAicXAvr0S0sx02bBGlubV1aPTSN+LJCLsI+rGr5MvQ
	ILamKtQPOn66my5NsLR5x1czE+VKj9edN8vN6Hn3zHmXcauOffM8aiajIrQFW04f3uYKmGm0PAxHH
	U9EIK/aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZWh-00000006iS1-2xDS;
	Tue, 13 Jan 2026 08:13:19 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZWc-00000006iQI-2zam
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 08:13:16 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-47774d3536dso52507905e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Jan 2026 00:13:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768291993; x=1768896793; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1mR25HREBGLu0uxiDk/Wk1hfEZP7iw5HJ5+Ly8j4Vgk=;
        b=VSNxDNx3nn2ogJ8N+baXacYpV27NMC6Re1aYfe0O/NormMFyWMGavINAkb6cWPVaAd
         7tlEJMnPYtxzRbf7H6WY48mGHcFvF9I9emLxy1X4X2xKgbFIHHDU8+wUOSssylXEMeBF
         E6CSqIqYRUWTfiXBanTggPFkUPrrXVujPjSLAEB+Zvp208V8WQ8NwYEneg253P+AW+mA
         Gi8hJHLd3NAwTHaZwBT2fE36DZzRMDGfJSidJ2SjwfmoIJLM/zmXv3uMOiCuFMkONsbF
         2SgbzH1on+7XxYGR/uRQCbG6QagS4PC/22wX0yzoC3VwDZLR9J+DfoR7Ib2o4TAh6M40
         zeFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768291993; x=1768896793;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1mR25HREBGLu0uxiDk/Wk1hfEZP7iw5HJ5+Ly8j4Vgk=;
        b=d4DuiYslD0Y0Dq6zUmBXihPAqlwR5uny0Dv+04CyGa8wRBfxixNQzNKCsI1JyXAdt/
         pYZohaorlJaCTuzOuGbTfoaIQ/20EWxNbLhx5FRGzPK1U4iq8BsvGJBw45vlvrJJY5rk
         dfea9nC6e2zkDvcJrOYj76SKjtrcseEMwco/vFRMxLidq3xKmt4LuNzy5DEyz1oVUeRw
         h0j9Y+d5ri4LIpr8ih1nzLSpztrHVdwGA875K+bocnMZvwyUA+YqR+43C/7/qWAp1baR
         IDtg1af7CB8xRI35aS84Oq3ywSG7+sYwTnNylkkqdtLWhNGYvKdHziRxxO0S2jbcsGyA
         bhBA==
X-Forwarded-Encrypted: i=1; AJvYcCU/nj7lbOuyirOiturHRjzY2dOqeOMT4ObcSrLNs1nJvvqHzSJlsXQUdRmuhsevpUOOgQrtDSN52pRhe4UvJQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwOrnBgrxOQ8m5tepv7cl/6syUBnRzIEfOdoeq28CseWPz9SlUg
	gkGLUUPgkg8yITyT3qeRq6MIda4VdJcieT6KeGk4I+HdkNUDl7cNe4nL/EZGD+cxwT0=
X-Gm-Gg: AY/fxX4K4YnW2Lqv2a24rLsXGPVBuKagc0lSSmbu5Lp54rFsj6xuTD0Ga86EEcpnBAG
	o4dRT2Pbh5jeuDGeLkCXCk9l3NXfZs2rI6sqBlwGIaq5uintde34b5tR1jQ601bortiKtL1l2CY
	sQdRvtvNKYUMV1Mvq4f7n8wHLjVDws7cWGsYpsdSDxI4WyIPVliC8WQyOBFa1dT/JJU9BxcnXiQ
	inQEvvhbkLDigLcI0O/Pi0Rnbv/z+v7wEAPriBRstvrAEnA8NVKY0zflZHD3g1HtOwTXi30GeJ1
	Zp8J0PQGYBsn1sKI0wN94yFkN4GXqhFXTXdr/bKNYDeDNCt8IjRX934sL6adVw188BcOCGZ/EEY
	Vrrsp5z1mU0BI3rWsuk/ZakqTPPzvorVhG29p7zqmd7UUOr8Q0T9b1x2A2qHV7xqNRCGXonjZIj
	iX6w6Q9Kq/Uf2TAEJXKF88V7erfffvdLzNofmsMOpVvLD9AtW7Kg==
X-Google-Smtp-Source: AGHT+IEgcmY72rCqI7X0/U8zwBCvN2BlRfRJApLQbN0adnG2w5XdOoMooZI08ASkrAExinOsOkzGNQ==
X-Received: by 2002:a05:600c:3103:b0:477:a289:d854 with SMTP id 5b1f17b1804b1-47ed7c061f5mr28881005e9.5.1768291992907;
        Tue, 13 Jan 2026 00:13:12 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080::fa42:7768? ([2a01:e0a:3d9:2080::fa42:7768])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47edee4cbc2sm574315e9.4.2026.01.13.00.13.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 00:13:11 -0800 (PST)
Message-ID: <ea0a9ee9-3cb1-4d08-aa6f-91bb91bda816@linaro.org>
Date: Tue, 13 Jan 2026 09:13:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v6 02/11] phy: rockchip: samsung-hdptx: Use usleep_range()
 instead of udelay()
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20260113-phy-hdptx-frl-v6-0-8d5f97419c0b@collabora.com>
 <20260113-phy-hdptx-frl-v6-2-8d5f97419c0b@collabora.com>
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
In-Reply-To: <20260113-phy-hdptx-frl-v6-2-8d5f97419c0b@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_001314_772084_E40C4A5D 
X-CRM114-Status: GOOD (  12.49  )
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
> rk_hdptx_dp_reset() is allowed to sleep, hence replace the busy waiting
> with usleep_range(), to allow other threads to run.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index a65e96694237..89710066d70c 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -1042,7 +1042,7 @@ static void rk_hdptx_dp_reset(struct rk_hdptx_phy *hdptx)
>   	reset_control_assert(hdptx->rsts[RST_INIT].rstc);
>   
>   	reset_control_assert(hdptx->rsts[RST_APB].rstc);
> -	udelay(10);
> +	usleep_range(10, 15);
>   	reset_control_deassert(hdptx->rsts[RST_APB].rstc);
>   
>   	regmap_update_bits(hdptx->regmap, LANE_REG(0301),
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
