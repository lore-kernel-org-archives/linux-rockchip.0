From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2] regulator: pwm: Fix regulator ramp delay for
 continuous mode
Date: Thu, 7 Jul 2016 11:31:36 -0700
Message-ID: <CAD=FV=UZrpSsOAxsuEWuMeie3NHQUY3RQyaUF0MK9mHDqPhRzQ@mail.gmail.com>
References: <1467830521-15300-1-git-send-email-dianders@chromium.org>
 <577E1487.9010000@nvidia.com>
 <CAD=FV=UQw7ttMECtO0aomx56G6xGWZh96NRug6Y4QuPJfXq8Tw@mail.gmail.com>
 <47095a54f7b44f8a98bdfe05cdea7865@HQMAIL106.nvidia.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <47095a54f7b44f8a98bdfe05cdea7865-wO81nVYWzR6wc5+RPyqhflaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Aleksandr Frid <afrid-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>
Cc: Boris Brezillon <boris.brezillon-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Liam Girdwood <lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Laxman Dewangan <ldewangan-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>, Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Lee Jones <lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, Jul 7, 2016 at 11:23 AM, Aleksandr Frid <afrid-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org> wrote:
> Hi,
>
>>>
> In that case we should probably add a new PWM regulator property and not abuse the existing one.  Maybe you use "pwm-regulator-settle-us"
> or something?
>>>
> Looks reasonable to me.
>
>>>
> actually the right thing is probably to implement 'regulator-ramp-delay' as doing several small steps in that case
>>>
> Ramp delay uV/us  is not a "real" metric for some PWM regulators with exponential transition -- as opposite to fixed slew-rate linear transition on other regulators. So splitting transition into multiple steps to implement artificial  (in this case) metric seems questionable.

In the case that you don't need multiple steps then don't specify a
regulator-ramp-delay, just a pwm-regulator-settle-us.

...the suggestion for multiple steps is because (so I'm told) it helps
avoid overshoot or undershoot problems.  In general the whole point of
ramping a regulator slowly is to avoid overshoot or undershoot
problems.  The "regulator-ramp-delay" property in Linux is a little
odd because it sort of "describes" the ramp delay and sort of "sets"
the ramp delay.  Many PMICs allow you to set how fast the regulator
will ramp and this property is used to specify how the register in the
PMIC should be set.  However, it is also used as the actual delay in
Linux.


-Doug
