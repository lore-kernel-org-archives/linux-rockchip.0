From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v2 2/4] drm/bridge: analogix_dp: get sync PM when init eDP
Date: Tue, 4 Oct 2016 10:53:58 -0400
Message-ID: <CAOw6vb+jSg-N74Nj=md8kW0aukk_u=HjTBa45XwxJkyFVqtKFQ@mail.gmail.com>
References: <1475239256-16083-1-git-send-email-wzz@rock-chips.com> <1475239256-16083-3-git-send-email-wzz@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-samsung-soc-owner@vger.kernel.org>
In-Reply-To: <1475239256-16083-3-git-send-email-wzz@rock-chips.com>
Sender: linux-samsung-soc-owner@vger.kernel.org
To: zain wang <wzz@rock-chips.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Inki Dae <inki.dae@samsung.com>, David Airlie <airlied@linux.ie>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Mika Kahola <mika.kahola@intel.com>, =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>, Tomasz Figa <tfiga@chromium.org>, Douglas Anderson <dianders@chromium.org>, Thierry Reding <treding@nvidia.com>, Krzysztof Kozlowski <k.kozlowski@samsung.com>, Heiko Stuebner <heiko@sntech.de>, Jingoo Han <jingoohan1@gmail.com>, Javier Martinez Canillas <javier@osg.samsung.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-samsung-soc <linux-samsung-soc@vger.kernel.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Sep 30, 2016 at 8:40 AM, zain wang <wzz@rock-chips.com> wrote:


Can you please add a commit message describing why this is needed.

Sean


> Signed-off-by: zain wang <wzz@rock-chips.com>
>
> ---
>
> Changes in v2: None
>
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index b4ce16a..1bd190e 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1411,10 +1411,12 @@ int analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
>         }
>
>         pm_runtime_enable(dev);
> +       pm_runtime_get_sync(dev);
>
>         phy_power_on(dp->phy);
>
>         analogix_dp_init_dp(dp);
> +       pm_runtime_put_sync(dev);
>
>         ret = devm_request_threaded_irq(&pdev->dev, dp->irq,
>                                         analogix_dp_hardirq,
> --
> 1.9.1
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-samsung-soc" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
