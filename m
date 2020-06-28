From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v4 2/5] rk3399: spl: Print SPL banner after relocation
Date: Sun, 28 Jun 2020 10:56:05 +0800
Message-ID: <0a2a47aa-e2e2-ea0e-bcf4-7a1137cc6129@rock-chips.com>
References: <20200618153948.218506-1-jagan@amarulasolutions.com>
 <20200618153948.218506-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200618153948.218506-3-jagan@amarulasolutions.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Jagan,

On 2020/6/18 下午11:39, Jagan Teki wrote:
> Usually printing the SPL banner varies between architecture
> or board codes.
> - Some would print before relocation at the end board_init_f
>    for making sure all initialization prior to this would happen
>    properly. if at all there is a requirement for serial init,
>    that happens properly since it prints all after that.
> - Some would print after relocation at the spl_board_init for
>    making sure all initialization prior to relocation would
>    happen properly. Also debug uart on these cases would be
>    available before relocation. So debug support is available
>    in before and after relocation.
>
> Rockchip SPL is following formar step to print the banner at
> the end of board_init_f.
>
> To support various custom use cases in SPL like leds, environment,
> board detections later options like printing the banner after
> relocation would be a better option.

I don't agree, the banner is tell people we are in SPL now, we should 
print it as soon as

possible,  if any of step like led, env, relocate and etc fails, then 
user can not see anything,

they don't event know if we have get into SPL. The update of leds and 
env does not depends

on banner print.


Thanks,

- Kever

> Printing banner would also
> help to support debugging availability between relocation codes,
> like debug uart available before relocation and banner availability
> after relation.
>
> By demonstrating all the above use cases, this patch is trying
> to print the SPL banner after relocation.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
> ---
> Changes for v4:
> - none
>
>   arch/arm/mach-rockchip/spl.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-rockchip/spl.c b/arch/arm/mach-rockchip/spl.c
> index d4c83a1119..6d5c058548 100644
> --- a/arch/arm/mach-rockchip/spl.c
> +++ b/arch/arm/mach-rockchip/spl.c
> @@ -147,7 +147,6 @@ void board_init_f(ulong dummy)
>   	gd->ram_top = gd->ram_base + get_effective_memsize();
>   	gd->ram_top = board_get_usable_ram_top(gd->ram_size);
>   #endif
> -	preloader_console_init();
>   }
>   
>   __weak void rk_spl_board_init(void)
> @@ -158,6 +157,8 @@ void spl_board_init(void)
>   {
>   	/* board specific spl init */
>   	rk_spl_board_init();
> +
> +	preloader_console_init();
>   }
>   
>   #ifdef CONFIG_SPL_LOAD_FIT
