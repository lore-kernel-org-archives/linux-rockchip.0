From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 02/16] arm: dts: rockchip: Sync rk3288 dtsi from linux
Date: Tue, 21 Jul 2020 11:14:37 +0800
Message-ID: <ac4685ad-1ec5-05e0-d268-db4035b05a38@rock-chips.com>
References: <20200720185120.671064-1-jagan@amarulasolutions.com>
 <20200720185120.671064-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200720185120.671064-3-jagan@amarulasolutions.com>
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


On 2020/7/21 上午2:51, Jagan Teki wrote:
> From: Suniel Mahesh <sunil@amarulasolutions.com>
>
> This sync has changes required to use HDMI CEC pin in U-Boot.
>
> Sync dts from linux v5.8-rc5 commit:
> 	"ARM: dts: rockchip: define the two possible rk3288 CEC pins"
> 	(sha1: 838980dd04e994bf81cf104fa01ae60802146b39)
>
> Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang<kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   arch/arm/dts/rk3288.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm/dts/rk3288.dtsi b/arch/arm/dts/rk3288.dtsi
> index 866fc08215..18b372db3a 100644
> --- a/arch/arm/dts/rk3288.dtsi
> +++ b/arch/arm/dts/rk3288.dtsi
> @@ -1085,6 +1085,12 @@
>   			#interrupt-cells = <2>;
>   		};
>   
> +		hdmi {
> +			hdmi_cec_c0: hdmi-cec-c0 {
> +				rockchip,pins = <7 RK_PC0 2 &pcfg_pull_none>;
> +			};
> +		};
> +
>   		pcfg_pull_up: pcfg-pull-up {
>   			bias-pull-up;
>   		};
