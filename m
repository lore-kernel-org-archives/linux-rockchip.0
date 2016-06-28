From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Tue, 28 Jun 2016 12:35:35 -0700
Message-ID: <CAD=FV=XcQo+LgAC9w0qmf_GimqG32ey6V4+NrPdgtV8_dbV9Vg@mail.gmail.com>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
 <20160628185656.GU17217@sirena.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20160628185656.GU17217-GFdadSzt00ze9xe1eoZjHA@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Boris Brezillon <boris.brezillon-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Liam Girdwood <lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Lee Jones <lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, Jun 28, 2016 at 11:56 AM, Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
> On Mon, Jun 27, 2016 at 09:53:11PM -0700, Douglas Anderson wrote:
>
>> Note that this patch is atop Boris's recent PWM regulator fixes.  If
>> desired it wouldn't be too hard to write it atop the old code, though
>> quite honestly anyone using a PWM regulator should probably be using his
>> new code.
>
> Oh, and the other thing I meant to say there: is that going anywhere?
> It seems like the underlying PWM interface is still unclear for some
> reason and there's been no comment on those bits of v3.

As far as I know it is going somewhere, but it's not moving terribly
quickly.  At some point I think Boris got tired of posting huge patch
sets and so split things in two.  The first half did eventually land,
but the second half is still outstanding and things seem quiet fro the
last two weeks.  From patchwork we have these outstanding:

9175319  [v3,01/14] pwm: Add an helper to prepare a new PWM state
9175345  [v3,02/14] pwm: Add two helpers to ease relative duty cycle ...
9175361  [v3,03/14] pwm: rockchip: Fix period and duty_cycle approximation
9175341  [v3,04/14] pwm: rockchip: Add support for hardware readout
9175335  [v3,05/14] pwm: rockchip: Avoid glitches on already running PWMs
9175337  [v3,06/14] pwm: rockchip: Add support for atomic update
9175265  [v3,07/14] pwm: sti: Add support for hardware readout
9175317  [v3,08/14] pwm: sti: Avoid glitches on already running PWMs
9175323  [v3,09/14] regulator: pwm: Adjust PWM config at probe time
9175305  [v3,10/14] regulator: pwm: Switch to the atomic PWM API
9175295  [v3,11/14] regulator: pwm: Properly initialize the ->state field
9175267  [v3,12/14] regulator: pwm: Retrieve correct voltage
9175279  [v3,13/14] regulator: pwm: Support extra continuous mode cases
9175273  [v3,14/14] regulator: pwm: Document pwm-dutycycle-unit and ...

-Doug
