Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99DCFCFC28B
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Nov 2025 14:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U2a95DnG3GelFIskJwN6EydvisxxEc2fT2od1lDzzIU=; b=O/25q6EfnZ/IeRTTupeXvTT1sW
	DmVAvi4wE1CdhMbLMHeWC6GN4s+7ykOp3uBVZZwFO/jXhXUi18USuD7jLTdnTWrubAS5fkK6U8vzY
	kRXipQvup+XcCVc9ioeOhvTLrFqDt5ow9XCN9ggVFwLexh1QGC1FlVVUwysuBhHyaRiqQjK7sgCFw
	rKX2VXGRno3LK0cCDTwTbjtx8xmFBgySziNmU6ElBoTV04jlY6UwXlxFXd4c+qDj3wOUT05hHdpLB
	2dB4K+A3X4/xXBgzMRhmqawIN16Y3w3JLXzJslePG3671HEbrsWIRf+QFZ+nEpeIQqSZhPB12KIll
	6ALuNc0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMSX2-00000008YQG-2gMc;
	Fri, 21 Nov 2025 14:54:40 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMSX0-00000008YOU-1DNw
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Nov 2025 14:54:39 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-47796a837c7so14019825e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Nov 2025 06:54:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763736876; x=1764341676; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h3T53g7xBgvHEx7HfC5HSakwZWPWLNi811KzyB5b8Cc=;
        b=B/X3ANfMZR5nraEgL0I1my+ohBZ4ZMit62aD4kEYs3bJQ7WeW2Cz+6sDNlFGER5MGc
         1riK2G1ROJbs31tf7VT9aV51nWTeFxzyRFvULfeWBKBTxlLElFNqELezd+vml3ReSS5Z
         pR+s6+1asr1W/VH2zIvnNSNNRPTtCuowvSptsXjYTtTFVaVjF59ojZff+MdeoKOeUWH8
         G8z4MQ5KA3b9Rlsn2O62A6NW2ni2fnYufMfbaAYa/QVWo/Xzpg4M8MkZwLpz+qeq0H/o
         xwF5TLL4zwZv7fsrOYnUTh4JLTGgP3o+wcU+Qqlhk7TNyWiLiQts5mj0akBeV54fZOoM
         kfWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763736876; x=1764341676;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h3T53g7xBgvHEx7HfC5HSakwZWPWLNi811KzyB5b8Cc=;
        b=nJ7j2YqSjKOTC9KEYA2MxCqECtD1FzBwiZwoSKI5fMiO6VsX54ixjfQHzy+8gYsbdg
         kbY4NMJLgGazmZMU+NfCvXPn+fleOzlYgUH7oypD0rtPNXQ1Xh4O3KXQ3POlVUcmXOmJ
         P3V6jgELD745n5/ASiUa+HpKL0pbKYpGJ7DqxGjVhTkoDpfJWkm6rBzUgwpcR9ViRtdc
         KgtOqipm9D6CodJWkhfeWwBLQ/bxke9/Bqt7lAegCcRiZZYFrYnRYJZ3oFmKsWADDmiV
         EkD5HvD7MTYQ09l32QznDSgEeEfk4uJ6ixgwCFdxbmGTMBE97pxyqpJpvhvpi6X5x/Ha
         JWbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqHRBtC58UdIBk4eFdMC8Qsih7csm4s7dMQ3xmk+VHb/jj9D6MT/tQ7fXo0sYmgFwsXh+BHavKe4LYVUhNzw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9DK/TetCK1b/tvp+EA5xGc00wnw4LzFh118Lrh8I03Cll6VCT
	8XfKHyrxeY6Z9HffdjMvyygT+W8pXtmYXVl/1zlqYve5nGRoWDFKEjjgg6UQqXUevDY=
X-Gm-Gg: ASbGnctDrJtkHpUxs6Wf+7U9ImG0MoUmknXveI1STSp4nAoJXevMZWB/76l2iFsfX0C
	0aZKEtihAHd2IaPuI+iI31sK4V7ff43Q2ecWacVnPgNzCisl05VwJSWE2m2bQsRFvNVfMRfmele
	w24SvatMfIXFxZCDwTXo8W/96juoQsS06zMUio9zVMtVXV1iq2NucRReMn+4PgWtz+ePdtQRK0Y
	GwVaexF8Eod6wkAE9/uR3qs425QZRN3zyfRvJ3jNpKvNR1yN0mjHROzVKzzDv73AI5f/OXLMmsh
	Mr0xcLAYqG+83GAyld9XDnHBnymBtGxt9BbPzBcGAmI3/f11jXhhzchST8gEAcq81bMljHZXgGT
	2fjAlp+WwK9S8Qecwuba4cEvbPSkHvFhXAtfalI62ohc+uKzXYCnmiRDN0VTfBfnnd8myj+QSze
	aWosoI1jnHTk/7LXENlz+hVRoBrtfmb22Q4Bgejfs/Kdbmp27U6R6zSFRcUJq5u94XDnzMwWgq1
	Q==
X-Google-Smtp-Source: AGHT+IEzj6mKlAXc/f2f5s+FD/b07AX4yw2dXdDsDHdfncbSE2QSufZD0iTF+t3WaYL5TpdOFlDOEA==
X-Received: by 2002:a05:600c:1f8f:b0:477:a0dd:b2af with SMTP id 5b1f17b1804b1-477c01ea502mr22713205e9.33.1763736876159;
        Fri, 21 Nov 2025 06:54:36 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:159f:1839:bb92:1eca? ([2a01:e0a:3d9:2080:159f:1839:bb92:1eca])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cc231dc6esm3409457f8f.7.2025.11.21.06.54.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:54:35 -0800 (PST)
Message-ID: <326cd208-fcce-49d1-94ee-4913f85bffbf@linaro.org>
Date: Fri, 21 Nov 2025 15:54:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v10 07/11] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
To: Chaoyi Chen <kernel@airkyi.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Peter Chen <hzpeterchen@gmail.com>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20251120022343.250-1-kernel@airkyi.com>
 <20251120022343.250-8-kernel@airkyi.com>
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
In-Reply-To: <20251120022343.250-8-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251121_065438_354205_2A01AA0F 
X-CRM114-Status: GOOD (  15.14  )
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

On 11/20/25 03:23, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Using the DRM_AUX_BRIDGE helper to create the transparent DRM bridge
> device.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v10:
> - Use drm_aux_bridge_register_from_node() instead.
> 
> (no changes since v7)
> 
> Changes in v6:
> - Fix depend in Kconfig.
> 
>   drivers/phy/rockchip/Kconfig              | 2 ++
>   drivers/phy/rockchip/phy-rockchip-typec.c | 5 +++++
>   2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index db4adc7c53da..bcb5476222fc 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -120,6 +120,8 @@ config PHY_ROCKCHIP_TYPEC
>   	tristate "Rockchip TYPEC PHY Driver"
>   	depends on OF && (ARCH_ROCKCHIP || COMPILE_TEST)
>   	depends on TYPEC || TYPEC=n
> +	depends on DRM || DRM=n
> +	select DRM_AUX_BRIDGE if DRM_BRIDGE
>   	select EXTCON
>   	select GENERIC_PHY
>   	select RESET_CONTROLLER
> diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
> index 1f5b4142cbe4..e31b778c3537 100644
> --- a/drivers/phy/rockchip/phy-rockchip-typec.c
> +++ b/drivers/phy/rockchip/phy-rockchip-typec.c
> @@ -56,6 +56,7 @@
>   #include <linux/phy/phy.h>
>   #include <linux/usb/typec_dp.h>
>   #include <linux/usb/typec_mux.h>
> +#include <drm/bridge/aux-bridge.h>
>   
>   #define CMN_SSM_BANDGAP			(0x21 << 2)
>   #define CMN_SSM_BIAS			(0x22 << 2)
> @@ -1312,6 +1313,10 @@ static int tcphy_setup_typec_mux(struct rockchip_typec_phy *tcphy)
>   	if (!of_property_read_bool(np, "mode-switch"))
>   		goto put_np;
>   
> +	ret = drm_aux_bridge_register_from_node(tcphy->dev, np);
> +	if (ret)
> +		goto put_np;
> +
>   	mux_desc.drvdata = tcphy;
>   	mux_desc.fwnode = device_get_named_child_node(tcphy->dev, "dp-port");
>   	mux_desc.set = tcphy_typec_mux_set;

Much better now !
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
