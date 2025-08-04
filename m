Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A84CC87FCB
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Aug 2025 15:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ni2PPkNIOyOaAqq1AucWeyeG3n/FW5hShwSMvxLehKc=; b=QAQVESijBY5DcXmMXWuIRH8It9
	RJAbZjptbLJfkxm2LPVvbEntqIdUp1HM3VCtkWIqu9YWBIvT07mUcQsiOy0aPZtPW4Z6hzgUbpjsz
	aGvwHDSR12El/jTysmSzczFQ3pjdlDfywL3iItRDsdca5iEjK5M9fF1ZfN2GvUf7xJOmeIa6ncZcM
	lYEiHGXXTYSC6Oyjk4xEuelHERCz/n/piVrfS02OUew40Xjv0IodMZgkI4aQVhaIXP2yElzuW7sw7
	C1BQzB/isyQtkSSVH02SuRzWMtTnvWnP1wdFAfaEkot2kjiydZaVb/sjDchx9WAGFRwMhT93XuLDa
	UUO539iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uixK6-0000000Ar21-2oSR;
	Mon, 04 Aug 2025 15:42:02 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwuZ-0000000AlA6-2Ak5
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Aug 2025 15:15:40 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-458b2d9dba5so17300975e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Aug 2025 08:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754320537; x=1754925337; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nJjeVcCtnXKnWhoVwXfMDE8hWmtcV5EpJXafPxt/CSU=;
        b=JySwR2msVJDusrZR+bssA93c7xe/Wnh3XOcC992OlkOnSz4KQjp9iiDXkjmPArGj9K
         Ew/CWvAn0AoiDH7LTpxpS50ilpyLULZbZkg/YF09NeXfH8F3zQsBgnk6prBwvmie2LzN
         4ArFJRkFfo39vfP6mYTwo+VLMt8AQC2ULmdoIwTvki2v68g3q3xM29ukMcFKg1cYgo4M
         JtKv+T8iQMCR9HB6TfsBv7w9BQ4e2B+oYlFgoD08TSdakug92PJVs+YVG+1+ggxbonXm
         hQJ0Rc9HqZ15ekmgJurAJ29Bghj8RjxJ7MYlo8zd8jmcDINRgA30cH15QCESuCToQSEJ
         Vr8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754320537; x=1754925337;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nJjeVcCtnXKnWhoVwXfMDE8hWmtcV5EpJXafPxt/CSU=;
        b=De+sUC+1/9Sf30xjb4EpjjkSYrarizgm6dqcCfbXzXBWldfq0JafX9+sFpRHegZBgO
         /FxpdD2/b4hVFiyubJ585nU0ipfRoNZtaeuLdSR6qEe3ThUK+v1JtcDxDkM8/Irb92+A
         baq0kxwIuvPZcraQUj7QPMmVR0nHW6aFvZeTjMNgsF5BuV3uXfqdO9FqvHqcnGB07csE
         PpwqVjrngEIFkXnOqwdO/feLF2UBWD8/kBYzWoWa3EqGRISSKTdtWFX3HIAOWR+xiEed
         50jQscx59GTBm0HHTu4fXZksNt5b/GixnTyLKUVfOAXXpplv8tYRwGB+hsT04jVgWcwJ
         pWng==
X-Forwarded-Encrypted: i=1; AJvYcCVcElHefR/jTYnClGuyTZGVNhUnCWMD+COhYvKic52vDbR4avoFD6XWVFc1Hu5eWKUGlAtts3/7rdKAL9YxvQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YysmoxJH0232UHip77XFPtbJKMXFHjKTOyPknzNpnaFyaNNd8mM
	CXlJ31nm/AiEYzQvCVn491OqxOiwz4Mk6xfeLfeuyBEg/Nv5yA7NWvOinOyA0vWrcY0=
X-Gm-Gg: ASbGnctJmx7HUzdQ1/wscztQiM7OAHei23kA6dkJXKnlpXMKL8DM/fur6lLL+9BBf7Y
	Gz+PF7OM1CUTF7dHqsrJPYrstqeoPHlXMsM0lSjGhaH7SrCKZ9q9ZU/b2asJcQRJlmPe1O0FHxf
	IS161vb5svknyHPDzoBVXmEKCitdaZF6/a5UL5jEo51AjwOsNlmB1GqocvcvQdrmt9PvWuratBc
	ClwXZtAH/BkpLUc/c9swfGhylDRHB63YWyYBbupL7ISo7okGrU3V366dAhS38OOeGR2Wxh4JG6M
	hfHVIAEhrPaY0dqiygqDJaHhrInRQKW+5lPEw1bA5DP0l/g8ymbike6idw+oMV5KQza86ooHFhS
	lfWrwldD04ZhDgZo4lgx0wpXPkUM7WX/6zTpTF4aYTJ5jIwTVOS9sWnlZc8i84OgMgoni0h+4/s
	Y=
X-Google-Smtp-Source: AGHT+IEETbK5B9R4l4zfHSKM2IatUBsewiluok9u8cat8QEYDfF7e+N5lM3tAMhEwAekOpfuhYvQ+A==
X-Received: by 2002:a05:600c:4ec6:b0:458:c059:7da0 with SMTP id 5b1f17b1804b1-458c0597f5bmr62093385e9.2.1754320537459;
        Mon, 04 Aug 2025 08:15:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:3030:f63e:fedd:700f? ([2a01:e0a:3d9:2080:3030:f63e:fedd:700f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589edf5638sm171780825e9.4.2025.08.04.08.15.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 08:15:37 -0700 (PDT)
Message-ID: <0a2963df-59a7-45a8-a74e-e6f4ff1f9868@linaro.org>
Date: Mon, 4 Aug 2025 17:15:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 01/13] drm/panel: ilitek-ili9881c: turn off power-supply
 when init fails
To: Heiko Stuebner <heiko@sntech.de>
References: <20250707164906.1445288-1-heiko@sntech.de>
 <20250707164906.1445288-2-heiko@sntech.de>
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
In-Reply-To: <20250707164906.1445288-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_081539_571039_E29E0BEE 
X-CRM114-Status: GOOD (  15.11  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com, mripard@kernel.org, andyshrk@163.com, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, tzimmermann@suse.de, andy.yan@rock-chips.com, quic_jesszhan@quicinc.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 07/07/2025 18:48, Heiko Stuebner wrote:
> The prepare function turns on the power-supply regulator first, when
> preparing the display. But in an error case, just returns the error
> code, but does not power off the regulator again, fix that.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>   drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 12 ++++++++----
>   1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> index 28cd7560e5db..d7a17dca2a9c 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> @@ -1292,7 +1292,7 @@ static int ili9881c_prepare(struct drm_panel *panel)
>   						      instr->arg.cmd.data);
>   
>   		if (ret)
> -			return ret;
> +			goto disable_power;
>   	}
>   
>   	ret = ili9881c_switch_page(ctx, 0);
> @@ -1304,18 +1304,22 @@ static int ili9881c_prepare(struct drm_panel *panel)
>   					 &ctx->address_mode,
>   					 sizeof(ctx->address_mode));
>   		if (ret < 0)
> -			return ret;
> +			goto disable_power;
>   	}
>   
>   	ret = mipi_dsi_dcs_set_tear_on(ctx->dsi, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
>   	if (ret)
> -		return ret;
> +		goto disable_power;
>   
>   	ret = mipi_dsi_dcs_exit_sleep_mode(ctx->dsi);
>   	if (ret)
> -		return ret;
> +		goto disable_power;
>   
>   	return 0;
> +
> +disable_power:
> +	regulator_disable(ctx->power);
> +	return ret;
>   }
>   
>   static int ili9881c_enable(struct drm_panel *panel)

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
