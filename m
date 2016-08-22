From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: Boundary between pinctrl and peripheral settings
Date: Mon, 22 Aug 2016 19:10:51 +0200
Message-ID: <1655204.9Bvz4LN4IK@phil>
References: <1719598.F3JUalFtig@phil>
 <CACRpkdb=ju0i9x3rtRz0OvUkrsGBSBLymnzLqWNZ=WWJ6CKryQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CACRpkdb=ju0i9x3rtRz0OvUkrsGBSBLymnzLqWNZ=WWJ6CKryQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Linus,


thanks for taking the time of reading through that wall of text :-) .

Am Mittwoch, 10. August 2016, 15:32:59 CEST schrieb Linus Walleij:
> On Fri, Aug 5, 2016 at 1:36 AM, Heiko St=FCbner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> > In a nutshell on the rk3399 some things like one specific uart can use
> > multiple pins to output data, but control of that seems to be split. The
> > actual pin config is identical for all pins - each needs to be configur=
ed
> > to function 2, pulls set etc. Then somewhere between the pin io-cells a=
nd
> > the uart it seems to have some sort of switch to decide to which pin to
> > actually route the data.
> > =

> > =

> > +-------+    +--------+  /- GPIO4_B1 (pinmux 2)
> > =

> > | uart2 | -- | switch | --- GPIO4_C1 (pinmux 2)
> > =

> > +-------+    +--------+  \- GPIO4_C4 (pinmux 2)
> > (switch selects one of the 3 pins to actually output data to)
> > =

> > =

> > So the question now is, should the pinctrl driver also flip that switch=
 to
> > the correct position itself when pin-function 2 of say gpio4_bq gets
> > selected or is that routing outside of pinctrl's scope?
> =

> This is really complex to understand, sorry I might be getting it wrong.
> =

> It sounds like there is some kind of hierarchical pin control
> going on here: there is a front end pin controller (to the
> far right in the image) that can set up pins to different
> functions and (I guess) also set up the electrical characteristics.
> That is what I guess we could call a proper "pin controller"
> as it controls the actual pin/pad/iocell.

completely correct. Pin functions and electrical stuff (pull, drive strengt=
h, =

etc) can be set independently of them being actually used.


> Then the thing called "switch" is some kind of multiplexer,
> a second level pin controller.

More like a demultiplexer. The one uart signal is routed to one of the 4 =

possible pins (which then need to also select the correct pin function to e=
ven =

receive that data).


> I suspect the proper abstraction is actually a hierarchichal
> two-level pinmux, i.e. a driver only doing multiplexing
> behind the driver doing full pin control.

That being a demux is the main reason I'm unsure if this belongs to pinctrl=
, =

because it is independent from the actual pin control and the pinctrl =

subsystem so far always only seems to only handle signals coming from multi=
ple =

sources but not deciding to which pin to send a signal.


> I have no idea how to best abstract this :( maybe changes
> in the pin control core is needed to let pin controllers use
> other pin controllers hierarchically?
> =

> However if this is a one-off, it may fit better like a local tweak
> in the pin controller for the system.
> =

> I would ask questions like if these things exist in different
> IO spaces, like is there one block of iomem for each of
> these three blocks: uart, switch, pin controller? In that case
> what we want to achieve is probably three drivers talking
> to each other.
>
> If the registers are in any way mixed up they may sit better
> as quirks to either the pin controller driver on the right
> or the uart on the left.

Rockchip socs have these syscon aggregations called "General Register Files=
", =

which contain a lot of different controllable knobs. Inside that area there =

are sub-blocks liky phy control-blocks and also the whole core pinctrl =

mechanisms (iomux, electrical settings).

The uart demuxer is part of the GRF_SOC_CONx registers which is essentially=
 a =

dumping ground for dozens of single-bit settings, from ethernet controller =

settings to some special gic settings and that uart demuxer setting somewhe=
re =

in between.

So while in the same io area, I'd still consider them separate.

Essentially this is some sort of stray bit controlling a demux of the uart =

signals.


Today I've also stumbled onto drivers/i2c/muxes which does provide (de-)mux=
ing =

capabilities for i2c busses (use different i2c controllers for a set of i2c =

devices, but also route i2c signals to different outputs (similar to the ua=
rt =

problem at hand)).

So if it were an i2c bus on the rk3399 soc the mux control would probably g=
o =

into the muxes part of i2c and probably nobody would think of bolting that =

onto a pinctrl :-) . =



Heiko
