From: Erico Nunes <nunes.erico@gmail.com>
Subject: Re: [PATCH] drm/bridge/synopsys: dw-hdmi: Fix unwedge crash when no
 pinctrl entries
Date: Tue, 11 Jun 2019 14:05:55 +0200
Message-ID: <CAK4VdL0jph-LzkRai=6nLahgrvG0cFNt5N3GNGjKAE-G0jc38A@mail.gmail.com>
References: <20190610175234.196844-1-dianders@chromium.org> <CAMavQKLRm8uYu3O=co5Ui7YjkK0hKHAd=+TA0oExfqnLc+TLFA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAMavQKLRm8uYu3O=co5Ui7YjkK0hKHAd=+TA0oExfqnLc+TLFA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sean Paul <sean@poorly.run>
Cc: Douglas Anderson <dianders@chromium.org>, Sean Paul <seanpaul@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Andrzej Hajda <a.hajda@samsung.com>, Jonas Karlman <jonas@kwiboo.se>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>, =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Thomas Gleixner <tglx@linutronix.de>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Jun 10, 2019 at 10:51 PM Sean Paul <sean@poorly.run> wrote:
>
> On Mon, Jun 10, 2019 at 1:52 PM Douglas Anderson <dianders@chromium.org> wrote:
> >
> > In commit 50f9495efe30 ("drm/bridge/synopsys: dw-hdmi: Add "unwedge"
> > for ddc bus") I stupidly used IS_ERR() to check for whether we have an
> > "unwedge" pinctrl state even though on most flows through the driver
> > the unwedge state will just be NULL.
> >
> > Fix it so that we consistently use NULL for no unwedge state.
> >
> > Fixes: 50f9495efe30 ("drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc bus")
> > Reported-by: Erico Nunes <nunes.erico@gmail.com>
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>
> Thanks Erico for the report, and Doug for fixing this up quickly, I've applied
> the patch to drm-misc-next

It does fix the issue. Thank you for the quick fix.

Erico
