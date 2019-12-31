From: Martin Blumenstingl <martin.blumenstingl-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [RFC v2 1/1] drm/lima: Add optional devfreq support
Date: Tue, 31 Dec 2019 15:17:42 +0100
Message-ID: <CAFBinCByzLLdVTL0v=eC-TbZQnwnDY7cBLf4jyWq7N4PA1rr+A@mail.gmail.com>
References: <20191227173707.20413-1-martin.blumenstingl@googlemail.com>
 <20191227173707.20413-2-martin.blumenstingl@googlemail.com>
 <dd38ff5c-6a14-bb6a-4df5-d706f99234e9@arm.com>
 <CAFBinCDs3a8TJcQKgHUkDvssMR6Y2Kys38p50P0q=2KOiDTNHg@mail.gmail.com>
 <fe45f4f8-8c67-ded2-90bf-8d5fd6874876@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <fe45f4f8-8c67-ded2-90bf-8d5fd6874876-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, steven.price-5wv7dgnIgG8@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, wens-jdAy2FN1RRM@public.gmane.org, yuq825-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, daniel-/w4YWyX8dFk@public.gmane.org, linux-amlogic-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, alyssa.rosenzweig-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Robin,

On Mon, Dec 30, 2019 at 1:47 AM Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
>
> On 2019-12-29 11:19 pm, Martin Blumenstingl wrote:
> > Hi Robin,
> >
> > On Sun, Dec 29, 2019 at 11:58 PM Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
> >>
> >> Hi Martin,
> >>
> >> On 2019-12-27 5:37 pm, Martin Blumenstingl wrote:
> >>> Most platforms with a Mali-400 or Mali-450 GPU also have support for
> >>> changing the GPU clock frequency. Add devfreq support so the GPU clock
> >>> rate is updated based on the actual GPU usage when the
> >>> "operating-points-v2" property is present in the board.dts.
> >>>
> >>> The actual devfreq code is taken from panfrost_devfreq.c and modified so
> >>> it matches what the lima hardware needs:
> >>> - a call to dev_pm_opp_set_clkname() during initialization because there
> >>>     are two clocks on Mali-4x0 IPs. "core" is the one that actually clocks
> >>>     the GPU so we need to control it using devfreq.
> >>> - locking when reading or writing the devfreq statistics because (unlike
> >>>     than panfrost) we have multiple PP and GP IRQs which may finish jobs
> >>>     concurrently.
> >>
> >> I gave this a quick try on my RK3328, and the clock scaling indeed kicks
> >> in nicely on the glmark2 scenes that struggle, however something appears
> >> to be missing in terms of regulator association, as the appropriate OPP
> >> voltages aren't reflected in the GPU supply (fortunately the initial
> >> voltage seems close enough to that of the highest OPP not to cause major
> >> problems, on my box at least). With panfrost on RK3399 I do see the
> >> supply voltage scaling accordingly, but I don't know my way around
> >> devfreq well enough to know what matters in the difference :/
> > first of all: thank you for trying this out! :-)
> >
> > does your kernel include commit 221bc77914cbcc ("drm/panfrost: Use
> > generic code for devfreq") for your panfrost test?
> > if I understand the devfreq API correct then I suspect with that
> > commit panfrost also won't change the voltage anymore.
>
> Oh, you're quite right - I was already considering that change as
> ancient history, but indeed it's only in 5.5-rc, while that board is
> still on 5.4.y release kernels. No wonder I couldn't make sense of how
> the (current) code could possibly be working :)
>
> I'll try the latest -rc kernel tomorrow to confirm (now that PCIe is
> hopefully fixed), but I'm already fairly confident you've called it
> correctly.
I just tested it with the lima driver (by undervolting the GPU by
0.05V) and it seems that dev_pm_opp_set_regulators is really needed.
I'll fix this in the next version of this patch and also submit a fix
for panfrost (I won't be able to test that though, so help is
appreciated in terms of testing :))


Martin
