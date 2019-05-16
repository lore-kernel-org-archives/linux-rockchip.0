From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
Date: Thu, 16 May 2019 15:44:51 -0700
Message-ID: <CAD=FV=V3U=5KttaqjUvvF=vpKwFNMd6q0=J1ZKUrJ1b-Stz5bQ@mail.gmail.com>
References: <20190516214022.65220-1-dianders@chromium.org> <20190516214022.65220-2-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190516214022.65220-2-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Neil Armstrong <narmstrong@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>, Sean Paul <seanpaul@chromium.org>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, May 16, 2019 at 2:40 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> cycle:
>
> 1. You lose the ability to detect an HDMI device being plugged in.
>
> 2. If you're using the i2c bus built in to dw_hdmi then it stops
> working.
>
> Let's call the core dw-hdmi's suspend/resume functions to restore
> things.
>
> NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
> "late/early" versions of suspend/resume because we found that the VOP
> was sometimes resuming before dw_hdmi and then calling into us before
> we were fully resumed.  For now I have gone back to the normal
> suspend/resume because I can't reproduce the problems.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
> Changes in v2:
> - Add forgotten static (Laurent)
> - No empty stub for suspend (Laurent)
>
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

Whoops, forgot that I should have carried forward:

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

-Doug
