From: Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH v2 5/5] usb: dwc3: rockchip: add devicetree bindings documentation
Date: Tue, 24 May 2016 12:32:23 +0300
Message-ID: <87a8jfu7h4.fsf@linux.intel.com>
References: <1463133155-20047-1-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1463133155-20047-1-git-send-email-william.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: gregkh@linuxfoundation.org, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, briannorris@google.com, dianders@google.com, kever.yang@rock-chips.com, huangtao@rock-chips.com, frank.wang@rock-chips.com, eddie.cai@rock-chips.com, John.Youn@synopsys.com, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, William Wu <william.wu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

William Wu <william.wu@rock-chips.com> writes:
> This patch documents the device tree documentation required for
> Rockchip USB3.0 core wrapper consist of USB3.0 IP from Synopsys.
>
> It could operate in device mode (SS, HS, FS) and host
> mode (SS, HS, FS, LS).
>
> Signed-off-by: William Wu <william.wu@rock-chips.com>
> ---
> Changes in v2:
> - add rockchip,dwc3.txt to Documentation/devicetree/bindings/ (Felipe, Br=
ian)
>
>  .../devicetree/bindings/usb/rockchip,dwc3.txt      | 45 ++++++++++++++++=
++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.t=
xt
>
> diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt b/Do=
cumentation/devicetree/bindings/usb/rockchip,dwc3.txt
> new file mode 100644
> index 0000000..10303d9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
> @@ -0,0 +1,45 @@
> +Rockchip SuperSpeed DWC3 USB SoC controller
> +
> +Required properties:
> +- compatible:	should contain "rockchip,dwc3"
> +- clocks:		A list of phandle + clock-specifier pairs for the
> +				clocks listed in clock-names
> +- clock-names:	Should contain the following:
> +  "clk_usb3otg0_ref"	Controller reference clk
> +  "clk_usb3otg0_suspend"Controller suspend clk, can use 24 MHz or 32 KHz
> +  "aclk_usb3"		Master/Core clock, have to be >=3D 62.5 MHz for SS operat=
ion
> +
> +
> +Optional clocks:
> +  "aclk_usb3otg0"	Aclk for specific usb controller clock.
> +  "aclk_usb3_rksoc_axi_perf"  USB AXI perf clock.  Not present on all pl=
atforms.
> +  "aclk_usb3_grf"	USB grf clock.  Not present on all platforms.
> +
> +Required child node:
> +A child node must exist to represent the core DWC3 IP block. The name of
> +the node is not important. The content of the node is defined in dwc3.tx=
t.
> +
> +Phy documentation is provided in the following places:
> +
> +Example device nodes:
> +
> +	usbdrd3_0: usb@fe800000 {
> +

no reg property?
		compatible =3D "rockchip,dwc3";
> +		clocks =3D <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
> +			 <&cru ACLK_USB3>, <&cru ACLK_USB3OTG0>,
> +			 <&cru ACLK_USB3_RKSOC_AXI_PERF>, <&cru ACLK_USB3_GRF>;
> +		clock-names =3D "clk_usb3otg0_ref", "clk_usb3otg0_suspend",
> +			      "aclk_usb3", "aclk_usb3otg0",
> +			      "aclk_usb3_rksoc_axi_perf", "aclk_usb3_grf";
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +		ranges;
> +		status =3D "disabled";
> +		usbdrd_dwc3_0: dwc3 {

no address here?

> +			compatible =3D "snps,dwc3";
> +			reg =3D <0x0 0xfe800000 0x0 0x100000>;
> +			interrupts =3D <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
> +			dr_mode =3D "otg";
> +			status =3D "disabled";
> +		};
> +	};
> --=20
> 1.9.1
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-usb" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXRB+nAAoJEIaOsuA1yqREzNMQAJGMxWcurHYTm+lD/hxfM+jn
r0jvbhwFdkTATT1nLYCEw7p3A8dT5fy9Z+hXEqmI9FvU/QCYyZpIooAjtTfg+2XC
q6feCcR1TJi+RXaa5mPX/fI8zals9JEWGiPw6cfB/pkDyQMnVsujaihky5g7A7zW
RryGHnBMZkTAeuigeoDiQLdU3F7m/kj8B0oAPYGwR0HM4BmXKAVITEznm9EM5ORu
lnAMTOJjpU0K2THXvVd1BwivRhiiGMDXu1ereplsSepHS81klgzho3LOvwI27WdX
mi4xetkqGUvtgAOePTPUIIDjdwRuXHpLuVUT+1NsWG4HfocNYI+mVr49DxX4tQZN
J2zW6D7Esacf4YYQogrwHTTB2GzZqx9ZEn/Mn3aXo2G5oHHdO4wlWb6GP/KIOS79
Wu232CVCCn4+wAZtJy4PfA7mS/r+X2e7tVECi9Blx6t3jwzjzqdbteq+O1lqL+jK
50tNWPbqx4c1wWQmONmNls1zaRLVxhPopuBMfAMIqsKGY/7Y7VKBjgM4L8cq+x9w
EYtL62/MkEA35kztHjwMmL6tFNRmT3ogortTHGrIzRNwHlMkqYcSyMLCyhJlaLsV
1OiwFgiCzMb+EDObzK9DXFRFJDxL0ng8CcjzddQ6E0JkzsGEW1gEk+xICnuyJQ/r
flVNsvW850zsROCIVF9C
=avUg
-----END PGP SIGNATURE-----
--=-=-=--
