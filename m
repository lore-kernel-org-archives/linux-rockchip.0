From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 1/3] arm64: dts: rk3399-nanopi4: Add u-boot, spl-boot-order
Date: Mon, 25 May 2020 10:50:41 +0800
Message-ID: <5f9295a6-0654-7f02-faca-c57915540306@rock-chips.com>
References: <20200524173213.201123-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200524173213.201123-1-jagan@amarulasolutions.com>
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
Cc: sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org


On 2020/5/25 上午1:32, Jagan Teki wrote:
> Add u-boot,spl-boot-order as sdhci and sdmmc for booting
> from eMMC and SD card.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   arch/arm/dts/rk3399-nanopi4-u-boot.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> index a126bbaf08..a9d10592d5 100644
> --- a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> @@ -5,6 +5,12 @@
>   
>   #include "rk3399-u-boot.dtsi"
>   
> +/{
> +	chosen {
> +		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
> +	};
> +};
> +
>   &sdmmc {
>   	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_cd>;
>   };
