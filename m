From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY
 power on
Date: Mon, 3 Jun 2019 08:23:35 -0700
Message-ID: <CAD=FV=XfxT+GB=WvuGm68SaUWhSg7vS5AjQ-sv9e5wdKN7sFjQ@mail.gmail.com>
References: <20190507234857.81414-1-dianders@chromium.org> <79ca5499-6b7d-fe55-2030-283f5cfb1d27@rock-chips.com>
 <82480aa5-ab2e-11c5-8dd5-c395f72fc6e7@ti.com> <CAD=FV=Us1WyEqYDqVSuA+QPCDU7ceMEwwaWKtLz9ZNBFD0E7NQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=Us1WyEqYDqVSuA+QPCDU7ceMEwwaWKtLz9ZNBFD0E7NQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Caesar Wang <wxt@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Lin Huang <hl@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Derek Basehore <dbasehore@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>, Guenter Roeck <groeck@chromium.org>, Elaine Zhang <zhangqing@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, "nickey.yang (nickey.yang@rock-chips.com)" <nickey.yang@rock-chips.com>, wzz <wzz@rock-chips.com>, Huang Jiachai <hjc@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Jun 3, 2019 at 8:22 AM Doug Anderson <dianders@chromium.org> wrote:
> > Can someone in Rockchip try to find the root-cause of the issue? Keeping the
> > PHY off shouldn't increase power draw.
>
> It sounded like Chris already answered this, though?  Basically things

Doh!  Don't know why I said Chris when it was clearly Caesar that
answered.  Sorry Caesar!

-Doug
