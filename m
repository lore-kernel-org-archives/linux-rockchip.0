From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v5 4/5] rockchip: spl: Move board_early_init_f after cpu
 timer
Date: Sat, 18 Jul 2020 21:22:43 +0800
Message-ID: <18b45ffa-036a-227e-6a8b-48a6a15a5f64@rock-chips.com>
References: <20200714093229.28763-1-jagan@amarulasolutions.com>
 <20200714093229.28763-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200714093229.28763-5-jagan@amarulasolutions.com>
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

On 2020/7/14 下午5:32, Jagan Teki wrote:
> Custom board_early_init_f not only deal with simple gpio
> configuration but also have a possibility to access clocks
> to process any clock related operations like checking reset
> cause state and etc.
>
> So, call it once the rockchip timer initialization done instead
> of calling first place of board_init_f which doesn't have any
> rockchip init code before.
>
> This specific concern was tested with checking reset reason
> via board_early_init_f, which indeed require a clk probe.

board_early_init_f() is suppose to run at very beginning before
the spl framework is init, so I don't agree this move.
I think the led setup code definitely should go to spl_board_init().

As I said before, the setup_led should be the common feature,
so I think you can have a copy of setup_led() in rk3399.c as a weak
common function, and if roc-rk3399-pc is really special, then you
can have its own implementation.

Note that the spl_board_init in SPL is already very early stage in
system init, should be enough for your case, you can do a test for
the led_setup() in board_early_init_f() after this patch and in
spl_board_init(), they should be very close.

Thanks,
- Kever

>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v5:
> - new patch
>
>   arch/arm/mach-rockchip/spl.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/mach-rockchip/spl.c b/arch/arm/mach-rockchip/spl.c
> index cddf4fd3d5..082828de66 100644
> --- a/arch/arm/mach-rockchip/spl.c
> +++ b/arch/arm/mach-rockchip/spl.c
> @@ -122,8 +122,6 @@ void board_init_f(ulong dummy)
>   	debug("\nspl:debug uart enabled in %s\n", __func__);
>   #endif
>   
> -	board_early_init_f();
> -
>   	ret = spl_early_init();
>   	if (ret) {
>   		printf("spl_early_init() failed: %d\n", ret);
> @@ -137,6 +135,9 @@ void board_init_f(ulong dummy)
>   	/* Init ARM arch timer in arch/arm/cpu/armv7/arch_timer.c */
>   	timer_init();
>   #endif
> +
> +	board_early_init_f();
> +
>   #if !defined(CONFIG_TPL) || defined(CONFIG_SPL_RAM)
>   	debug("\nspl:init dram\n");
>   	ret = dram_init();
