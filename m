Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 870D8D31A2B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 08:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OK+Wmk9pAZgV3xkbzJ0EbrnJScBPr0F1WNEcaO5sPKE=; b=HvDizphD2MyAohjb1Zaxf2awfS
	/pWkIyq5KoHkF6QkpmXOeFtoeehX2BCu3pDcY6QTApsYPcGe8H9UeFvFiIiEoQ9fskvuWspXZi+o4
	3wGXz9GLV25ZO/kkC3BRQkgeWt+3N3VTg5YSkA1Ynro7HalMepqe/SuFKqR8RBhRcP1AYQLJINLFZ
	C2cpQJFrXNE63G/9p79f1SbmJEwcOtlyHrBivLhA9GZui/sIelsH+CIKDtkBUMTbZvZvzmppBYBNe
	lZqL0KHgu+cGg0/CTP/B9NaPJtiYP1gsL9/fEzkA0VADkWSMR/brHGpi1q/G/6Asi7+K4KDtgo2Q4
	7GZygwVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwcL-00000008Poq-20Lr;
	Wed, 14 Jan 2026 08:52:41 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwcI-00000008Po4-0fWM
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 08:52:39 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-47d59da3d81so2359145e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 00:52:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768380756; x=1768985556; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1bpcWnB4BcZSj7q9wPAqZQeLTaJp0K4KOi9eIDlDf/I=;
        b=GXLA6mfK1leM9dZKBzSX7C6/1gBUPFmUd4dzHA+YvFSjdxeijUQbz6HnsmLC5nP1s/
         6Zw/Mo9gClmUHGjCfCoFHQbuXWG+O0VNuAPJ1t0orTvpF+H3dpmk33+9uLdHxQCoX9d6
         MzjVo9uHvylcDfchkcXA5lQI/wrCqhyB7BbBNgjemO1S4McifLZQvyPV7Zmum+puynFw
         RDlBJLvYeUuUJWWw3L/9idegcbfY398u4UT85LJUH4FOO7stHEC/dMEWfkRZ6awMI2mu
         Rg8rONeStvIMxncTLXamsYomJ1cLIcRRSOxHKb0HyT0Te64ianzd1/VgAfAsuiDmgTYt
         LQ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768380756; x=1768985556;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1bpcWnB4BcZSj7q9wPAqZQeLTaJp0K4KOi9eIDlDf/I=;
        b=DBpx5PEhhZVVP6YTYFUGZkT7uBmVe5tFdEEzlsB3q4/FNymHnx2FgXLPne5E4evIxV
         inTSS2svczdhYJfsR7pjXeTtjLOgH68OKxATYyxdopirhM95KmhHmZFQfxO6AuvSqQ1y
         yT6qeSiEM2tXcZ6IpWRek0yNLnZ84+VavsRUEOGyNbTjrGIVly7sMWoxNpvIAO6Pjyly
         6/mNEyrz+pQosQH/EO5P+/QO4+nFuyvBBlbD100b9JyhMuOz7BoKhE/hsa4rCDQeSX5F
         4X4j4XxxMLtEmG5HM2NRjXWCkeGInZK9v1Cq3nqZSpJ5hGfzdvlu/1SmDxmv3SpdwJHX
         WKhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBmCg/pO5EEzdjmXc3rMoHWi3yA38WhJSXpz+0qEZqlpYAhOw6YunQ+sfD2o4DLpZCxmWF0y46MI0VTi1NwA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxaQAd6EenYRmpEczTHqDFSDTFOJs9yaaEsb2j1Twb6ggT7gYLf
	JX+fk+4t17kMsNFEAkLUz/IzYjuvKD3CdaDf0P5NInFhD507XgM+ObsNfb7shZ7cYvI=
X-Gm-Gg: AY/fxX6l93GBWZBLCrBDenLvdwT8YRF0/waDyqIPttgXgnG+oCrNGOqLNY5/uMLKJZI
	V+jKvW+ye7drftlqiNPwRnSxq7Oz5KH6NRIcSC++tjP/JEIjYrMqXHwRis5mtD5g0+h1yLjyFS+
	5IcS8A5O3TcCcwh3d73RPse3EuMJXqxSAxBVgoGh7zorukvwA0J11B5R457NwhbnZ+eZgU+r7fn
	Nddy11it8JnT90coTHGumIXEM2TOFWCtm6tZO/109CewtWO8vNuKrITRuZvUdarFVWadS/ZfxzP
	YLvUGCiLSAP6/4AeL46iQHObYTJVA/4a11wLqyOuPLGlih7NmcWnVov7DvMOLSC8gQcrS9C0RNN
	bZR72ggWllhNIe756cyDO/A1krHtLmP255RVRDZG8zp0c2Jte99SnxAVFYrvvvxKkCetQy2OupT
	q+YX8v8Zlcu02qgYv9Tb/DSkvVgear8cpBTj/jFRhReXwvV93e8YhFefNYEZtoIa0=
X-Received: by 2002:a05:600c:16d3:b0:47e:e0b3:2437 with SMTP id 5b1f17b1804b1-47ee0b329d3mr22429865e9.5.1768380756155;
        Wed, 14 Jan 2026 00:52:36 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:b357:7e03:65d5:1450? ([2a01:e0a:3d9:2080:b357:7e03:65d5:1450])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee0b89ee0sm18634095e9.1.2026.01.14.00.52.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 00:52:35 -0800 (PST)
Message-ID: <6a68b64d-27d3-474a-9c40-5a9973444395@linaro.org>
Date: Wed, 14 Jan 2026 09:52:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/6] drm/panel: jd9365da: Support for Anbernic RG-DS Panel
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 dmitry.torokhov@gmail.com, simona@ffwll.ch, airlied@gmail.com,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 jesszhan0024@gmail.com, jagan@edgeble.ai, heiko@sntech.de,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 aweinzerl13@yahoo.com, Chris Morgan <macromorgan@hotmail.com>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-4-macroalpha82@gmail.com>
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
In-Reply-To: <20260113195721.151205-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_005238_355842_3FACC5D2 
X-CRM114-Status: GOOD (  16.60  )
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

On 1/13/26 20:57, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for both panels used in the Anbernic RG-DS. These panels
> are physically identical and differ only with a single instruction
> in the init sequence. The init sequence commands suggest it uses
> an identical controller as the jd9365da.
> 
> Additionally, allow specifying per-panel dsi->mode_flags that can
> override the default values.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Co-developed-by: Alexander Weinzerl <aweinzerl13@yahoo.com>
> Signed-off-by: Alexander Weinzerl <aweinzerl13@yahoo.com>
> ---
>   .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 271 +++++++++++++++++-
>   1 file changed, 269 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> index 063ed9646d53..5386a06fcd08 100644
> --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> @@ -33,6 +33,7 @@ struct jadard_panel_desc {
>   	unsigned int backlight_off_to_display_off_delay_ms;
>   	unsigned int display_off_to_enter_sleep_delay_ms;
>   	unsigned int enter_sleep_to_reset_down_delay_ms;
> +	unsigned long mode_flags;
>   };
>   
>   struct jadard {
> @@ -1113,6 +1114,258 @@ static const struct jadard_panel_desc melfas_lmfbx101117480_desc = {
>   	.enter_sleep_to_reset_down_delay_ms = 100,
>   };
>   
> +static int anbernic_rgds_init_cmds(struct jadard *jadard)
> +{
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
> +	struct drm_panel *panel = &jadard->panel;
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x0);
> +
> +	jadard_enable_standard_cmds(&dsi_ctx);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x6a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x6a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0c, 0x74);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0xbf);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1a, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1b, 0xbf);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1c, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0xfe);
> +
> +	if (of_device_is_compatible(panel->dev->of_node,
> +				    "anbernic,rg-ds-display-top"))
> +		mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x05);
> +	else
> +		mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x09);
> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3a, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3c, 0xf7);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3d, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3e, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3f, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0x3c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x42, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x11);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x78);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x6d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5a, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5b, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5d, 0x7f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5e, 0x56);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5f, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x34);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x2f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x20);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x22);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x0c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x25);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x33);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6a, 0x3a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6b, 0x2d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6c, 0x28);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6d, 0x1b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6e, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x70, 0x7f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x71, 0x56);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x72, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x73, 0x34);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x74, 0x2f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0x20);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x22);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x0c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7a, 0x25);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7b, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7c, 0x33);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7d, 0x3a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7e, 0x2d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7f, 0x28);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x1b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x81, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x82, 0x00);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x5e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x50);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x05, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x06, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x07, 0x57);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x08, 0x77);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0a, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0b, 0x4a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0c, 0x4a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0d, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0e, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0f, 0x46);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x10, 0x46);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x11, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x12, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x13, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x14, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x15, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x16, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x5e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1a, 0x50);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1b, 0x41);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1c, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1d, 0x57);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1e, 0x77);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1f, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x20, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x21, 0x4b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x22, 0x4b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x23, 0x45);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0x45);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x25, 0x47);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x26, 0x47);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x27, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x28, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x29, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2a, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2b, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2c, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2d, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2e, 0x1e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2f, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x30, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x31, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x32, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x33, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x34, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x36, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3a, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3b, 0x09);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3c, 0x09);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3d, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3e, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3f, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x42, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x1e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x46, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x47, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x48, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x49, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4a, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4b, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4c, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4d, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4e, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4f, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x50, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x51, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x52, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x53, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x54, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x56, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5a, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5b, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5c, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5d, 0x30);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5e, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5f, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x30);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0xe9);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x73);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6a, 0xe9);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6b, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0xda);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0xfc);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x81, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x83, 0xf4);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x87, 0x10);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x0e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0xb3);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x60);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0e, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1e, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x58);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2b, 0x0f);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x15, 0x1d);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x00);
> +	mipi_dsi_msleep(&dsi_ctx, 120);
> +	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, 120);
> +	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, 10);
> +
> +	return dsi_ctx.accum_err;
> +};
> +
> +static const struct jadard_panel_desc anbernic_rgds_display_desc = {
> +	.mode = {
> +		.clock		= (640 + 260 + 220 + 260) * (480 + 10 + 2 + 16) * 60 / 1000,
> +
> +		.hdisplay	= 640,
> +		.hsync_start	= 640 + 260,
> +		.hsync_end	= 640 + 260 + 220,
> +		.htotal		= 640 + 260 + 220 + 260,
> +
> +		.vdisplay	= 480,
> +		.vsync_start	= 480 + 10,
> +		.vsync_end	= 480 + 10 + 2,
> +		.vtotal		= 480 + 10 + 2 + 16,
> +
> +		.width_mm	= 68,
> +		.height_mm	= 87,
> +		.type		= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
> +		.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +	},
> +	.lanes = 4,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.init = anbernic_rgds_init_cmds,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> +		      MIPI_DSI_CLOCK_NON_CONTINUOUS | MIPI_DSI_MODE_LPM,
> +};
> +
>   static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
>   {
>   	struct device *dev = &dsi->dev;
> @@ -1126,8 +1379,14 @@ static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
>   		return PTR_ERR(jadard);
>   
>   	desc = of_device_get_match_data(dev);
> -	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> -			  MIPI_DSI_MODE_NO_EOT_PACKET;
> +
> +	if (desc->mode_flags)
> +		dsi->mode_flags = desc->mode_flags;
> +	else
> +		dsi->mode_flags = MIPI_DSI_MODE_VIDEO |
> +				  MIPI_DSI_MODE_VIDEO_BURST |
> +				  MIPI_DSI_MODE_NO_EOT_PACKET;
> +
>   	dsi->format = desc->format;
>   	dsi->lanes = desc->lanes;
>   
> @@ -1176,6 +1435,14 @@ static void jadard_dsi_remove(struct mipi_dsi_device *dsi)
>   }
>   
>   static const struct of_device_id jadard_of_match[] = {
> +	{
> +		.compatible = "anbernic,rg-ds-display-bottom",
> +		.data = &anbernic_rgds_display_desc
> +	},
> +	{
> +		.compatible = "anbernic,rg-ds-display-top",
> +		.data = &anbernic_rgds_display_desc
> +	},
>   	{
>   		.compatible = "chongzhou,cz101b4001",
>   		.data = &cz101b4001_desc

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
