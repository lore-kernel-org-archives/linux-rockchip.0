From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 05/11] rk3399: Check MMC env while defining it
Date: Mon, 30 Dec 2019 11:06:18 +0800
Message-ID: <62769d10-24a2-5026-5d21-3189362e1266@rock-chips.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-6-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191221075440.6944-6-jagan@amarulasolutions.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


On 2019/12/21 下午3:54, Jagan Teki wrote:
> rk3399 do support SPI flash as well, so there is
> a possibility of using flash environment for those
> usecases.
>
> So define env device for MMC only when it is used
> by specific configuration.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   include/configs/evb_rk3399.h | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/include/configs/evb_rk3399.h b/include/configs/evb_rk3399.h
> index b9c4d683f4..c0b0358893 100644
> --- a/include/configs/evb_rk3399.h
> +++ b/include/configs/evb_rk3399.h
> @@ -8,7 +8,9 @@
>   
>   #include <configs/rk3399_common.h>
>   
> -#define CONFIG_SYS_MMC_ENV_DEV 0
> +#if defined(CONFIG_ENV_IS_IN_MMC)
> +# define CONFIG_SYS_MMC_ENV_DEV		0
> +#endif
>   
>   #define SDRAM_BANK_SIZE			(2UL << 30)
>   
