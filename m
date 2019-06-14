From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 3/4] ARM: dts: rockchip: add display nodes for rk322x
Date: Fri, 14 Jun 2019 13:36:09 -0700
Message-ID: <20190614203610.959DA217F9@mail.kernel.org>
References: <20190614165454.13743-1-heiko@sntech.de> <20190614174526.6F805217D6@mail.kernel.org> <19cea8f7c279ef6efb12d1ec0822767d@risingedge.co.za> <13456600.FWPkgmLa5g@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <13456600.FWPkgmLa5g@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Justin Swartz <justin.swartz@risingedge.co.za>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, mturquette@baylibre.com
List-Id: linux-rockchip.vger.kernel.org

Quoting Heiko Stuebner (2019-06-14 12:33:12)
> Am Freitag, 14. Juni 2019, 20:32:35 CEST schrieb Justin Swartz:
> > On 2019-06-14 19:45, Stephen Boyd wrote:
> > >> diff --git a/arch/arm/boot/dts/rk322x.dtsi=20
> > >> b/arch/arm/boot/dts/rk322x.dtsi
> > >> index da102fff96a2..148f9b5157ea 100644
> > >> --- a/arch/arm/boot/dts/rk322x.dtsi
> > >> +++ b/arch/arm/boot/dts/rk322x.dtsi
> > >> @@ -143,6 +143,11 @@
> > >> #clock-cells =3D <0>;
> > >> };
> > >>=20
> > >> +       display_subsystem: display-subsystem {
> > >> +               compatible =3D "rockchip,display-subsystem";
> > >> +               ports =3D <&vop_out>;
> > >> +       };
> > >> +
> > >=20
> > > What is this? It doesn't have a reg property so it looks like a virtu=
al
> > > device. Why is it in DT?
> >=20
> > This is a virtual device.
> >=20
> > I assumed it would be acceptable to it find in a device tree due to=20
> > binding documentation,=20
> > "Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt,=20
> > which states:
> >=20
> > <quote>
> > The Rockchip DRM master device is a virtual device needed to list all
> > vop devices or other display interface nodes that comprise the
> > graphics subsystem.
> > </quote>
> >=20
> > Without the "display_subsystem" device node, the HDMI PHY and=20
> > rockchipdrmfb frame buffer device are not initialized.
> >=20
> > Perhaps I should have included this in my commit message? :)
>=20
> As Justin said, that is very much common as the root of the components
> that make up the drm device and pretty much common in a lot of devicetrees
> for the last 5 years and longer ;-) .
>=20
> Also gpio-keys also don't have a reg property ;-) .
>=20

Do you have a SoC node? If so, this virtual device should live in the
root, away from the nodes that have reg properties and are thus in the
SoC node.
