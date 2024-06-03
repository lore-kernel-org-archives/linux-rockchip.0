Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCD2CC25B75
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jun 2024 08:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CfHXmzleuu/VgcCQdd750qVjX6u+LFoCJ0M2K5fAKUY=; b=N/D5ESAfGqFGXVRnb/9/XWoc+/
	jZD4dYU6AXMCqFQIx+N71+HnwGWAYRGh82BCaS7bu0punuw+Mexb47x+E2O9w731e9J2kbhENCMu0
	iBAroR1haF4fbuVkUiun+ENcvpZ36IooaPYh9gXt5XjISo/yOqmua9JPvMfvdQ6NdS2+kOOIxyQdO
	ayskIqEBznSOLJmUCrzoJWu50hIjXujr+YJdFwrn1ThaWPt/WNxZFrgtGoXrYoBKY1U5FZMfykJ57
	xY6jEnRUnwoNjNptqVHiYJNG/e/1zVaZxNejUgDV5kpV/6qY22eP99BQMgApy4ifWai4DNeDNBT2j
	9I2Oc2QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE3Tw-0000000G6tL-1ZN6;
	Mon, 03 Jun 2024 08:55:56 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE3Tt-0000000G6sc-0b0A
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Jun 2024 08:55:55 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4213373568dso20313245e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2024 01:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717404951; x=1718009751; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/QAeBcdtYqLIs/Rh+i5kD5TSLdR9qGs4llUtwWZdmtc=;
        b=fvTcEUfm+X+xQxAgwtFZYn4ARvxAHr1pM1cw7STuqmrMk+WkF9f6SQfnTKHl+Af3gV
         4URpNt5JPVfBk8FOOAr+xaq2agkXA7QfUU6FP6JRkykDKBN+sS4uijmx3PSB8JaWB8I0
         AQFXwT50GTBG90CvLe4aUGYQ/O4wWbpLkZT2Xz18+NquoN38xSKOzkHENLFaNOQYJFp0
         9gKliX09F6K0Bs8M8rP7+gBdrUK1m9GP49KPa9mIHZ0lVGXGB8fzTt6qDnU9317PfJfs
         /oAqWTtIkpDa35o2NZvalCvb8kfX7VjxjGk8SxPAbfksSkB/xSj83+AkD5SkNmOeYg7q
         ncGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717404951; x=1718009751;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/QAeBcdtYqLIs/Rh+i5kD5TSLdR9qGs4llUtwWZdmtc=;
        b=qjaE3DyZ3FfPxH9EiFa1X4Y0Bo4ZZl5zOKDpEjsYuXy0gxv9IulLTkzfuUEzNKj2ew
         yvqVkAOyRTrzoRiMdE3+vAxhUWa5hFryh2FA1P915brhCACayGk+s+03lDkWIU6j0RtH
         5UowFN324/GMryVQfucvpPvRlxiZXAf2Lq0zhT6E8UzlDDD7fhUeKYyqXycMDoXE0lJc
         IdrW83GviX0D+8IbBkJfsUmX+VbLHiTicOzXQPALob6rJ9curwB91YYIjvLAfKaSce6w
         ZkHB02DZ9AfA7QqOvzy2hHTggCnt5afzh3xYHAOFl1FMPGd7BZ0xmbcqRfmrWHXf0gCl
         +1dA==
X-Forwarded-Encrypted: i=1; AJvYcCVvfhhcqtVSy11nT66g+ZWNwYGcE+CAkX0hYX/xF+dys0fBwyLdSQyJzjm/UrU/OLieKVCxerQiX2UVJDdX6th+IUfSX2FXEHz4raSI4zGUymKN
X-Gm-Message-State: AOJu0YwhQkYrRIeYsWjJgLvfLxH4d2QODmaOO0nJuBKmamO64XesARF8
	v6/pwHJ8/qyc/0VlHoK65ksqGZ560zbkMk/ItK5N/3bt1R5YvLWtM3mgOxmdKDI=
X-Google-Smtp-Source: AGHT+IG4nbGZZdOjaAgpRmBbLec9RiHVzWyTIMWSj89sEDhnbEfh2N4e2rnLcxVfA/uyYM5cYYFysg==
X-Received: by 2002:a05:600c:3550:b0:420:1853:68c3 with SMTP id 5b1f17b1804b1-421417bd9aemr653405e9.20.1717404950955;
        Mon, 03 Jun 2024 01:55:50 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:79fe:b764:2b06:ab4b? ([2a01:e0a:982:cbb0:79fe:b764:2b06:ab4b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4212b858424sm110180695e9.21.2024.06.03.01.55.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jun 2024 01:55:50 -0700 (PDT)
Message-ID: <a4b22708-e85d-448a-8145-244b49bca053@linaro.org>
Date: Mon, 3 Jun 2024 10:55:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
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
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_015553_248496_10E5CD68 
X-CRM114-Status: GOOD (  23.26  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Christian,

On 01/06/2024 15:12, Cristian Ciocaltea wrote:
> The RK3588 SoC family integrates a Quad-Pixel (QP) variant of the
> Synopsys DesignWare HDMI TX controller used in the previous SoCs.
> 
> It is HDMI 2.1 compliant and supports the following features, among
> others:
> 
.

..

> * SCDC I2C DDC access
> * TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
> * YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
> * Multi-stream audio
> * Enhanced Audio Return Channel (EARC)
-> Those features were already supported by the HDMI 2.0a compliant HW, just
list the _new_ features for HDMI 2.1

I did a quick review of your patchset and I don't understand why you need
to add a separate dw-hdmi-qp.c since you only need simple variants of the I2C
bus, infoframe and bridge setup.

Can you elaborate further ? isn't this Quad-Pixel (QP) TX controller version
detectable at runtime ?

I would prefer to keep a single dw-hdmi driver if possible.

Thanks,
Neil

> 
> This is the last required component that needs to be supported in order
> to enable the HDMI output functionality on the RK3588 based SBCs, such
> as the RADXA Rock 5B. The other components are the Video Output
> Processor (VOP2) and the Samsung IP based HDMI/eDP TX Combo PHY, for
> which basic support has been already made available via [1] and [2],
> respectively.
> 
> The patches are grouped as follows:
> * PATCH 1..7: DW HDMI TX driver refactor to minimize code duplication in
>    the new QP driver (no functional changes intended)
> 
> * PATCH 8..11: Rockchip DW HDMI glue driver cleanup/improvements (no
>    functional changes intended)
> 
> * PATCH 12..13: The new DW HDMI QP TX driver reusing the previously
>    exported functions and structs from existing DW HDMI TX driver
> 
> * PATCH 14: Rockchip DW HDMI glue driver update to support RK3588 and
>    make use of DW HDMI QP TX
> 
> They provide just the basic HDMI support for now, i.e. RGB output up to
> 4K@60Hz, without audio, CEC or any of the HDMI 2.1 specific features.
> Also note the vop2 driver is currently not able to properly handle all
> display modes supported by the connected screens, e.g. it doesn't cope
> with non-integer refresh rates.
> 
> A possible workaround consists of enabling the display controller to
> make use of the clock provided by the HDMI PHY PLL. This is still work
> in progress and will be submitted later, as well as the required DTS
> updates.
> 
> To facilitate testing and experimentation, all HDMI output related
> patches, including those part of this series, are available at [3].
> So far I could only verify this on the RADXA Rock 3A and 5B boards.
> 
> Thanks,
> Cristian
> 
> [1]: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
> [2]: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
> [3]: https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-hdmi-bridge-v6.10-rc1
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
> Cristian Ciocaltea (14):
>        drm/bridge: dw-hdmi: Simplify clock handling
>        drm/bridge: dw-hdmi: Add dw-hdmi-common.h header
>        drm/bridge: dw-hdmi: Commonize dw_hdmi_i2c_adapter()
>        drm/bridge: dw-hdmi: Factor out AVI infoframe setup
>        drm/bridge: dw-hdmi: Factor out vmode setup
>        drm/bridge: dw-hdmi: Factor out hdmi_data_info setup
>        drm/bridge: dw-hdmi: Commonize dw_hdmi_connector_create()
>        drm/rockchip: dw_hdmi: Use modern drm_device based logging
>        drm/rockchip: dw_hdmi: Simplify clock handling
>        drm/rockchip: dw_hdmi: Use devm_regulator_get_enable()
>        drm/rockchip: dw_hdmi: Drop superfluous assignments of mpll_cfg, cur_ctr and phy_config
>        dt-bindings: display: rockchip,dw-hdmi: Add compatible for RK3588
>        drm/bridge: synopsys: Add DW HDMI QP TX controller driver
>        drm/rockchip: dw_hdmi: Add basic RK3588 support
> 
>   .../display/rockchip/rockchip,dw-hdmi.yaml         | 127 +++-
>   drivers/gpu/drm/bridge/synopsys/Makefile           |   2 +-
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h   | 179 +++++
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       | 787 +++++++++++++++++++
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h       | 831 +++++++++++++++++++++
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          | 353 +++------
>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        | 351 +++++++--
>   include/drm/bridge/dw_hdmi.h                       |   8 +
>   8 files changed, 2290 insertions(+), 348 deletions(-)
> ---
> base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
> change-id: 20240601-b4-rk3588-bridge-upstream-a27baff1b8fc
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
