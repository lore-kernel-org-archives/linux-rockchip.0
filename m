From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 3/7] rockchip: px30: Add EVB_PX30 Kconfig help
Date: Sat, 8 Aug 2020 17:55:20 +0800
Message-ID: <adb61be2-3392-4319-2c48-f92228e1134b@rock-chips.com>
References: <20200724105119.13123-1-jagan@amarulasolutions.com>
 <20200724105119.13123-4-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200724105119.13123-4-jagan@amarulasolutions.com>
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


ÔÚ 2020/7/24 ÏÂÎç6:51, Jagan Teki Ð´µÀ:
> TARGET_EVB_PX30 can be possible to use other px30 boards.
>
> Add the help text for existing EVB, so-that the new boards
> which are resuing this config option can mention their board
> help text.
>
> This would help to track which boards are using EVB_PX30 config.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   arch/arm/mach-rockchip/px30/Kconfig | 5 +++++
>   1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm/mach-rockchip/px30/Kconfig b/arch/arm/mach-rockchip/px30/Kconfig
> index 9f3ad4f623..82bbc1c86f 100644
> --- a/arch/arm/mach-rockchip/px30/Kconfig
> +++ b/arch/arm/mach-rockchip/px30/Kconfig
> @@ -2,6 +2,11 @@ if ROCKCHIP_PX30
>   
>   config TARGET_EVB_PX30
>   	bool "EVB_PX30"
> +	help
> +	  This target config option used for below listed px30 boards.
> +
> +	  EVB_PX30:
> +	  * EVB_PX30 is an evaluation board for Rockchip PX30.
>   
>   config ROCKCHIP_BOOT_MODE_REG
>   	default 0xff010200
