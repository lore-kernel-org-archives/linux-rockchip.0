From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: add HDMI sound node for
 rk3328-rock64
Date: Sat, 2 Mar 2019 23:19:15 +0900
Message-ID: <d42dd768-d6c1-098d-759f-e3576d0edcc2@katsuster.net>
References: <20190217173407.29189-1-katsuhiro@katsuster.net>
 <20190217173407.29189-2-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190217173407.29189-2-katsuhiro@katsuster.net>
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
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Ping...

On 2019/02/18 2:34, Katsuhiro Suzuki wrote:
> This patch adds HDMI sound (I2S0) node for rock64.
> 
> After apply this patch, UART2 will fail to allocate DMA resources
> but UART driver can work fine without DMA.
> 
> This error is related to the DMAC of rk3328 (pl330 or compatible).
> DMAC connected to 16 DMA sources. Each sources have ID number that is
> called 'Req number' in rk3328 TRM. Currently total 7 sources has been
> activated as follows:
> 
> | Req number | Source | Required  |
> |            |        | channels  |
> |------------+--------+-----------|
> | 14, 15     | I2S1   | 2ch       |
> |  6,  7     | UART2  | 2ch       |
> |     10     | SPDIF  | 1ch       |
> |  8,  9     | SPI0   | 2ch       |
> |------------+--------+-----------|
> |            | Total  | 7ch       |
> 
> HDMI audio needs to activate new source I2S0 (Req number 11 and 12).
> I2S0 can work concurrently with other sources, but rk3328 DMAC can
> use max 8 channels at same time. If I2S0 is simply activated by this
> patch, required DMAC channels will be 9. So last one (UART2) cannot
> allocate the DMA resources.
> 
> Virt-dma mechanism for pl0330 DMAC driver is needed to fix this
> problem.
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> ---
>   .../arm64/boot/dts/rockchip/rk3328-rock64.dts | 21 ++++++++++++++++++-
>   1 file changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index 2157a528276b..bfc0930d245c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -68,7 +68,8 @@
>   	sound {
>   		compatible = "audio-graph-card";
>   		label = "rockchip,rk3328";
> -		dais = <&i2s1_p0
> +		dais = <&i2s0_p0
> +			&i2s1_p0
>   			&spdif_p0>;
>   	};
>   
> @@ -141,6 +142,12 @@
>   
>   &hdmi {
>   	status = "okay";
> +
> +	port@0 {
> +		hdmi_p0_0: endpoint {
> +			remote-endpoint = <&i2s0_p0_0>;
> +		};
> +	};
>   };
>   
>   &hdmiphy {
> @@ -256,6 +263,18 @@
>   	};
>   };
>   
> +&i2s0 {
> +	status = "okay";
> +
> +	i2s0_p0: port {
> +		i2s0_p0_0: endpoint {
> +			dai-format = "i2s";
> +			mclk-fs = <256>;
> +			remote-endpoint = <&hdmi_p0_0>;
> +		};
> +	};
> +};
> +
>   &i2s1 {
>   	status = "okay";
>   
> 
