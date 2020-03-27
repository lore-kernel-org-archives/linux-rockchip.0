From: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v2] drm/bridge: analogix_dp: Split bind() into probe()
 and real bind()
Date: Fri, 27 Mar 2020 08:44:37 +0100
Message-ID: <1386cf0a-7359-c1c5-35bc-c86ce944f035@samsung.com>
References: <CGME20200310104049eucas1p107e1ec61456fce4c830d3232a400b32f@eucas1p1.samsung.com>
        <20200310103427.26048-1-m.szyprowski@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-samsung-soc-owner@vger.kernel.org>
In-Reply-To: <20200310103427.26048-1-m.szyprowski@samsung.com>
Content-Language: en-US
Sender: linux-samsung-soc-owner@vger.kernel.org
To: Marek Szyprowski <m.szyprowski@samsung.com>, dri-devel@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Neil Armstrong <narmstrong@baylibre.com>, Jingoo Han <jingoohan1@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andy Yan <andy.yan@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On 10.03.2020 11:34, Marek Szyprowski wrote:
> Analogix_dp driver acquires all its resources in the ->bind() callback,
> what is a bit against the component driver based approach, where the
> driver initialization is split into a probe(), where all resources are
> gathered, and a bind(), where all objects are created and a compound
> driver is initialized.
>
> Extract all the resource related operations to analogix_dp_probe() and
> analogix_dp_remove(), then call them before/after registration of the
> device components from the main Exynos DP and Rockchip DP drivers. Also
> move the plat_data initialization to the probe() to make it available for
> the analogix_dp_probe() function.
>
> This fixes the multiple calls to the bind() of the DRM compound driver
> when the DP PHY driver is not yet loaded/probed:
>
> [drm] Exynos DRM: using 14400000.fimd device for DMA mapping operations
> exynos-drm exynos-drm: bound 14400000.fimd (ops fimd_component_ops [exynosdrm])
> exynos-drm exynos-drm: bound 14450000.mixer (ops mixer_component_ops [exynosdrm])
> exynos-dp 145b0000.dp-controller: no DP phy configured
> exynos-drm exynos-drm: failed to bind 145b0000.dp-controller (ops exynos_dp_ops [exynosdrm]): -517
> exynos-drm exynos-drm: master bind failed: -517
> ...
> [drm] Exynos DRM: using 14400000.fimd device for DMA mapping operations
> exynos-drm exynos-drm: bound 14400000.fimd (ops hdmi_enable [exynosdrm])
> exynos-drm exynos-drm: bound 14450000.mixer (ops hdmi_enable [exynosdrm])
> exynos-drm exynos-drm: bound 145b0000.dp-controller (ops hdmi_enable [exynosdrm])
> exynos-drm exynos-drm: bound 14530000.hdmi (ops hdmi_enable [exynosdrm])
> [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
> Console: switching to colour frame buffer device 170x48
> exynos-drm exynos-drm: fb0: exynosdrmfb frame buffer device
> [drm] Initialized exynos 1.1.0 20180330 for exynos-drm on minor 1
> ...
>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>


Queued to fixes.


Andrzej
