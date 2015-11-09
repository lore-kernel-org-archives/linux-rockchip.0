From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 6/8] ARM: dts: rockchip: add clock-cells for usb phy nodes
Date: Mon, 9 Nov 2015 13:01:47 -0800
Message-ID: <CAD=FV=UZzoUA626CE6tDW7jj+-5B7KLNHMfB+462pHpTQ_=fZA@mail.gmail.com>
References: <1446998681-26436-1-git-send-email-heiko@sntech.de>
	<1446998681-26436-7-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1446998681-26436-7-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Romain Perier <romain.perier@gmail.com>, Arnd Bergmann <arnd@arndb.de>, Lin Huang <hl@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Heiko,

On Sun, Nov 8, 2015 at 8:04 AM, Heiko Stuebner <heiko@sntech.de> wrote:
> Add the #clock-cells properties for the usbphy nodes as they
> provide the pll-clocks now.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm/boot/dts/rk3066a.dtsi | 2 ++
>  arch/arm/boot/dts/rk3188.dtsi  | 2 ++
>  arch/arm/boot/dts/rk3288.dtsi  | 3 +++
>  3 files changed, 7 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
