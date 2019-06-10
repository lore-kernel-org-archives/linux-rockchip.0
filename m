From: Sean Paul <sean@poorly.run>
Subject: Re: [PATCH] drm/bridge/synopsys: dw-hdmi: Fix unwedge crash when no
 pinctrl entries
Date: Mon, 10 Jun 2019 16:50:50 -0400
Message-ID: <CAMavQKLRm8uYu3O=co5Ui7YjkK0hKHAd=+TA0oExfqnLc+TLFA@mail.gmail.com>
References: <20190610175234.196844-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190610175234.196844-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Sean Paul <seanpaul@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Erico Nunes <nunes.erico@gmail.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Andrzej Hajda <a.hajda@samsung.com>, Jonas Karlman <jonas@kwiboo.se>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>, =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Thomas Gleixner <tglx@linutronix.de>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Jun 10, 2019 at 1:52 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> In commit 50f9495efe30 ("drm/bridge/synopsys: dw-hdmi: Add "unwedge"
> for ddc bus") I stupidly used IS_ERR() to check for whether we have an
> "unwedge" pinctrl state even though on most flows through the driver
> the unwedge state will just be NULL.
>
> Fix it so that we consistently use NULL for no unwedge state.
>
> Fixes: 50f9495efe30 ("drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc bus")
> Reported-by: Erico Nunes <nunes.erico@gmail.com>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Thanks Erico for the report, and Doug for fixing this up quickly, I've applied
the patch to drm-misc-next

Sean

> ---
>
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index f25e091b93c5..5e4e9408d00f 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -251,7 +251,7 @@ static void dw_hdmi_i2c_init(struct dw_hdmi *hdmi)
>  static bool dw_hdmi_i2c_unwedge(struct dw_hdmi *hdmi)
>  {
>         /* If no unwedge state then give up */
> -       if (IS_ERR(hdmi->unwedge_state))
> +       if (!hdmi->unwedge_state)
>                 return false;
>
>         dev_info(hdmi->dev, "Attempting to unwedge stuck i2c bus\n");
> @@ -2686,11 +2686,13 @@ __dw_hdmi_probe(struct platform_device *pdev,
>                         hdmi->default_state =
>                                 pinctrl_lookup_state(hdmi->pinctrl, "default");
>
> -                       if (IS_ERR(hdmi->default_state) &&
> -                           !IS_ERR(hdmi->unwedge_state)) {
> -                               dev_warn(dev,
> -                                        "Unwedge requires default pinctrl\n");
> -                               hdmi->unwedge_state = ERR_PTR(-ENODEV);
> +                       if (IS_ERR(hdmi->default_state) ||
> +                           IS_ERR(hdmi->unwedge_state)) {
> +                               if (!IS_ERR(hdmi->unwedge_state))
> +                                       dev_warn(dev,
> +                                                "Unwedge requires default pinctrl\n");
> +                               hdmi->default_state = NULL;
> +                               hdmi->unwedge_state = NULL;
>                         }
>                 }
>
> --
> 2.22.0.rc2.383.gf4fbbf30c2-goog
>
