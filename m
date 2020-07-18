From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 3/3] roc-rk3399-pc: Disable RAM_ROCKCHIP_DEBUG
Date: Sat, 18 Jul 2020 20:15:53 +0800
Message-ID: <ebb4ddef-d06d-2aa6-b894-79fbe257bd48@rock-chips.com>
References: <20200713200635.651032-1-jagan@amarulasolutions.com>
 <20200713200635.651032-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200713200635.651032-3-jagan@amarulasolutions.com>
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


On 2020/7/14 上午4:06, Jagan Teki wrote:
> Disable ram rockchip debug driver for roc-rk3399-pc
> boards since we have verified ram in many instances
> with respective U-Boot versions.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang<kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   configs/roc-pc-mezzanine-rk3399_defconfig | 1 +
>   configs/roc-pc-rk3399_defconfig           | 1 +
>   2 files changed, 2 insertions(+)
>
> diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
> index f15dddc684..c87a8568fc 100644
> --- a/configs/roc-pc-mezzanine-rk3399_defconfig
> +++ b/configs/roc-pc-mezzanine-rk3399_defconfig
> @@ -53,6 +53,7 @@ CONFIG_PMIC_RK8XX=y
>   CONFIG_REGULATOR_PWM=y
>   CONFIG_REGULATOR_RK8XX=y
>   CONFIG_PWM_ROCKCHIP=y
> +# CONFIG_RAM_ROCKCHIP_DEBUG is not set
>   CONFIG_RAM_RK3399_LPDDR4=y
>   CONFIG_DM_RESET=y
>   CONFIG_BAUDRATE=1500000
> diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
> index 9ffde7f960..601f5c6ae1 100644
> --- a/configs/roc-pc-rk3399_defconfig
> +++ b/configs/roc-pc-rk3399_defconfig
> @@ -50,6 +50,7 @@ CONFIG_PMIC_RK8XX=y
>   CONFIG_REGULATOR_PWM=y
>   CONFIG_REGULATOR_RK8XX=y
>   CONFIG_PWM_ROCKCHIP=y
> +# CONFIG_RAM_ROCKCHIP_DEBUG is not set
>   CONFIG_RAM_RK3399_LPDDR4=y
>   CONFIG_DM_RESET=y
>   CONFIG_BAUDRATE=1500000
