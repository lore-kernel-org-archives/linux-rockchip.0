From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [RFC v2 1/1] drm/lima: Add optional devfreq support
Date: Mon, 30 Dec 2019 00:19:10 +0100
Message-ID: <CAFBinCDs3a8TJcQKgHUkDvssMR6Y2Kys38p50P0q=2KOiDTNHg@mail.gmail.com>
References: <20191227173707.20413-1-martin.blumenstingl@googlemail.com>
 <20191227173707.20413-2-martin.blumenstingl@googlemail.com> <dd38ff5c-6a14-bb6a-4df5-d706f99234e9@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <dd38ff5c-6a14-bb6a-4df5-d706f99234e9@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: yuq825@gmail.com, dri-devel@lists.freedesktop.org, robh@kernel.org, tomeu.vizoso@collabora.com, airlied@linux.ie, linux-kernel@vger.kernel.org, steven.price@arm.com, linux-rockchip@lists.infradead.org, wens@csie.org, alyssa.rosenzweig@collabora.com, daniel@ffwll.ch, linux-amlogic@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Robin,

On Sun, Dec 29, 2019 at 11:58 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Hi Martin,
>
> On 2019-12-27 5:37 pm, Martin Blumenstingl wrote:
> > Most platforms with a Mali-400 or Mali-450 GPU also have support for
> > changing the GPU clock frequency. Add devfreq support so the GPU clock
> > rate is updated based on the actual GPU usage when the
> > "operating-points-v2" property is present in the board.dts.
> >
> > The actual devfreq code is taken from panfrost_devfreq.c and modified so
> > it matches what the lima hardware needs:
> > - a call to dev_pm_opp_set_clkname() during initialization because there
> >    are two clocks on Mali-4x0 IPs. "core" is the one that actually clocks
> >    the GPU so we need to control it using devfreq.
> > - locking when reading or writing the devfreq statistics because (unlike
> >    than panfrost) we have multiple PP and GP IRQs which may finish jobs
> >    concurrently.
>
> I gave this a quick try on my RK3328, and the clock scaling indeed kicks
> in nicely on the glmark2 scenes that struggle, however something appears
> to be missing in terms of regulator association, as the appropriate OPP
> voltages aren't reflected in the GPU supply (fortunately the initial
> voltage seems close enough to that of the highest OPP not to cause major
> problems, on my box at least). With panfrost on RK3399 I do see the
> supply voltage scaling accordingly, but I don't know my way around
> devfreq well enough to know what matters in the difference :/
first of all: thank you for trying this out! :-)

does your kernel include commit 221bc77914cbcc ("drm/panfrost: Use
generic code for devfreq") for your panfrost test?
if I understand the devfreq API correct then I suspect with that
commit panfrost also won't change the voltage anymore.

this is probably due to a missing call to dev_pm_opp_set_regulators()
which is supposed to attach the regulator to the devfreq instance.
I didn't notice this yet because on Amlogic SoCs the voltage is the
same for all OPPs.

I'll debug this in the next days and send an updated patch (and drop
the RFC prefix if there are no more comments).


Regards
Martin
