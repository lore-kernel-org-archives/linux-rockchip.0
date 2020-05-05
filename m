From: Chen-Yu Tsai <wens-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: misc. cleanups and improvements
Date: Tue, 5 May 2020 14:24:25 +0800
Message-ID: <CAGb2v67jPJA0hqXQg1Ufpkxt=7bqwoaQATRVuNg2AC5RZ9Os3w@mail.gmail.com>
References: <20200427073132.29997-1-wens@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200427073132.29997-1-wens-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Jacek Anaszewski <jacek.anaszewski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, Dan Murphy <dmurphy-l0cyMroinI0@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-leds-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chen-Yu Tsai <wens-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Apr 27, 2020 at 3:31 PM Chen-Yu Tsai <wens-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
>
> From: Chen-Yu Tsai <wens-jdAy2FN1RRM@public.gmane.org>
>
> Hi,
>
> Here is the remaining patch for roc-rk3399-pc, along with a few other
> new patches.
>
>   - Based on discussions from v1, patch one, newly added, drops the list
>     of valid values for linux,default-triggers.
>
>   - Patch two is the same as in v1
>
>   - Patch three, new, sets dr_mode to "host" to the dwc2 OTG controller,
>     matching what the board uses it for, a host port. This gets rid of
>     a warning from the kernel.
>
> Please have a look.

Are there any comments from the maintainers?

I feel like this is getting needlessly sidetracked by the endless discussion
about GPIO LED node names which I left untouched on purpose in this series.

ChenYu


> Regards
> ChenYu
>
>
> Chen-Yu Tsai (3):
>   dt-bindings: leds: common: Drop enumeration for linux,default-triggers
>   arm64: dts: rockchip: rk3399-roc-pc: Fix MMC numbering for LED
>     triggers
>   arm64: dts: rockchip: rk3328-roc-cc: Set dr_mode to "host" for OTG
>
>  .../devicetree/bindings/leds/common.yaml      | 21 +------------------
>  .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |  1 +
>  .../dts/rockchip/rk3399-roc-pc-mezzanine.dts  |  8 +++++++
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |  4 ++--
>  4 files changed, 12 insertions(+), 22 deletions(-)
>
> --
> 2.26.0
>
