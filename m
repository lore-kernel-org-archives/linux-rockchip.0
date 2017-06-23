From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: set rk3399 dynamic CPU power coefficients
Date: Fri, 23 Jun 2017 20:59:29 +0200
Message-ID: <2934827.QH3zHdFam1@phil>
References: <20170623170737.46265-1-briannorris@chromium.org> <5395662.EDQ3y7Qj0C@phil> <20170623184956.GA107165@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170623184956.GA107165@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Caesar Wang <wxt@rock-chips.com>, Doug Anderson <dianders@chromium.org>, linux-arm-kernel@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 23. Juni 2017, 11:49:57 CEST schrieb Brian Norris:
> On Fri, Jun 23, 2017 at 08:39:25PM +0200, Heiko Stuebner wrote:
> > Am Freitag, 23. Juni 2017, 10:07:37 CEST schrieb Brian Norris:
> > > Provide the dynamic power coefficient of the big and little CPU
> > > clusters. These numbers are currently in use on the Samsung Chromebook
> > > Plus ("Kevin").
> > > 
> > > The power allocator thermal governor doesn't know how to do anything if
> > > it doesn't get power parameters from its cooling devices (in this case,
> > > CPUfreq). So this effectively enables the power-allocator governor.
> > > 
> > > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 ++
> > >  1 file changed, 2 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > index 69c56f7316c4..4f6667547814 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > @@ -109,6 +109,7 @@
> > >  			reg = <0x0 0x0>;
> > >  			enable-method = "psci";
> > >  			#cooling-cells = <2>; /* min followed by max */
> > > +			dynamic-power-coefficient = <100>;
> > >  			clocks = <&cru ARMCLKL>;
> > >  		};
> > >  
> > > @@ -142,6 +143,7 @@
> > >  			reg = <0x0 0x100>;
> > >  			enable-method = "psci";
> > >  			#cooling-cells = <2>; /* min followed by max */
> > > +			dynamic-power-coefficient = <100>;
> > >  			clocks = <&cru ARMCLKB>;
> > >  		};
> > >  
> > > 
> > 
> > I think these should be set for all cores, similar to clocks. While
> > cpufreq and friends regularly only take the first number, in a
> > hw-description sense, it should be part of every core in the dt.
> 
> It's kinda paired with the cooling information (e.g., #cooling-cells)
> which are only present in the first CPU in the cluster, currently.
> 
> I can copy this definitely real, empirical value into the other CPUs if
> you really think that's necessary :)

I just remember that has come up in the past for other cpu properties.
dynamic-power-coefficient is defined in the general arm cpu binding,
similar to clocks.

And who knows, that value might not stay tied to only thermal in the
future, so I think they should be in all cores.

But you know what, I can duplicate this myself as well when applying :-) .


Heiko
