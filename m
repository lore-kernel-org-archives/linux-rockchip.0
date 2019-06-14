From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 3/4] ARM: dts: rockchip: add display nodes for rk322x
Date: Fri, 14 Jun 2019 10:45:25 -0700
Message-ID: <20190614174526.6F805217D6@mail.kernel.org>
References: <20190614165454.13743-1-heiko@sntech.de> <20190614165454.13743-4-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190614165454.13743-4-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, justin.swartz@risingedge.co.za, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, mturquette@baylibre.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Quoting Heiko Stuebner (2019-06-14 09:54:53)
> From: Justin Swartz <justin.swartz@risingedge.co.za>
>=20
> Add display_subsystem, hdmi_phy, vop, and hdmi device nodes plus
> a few hdmi pinctrl entries to allow for HDMI output.
>=20
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> [added assigned-clock settings for hdmiphy output]
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm/boot/dts/rk322x.dtsi | 83 +++++++++++++++++++++++++++++++++++
>  1 file changed, 83 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
> index da102fff96a2..148f9b5157ea 100644
> --- a/arch/arm/boot/dts/rk322x.dtsi
> +++ b/arch/arm/boot/dts/rk322x.dtsi
> @@ -143,6 +143,11 @@
>                 #clock-cells =3D <0>;
>         };
> =20
> +       display_subsystem: display-subsystem {
> +               compatible =3D "rockchip,display-subsystem";
> +               ports =3D <&vop_out>;
> +       };
> +

What is this? It doesn't have a reg property so it looks like a virtual
device. Why is it in DT?
