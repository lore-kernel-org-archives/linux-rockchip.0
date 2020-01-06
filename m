From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH for 5.5] phy/rockchip: inno-hdmi: round clock rate down to
 closest 1000 Hz
Date: Mon, 6 Jan 2020 14:25:37 -0800
Message-ID: <CAD=FV=XbmwC1H446Og9juqYBR66ozjNVw9SDa2WWz=sKQg_imw@mail.gmail.com>
References: <HE1PR06MB40118544456FC5461F49DDE8AC2E0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <HE1PR06MB40118544456FC5461F49DDE8AC2E0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Sean Paul <seanpaul@chromium.org>, Kishon Vijay Abraham I <kishon@ti.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Dec 23, 2019 at 12:49 AM Jonas Karlman <jonas@kwiboo.se> wrote:
>
> Commit 287422a95fe2 ("drm/rockchip: Round up _before_ giving to the clock framework")
> changed what rate clk_round_rate() is called with, an additional 999 Hz
> added to the requsted mode clock. This has caused a regression on RK3328
> and presumably also on RK3228 because the inno-hdmi-phy clock requires an
> exact match of the requested rate in the pre pll config table.
>
> When an exact match is not found the parent clock rate (24MHz) is returned
> to the clk_round_rate() caller. This cause wrong pixel clock to be used and
> result in no-signal when configuring a mode on RK3328.
>
> Fix this by rounding the rate down to closest 1000 Hz in round_rate func,
> this allows an exact match to be found in pre pll config table.
>
> Fixes: 287422a95fe2 ("drm/rockchip: Round up _before_ giving to the clock framework")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 4 ++++
>  1 file changed, 4 insertions(+)

Sorry for the regression and thanks for the fix.  It seems sane to me
since you're just matching against your own table and all the rates
there are all in kHz.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
