From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 2/8] phy: rockchip-usb: introduce a common data-struct
 for the device
Date: Thu, 19 Nov 2015 16:38:59 -0800
Message-ID: <CAD=FV=VdbGfpnhgmUR65b4zD6XpB97qseDrxtRJerRfjd9DpFw@mail.gmail.com>
References: <1447968149-10979-1-git-send-email-heiko@sntech.de>
	<1447968149-10979-3-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1447968149-10979-3-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Romain Perier <romain.perier@gmail.com>, Arnd Bergmann <arnd@arndb.de>, Lin Huang <hl@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Heiko,

On Thu, Nov 19, 2015 at 1:22 PM, Heiko Stuebner <heiko@sntech.de> wrote:
> This introduces a common struct that holds data belonging to
> the umbrella device that contains all the phys and that we
> want to use later.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/phy/phy-rockchip-usb.c | 26 +++++++++++++++++++-------
>  1 file changed, 19 insertions(+), 7 deletions(-)

Huh, apparently in my whole talk about bindings I forgot my review
last time.  :(

Reviewed-by: Douglas Anderson <dianders@chromium.org>
