From: Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: Power Key/button on rk3399-roc-pc
Date: Thu, 2 Apr 2020 17:59:41 +0530
Message-ID: <CAM+7aWsKkNhxtnompweSCaiOc+B+HNGGar-bRT5Hww0HmV7P=A@mail.gmail.com>
References: <CAM+7aWuR-2EYSDQLj+Sep9cu_cAsL5QD=wRrar-9vLSd_7KPyg@mail.gmail.com>
 <c3f77864-ab66-e31c-e9a6-5a3c8e10b6ea@fivetechno.de>
 <CAM+7aWshiM3YAc9B+GADqKry7bAPapdTJAym-9Wzadtdr3cJHg@mail.gmail.com>
 <af59b7f4-7fb9-4370-9cf5-de4bfedf9e43@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <af59b7f4-7fb9-4370-9cf5-de4bfedf9e43-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>
Cc: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Apr 2, 2020 at 12:57 PM Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org> wrote:
>
> Hi Suniel,
>
> Am 02.04.20 um 06:39 schrieb Suniel Mahesh:
> > On Wed, Apr 1, 2020 at 3:40 PM Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org> wrote:
> >>
> >> Hi Suniel,
> >>
> >> Am 01.04.20 um 06:53 schrieb Suniel Mahesh:
> >> > Hi Markus, Levin and all,
> >> >
> >> > Can you guys please suggest me on my requirement.
> >> >
> >> > rk3399-roc-pc board has a Power Key/button. As per the schematics this
> >> > Power Key/button
> >> > is connected to GPIO0_A5.
> >>
> >> And to PWRON of RK808.
> >>
> >> >
> >> > My requirement is can I use this button for board powerup (especially
> >> > in linux when we issue
> >> > "poweroff" command, the board shuts down and it should power back on
> >> > after I press the Power Key/button).
> >> >
> >> > For the above to happen, I think this Power Key/button be connected to
> >> > PMIC RK808-D IC, am i correct ?
> >>
> >> Yes, see P.16 of ROC-3399-PC-V10-A-20180804 schematic.
> >> >
> >> > In the schematics, it is not very clear as if such arrangement is
> >> > there (though it says it can be an option in
> >> > RK3399_BOX_REF_V13_20180821.pdf). I am attaching the document.
> >> >
> >> > Please suggest/comment on my requirement.
> >>
> >> Should work, everything is in place, just press long enough ;-).
> >
> > Thanks Markus for your help. its working.
> >
> >>
> >> Btw. could you just revert your recent U-Boot commit
> >> checking GPIO0_A5 that prevents unattended booting?
> >
> > we have sent a patch series(5 patches) which takes care of the above
> > issue. attaching patchwork links:
> > https://patchwork.ozlabs.org/patch/1258093/
>
> I looked at your
> [v2,2/5] roc-rk3399-pc: Set low power leds, power key only if POR [1]
> and it seems to prevent unattended boot after a power interruption
> (brown out), which is a problem for a device with a built in board
> and no access to power key or operator.
> I really would prefer straight boot without human intervention in
> all cases.
>
reverted the patch, except diy-led(RED LED) is kept as it is.
This indicates the board is in full power mode.

Thanks
> Thanks,
> --
> Markus
>
> [1] https://patchwork.ozlabs.org/patch/1258094/
>
> >
> > Suniel
> >>
> >> Thanks,
> >> --
> >> Markus
> >>
> >> >
> >> > Thanks and regards
> >> > Suniel
> >> >
> >
