From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] ARM: dts: rockchip: use DMA channels for UARTs of
 TinkerBoard
Date: Sat, 14 Mar 2020 16:09:26 +0100
Message-ID: <2930126.sCcUyySgUU@diego>
References: <20200314142327.25568-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <20200314142327.25568-1-katsuhiro@katsuster.net>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Samstag, 14. M=E4rz 2020, 15:23:27 CET schrieb Katsuhiro Suzuki:
> This patch enables to use DMAC for all UARTs that are connected to
> dmac_peri core for TinkerBoard.
> =

> Only uart2 is connected different DMAC (dmac_bus_s) so keep current
> settings on this patch.

This belongs in rk3288.dtsi, as this is definitly not board-specific, as
the dma-uart connection is done inside the soc.

At least on arm64 (rk3328, px30, probably more) we already have the
uart dmas in the core dtsi without any problems.

Is there any reason why you only did add it to the tinker board only?


Heiko


> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> ---
>  arch/arm/boot/dts/rk3288-tinker.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3=
288-tinker.dtsi
> index 312582c1bd37..6efabeaf3c6d 100644
> --- a/arch/arm/boot/dts/rk3288-tinker.dtsi
> +++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
> @@ -491,10 +491,14 @@ &tsadc {
>  };
>  =

>  &uart0 {
> +	dmas =3D <&dmac_peri 1>, <&dmac_peri 2>;
> +	dma-names =3D "tx", "rx";
>  	status =3D "okay";
>  };
>  =

>  &uart1 {
> +	dmas =3D <&dmac_peri 3>, <&dmac_peri 4>;
> +	dma-names =3D "tx", "rx";
>  	status =3D "okay";
>  };
>  =

> @@ -503,10 +507,14 @@ &uart2 {
>  };
>  =

>  &uart3 {
> +	dmas =3D <&dmac_peri 7>, <&dmac_peri 8>;
> +	dma-names =3D "tx", "rx";
>  	status =3D "okay";
>  };
>  =

>  &uart4 {
> +	dmas =3D <&dmac_peri 9>, <&dmac_peri 10>;
> +	dma-names =3D "tx", "rx";
>  	status =3D "okay";
>  };
>  =

> =
