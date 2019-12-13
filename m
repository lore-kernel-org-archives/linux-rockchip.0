From: Amit Kucheria <amit.kucheria@verdurent.com>
Subject: Re: [RESEND PATCH] thermal: rockchip: enable hwmon
Date: Fri, 13 Dec 2019 10:08:31 +0530
Message-ID: <CAHLCerN9jc94ydKKoaDZPoTy=LmVZti6UUpND5aK3FMzTkCmoA@mail.gmail.com>
References: <20191212061702.BFE2D6E85603@corona.crabdance.com>
 <CAHLCerOHjAEEA1BpUqPdZvFwHMy11SqC+ZtjdFyManu7iOpBXA@mail.gmail.com>
 <20191212232859.E09FC6E85603@corona.crabdance.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191212232859.E09FC6E85603@corona.crabdance.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: schaecsn@gmx.net, jdelvare@suse.com, linux@roeck-us.ne
Cc: Heiko Stuebner <heiko@sntech.de>, Linux PM list <linux-pm@vger.kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>, linux-rockchip@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>, lakml <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Stefan,

On Fri, Dec 13, 2019 at 4:59 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
>
> Hello Amit,
>
> > On Thu, Dec 12, 2019 at 11:47 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
> > >
> > > By default, of-based thermal drivers do not enable hwmon.
> > > Explicitly enable hwmon for both, the soc and gpu temperature
> > > sensor.
> >
> > Is there any reason you need to expose this in hwmon?
>
> Why hwmon:
>
> The soc embedds temperature sensors and hwmon is the standard way to expose
> sensors.

Let me rephrase - is there something in the hwmon subsystem that is
needed that isn't provided by the thermal subsystem inside
/sys/class/thermal?

> Sensors exposed by hwmon are automagically found by userland clients. Users
> want to run sensors(1) and expect them to show up.
>

That is a good point. In which case, I wonder if we should just fix
this in of-thermal.c instead of requiring individual drivers to do
write boilerplate code. I'm thinking of a flag that the driver could
set to enable the thermal_hwmon interface for of-thermal drivers.

> Why in rockchip_thermal.c:
>
> drivers/thermal/ provides a high-level hwmon api in thermal_hwmon.[hc] which is
> used by at least these thermal drivers: rcar_gen3_thermal.c, rcar_thermal.c,
> st/stm_thermal.c, and broadcom/bcm2835_thermal.c. I want to hook up
> rockchip_thermal.c exactly the same way.
>
> Apparently, other architectures hook up the cpu temperature sensors to hwmon
> elsewhere. Most seem to do this in hwmon/, e.g. hwmon/coretemp.c. These drivers
> are written from scratch. Utilizing thermal_hwmon.[ch] for chips which have
> already drivers in drivers/thermal/ seems to be more elegant.
>
>  Stefan
