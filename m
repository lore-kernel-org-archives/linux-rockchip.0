From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2] clk: rockchip: use separate compatibles for rk3288w-cru
Date: Sat, 4 Jul 2020 14:47:11 +0530
Message-ID: <CAMty3ZD7jBSCEWLRK9qNXKGQC2_0eJyo5NkbV4MfaTNbC4Br2A@mail.gmail.com>
References: <20200703154948.260369-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200703154948.260369-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@collabora.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>, linux-clk <linux-clk@vger.kernel.org>, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jul 3, 2020 at 9:19 PM Heiko Stuebner <heiko@sntech.de> wrote:
>
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
>
> Commit 1627f683636d ("clk: rockchip: Handle clock tree for rk3288w variant")
> added the check for rk3288w-specific clock-tree changes but in turn would
> require a double-compatible due to re-using the main rockchip,rk3288-cru
> compatible as entry point.
>
> The binding change actually describes the compatibles as one or the other
> so adapt the code accordingly and add a real second entry-point for the
> clock controller.
>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Jagan Teki <jagan@amarulasolutions.com> # rock-pi-n8

Note: These are U-Boot changes,
https://patchwork.ozlabs.org/project/uboot/list/?series=187546

Jagan.
