From: Stefan Schaeckeler <schaecsn@gmx.net>
Subject: Re: [RESEND PATCH] thermal: rockchip: enable hwmon
Date: Thu, 12 Dec 2019 15:28:59 -0800 (PST)
Message-ID: <20191212232859.E09FC6E85603@corona.crabdance.com>
References: <20191212061702.BFE2D6E85603@corona.crabdance.com>
 <CAHLCerOHjAEEA1BpUqPdZvFwHMy11SqC+ZtjdFyManu7iOpBXA@mail.gmail.com>
Reply-To: schaecsn@gmx.net
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-reply-to: <CAHLCerOHjAEEA1BpUqPdZvFwHMy11SqC+ZtjdFyManu7iOpBXA@mail.gmail.com>
 (message from Amit Kucheria on Thu, 12 Dec 2019 13:58:52 +0530)
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: amit.kucheria@verdurent.com
Cc: heiko@sntech.de, linux-pm@vger.kernel.org, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, edubezval@gmail.com, linux-rockchip@lists.infradead.org, rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hello Amit,

> On Thu, Dec 12, 2019 at 11:47 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
> >
> > By default, of-based thermal drivers do not enable hwmon.
> > Explicitly enable hwmon for both, the soc and gpu temperature
> > sensor.
>
> Is there any reason you need to expose this in hwmon?

Why hwmon:

The soc embedds temperature sensors and hwmon is the standard way to expose
sensors.

Sensors exposed by hwmon are automagically found by userland clients. Users
want to run sensors(1) and expect them to show up.


Why in rockchip_thermal.c:

drivers/thermal/ provides a high-level hwmon api in thermal_hwmon.[hc] which is
used by at least these thermal drivers: rcar_gen3_thermal.c, rcar_thermal.c,
st/stm_thermal.c, and broadcom/bcm2835_thermal.c. I want to hook up
rockchip_thermal.c exactly the same way.

Apparently, other architectures hook up the cpu temperature sensors to hwmon
elsewhere. Most seem to do this in hwmon/, e.g. hwmon/coretemp.c. These drivers
are written from scratch. Utilizing thermal_hwmon.[ch] for chips which have
already drivers in drivers/thermal/ seems to be more elegant.

 Stefan
