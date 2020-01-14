From: Chanwoo Choi <chanwoo-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH 4/9] PM / devfreq: exynos-bus: Replace deprecated
 'devfreq' property
Date: Wed, 15 Jan 2020 03:57:30 +0900
Message-ID: <CAGTfZH0K65ON0FQGUjQbr71_9VWJXTmRbih1gko6Pcuy+PL63Q@mail.gmail.com>
References: <20191217055738.28445-1-cw00.choi@samsung.com> <CGME20191217055106epcas1p11f2bc81d6bb2db3fc4bc257d78c337b9@epcas1p1.samsung.com>
 <20191217055738.28445-5-cw00.choi@samsung.com> <20191226210119.GA8706@bogus>
 <a54e4275-012e-77d9-bdbe-1aab64b5c12b@samsung.com> <76616499-7c19-06b1-461a-28ae17a76c60@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <76616499-7c19-06b1-461a-28ae17a76c60-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Chanwoo Choi <cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Cc: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Krzysztof Kozlowski <krzk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Leonard Crestez <leonard.crestez-3arQi8VN3Tc@public.gmane.org>, lukasz.luba-5wv7dgnIgG8@public.gmane.org, =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Marek Szyprowski <m.szyprowski-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Kukjin Kim <kgene-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, MyungJoo Ham <myungjoo.ham-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Kyungmin Park <kyungmin.park-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Linux PM list <linux-pm-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-samsung-soc <linux-samsung-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

On Mon, Jan 6, 2020 at 10:32 AM Chanwoo Choi <cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org> wrote:
>
> Hi Rob,
>
> Gently Ping.

Once again, ping. Could you please review?

On v2[1], made separate patches for dt-binding.
[1] https://patchwork.kernel.org/cover/11304545/

>
> On 12/27/19 9:09 AM, Chanwoo Choi wrote:
> > On 12/27/19 6:01 AM, Rob Herring wrote:
> >> On Tue, Dec 17, 2019 at 02:57:33PM +0900, Chanwoo Choi wrote:
> >>> In order to remove the deprecated 'devfreq' property, replace with
> >>> new 'exynos,parent-bus' property in order to get the parent devfreq device
> >>> in devicetree file instead of 'devfreq' property. But, to guarantee the
> >>> backward-compatibility, keep the support 'devfreq' property.
> >>>
> >>> Signed-off-by: Chanwoo Choi <cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
> >>> ---
> >>>  .../bindings/devfreq/exynos-bus.txt           | 16 +++++++--------
> >>>  drivers/devfreq/exynos-bus.c                  | 20 ++++++++++++-------
> >>>  2 files changed, 21 insertions(+), 15 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
> >>> index e71f752cc18f..c948cee01124 100644
> >>> --- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
> >>> +++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
> >>> @@ -45,7 +45,7 @@ Required properties only for parent bus device:
> >>>    of buses.
> >>>
> >>>  Required properties only for passive bus device:
> >>> -- devfreq: the parent bus device.
> >>> +- exynos,parent-bus: the parent bus device.
> >>
> >> If you are going to do something new, why not use the interconnect
> >> binding here?
> >
> > As I knew, interconnect make the data path among multiple nodes
> > and set the average and peak bandwidth to the specific data path.
> >
> > It means that some data will be flowed from node_a to node_d
> > or the reverse way because each node has the tightly coupled
> > dependency for data flow.
> >
> >       node_a <-> node_b <-> node_c <-> node_d
> >
> >
> > On the other hand, exynos-bus.c driver is not related to 'data path'.
> > Each bus just need to control the their own frequency and voltage.
> > But, share the power line (regulator) between exynos-bus device
> > even if there are no any dependency of data flow.
> >
> > 'exynos,parent-bus' property just indicate the specific
> > devfreq device(parent bus device) which controls
> > the shared power line(regulator) in order to prevent
> > the h/w problem due to the wrong pair of frequency and voltage.
> >
> > 'exynos,parent-bus' property is only used to catch
> > the change timing of shared power line.
> >
> >
> > And,
> > as you commented, there are some data path among the exynos-bus
> > devices for the display h/w as following:
> >
> >       bus_display -> bus_leftbus -> bus_dmc
> >
> > In order to make the data path between bus devices,
> > interconnect binding is required. This approach[1] was posted.
> > [1] https://patchwork.kernel.org/cover/11305265/
> > - [RFC,v3,0/7] PM / devfreq: Simple QoS for exynos-bus using interconnect
> >
>
> Are there any other commentss?
>
>
> --
> Best Regards,
> Chanwoo Choi
> Samsung Electronics



-- 
Best Regards,
Chanwoo Choi
