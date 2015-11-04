From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/8] phy: rockchip-usb: fix clock get-put mismatch
Date: Wed, 4 Nov 2015 15:34:59 -0800
Message-ID: <CAD=FV=X=tDxuc_wur-Bedi4PqWhe9Z3t_oaUQ1+6vQHmOSb+Qg@mail.gmail.com>
References: <1446673454-9529-1-git-send-email-heiko@sntech.de>
	<1446673454-9529-2-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1446673454-9529-2-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Romain Perier <romain.perier@gmail.com>, Arnd Bergmann <arnd@arndb.de>
List-Id: linux-rockchip.vger.kernel.org

Heiko

On Wed, Nov 4, 2015 at 1:44 PM, Heiko Stuebner <heiko@sntech.de> wrote:
> Currently the phy driver only gets the optional clock reference but
> never puts it again, neither during error handling nor on remove.
> Fix that by moving the clk_put to a devm-action that gets called at
> the right time when all other devm actions are done.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/phy/phy-rockchip-usb.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
