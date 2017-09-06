From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 3/3] phy: rockchip-typec: Do the calibration more correctly
Date: Wed, 6 Sep 2017 14:24:57 -0700
Message-ID: <CAD=FV=WmW-=HhUznPHLvF=FqJSVk2-NLVYq-1WNJwgn4N3+psw@mail.gmail.com>
References: <20170906205201.16207-1-dianders@chromium.org> <20170906205201.16207-4-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170906205201.16207-4-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Chris <zyw@rock-chips.com>
Cc: Shawn Nematbakhsh <shawnn@chromium.org>, David Schneider <dnschneid@chromium.org>, Douglas Anderson <dianders@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Sep 6, 2017 at 1:52 PM, Douglas Anderson <dianders@chromium.org> wrote:
> Calculate the calibration code as per the docs.  The docs talk about
> reading and averaging the pullup and pulldown calibration codes.  They
> also talk about adding in some adjustment codes.  Let's do what the
> docs say.
>
> In practice this doesn't seem to matter a whole lot.  On a device I
> tested the pullup and pulldown codes were nearly the same (0x23 and
> 0x24) and the adjustment codes were 0.
>
> Reviewed-by: Chris Zhong <zyw@rock-chips.com>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>  drivers/phy/rockchip/phy-rockchip-typec.c | 28 +++++++++++++++++++---------
>  1 file changed, 19 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
> index b8696a7c45fb..e59983a82dcc 100644
> --- a/drivers/phy/rockchip/phy-rockchip-typec.c
> +++ b/drivers/phy/rockchip/phy-rockchip-typec.c
> @@ -194,6 +194,7 @@
>  /* Use this for "n" in macros like "_MULT_XXX" to target the aux channel */
>  #define AUX_CH_LANE                    8
>
> +

Not sure how I missed that this was adding a blank line here.  :(  If
there are no other issues I'm happy to re-post or happy if this blank
line is removed when the patch is applied.  Please let me know which
you'd prefer.

-Doug
