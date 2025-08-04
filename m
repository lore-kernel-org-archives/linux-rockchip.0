Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52E10C87FCF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Aug 2025 15:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YzPUtEUklZ6hSC5mdg6I1PwFmMELiJFzt8ZH/cy6O1Y=; b=MwOpuyUpjArvCnHEpNLZQ7nlnD
	9ZAkDjjCjNT+amq2Zrk0jhwfragaDCC3ywiLiNAJMZifDngTCOU1y/T/zAfEdynHuQUKyUnrXSTv3
	CulVf02ikL8yO/hkP9ZqLxQP+dystmxMMRGafmczoMAIVVGu4kdnVPJQGPJf7pkrANJ26T9z6H/uA
	XS9FwCw8MC7PT5Pxk+5McplCfl4VnQ94sY9TLsn3vf7vOT4st0cIBcM+g+NVUqDU4/VBpuXzsQZ51
	N7uhxovUFwov2Fm2Qo3tFG8t4SRQpmEu++5yCpbjaOhS8/bXMF2o5xAK+b4/dPqadIPYs7QBL0vaj
	Kcp7NBsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uixRj-0000000AsXR-1MH2;
	Mon, 04 Aug 2025 15:49:55 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwvE-0000000AlIx-3vHr
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Aug 2025 15:16:22 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4563cfac19cso46554885e9.2
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Aug 2025 08:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754320579; x=1754925379; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ifdQYtMoMbUhaDaLztKpCS+6vqQS+9SK4PGyB6S6f3U=;
        b=ObRtLnxpVzM2IlW/wnW8D6ebCwr2hguitiI2k6Vv3RhNk6ioHkUCnLa3sSdzM39Qsx
         BmT/5DmagrSlJHT6iIrD/V+/XIqmalrapaWCzM/7QJ9i3pUOM7t8A+j+1yZmnnuzkJGI
         QPaWWUzX5rvr+aS8xzGCW4GhgH7vVel6QytcGZsYfj+e46UCTYe+1ceSZdY//BFh+FOV
         fWkYY99yL/jx8Zbep8PS0d3wtDeog6tVTJT5X4djT/1FWPBpxMsatOJ72pEeV8Mpfgoh
         wavAY41/8YKEqEdQYezZRwvTvJ2SGBAnDrIyakrd03Kz6viMzb0kg8mfO6tGWsr7tQ2D
         LehQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754320579; x=1754925379;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ifdQYtMoMbUhaDaLztKpCS+6vqQS+9SK4PGyB6S6f3U=;
        b=EFM2Mkg0XEYc0rE1uO1WYPLiF/Tt7pf2cYpCq/KEBotFYQ+VV2nYbU5EPfcWxKFL2F
         dLEp7yPVweyZ4jY9bmXqKXq4KwmHNcvK7h7u+nR1MzbY2UHaErKBiDT6pTFyTkfLrGFk
         okytjFaikhzKhhLLwb6VzEA3lVSMSarAAOLxifwXU1y34V/QbIbIAJ8vqE3QXB0udYFf
         7NX+ZdOw8IJmSOOYSDqUmIj9dqQdP1q2PlXeJUfhrXDOHHySFcGJ8lz7qP6n2ZnvFKmA
         EFDexwgazjqWsNwHpg/37PYFw/mcApp7LA/nxV+kSgB4mAL2PxGwoJp/c08wCxqYrzF+
         usrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHAjmUHMAEauoBF46mRBx+Z+JSr61molwFfy1tubwwzCMYprp1vWBe76ea4Tvva/NMM1yw+fMOFI2OC2K7Jw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzgT/LPcOstXvcyIrE/F81FGx/fataYn5XNqORZ8OX0wfM/2SkA
	Q8oLC2IdyCFXQBH4ghd+zydHksLQaMwpyMGFqomdLaVKUw3y7vMHm1E7hoziUT4tHAo=
X-Gm-Gg: ASbGncuSh+lNsFqoPlaFZ9nrqyeINF2SEsWN/SKZay5LIg0oF3QNn0vgLt+GlVr1bsA
	5KhBtBRaOh17Ghb/knOxFILkQL9w/XYgMv2um3CA426ydzns1W8fju9qPJBuhfONhi+4ze01C6t
	YOMicGXQ54USRIAwqbwwkhqonZt9+DpkgDlvxVXMG7UdEbIu/XzKaVLS+tR6PZCUJBBeyfYYE8Q
	08bHb6vbBYDAqE4kXoqrZRSZLEk9PDp84D1a6+cFuO/v4cxBHw8Eg5LM2d0bTOiVXZy0UASwZBW
	yB0QZaChykP5+BQnGCTGXeT5GZxck5K6lNYG+E0qfX1RrPRly8I/1J54Q7YBKbwEA5MlPcVs/OI
	hxhPSveqPJRJyT/qNgAeQocnzQSQoWoKvdiYAran8ht+pU1ESKeEVo+Xx4HoSbH2vUtSMnFdKV2
	Q=
X-Google-Smtp-Source: AGHT+IHPPDD9D0qxXu9jHrNySpU2UAtNfOEP8mZOWyrtTy6JCiloSri0pkmDPr9668JfOlIhW9A5cA==
X-Received: by 2002:a05:6000:2881:b0:3b7:8146:4642 with SMTP id ffacd0b85a97d-3b8d9472439mr6472193f8f.20.1754320579282;
        Mon, 04 Aug 2025 08:16:19 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:3030:f63e:fedd:700f? ([2a01:e0a:3d9:2080:3030:f63e:fedd:700f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458b73868a4sm99448145e9.11.2025.08.04.08.16.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 08:16:18 -0700 (PDT)
Message-ID: <a8c59d2c-4c4f-4eb8-a371-03c1169c479e@linaro.org>
Date: Mon, 4 Aug 2025 17:16:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 03/13] drm/panel: ilitek-ili9881c: convert (un-)prepare to
 mipi_dsi_multi_context
To: Heiko Stuebner <heiko@sntech.de>
References: <20250707164906.1445288-1-heiko@sntech.de>
 <20250707164906.1445288-4-heiko@sntech.de>
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
In-Reply-To: <20250707164906.1445288-4-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_081620_979905_E6F1D11D 
X-CRM114-Status: GOOD (  20.31  )
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
> This saves some lines for error handling.
> 
> For the address mode change, that value is always an u8, so switching
> to dcs_write_buffer function should be appropriate.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>   drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 66 ++++++-------------
>   1 file changed, 21 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> index a20b52181ea0..154eea5f4d77 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> @@ -1239,33 +1239,24 @@ static inline struct ili9881c *panel_to_ili9881c(struct drm_panel *panel)
>    * So before any attempt at sending a command or data, we have to be
>    * sure if we're in the right page or not.
>    */
> -static int ili9881c_switch_page(struct ili9881c *ctx, u8 page)
> +static void ili9881c_switch_page(struct mipi_dsi_multi_context *mctx, u8 page)
>   {
>   	u8 buf[4] = { 0xff, 0x98, 0x81, page };
> -	int ret;
> -
> -	ret = mipi_dsi_dcs_write_buffer(ctx->dsi, buf, sizeof(buf));
> -	if (ret < 0)
> -		return ret;
>   
> -	return 0;
> +	mipi_dsi_dcs_write_buffer_multi(mctx, buf, sizeof(buf));
>   }
>   
> -static int ili9881c_send_cmd_data(struct ili9881c *ctx, u8 cmd, u8 data)
> +static void ili9881c_send_cmd_data(struct mipi_dsi_multi_context *mctx, u8 cmd, u8 data)
>   {
>   	u8 buf[2] = { cmd, data };
> -	int ret;
>   
> -	ret = mipi_dsi_dcs_write_buffer(ctx->dsi, buf, sizeof(buf));
> -	if (ret < 0)
> -		return ret;
> -
> -	return 0;
> +	mipi_dsi_dcs_write_buffer_multi(mctx, buf, sizeof(buf));
>   }
>   
>   static int ili9881c_prepare(struct drm_panel *panel)
>   {
>   	struct ili9881c *ctx = panel_to_ili9881c(panel);
> +	struct mipi_dsi_multi_context mctx = { .dsi = ctx->dsi };
>   	unsigned int i;
>   	int ret;
>   
> @@ -1286,54 +1277,39 @@ static int ili9881c_prepare(struct drm_panel *panel)
>   		const struct ili9881c_instr *instr = &ctx->desc->init[i];
>   
>   		if (instr->op == ILI9881C_SWITCH_PAGE)
> -			ret = ili9881c_switch_page(ctx, instr->arg.page);
> +			ili9881c_switch_page(&mctx, instr->arg.page);
>   		else if (instr->op == ILI9881C_COMMAND)
> -			ret = ili9881c_send_cmd_data(ctx, instr->arg.cmd.cmd,
> -						      instr->arg.cmd.data);
> -
> -		if (ret)
> -			goto disable_power;
> -	}
> -
> -	ret = ili9881c_switch_page(ctx, 0);
> -	if (ret)
> -		return ret;
> -
> -	if (ctx->address_mode) {
> -		ret = mipi_dsi_dcs_write(ctx->dsi, MIPI_DCS_SET_ADDRESS_MODE,
> -					 &ctx->address_mode,
> -					 sizeof(ctx->address_mode));
> -		if (ret < 0)
> -			goto disable_power;
> +			ili9881c_send_cmd_data(&mctx, instr->arg.cmd.cmd,
> +					       instr->arg.cmd.data);
>   	}
>   
> -	ret = mipi_dsi_dcs_set_tear_on(ctx->dsi, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
> -	if (ret)
> -		goto disable_power;
> -
> -	ret = mipi_dsi_dcs_exit_sleep_mode(ctx->dsi);
> -	if (ret)
> -		goto disable_power;
> +	ili9881c_switch_page(&mctx, 0);
>   
> -	msleep(120);
> +	if (ctx->address_mode)
> +		ili9881c_send_cmd_data(&mctx, MIPI_DCS_SET_ADDRESS_MODE,
> +				       ctx->address_mode);
>   
> -	ret = mipi_dsi_dcs_set_display_on(ctx->dsi);
> -	if (ret)
> +	mipi_dsi_dcs_set_tear_on_multi(&mctx, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
> +	mipi_dsi_dcs_exit_sleep_mode_multi(&mctx);
> +	mipi_dsi_msleep(&mctx, 120);
> +	mipi_dsi_dcs_set_display_on_multi(&mctx);
> +	if (mctx.accum_err)
>   		goto disable_power;
>   
>   	return 0;
>   
>   disable_power:
>   	regulator_disable(ctx->power);
> -	return ret;
> +	return mctx.accum_err;
>   }
>   
>   static int ili9881c_unprepare(struct drm_panel *panel)
>   {
>   	struct ili9881c *ctx = panel_to_ili9881c(panel);
> +	struct mipi_dsi_multi_context mctx = { .dsi = ctx->dsi };
>   
> -	mipi_dsi_dcs_set_display_off(ctx->dsi);
> -	mipi_dsi_dcs_enter_sleep_mode(ctx->dsi);
> +	mipi_dsi_dcs_set_display_off_multi(&mctx);
> +	mipi_dsi_dcs_enter_sleep_mode_multi(&mctx);
>   	regulator_disable(ctx->power);
>   	gpiod_set_value_cansleep(ctx->reset, 1);
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
