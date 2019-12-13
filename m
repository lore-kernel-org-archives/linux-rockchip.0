From: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [RESEND PATCH] thermal: rockchip: enable hwmon
Date: Fri, 13 Dec 2019 09:31:19 -0800
Message-ID: <20191213173119.GA4231@roeck-us.net>
References: <20191212061702.BFE2D6E85603@corona.crabdance.com>
 <CAHLCerOHjAEEA1BpUqPdZvFwHMy11SqC+ZtjdFyManu7iOpBXA@mail.gmail.com>
 <20191212232859.E09FC6E85603@corona.crabdance.com>
 <CAHLCerN9jc94ydKKoaDZPoTy=LmVZti6UUpND5aK3FMzTkCmoA@mail.gmail.com>
 <CAHLCerMf1nbuxjZz81QnE6jXeQ5UvB=R18SDu69cE9Q6rQp8+w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAHLCerMf1nbuxjZz81QnE6jXeQ5UvB=R18SDu69cE9Q6rQp8+w@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Amit Kucheria <amit.kucheria@verdurent.com>
Cc: schaecsn@gmx.net, jdelvare@suse.com, Heiko Stuebner <heiko@sntech.de>, Linux PM list <linux-pm@vger.kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>, linux-rockchip@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>, lakml <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Dec 13, 2019 at 10:09:49AM +0530, Amit Kucheria wrote:
> Fix Guenter's email.
> 
> On Fri, Dec 13, 2019 at 10:08 AM Amit Kucheria
> <amit.kucheria@verdurent.com> wrote:
> >
> > Hi Stefan,
> >
> > On Fri, Dec 13, 2019 at 4:59 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
> > >
> > > Hello Amit,
> > >
> > > > On Thu, Dec 12, 2019 at 11:47 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
> > > > >
> > > > > By default, of-based thermal drivers do not enable hwmon.
> > > > > Explicitly enable hwmon for both, the soc and gpu temperature
> > > > > sensor.
> > > >
> > > > Is there any reason you need to expose this in hwmon?
> > >
> > > Why hwmon:
> > >
> > > The soc embedds temperature sensors and hwmon is the standard way to expose
> > > sensors.
> >
> > Let me rephrase - is there something in the hwmon subsystem that is
> > needed that isn't provided by the thermal subsystem inside
> > /sys/class/thermal?
> >

Doesn't the sentence below answer that question ?

> > > Sensors exposed by hwmon are automagically found by userland clients. Users
> > > want to run sensors(1) and expect them to show up.
> > >
> >
> > That is a good point. In which case, I wonder if we should just fix
> > this in of-thermal.c instead of requiring individual drivers to do
> > write boilerplate code. I'm thinking of a flag that the driver could
> > set to enable the thermal_hwmon interface for of-thermal drivers.

It seems to me that would be outside the scope of this patch.

> >
> > > Why in rockchip_thermal.c:
> > >
> > > drivers/thermal/ provides a high-level hwmon api in thermal_hwmon.[hc] which is
> > > used by at least these thermal drivers: rcar_gen3_thermal.c, rcar_thermal.c,
> > > st/stm_thermal.c, and broadcom/bcm2835_thermal.c. I want to hook up
> > > rockchip_thermal.c exactly the same way.
> > >
> > > Apparently, other architectures hook up the cpu temperature sensors to hwmon
> > > elsewhere. Most seem to do this in hwmon/, e.g. hwmon/coretemp.c. These drivers
> > > are written from scratch. Utilizing thermal_hwmon.[ch] for chips which have
> > > already drivers in drivers/thermal/ seems to be more elegant.
> > >

There should either be a hwmon driver with a bridge to thermal, or a
thermal driver with a bridge to hwmon, but not both. A couple of
existing drivers implement both, but that should really be fixed.

Guenter
