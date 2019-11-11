From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 2/3] arm64: dts: rk3399-rock960: add vdd_log
Date: Mon, 11 Nov 2019 10:56:20 +0530
Message-ID: <20191111052620.GA3858@Mani-XPS-13-9360>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-2-kever.yang@rock-chips.com>
 <20191111052232.GA2842@Mani-XPS-13-9360>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20191111052232.GA2842@Mani-XPS-13-9360>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>, Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org, Akash Gajjar <akash@openedev.com>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Nov 11, 2019 at 10:52:32AM +0530, Manivannan Sadhasivam wrote:
> Hi Kever,
> 
> On Mon, Nov 11, 2019 at 08:51:57AM +0800, Kever Yang wrote:
> > Add vdd_log node according to rock960 schematic V13.
> > 

Forgot to mention that rk3399-rock960.dtsi is common for both Rock960
Model A and Ficus boards. So the commit message should mention it clearly.
Otherwise people will get confused that the patch is only affecting Rock960
boards.

Thanks,
Mani

> > Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> > ---
> > 
> >  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > index c7d48d41e184..73afee257115 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > @@ -76,6 +76,18 @@
> >  		regulator-always-on;
> >  		vin-supply = <&vcc5v0_sys>;
> >  	};
> > +
> > +	vdd_log: vdd-log {
> > +		compatible = "pwm-regulator";
> > +		pwms = <&pwm2 0 25000 1>;
> > +		regulator-name = "vdd_log";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <800000>;
> > +		regulator-max-microvolt = <1400000>;
> > +		regulator-init-microvolt = <950000>;
> 
> The default value seems to be 0.9v as per both Rock960 and Ficus schematics.
> 
> Other than that,
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> Thanks,
> Mani
> 
> > +		vin-supply = <&vcc_sys>;
> > +	};
> >  };
> >  
> >  &cpu_l0 {
> > -- 
> > 2.17.1
> > 
