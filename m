From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: Sync v5.7-rc1 rk3399pro.dtsi
Date: Sat, 27 Jun 2020 22:31:27 +0800
Message-ID: <37a10f4a-f702-6b05-d0d9-2491c90f836c@rock-chips.com>
References: <20200610103658.96678-1-jagan@amarulasolutions.com>
 <20200610103658.96678-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200610103658.96678-2-jagan@amarulasolutions.com>
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
Cc: Tom Cubie <tom@radxa.com>, Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


On 2020/6/10 下午6:36, Jagan Teki wrote:
> Sync linux-next v5.7-rc1 rk3399pro.dtsi.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   arch/arm/dts/rk3399pro.dtsi | 22 ++++++++++++++++++++++
>   1 file changed, 22 insertions(+)
>   create mode 100644 arch/arm/dts/rk3399pro.dtsi
>
> diff --git a/arch/arm/dts/rk3399pro.dtsi b/arch/arm/dts/rk3399pro.dtsi
> new file mode 100644
> index 0000000000..bb5ebf6608
> --- /dev/null
> +++ b/arch/arm/dts/rk3399pro.dtsi
> @@ -0,0 +1,22 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> +
> +#include "rk3399.dtsi"
> +
> +/ {
> +	compatible = "rockchip,rk3399pro";
> +};
> +
> +/* Default to enabled since AP talk to NPU part over pcie */
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +/* Default to enabled since AP talk to NPU part over pcie */
> +&pcie0 {
> +	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqn_cpm>;
> +	status = "okay";
> +};
