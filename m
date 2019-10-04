From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] arm64: dts: rockchip: add analog audio nodes on
 rk3399-rockpro64
Date: Sat, 5 Oct 2019 02:26:00 +0900
Message-ID: <74097d16-ec3e-70e9-f835-25ae265b0ad9@katsuster.net>
References: <20190907174833.19957-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190907174833.19957-1-katsuhiro@katsuster.net>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Past about 1 month, so I send a ping...

On 2019/09/08 2:48, Katsuhiro Suzuki wrote:
> This patch adds audio codec (Everest ES8316) and I2S audio nodes for
> RK3399 RockPro64.
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> ---
>   .../boot/dts/rockchip/rk3399-rockpro64.dts    | 28 +++++++++++++++++++
>   1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 0401d4ec1f45..8b1e6382b140 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -81,6 +81,12 @@
>   		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>   	};
>   
> +	sound {
> +		compatible = "audio-graph-card";
> +		label = "rockchip,rk3399";
> +		dais = <&i2s1_p0>;
> +	};
> +
>   	vcc12v_dcin: vcc12v-dcin {
>   		compatible = "regulator-fixed";
>   		regulator-name = "vcc12v_dcin";
> @@ -470,6 +476,20 @@
>   	i2c-scl-rising-time-ns = <300>;
>   	i2c-scl-falling-time-ns = <15>;
>   	status = "okay";
> +
> +	es8316: codec@11 {
> +		compatible = "everest,es8316";
> +		reg = <0x11>;
> +		clocks = <&cru SCLK_I2S_8CH_OUT>;
> +		clock-names = "mclk";
> +		#sound-dai-cells = <0>;
> +
> +		port {
> +			es8316_p0_0: endpoint {
> +				remote-endpoint = <&i2s1_p0_0>;
> +			};
> +		};
> +	};
>   };
>   
>   &i2c3 {
> @@ -505,6 +525,14 @@
>   	rockchip,playback-channels = <2>;
>   	rockchip,capture-channels = <2>;
>   	status = "okay";
> +
> +	i2s1_p0: port {
> +		i2s1_p0_0: endpoint {
> +			dai-format = "i2s";
> +			mclk-fs = <256>;
> +			remote-endpoint = <&es8316_p0_0>;
> +		};
> +	};
>   };
>   
>   &i2s2 {
> 
