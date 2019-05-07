From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Enable SPI0 and SPI4 on Rock960
Date: Tue, 07 May 2019 13:34:58 +0200
Message-ID: <1748905.kIquBUqR0b@phil>
References: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org> <3484838.jBNMtg6mRV@phil> <20190507113339.GA309@Mani-XPS-13-9360>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190507113339.GA309@Mani-XPS-13-9360>
Sender: linux-kernel-owner@vger.kernel.org
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, ezequiel@collabora.com, tom@vamrs.com, dev@vamrs.com
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 7. Mai 2019, 13:33:39 CEST schrieb Manivannan Sadhasivam:
> Hi Heiko,
> 
> On Tue, May 07, 2019 at 01:17:10PM +0200, Heiko Stuebner wrote:
> > Am Montag, 6. Mai 2019, 14:04:57 CEST schrieb Manivannan Sadhasivam:
> > > Enable SPI0 and SPI4 exposed on the Low and High speed expansion
> > > connectors of Rock960.
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > > index 12285c51cceb..7498344d4a73 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > > @@ -114,6 +114,18 @@
> > >  	};
> > >  };
> > >  
> > > +&spi0 {
> > > +	/* On Low speed expansion */
> > > +	label = "LS-SPI0";
> > 
> > where does the label property come from and what does it do?
> > It's not part of the rockchip-spi / general-spi binding.
> > 
> 
> It is not part of the binding but I thought it will provide the users
> the information of the SPI bus as per the specification when they
> look into devicetree.
> 
> If it doesn't makes sense, I can remove that!

please do :-) ... dt-bindings are supposed to be verifyable at some
point, so we shouldn't add undocumented properties.

Heiko

> 
> Thanks,
> Mani
> 
> > 
> > Heiko
> > 
> > > +	status = "okay";
> > > +};
> > > +
> > > +&spi4 {
> > > +	/* On High speed expansion */
> > > +	label = "HS-SPI1";
> > > +	status = "okay";
> > > +};
> > > +
> > >  &usbdrd_dwc3_0 {
> > >  	dr_mode = "otg";
> > >  };
> > > 
> > 
> > 
> > 
> > 
> 
