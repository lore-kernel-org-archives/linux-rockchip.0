From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v6 04/16] arm: mach-rockchip: bind sub-nodes for
 rk3399_syscon
Date: Tue, 26 May 2020 09:42:58 +0530
Message-ID: <CAMty3ZCTLOE7NqHh3J+XNJvd85GSzPHfhay268EfwSvnqdLnQQ@mail.gmail.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033220.20047-5-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200526033220.20047-5-frank.wang@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Marek Vasut <marex@denx.de>, Bin Meng <bmeng.cn@gmail.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Klaus Goger <klaus.goger@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>, Belisko Marek <marek.belisko@gmail.com>, William Wu <william.wu@rock-chips.com>, jianing.ren@rock-chips.com, chenjh@rock-chips.com, wmc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Tue, May 26, 2020 at 9:02 AM Frank Wang <frank.wang@rock-chips.com> wrote:
>
> There are some sub-nodes under the grf DT, so add bind callback
> function in rk3399 syscon driver to scan them recursively.
>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
>  arch/arm/mach-rockchip/rk3399/syscon_rk3399.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c b/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
> index 259ca44d68..f27b0ced82 100644
> --- a/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
> +++ b/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
> @@ -20,6 +20,9 @@ static const struct udevice_id rk3399_syscon_ids[] = {
>  U_BOOT_DRIVER(syscon_rk3399) = {
>         .name = "rk3399_syscon",
>         .id = UCLASS_SYSCON,
> +#if !CONFIG_IS_ENABLED(OF_PLATDATA)
> +       .bind = dm_scan_fdt_dev,
> +#endif

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Jagan Teki <jagan@amarulasolutions.com> # roc-rk3399-pc
