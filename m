From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 4/8] phy: rockchip-usb: expose the phy-internal PLLs
Date: Mon, 9 Nov 2015 12:59:58 -0800
Message-ID: <CAD=FV=VburD9eRtNKL8DZXgspp4-nFVVOz5PnOaT8HvNG5uzFg@mail.gmail.com>
References: <1446998681-26436-1-git-send-email-heiko@sntech.de>
	<1446998681-26436-5-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1446998681-26436-5-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Romain Perier <romain.perier@gmail.com>, Arnd Bergmann <arnd@arndb.de>, Lin Huang <hl@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Heiko,

On Sun, Nov 8, 2015 at 8:04 AM, Heiko Stuebner <heiko@sntech.de> wrote:
> +static const struct rockchip_usb_phy_pdata rk3066a_pdata = {
> +       .phys = (struct rockchip_usb_phys[]){
> +               { .reg = 0x17c, .pll_name = "sclk_otgphy0_480m" },
> +               { .reg = 0x188, .pll_name = "sclk_otgphy1_480m" },
> +               { /* sentinel */ }
> +       },
> +};
> +
> +static const struct rockchip_usb_phy_pdata rk3188_pdata = {
> +       .phys = (struct rockchip_usb_phys[]){
> +               { .reg = 0x10c, .pll_name = "sclk_otgphy0_480m" },
> +               { .reg = 0x11c, .pll_name = "sclk_otgphy1_480m" },
> +               { /* sentinel */ }
> +       },
> +};
> +
> +static const struct rockchip_usb_phy_pdata rk3288_pdata = {
> +       .phys = (struct rockchip_usb_phys[]){
> +               { .reg = 0x320, .pll_name = "sclk_otgphy0_480m" },
> +               { .reg = 0x334, .pll_name = "sclk_otgphy1_480m" },
> +               { .reg = 0x348, .pll_name = "sclk_otgphy2_480m" },
> +               { /* sentinel */ }
> +       },

Slighly annoying to have to add a table for each SoC.  I'd imagine
this growing quite large.

Would it be possible to query our parent clock name and then append a
"_480m" suffix?  Then you can magically get the name you want, right?
That doesn't preclude you from later overriding this or adding a "dts"
property for it, but it means no tables for now and (hopefully) for
the forseeable future.  ...and you get to kill a bunch of code in this
patch...

You could fall back to some generic name based on the PHY device tree
node name if you wanted, or use the ID allocator...


Otherwise, this all looks good to me.  If you have a good reason why
using the parent name isn't a good idea, let me know and I can add my
Reviewed-by on this patch.

-Doug
