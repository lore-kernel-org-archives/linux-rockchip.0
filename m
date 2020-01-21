From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix px30 lvds ports
Date: Tue, 21 Jan 2020 14:56:58 +0000
Message-ID: <1cd15d49-3c4f-6da2-4d4f-0414dd6d6adc@arm.com>
References: <20200121134510.3893487-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200121134510.3893487-1-heiko@sntech.de>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com, linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

On 21/01/2020 1:45 pm, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The lvds controller has two ports. port@0 for the connection
> to the display controller(s) and port@1 for the connection to
> the panel, so should have a ports node covering the port@x nodes.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>   arch/arm64/boot/dts/rockchip/px30.dtsi | 23 ++++++++++++++---------
>   1 file changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 9b1c92132007..37e014444214 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -421,19 +421,24 @@ lvds: lvds {
>   			rockchip,output = "lvds";
>   			status = "disabled";

FWIW, the main node's "#{address,size}-cells" properties above here 
should now be unnecessary too.

Robin.

>   
> -			port@0 {
> -				reg = <0>;
> +			ports {
>   				#address-cells = <1>;
>   				#size-cells = <0>;
>   
> -				lvds_vopb_in: endpoint@0 {
> +				port@0 {
>   					reg = <0>;
> -					remote-endpoint = <&vopb_out_lvds>;
> -				};
> -
> -				lvds_vopl_in: endpoint@1 {
> -					reg = <1>;
> -					remote-endpoint = <&vopl_out_lvds>;
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					lvds_vopb_in: endpoint@0 {
> +						reg = <0>;
> +						remote-endpoint = <&vopb_out_lvds>;
> +					};
> +
> +					lvds_vopl_in: endpoint@1 {
> +						reg = <1>;
> +						remote-endpoint = <&vopl_out_lvds>;
> +					};
>   				};
>   			};
>   		};
> 
