From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 10/11] rockpro-rk3399: Enable SPI Flash
Date: Wed, 8 Jan 2020 18:29:07 +0530
Message-ID: <CAMty3ZDQfV5XXAiBynNwBw7-6rWMU-Zf34EQ1AjRf8r9+crrZw@mail.gmail.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-11-jagan@amarulasolutions.com>
 <20191230125134.189ba860e7fc99b4ad2f1def@bidouilliste.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191230125134.189ba860e7fc99b4ad2f1def@bidouilliste.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Emmanuel Vadot <manu@bidouilliste.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, U-Boot-Denx <u-boot@lists.denx.de>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Dec 30, 2019 at 5:21 PM Emmanuel Vadot <manu@bidouilliste.com> wrote:
>
>
>  Hi Jagan,
>
> On Sat, 21 Dec 2019 13:24:39 +0530
> Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> > Enable winbond SPI flash for ROC-PC-RK3399 board.
>
>  s/ROC-PC-RK3399/RockPro64/
>
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  arch/arm/dts/rk3399-rockpro64-u-boot.dtsi | 4 ++++
> >  configs/rockpro64-rk3399_defconfig        | 2 ++
> >  2 files changed, 6 insertions(+)
> >
> > diff --git a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
> > index 4648513ea9..deaa3efd39 100644
> > --- a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
> > +++ b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
> > @@ -6,6 +6,10 @@
> >  #include "rk3399-u-boot.dtsi"
> >  #include "rk3399-sdram-lpddr4-100.dtsi"
> >  / {
> > +     aliases {
> > +             spi0 = &spi1;
>
>  That looks weird ... what's the point of this alias exactly ?

spi uclass would require alias number to bind the driver, no way to
escape as of now.
