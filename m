From: Sean Paul <sean@poorly.run>
Subject: Re: [PATCH 2/5] drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc
 bus
Date: Wed, 15 May 2019 14:42:49 -0400
Message-ID: <20190515184249.GA17077@art_vandelay>
References: <20190502225336.206885-1-dianders@chromium.org>
 <20190502225336.206885-2-dianders@chromium.org>
 <20190515182038.GV17077@art_vandelay>
 <CAD=FV=WP-rFDAR28oZg+9DcrXbaYPjFCAD-dV1VR3-3_XDs-3A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAD=FV=WP-rFDAR28oZg+9DcrXbaYPjFCAD-dV1VR3-3_XDs-3A@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Sean Paul <sean@poorly.run>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Jernej Skrabec <jernej.skrabec@siol.net>, Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Matthias Kaehlcke <mka@chromium.org>, Sean Paul <seanpaul@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, May 15, 2019 at 11:36:33AM -0700, Doug Anderson wrote:
> Hi,
> 
> On Wed, May 15, 2019 at 11:20 AM Sean Paul <sean@poorly.run> wrote:
> 
> > > +                     if (IS_ERR(hdmi->default_state) &&
> > > +                         !IS_ERR(hdmi->unwedge_state)) {
> > > +                             dev_warn(dev,
> > > +                                      "Unwedge requires default pinctrl\n");
> >
> > Can you downgrade this message to info or dbg? Given how rare this issue is, we
> > probably don't want to spam everyone who is happily using dw-hdmi.
> 
> I don't think it will spam anyone, will it?  It will only spam if you
> _do_ specify an unwedge state and you _don't_ specify a default state.
> This seems like something you'd want a pretty serious warning about
> because it meant that you wanted to use unwedge but you didn't specify
> it properly.
> 

That'll teach me for skimming, you're right on, thanks for the correction!

> 
> > Reviewed-by: Sean Paul <sean@poorly.run>
> 
> Thanks!
> 
> -Doug

-- 
Sean Paul, Software Engineer, Google / Chromium OS
