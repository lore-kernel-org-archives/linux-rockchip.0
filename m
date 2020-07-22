From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v6 1/5] rockchip: rk3399: Add weak led_setup()
Date: Wed, 22 Jul 2020 20:12:07 +0800
Message-ID: <b0c2d1c5-f879-641d-4c53-b2480bb0c9de@rock-chips.com>
References: <20200721150604.35410-1-jagan@amarulasolutions.com>
 <20200721150604.35410-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200721150604.35410-2-jagan@amarulasolutions.com>
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


On 2020/7/21 下午11:06, Jagan Teki wrote:
> Add weak led_setup() so that board which has an uncommon
> led setup code that can make use of custom implementation.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang<kever.yang@rock-chips.com>

Thanks,
- Kever

> ---
> Changes for v6:
> - new patch
>
>   arch/arm/mach-rockchip/rk3399/rk3399.c | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm/mach-rockchip/rk3399/rk3399.c b/arch/arm/mach-rockchip/rk3399/rk3399.c
> index 4fda93b152..c643483971 100644
> --- a/arch/arm/mach-rockchip/rk3399/rk3399.c
> +++ b/arch/arm/mach-rockchip/rk3399/rk3399.c
> @@ -241,8 +241,14 @@ static void rk3399_force_power_on_reset(void)
>   }
>   #endif
>   
> +void __weak led_setup(void)
> +{
> +}
> +
>   void spl_board_init(void)
>   {
> +	led_setup();
> +
>   #if defined(SPL_GPIO_SUPPORT)
>   	struct rockchip_cru *cru = rockchip_get_cru();
>   
