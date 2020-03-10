From: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH] drm/bridge: analogix_dp: Split bind() into probe() and
 real bind()
Date: Tue, 10 Mar 2020 11:35:26 +0100
Message-ID: <14da8aee-71bd-bdd1-4ac9-94cb7eed7efa@samsung.com>
References: <CGME20200302142626eucas1p25b7aec18264b1483fab9cceb86989aa8@eucas1p2.samsung.com>
        <20200302142615.14947-1-m.szyprowski@samsung.com>
        <30f64c8f-2a12-46c2-e5eb-505bbb2088ed@samsung.com>
        <331b5d65-f619-ff84-d4e7-55d2257a90c5@rock-chips.com>
        <0a287abf-12ed-7e34-c765-144a8c10230d@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-samsung-soc-owner@vger.kernel.org>
In-Reply-To: <0a287abf-12ed-7e34-c765-144a8c10230d@rock-chips.com>
Content-Language: en-US
Sender: linux-samsung-soc-owner@vger.kernel.org
To: Andy Yan <andy.yan@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>, dri-devel@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Neil Armstrong <narmstrong@baylibre.com>, Jingoo Han <jingoohan1@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Andy,

On 10.03.2020 02:10, Andy Yan wrote:
> [...]

> ret = analogix_dp_dt_parse_pdata(dp);
>         if (ret)
>                 return ERR_PTR(ret);
>
>
>     I think this is the problem I tested. Now the pdata were parse in 
> probe, but the plata_data->dev_type was populated in 
> rockchip_dp_bind/exynos_dp_bind after probe.So we can't parse the 
> right configuration here.

Indeed, plat_data wasn't properly initialized. Thanks for finding it 
out! I will send v2 in a few minutes.

 > [...]

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland
