From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Enable SPI1 on Ficus
Date: Tue, 7 May 2019 17:06:35 +0530
Message-ID: <20190507113635.GB309@Mani-XPS-13-9360>
References: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
 <20190506120458.25842-2-manivannan.sadhasivam@linaro.org>
 <2127870.SxaTtWf5LP@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <2127870.SxaTtWf5LP@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, ezequiel@collabora.com, tom@vamrs.com, dev@vamrs.com
List-Id: linux-rockchip.vger.kernel.org

On Tue, May 07, 2019 at 01:22:03PM +0200, Heiko Stuebner wrote:
> Am Montag, 6. Mai 2019, 14:04:58 CEST schrieb Manivannan Sadhasivam:
> > Enable SPI1 exposed on both Low and High speed expansion connectors
> > of Ficus. SPI1 has 3 different chip selects wired as below:
> > 
> > CS0 - Serial Flash (unpopulated)
> > CS1 - Low Speed expansion
> > CS2 - High Speed expansion
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-ficus.dts | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> > index 027d428917b8..9baa378fc770 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> > @@ -146,6 +146,12 @@
> >  	};
> >  };
> >  
> > +&spi1 {
> > +	/* On both Low speed and High speed expansion */
> > +	cs-gpios = <0>, <&gpio4 6 0>, <&gpio4 7 0>;
> 
> cs0 should still be part of the cs-gpios though (gpio1 RK_PB2).
> The flash is part of the schematics, so there might be board with
> it pre-populated or people might put a flash chip on it.
> 

Why? CS0 is owned by the SPI controller itself, so we can't use it as
a GPIO. Otherwise, we need to change the pinctrl definition of it, which
doesn't look good to me.

> Also please use the constants for pin specification (RK_PA6, RK_PA7 above)
> 

Sure.

Thanks,
Mani

> 
> Heiko
> 
> > +	status = "okay";
> > +};
> > +
> >  &usbdrd_dwc3_0 {
> >  	dr_mode = "host";
> >  };
> > 
> 
> 
> 
> 
