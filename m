From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 2/3] soc: rockchip: add driver handling grf setup
Date: Wed, 16 Nov 2016 13:50:56 -0800
Message-ID: <CAD=FV=VuyJKR6hyicNBYFJ+d4eY9HK9gz8LzOHuOPSx=6N5MQQ@mail.gmail.com>
References: <20161115223900.30728-1-heiko@sntech.de>
 <20161115223900.30728-3-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20161115223900.30728-3-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Heiko,

On Tue, Nov 15, 2016 at 2:38 PM, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> The General Register Files are an area of registers containing a lot
> of single-bit settings for numerous components as well full components
> like usbphy control. Therefore all used components are accessed
> via the syscon provided by the grf nodes or from the sub-devices
> created through the simple-mfd created from the grf node.
>
> Some settings are not used by anything but will need to be set up
> according to expectations on the kernel side.
>
> Best example is the force_jtag setting, which defaults to on and
> results in the soc switching the pin-outputs between jtag and sdmmc
> automatically depending on the card-detect status. This conflicts
> heavily with how the dw_mmc driver expects to do its work and also
> with the clock-controller, which has most likely deactivated the
> jtag clock due to it being unused.
>
> So far the handling of this setting was living in the mach-rockchip
> code for the arm32-based rk3288 but that of course doesn't work
> for arm64 socs and would also look ugly for further arm32 socs.
>
> Also always disabling this setting is quite specific to linux and
> its subsystems, other operating systems might prefer other settings,
> so that the bootloader cannot really set a sane default for all.
>
> So introduce a top-level driver for the grf that handles these
> settings that need to be a certain way but nobody cares about.
>
> Other needed settings might surface in the future and can then
> be added here, but only as a last option. Ideally general GRF
> settings should be handled in the driver needing them.
>
> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> ---
>  drivers/soc/rockchip/Kconfig  |  10 ++++
>  drivers/soc/rockchip/Makefile |   1 +
>  drivers/soc/rockchip/grf.c    | 134 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 145 insertions(+)

Other than the header file stuff pointed out by Shawn, this looks good
to me now.

Reviewed-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
