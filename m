Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73583CD4F3C
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 May 2026 07:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QnT+v6VpVU2Tj0aP0ovidU4+W7Vfg0k1niQOyN/taao=; b=zcTfGQc1mwepeyVO4+hBj0jYLi
	8MxHw8gC2xQTKfHfb1XjJhLCsp/5cCFvmB3ibI9D1H5fY6dsn1Wsyu9t/TDKQHsKXjK2PQjz+MldA
	NCif71mqJlJG9Q1pXAR3DrwkwsD14V5OhyTtbSqbcGw84hjOe8BgdJa+S97vIBHRqQm6V69KVfBbc
	uDvKR5XpOTJIb2MrtOZ75sKiBnQ/HgiUSbW2lHuNSn2kDeWfdV1iRgfw4lXmECuZEdQKD7r4tuENN
	wphcULei/btqCwN8BOqkgmDv5A1jTVkSUgkUP5+SvsS7R9S/nuEKuZ/IPgxTQtiTMS9XIRCr1yj2T
	rCoGk1kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEnS-00000000Toz-46fY;
	Tue, 19 May 2026 07:23:22 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEnP-00000000TmM-0Lct
	for linux-rockchip@lists.infradead.org;
	Tue, 19 May 2026 07:23:21 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-48a7fe4f40bso38918265e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 19 May 2026 00:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779175397; x=1779780197; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sfKsH9xwm+tQ3snlH8Sxro/uZ5qaHdIhEycOMeeCONk=;
        b=BdvnapbeLp0KU3On21Sj56eP3leMpN2hL7tc6pdk4XGpCc8tIHyjxXZC+Od/yEafC3
         DF5n0gfE4HI1/P1keL4tn8yAMZy3jG10bgo2My70nKNfxJiUDMn6zutFJAdJyzaNGpGJ
         CSrboVvg2je0p2mZI1aPG4k5qudmqvKt16FmK7zjNvM3DKxQBVnIiaN+mjTFqSQzllin
         k03/wSvGeSI7/DcyNSca3W2xzvyn87LBrpmkiyT1M+YN83QsWGDMTOdeHNiWCEx39Zg9
         5eBlgzS3u30A9651kUpztYghZNAE4Fxj+ExARchorqfUkVjVzlO1gY/CZTjwsTaYFL75
         GGFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779175397; x=1779780197;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sfKsH9xwm+tQ3snlH8Sxro/uZ5qaHdIhEycOMeeCONk=;
        b=LB4MXHR85KUnVA9VTqRWJBA7aLLOITncx+LoBKamCuLVj8w7sgf46zTO2I+JodKvCM
         nRG/DK4wAjtrKpIMJXmSBRUBunLbvUCe7vYf9Z+KWYYXbwxqCW1I1rKV2Jd1gdBX5bpn
         VikpjITrweqTY2TKTSsRbNEIOYe/6pMIcbZUKHLIHjPhDUp7h9llLssx2X6kfacBPJXO
         LdZzUBqYUOgG3RZ+xqnmxCe2YjU/toCTnpVRAZc1wd1WWEsKD536TNL7zxqx1SPdBsBx
         ITzUcpt9+DrIjJd9VJKgZdCLIHSIOIiosMg1cLYDWARFUy2SPZiKL89yf2KHDm3M70wM
         9K/Q==
X-Forwarded-Encrypted: i=1; AFNElJ+ov6SoesEogvY8Uc/IJS/rY72NhFMOJdbAmyay5gLk3Ig5Vo7xzMqQnnozfurY+0NjSy9aXcY3qTKWQpydlQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwkgXUcXNtBSYAz8WaegY54gfqFNY0xbZ4taY8m8BGk+ipqtLyU
	je9IBCBpdWHvU91gj2HaVu+UuVj9I4B2Lql8+sLMBtD83K7gedkjqoEwUIgIH/lFReIoiYwZGj+
	bDKbL
X-Gm-Gg: Acq92OHeisadf7HMIUax4H0tv1ZeqtlteNRkYmEq/2Y53RIR3QVpN1oToJuLVuuShD1
	FcI+/omvT1LEzXtxBEeLJlF97WdAxK8dDoLGGWDHSABxxZLf4Lxyb/9RwGCAcViivZXt49i+BZW
	N/6FrjkecRzzMl4A5RH1u2YKppPFhwbt9kug88x6R2iX7NhUK4TL84cBi9lXM1pxWZ8gDK8ntoZ
	uFzqP8sy2Ru79dmlYU81PT5COrG9rUn+RYU4E3g0OvZ+JCMHsmX6O/kBQ2mcSOIbEap7z6j87eQ
	wUvh3P6wcUphTdBz0b8wYoHoVTJ8Q6zJaInsJSU2BJSPIEy1v/BrCQFfWqaTzjMap0P4wkUw3q+
	hMC+KCMyGYw1WPj15I5DglzUlMYuMndFvG0NOM5rEtuyD1EacMJe6HLIBfkJK0RYwpEnnDw31NR
	ENtAU9sB6TAZEMAdvFXOd5DJUj3jL1AaNneBPNzhEKPja9ys4CFnCT6BSdDsicg48dbt83T56B+
	xDvkgxglxoC9t7ppQOypjsoVA==
X-Received: by 2002:a05:600c:4fc9:b0:48f:d612:3c40 with SMTP id 5b1f17b1804b1-48fe60e47bfmr256329325e9.7.1779175396985;
        Tue, 19 May 2026 00:23:16 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:1d4b:274c:94d:a69f? ([2a01:e0a:106d:1080:1d4b:274c:94d:a69f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da15a6449sm43240799f8f.37.2026.05.19.00.23.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2026 00:23:16 -0700 (PDT)
Message-ID: <77cff8e2-11a6-4fd0-ac02-7468441f7476@linaro.org>
Date: Tue, 19 May 2026 09:23:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 01/13] drm/meson: dw-hdmi: Report connector status based
 on HPD bit
To: Jonas Karlman <jonas@kwiboo.se>, Kevin Hilman <khilman@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20260518194744.2483580-1-jonas@kwiboo.se>
 <20260518194744.2483580-2-jonas@kwiboo.se>
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
In-Reply-To: <20260518194744.2483580-2-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_002319_159185_7253CDE1 
X-CRM114-Status: GOOD (  17.53  )
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

On 5/18/26 21:47, Jonas Karlman wrote:
> G12A added support for RX-SENSE, status for both HPD and RX-SENSE is
> reported in the TOP_STAT0 register.
> 
> Limit read_hpd() phy ops to only report connected status based on the
> HPD status bit in TOP_STAT0, to help ensure that EDID can be read from
> the sink in the connector detect() func.
> 
> Fixes: 3b7c1237a72a ("drm/meson: Add G12A support for the DW-HDMI Glue")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>   drivers/gpu/drm/meson/meson_dw_hdmi.c | 6 ++++--
>   drivers/gpu/drm/meson/meson_dw_hdmi.h | 3 +++
>   2 files changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> index 2a8756da569b..993f6d5d4b29 100644
> --- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
> +++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> @@ -457,9 +457,11 @@ static enum drm_connector_status dw_hdmi_read_hpd(struct dw_hdmi *hdmi,
>   			     void *data)
>   {
>   	struct meson_dw_hdmi *dw_hdmi = (struct meson_dw_hdmi *)data;
> +	unsigned int stat;
>   
> -	return !!dw_hdmi->data->top_read(dw_hdmi, HDMITX_TOP_STAT0) ?
> -		connector_status_connected : connector_status_disconnected;
> +	stat = dw_hdmi->data->top_read(dw_hdmi, HDMITX_TOP_STAT0);
> +	return stat & HDMITX_TOP_STAT0_HPD ? connector_status_connected :
> +					     connector_status_disconnected;
>   }
>   
>   static void dw_hdmi_setup_hpd(struct dw_hdmi *hdmi,
> diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.h b/drivers/gpu/drm/meson/meson_dw_hdmi.h
> index 08e1c14e4ea0..cb4616daf667 100644
> --- a/drivers/gpu/drm/meson/meson_dw_hdmi.h
> +++ b/drivers/gpu/drm/meson/meson_dw_hdmi.h
> @@ -157,4 +157,7 @@
>    */
>   #define HDMITX_TOP_STAT0                        (0x00E)
>   
> +#define HDMITX_TOP_STAT0_HPD		BIT(0)
> +#define HDMITX_TOP_STAT0_RXSENSE	BIT(1)
> +
>   #endif /* __MESON_DW_HDMI_H */

Thanks, pretty sure the RXSENSE needs some setup in the PHY to work
and Amlogic never enabled it, but this version is clearly better.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
