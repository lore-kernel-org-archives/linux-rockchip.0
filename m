From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 10/12] arm64: dts: rockchip: Add PX30 CRTCs graph LVDS
 endpoints
Date: Fri, 13 Dec 2019 19:28:21 +0100
Message-ID: <1933192.L6hp5CucIl@diego>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
 <20191213181051.25983-11-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20191213181051.25983-11-miquel.raynal@bootlin.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, Maxime Chevallier <maxime.chevallier@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Miquel,

Am Freitag, 13. Dezember 2019, 19:10:49 CET schrieb Miquel Raynal:
> Add the display subsystem routes with the two available CRTCs: vopb
> and vopl (big and little). For each CRTC, add the LVDS endpoints. MIPI
> DSI endpoints will come later.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index b2af0f02ecbe..1c96ba556daf 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -190,6 +190,16 @@
>  		compatible = "rockchip,display-subsystem";
>  		ports = <&vopb_out>, <&vopl_out>;
>  		status = "disabled";
> +
> +		route {
> +			route_vopb_lvds: route-vopb-lvds {
> +				connect = <&vopb_out_lvds>;
> +			};
> +
> +			route_vopl_lvds: route-vopl-lvds {
> +				connect = <&vopl_out_lvds>;
> +			};
> +		};

where does this route-stuff come from?
The vendor tree? Because so far I've not seen this in mainline-drm
in general nor the Rockchip drm driver itself.


>  	};
>  
>  	gmac_clkin: external-gmac-clock {
> @@ -976,6 +986,11 @@
>  		vopb_out: port {
>  			#address-cells = <1>;
>  			#size-cells = <0>;
> +
> +			vopb_out_lvds: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&lvds_vopb_in>;
> +			};

This (and the one below) would create dangling phandle references
and compile errors, because the referenced phandles only get introduced
in patch12. So ideally merge this into the last patch.


Heiko

>  		};
>  	};
>  
> @@ -1008,6 +1023,11 @@
>  		vopl_out: port {
>  			#address-cells = <1>;
>  			#size-cells = <0>;
> +
> +			vopl_out_lvds: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&lvds_vopl_in>;
> +			};
>  		};
>  	};
>  
> 
