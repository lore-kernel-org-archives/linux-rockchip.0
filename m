From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix cts, rts pin assign of
 UART3 for rk3399
Date: Mon, 4 Mar 2019 23:00:06 +0900
Message-ID: <79bf4a6a-59d1-7478-3a28-20ac6c1a44e9@katsuster.net>
References: <20190219140800.12624-1-katsuhiro@katsuster.net>
 <20190219140800.12624-2-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190219140800.12624-2-katsuhiro@katsuster.net>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

ping...

On 2019/02/19 23:08, Katsuhiro Suzuki wrote:
> This patch fixes pin assign of cts and rts signal of UART3.
> 
> Currently GPIO3_C2 and C3 pins are assigned but TRM says that
> GPIO3_C0 and C1 are correct.
> 
> Refer:
>    RK3399 TRM v1.4 - Table 19-1 UART Interface Description
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 76fc2c7af80a..beaa92744a64 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -2535,12 +2535,12 @@
>   
>   			uart3_cts: uart3-cts {
>   				rockchip,pins =
> -					<3 RK_PC2 RK_FUNC_2 &pcfg_pull_none>;
> +					<3 RK_PC0 RK_FUNC_2 &pcfg_pull_none>;
>   			};
>   
>   			uart3_rts: uart3-rts {
>   				rockchip,pins =
> -					<3 RK_PC3 RK_FUNC_2 &pcfg_pull_none>;
> +					<3 RK_PC1 RK_FUNC_2 &pcfg_pull_none>;
>   			};
>   		};
>   
> 
