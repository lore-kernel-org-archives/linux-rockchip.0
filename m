From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: set rk3399 dynamic CPU power
 coefficients
Date: Fri, 23 Jun 2017 11:49:57 -0700
Message-ID: <20170623184956.GA107165@google.com>
References: <20170623170737.46265-1-briannorris@chromium.org>
 <20170623170737.46265-3-briannorris@chromium.org>
 <5395662.EDQ3y7Qj0C@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5395662.EDQ3y7Qj0C@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Caesar Wang <wxt@rock-chips.com>, Doug Anderson <dianders@chromium.org>, linux-arm-kernel@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jun 23, 2017 at 08:39:25PM +0200, Heiko Stuebner wrote:
> Am Freitag, 23. Juni 2017, 10:07:37 CEST schrieb Brian Norris:
> > Provide the dynamic power coefficient of the big and little CPU
> > clusters. These numbers are currently in use on the Samsung Chromebook
> > Plus ("Kevin").
> > 
> > The power allocator thermal governor doesn't know how to do anything if
> > it doesn't get power parameters from its cooling devices (in this case,
> > CPUfreq). So this effectively enables the power-allocator governor.
> > 
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > index 69c56f7316c4..4f6667547814 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > @@ -109,6 +109,7 @@
> >  			reg = <0x0 0x0>;
> >  			enable-method = "psci";
> >  			#cooling-cells = <2>; /* min followed by max */
> > +			dynamic-power-coefficient = <100>;
> >  			clocks = <&cru ARMCLKL>;
> >  		};
> >  
> > @@ -142,6 +143,7 @@
> >  			reg = <0x0 0x100>;
> >  			enable-method = "psci";
> >  			#cooling-cells = <2>; /* min followed by max */
> > +			dynamic-power-coefficient = <100>;
> >  			clocks = <&cru ARMCLKB>;
> >  		};
> >  
> > 
> 
> I think these should be set for all cores, similar to clocks. While
> cpufreq and friends regularly only take the first number, in a
> hw-description sense, it should be part of every core in the dt.

It's kinda paired with the cooling information (e.g., #cooling-cells)
which are only present in the first CPU in the cluster, currently.

I can copy this definitely real, empirical value into the other CPUs if
you really think that's necessary :)

Brian
