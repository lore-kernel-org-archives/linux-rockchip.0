From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 5/8] clk: rockchip: fix usbphy-related clocks
Date: Mon, 9 Nov 2015 13:01:10 -0800
Message-ID: <CAD=FV=X6icKQKnKnJkkhd-mNC6rCxJnvP6nemhzCabG4-UvM5w@mail.gmail.com>
References: <1446998681-26436-1-git-send-email-heiko@sntech.de>
	<1446998681-26436-6-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1446998681-26436-6-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Romain Perier <romain.perier@gmail.com>, Arnd Bergmann <arnd@arndb.de>, Lin Huang <hl@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Heiko,

On Sun, Nov 8, 2015 at 8:04 AM, Heiko Stuebner <heiko@sntech.de> wrote:
> The otgphy clocks really only drive the phy blocks. These in turn
> contain plls that then generate the 480m clocks the clock controller
> uses to supply some other clocks like uart0, gpu or the video-codec.
>
> So fix this structure to actually respect that hirarchy and removed
> that usb480m fixed-rate clock working as a placeholder till now, as
> this wouldn't even work if the supplying phy gets turned off while
> its pll-output gets used elsewhere.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/clk/rockchip/clk-rk3188.c | 11 +++--------
>  drivers/clk/rockchip/clk-rk3288.c | 16 +++++-----------
>  2 files changed, 8 insertions(+), 19 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
