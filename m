From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [RFCv1 0/8] RK3399 clean shutdown issue
Date: Sat, 07 Dec 2019 12:45:13 +0100
Message-ID: <2344728.Lq3kATiBNL@phil>
References: <20191206184536.2507-1-linux.amoon@gmail.com> <1765889.rfqrfT1PbY@phil> <CANAwSgT_k5VgtQcP_vOX4Goa-9_B6GmXP+i-hAwpZuTRVTPt_Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CANAwSgT_k5VgtQcP_vOX4Goa-9_B6GmXP+i-hAwpZuTRVTPt_Q@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Jagan Teki <jagan@amarulasolutions.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>, devicetree <devicetree@vger.kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, Linux Kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 7. Dezember 2019, 06:07:49 CET schrieb Anand Moon:
> Hi Heiko,
> 
> On Sat, 7 Dec 2019 at 04:02, Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Hi Anand,
> >
> > Am Freitag, 6. Dezember 2019, 19:45:28 CET schrieb Anand Moon:
> > > Most of the RK3399 SBC boards do not perform clean
> > > shutdown and clean reboot.
> > >
> > > These patches try to help resolve the issue with proper
> > > shutdown by turning off the PMIC.
> > >
> > > For reference
> > > RK805 PMCI data sheet:
> > > [0] http://rockchip.fr/RK805%20datasheet%20V1.3.pdf
> > > RK808 PMIC data sheet:
> > > [1] http://rockchip.fr/RK808%20datasheet%20V1.4.pdf
> > > RK817 PMIC data sheet:
> > > [2] http://rockchip.fr/RK817%20datasheet%20V1.01.pdf
> > > RK818 PMIC data sheet:
> > > [3] http://rockchip.fr/RK818%20datasheet%20V1.0.pdf
> > >
> > > Reboot issue:
> > > My guess is that we need to some proper sequence of
> > > setting to PMCI to perform clean.
> > >
> > > If you have any input please share them.
> >
> > The rk8xx pmics may not on all devices be responsible for powering down
> > the device. That is what the system-power-controller dt-property is for.
> >
> > So that property is there for a reason - to indicate that the pmic is
> > responsible for power-off-handling.
> >
> > Heiko
> >
> 
> Ok, my intent was to have common framework for
> shutdown, restart, suspend, resume routines.

That is a great goal actually :-)

I guess just keep in mind that it should only handle power-off
if instructed by the devicetree property.
