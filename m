From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 03/16] ARM: dts: rockchip: Add usb host0 ohci node for
 rk3288
Date: Tue, 21 Jul 2020 11:56:03 +0530
Message-ID: <CAMty3ZAPvmVECdRYNwxxhsfXB2guHqMDCBSqkFpUW_FgjgxTSQ@mail.gmail.com>
References: <20200720185120.671064-1-jagan@amarulasolutions.com>
 <20200720185120.671064-4-jagan@amarulasolutions.com>
 <0b2fbd84-2ee3-5a8b-7a33-d9fab2160e16@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <0b2fbd84-2ee3-5a8b-7a33-d9fab2160e16@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Kever,

On Tue, Jul 21, 2020 at 8:48 AM Kever Yang <kever.yang@rock-chips.com> wrot=
e:
>
> HI Jagan,
>
>      Does patch 3~6 also from mainline kernel?

Yes, in mailing lists.


>
> Thanks,
>
> - Kever
>
> On 2020/7/21 =E4=B8=8A=E5=8D=882:51, Jagan Teki wrote:
> > rk3288 and rk3288w have a usb host0 ohci controller.
> >
> > Although rk3288 ohci doesn't actually work on hardware, but
> > rk3288w ohci can work well.
> >
> > So add usb host0 ohci node in rk3288 dtsi and the quirk in
> > ohci platform driver will disable ohci on rk3288.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >   arch/arm/dts/rk3288.dtsi | 11 ++++++++++-
> >   1 file changed, 10 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/dts/rk3288.dtsi b/arch/arm/dts/rk3288.dtsi
> > index 18b372db3a..22bb06cec5 100644
> > --- a/arch/arm/dts/rk3288.dtsi
> > +++ b/arch/arm/dts/rk3288.dtsi
> > @@ -431,7 +431,16 @@
> >               status =3D "disabled";
> >       };
> >
> > -     /* NOTE: ohci@ff520000 doesn't actually work on hardware */
> > +     /* NOTE: doesn't work on RK3288, but fixed on RK3288W */
> > +     usb_host0_ohci: usb@ff520000 {
> > +             compatible =3D "generic-ohci";
> > +             reg =3D <0x0 0xff520000 0x0 0x100>;
> > +             interrupts =3D <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
> > +             clocks =3D <&cru HCLK_USBHOST0>;
> > +             phys =3D <&usbphy1>;
> > +             phy-names =3D "usb";
> > +             status =3D "disabled";
> > +     };
> >
> >       usb_host1: usb@ff540000 {
> >               compatible =3D "rockchip,rk3288-usb", "rockchip,rk3066-us=
b",
>
>


--
Jagan Teki,
Amarula Solutions India Pvt. Ltd.
Co-Founder & Embedded Linux Architect
405/E-Block, Sri Lakshmi Shubham Arcade, Chandanagar, Hyderabad - 500050, I=
ndia
M. (+91) 910 009 0959
[`as] http://www.amarulasolutions.com
